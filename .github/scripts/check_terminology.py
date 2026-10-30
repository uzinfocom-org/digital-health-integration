#!/usr/bin/env python3
"""Fail on three terminology mistakes that builds and reviews have let through.

1. supplement-version: a supplement CodeSystem whose version is the IG
   version. A supplement is versioned to the release of the code system it
   translates (SNOMED CT 2026-01 -> 2026.1.0, LOINC 2.82 -> 2.82.0),
   modelling guidelines 5.1.
2. missing-supplement: a ValueSet that lists codes a supplement in this IG
   translates, but has no valueset-supplement extension pointing at it. The
   published ValueSet then shows no Russian or Uzbek displays (modelling
   guidelines 5.3). Linking another supplement that covers the same codes is
   enough.
3. unused: a ValueSet or CodeSystem that nothing uses. Form ValueSets are
   deliberately unbound, so a missing binding does not make one unused: any
   reference from a used resource (a binding, an example code, a ConceptMap,
   another ValueSet's include, a supplement extension) or a link from a page
   counts. A reference from an unused artifact does not.

Problems listed in the baseline file existed before the check did; only new
ones fail. Remove a line from the baseline when you fix it.

Usage: check_terminology.py [--write-baseline]
Run from the repository root after `sushi .`; reads fsh-generated/resources,
input/vocabulary, input/pagecontent and input/translations.
"""
import glob
import json
import os
import re
import sys

RESOURCE_DIRS = ["fsh-generated/resources", "input/vocabulary"]
PAGE_GLOBS = ["input/pagecontent/**/*.md", "input/translations/**/*.md"]
BASELINE = ".github/scripts/check_terminology_baseline.txt"
VS_SUPPLEMENT = "http://hl7.org/fhir/StructureDefinition/valueset-supplement"


def strip_version(canonical):
    return canonical.split("|", 1)[0]


with open("sushi-config.yaml", encoding="utf-8") as f:
    ig_version = re.search(r"^version:\s*(\S+)", f.read(), re.M).group(1)

resources = {}  # path -> (resource, raw JSON text)
for d in RESOURCE_DIRS:
    for path in sorted(glob.glob(os.path.join(d, "*.json"))):
        with open(path, encoding="utf-8") as f:
            text = f.read()
        res = json.loads(text)
        # The ImplementationGuide lists every artifact, so it would make all of them look used
        if isinstance(res, dict) and res.get("resourceType") not in (None, "ImplementationGuide"):
            resources[path] = (res, text)

pages = ""
for pattern in PAGE_GLOBS:
    for path in sorted(glob.glob(pattern, recursive=True)):
        with open(path, encoding="utf-8") as f:
            pages += f.read()

problems = {}  # stable key -> explanation

# 1. Supplement versions
supplements = {}  # supplement url -> (id, supplemented system, set of codes)
for res, _ in resources.values():
    if res["resourceType"] != "CodeSystem" or res.get("content") != "supplement":
        continue
    if res.get("version") == ig_version:
        problems[f"supplement-version CodeSystem/{res['id']}"] = (
            f"has the IG version {ig_version}; version it to the release of "
            f"{res.get('supplements')} it translates"
        )
    codes = set()
    stack = list(res.get("concept", []))
    while stack:
        concept = stack.pop()
        codes.add(concept["code"])
        stack.extend(concept.get("concept", []))
    supplements[res["url"]] = (res["id"], strip_version(res.get("supplements", "")), codes)

# 2. ValueSets without the extension for a supplement that translates their codes
for res, _ in resources.values():
    if res["resourceType"] != "ValueSet":
        continue
    linked = {
        strip_version(ext.get("valueCanonical", ""))
        for ext in res.get("extension", [])
        if ext.get("url") == VS_SUPPLEMENT
    }
    missing = {}  # supplement id -> codes it translates that no linked supplement covers
    for include in res.get("compose", {}).get("include", []):
        system = include.get("system")
        for concept in include.get("concept", []):
            covering = [url for url, (_, sup_system, codes) in supplements.items()
                        if sup_system == system and concept["code"] in codes]
            if covering and not linked.intersection(covering):
                for url in covering:
                    missing.setdefault(supplements[url][0], []).append(concept["code"])
    for sup_id, codes in missing.items():
        problems[f"missing-supplement ValueSet/{res['id']} -> CodeSystem/{sup_id}"] = (
            f"lists {len(codes)} code(s) it translates ({', '.join(codes[:5])}"
            f"{', ...' if len(codes) > 5 else ''}) but has no valueset-supplement extension for it"
        )

# 3. Unused ValueSets and CodeSystems, to a fixpoint so that a reference from
# an unused artifact does not keep another one alive
candidates = {
    path: res for path, (res, _) in resources.items()
    if res["resourceType"] in ("ValueSet", "CodeSystem") and res.get("url")
}
live = {path: text for path, (_, text) in resources.items()}
unused = set()
while True:
    newly = set()
    for path, res in candidates.items():
        if path in unused:
            continue
        if f"{res['resourceType']}-{res['id']}.html" in pages or res["url"] in pages:
            continue
        # The canonical as a JSON string, optionally with |version
        pattern = re.compile(re.escape(json.dumps(res["url"])[:-1]) + r'[|"]')
        if not any(other != path and pattern.search(text) for other, text in live.items()):
            newly.add(path)
    if not newly:
        break
    unused |= newly
    for path in newly:
        live.pop(path)

for path in unused:
    res = candidates[path]
    problems[f"unused {res['resourceType']}/{res['id']}"] = (
        "is used by nothing: no example, profile, ConceptMap, other ValueSet or page refers to it"
    )

if "--write-baseline" in sys.argv:
    with open(BASELINE, "w", encoding="utf-8") as f:
        f.write("# Terminology problems that predate check_terminology.py. Remove a line when you fix it.\n")
        f.writelines(f"{key}\n" for key in sorted(problems))
    print(f"Wrote {len(problems)} problems to {BASELINE}")
    sys.exit(0)

baseline = set()
if os.path.exists(BASELINE):
    with open(BASELINE, encoding="utf-8") as f:
        baseline = {line.strip() for line in f if line.strip() and not line.startswith("#")}

new = sorted(key for key in problems if key not in baseline)
fixed = sorted(baseline - problems.keys())
for key in new:
    print(f"::error::{key}: {problems[key]}")
for key in fixed:
    print(f"::warning::{key} is fixed; remove it from {BASELINE}")
print(f"{len(supplements)} supplements and {len(candidates)} ValueSets and CodeSystems checked: "
      f"{len(new)} new problems, {len(problems) - len(new)} known from the baseline")
sys.exit(1 if new else 0)
