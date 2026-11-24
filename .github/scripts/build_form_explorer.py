"""Build the form explorer data (input/images/form-explorer/form-*.json) from each form's
mapping pages (en/ru/uz), its Composition profile and the terminology it binds to.

Needs SUSHI output in fsh-generated/ and the dependency packages in the FHIR package cache.
Usage: python3 .github/scripts/build_form_explorer.py [--check]
"""
import json
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
CACHE = Path.home() / ".fhir/packages"
OUT = REPO / "input/images/form-explorer"
CORE_SITE = "https://dhp.uz/fhir/core/en/"
MAX_CONCEPTS = 200
DEBUG = "--debug" in sys.argv
DEPS = dict(re.findall(r"^  ([\w.]+): ([\w.-]+)$", re.search(r"^dependencies:\n((?:[ #].*\n)*)", (REPO / "sushi-config.yaml").read_text(), re.M).group(1), re.M))
THO_PKG = f"hl7.terminology.r5#{DEPS['hl7.terminology.r5']}"
CORE_PKG = f"uz.dhp.core#{DEPS['uz.dhp.core']}"

# form -> (profile id, example Bundle id)
FORMS = {
    "003": ("form-003-inpatient-medical-record-composition", "example-form-003-inpatient-medical-record"),
    "011": ("form-011-hemodialysis-composition", "example-form-011-hemodialysis"),
    "027": ("form-027-medical-record-extract-composition", "example-form-027-medical-record-extract"),
    "044": ("form-044-travel-clearance-composition", "example-form-044-travel-clearance"),
    "066": ("form-066-hospital-discharge-composition", "example-form-066-hospital-discharge"),
    "066-1": ("form-066-1-psychiatric-discharge-composition", "example-form-066-1-psychiatric-discharge"),
    "096": ("form-096-maternity-medical-record-composition", "example-form-096-maternity-medical-record"),
    "097": ("form-097-newborn-development-composition", "example-form-097-newborn-development"),
    "111": ("form-111-pregnant-woman-individual-card-composition", "example-form-111-pregnant-woman-individual-card"),
    "130": ("form-130-laboratory-test-results-composition", "example-form-130-laboratory-test-results"),
}

# Form 011 has one table for three sections: row index -> slice (None = document header)
ROW_SLICES = {
    "011": [None, None, None, "dialysisParameters", "dialysisParameters", "dialysisParameters", "dialysisParameters",
            "vitalSigns", "vitalSigns", "vitalSigns", "vitalSigns", "vitalSigns", "medications", "medications",
            "dialysisParameters", "dialysisParameters", "dialysisParameters", "dialysisParameters",
            "dialysisParameters", "dialysisParameters", None, None, "dialysisParameters"],
}

# Rows whose mapping says "Local code": uz label -> code system or value set canonical
LOCAL_LISTS = {
    "Kasallik yoki jarohatlangandan so'ng necha soatda": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/disease-injury-delay-cs",
    "O'rin joy turi": "https://terminology.dhp.uz/fhir/core/CodeSystem/organizational-specialization-cs",
    "To'lov turi": "https://terminology.dhp.uz/fhir/core/CodeSystem/coverage-type-cs",
    "O'pka silida doriga sezgirlik": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/tb-drug-sensitivity-cs",
    "Ijtimoiy holati": "https://terminology.dhp.uz/fhir/core/CodeSystem/social-status-cs",
    "Imtiyoz toifasi mavjud": "https://terminology.dhp.uz/fhir/core/CodeSystem/benefits-cs",
    "Imtiyoz toifasi": "https://terminology.dhp.uz/fhir/core/CodeSystem/benefits-cs",
    "Ma'lumoti": "https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs",
    "Ish joyi, lavozimi": "https://terminology.dhp.uz/fhir/core/ValueSet/position-and-profession-vs",
    "Yo'llashdan maqsad": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-purpose-cs",
    "Nogironlik": "https://terminology.dhp.uz/fhir/core/CodeSystem/disability-cs",
}

SLICE_TITLES = {
    "vitalSigns": {"en": "Vital signs", "ru": "Показатели жизненно важных функций", "uz": "Hayotiy ko'rsatkichlar"},
    "dialysisParameters": {"en": "Dialysis parameters", "ru": "Параметры диализа", "uz": "Dializ parametrlari"},
    "medications": {"en": "Medications", "ru": "Лекарственные препараты", "uz": "Dori vositalari"},
}

# Diagnosis-role keywords in uz labels, most specific first
ROLE_WORDS = [
    ("bevosita sabab", "immediate-cause-of-death"), ("o'lim sababini", "underlying-cause-of-death"),
    ("boshqa muhim", "other-significant-death"), ("asorat", "complication"), ("raqobat", "competing"),
    ("yondosh", "concomitant"), ("yo'ldosh", "concomitant"), ("fon ", "background"),
    ("asosiy kasallik", "main-disease-death"), ("asosiy", "main"),
]

TYPE_MAP = {
    "Quantity": "quantity", "Age": "quantity", "Duration": "quantity", "SimpleQuantity": "quantity",
    "Distance": "quantity", "Range": "quantity", "Ratio": "quantity", "Count": "quantity", "Money": "quantity",
    "string": "text", "markdown": "text", "HumanName": "text", "Address": "text", "Annotation": "text",
    "ContactPoint": "text", "Narrative": "text", "xhtml": "text", "uri": "text", "url": "text",
    "CodeableConcept": "coded", "Coding": "coded", "code": "coded", "CodeableReference": "coded",
    "date": "date", "dateTime": "datetime", "instant": "datetime", "time": "datetime",
    "boolean": "boolean", "Identifier": "identifier", "Reference": "reference", "canonical": "reference",
    "Period": "period", "integer": "count", "positiveInt": "count", "unsignedInt": "count",
    "integer64": "count", "decimal": "count", "Attachment": "attachment", "Signature": "attachment",
}
COMPLEX = {"HumanName", "Address", "Period", "Quantity", "Identifier", "CodeableConcept", "Coding", "Reference",
           "ContactPoint", "Annotation", "Age", "Duration", "Range", "Ratio", "CodeableReference", "Attachment",
           "Timing", "Dosage", "Meta", "Narrative", "Extension", "BackboneElement", "SimpleQuantity", "Money"}
LANGS = ("en", "ru", "uz")
# English field labels, keyed by the Russian label: the mapping pages only have UZ and RU columns
LABELS_EN_FILE = REPO / ".github/scripts/form-explorer-labels-en.json"
LABELS_EN = json.loads(LABELS_EN_FILE.read_text())
USED_EN, MISSING_EN = set(), set()


def load(p):
    return json.loads(Path(p).read_text())


class Registry:
    """Canonical lookup over the IG's own resources and its dependency packages."""

    def __init__(self):
        self.by_url, self.by_key = {}, {}
        self.supplements = {}
        pkgs = [CACHE / "hl7.fhir.r5.core#5.0.0", CACHE / THO_PKG,
                CACHE / f"hl7.fhir.uv.extensions.r5#{DEPS['hl7.fhir.uv.extensions.r5']}", CACHE / CORE_PKG]
        for pkg in pkgs:
            for f in load(pkg / "package/.index.json")["files"]:
                if f.get("resourceType") not in ("StructureDefinition", "CodeSystem", "ValueSet", "ConceptMap"):
                    continue
                self.add(pkg / "package" / f["filename"], f["resourceType"], f["id"], f.get("url"), pkg.name)
                if f.get("content") == "supplement":
                    self.supplements.setdefault(f["supplements"].split("|")[0], []).append(f.get("url"))
        local = sorted((REPO / "fsh-generated/resources").glob("*.json")) + sorted((REPO / "input/vocabulary").glob("*.json"))
        if not local:
            sys.exit("fsh-generated/resources is empty - build the IG (ig-watch) first")
        for p in local:
            r = load(p)
            if r.get("resourceType") in ("StructureDefinition", "CodeSystem", "ValueSet", "ConceptMap"):
                self.add(p, r["resourceType"], r["id"], r.get("url"), "local", r)
                if r.get("content") == "supplement":
                    self.supplements.setdefault(r["supplements"].split("|")[0], []).append(r["url"])
        self.cache = {}
        self.by_name = {}
        for (src, rtype, rid), e in self.by_key.items():
            if rtype == "StructureDefinition" and src in ("local", CORE_PKG):
                name = self.res(e).get("name")
                if name and self.res(e).get("kind") == "resource":
                    self.by_name.setdefault(name, e)

    def add(self, path, rtype, rid, url, src, res=None):
        entry = {"path": path, "type": rtype, "id": rid, "url": url, "src": src}
        if res is not None:
            self.cache_res = getattr(self, "cache_res", {})
            self.cache_res[str(path)] = res
        if url:
            self.by_url.setdefault(url, entry)
        self.by_key.setdefault((src, rtype, rid), entry)
        if rtype == "StructureDefinition" and src.startswith("hl7.fhir.r5.core"):
            self.by_key.setdefault(("r5", rtype, rid), entry)

    def get(self, url):
        e = self.by_url.get((url or "").split("|")[0])
        return self.res(e) if e else None

    def res(self, e):
        k = str(e["path"])
        if k not in self.cache:
            self.cache[k] = getattr(self, "cache_res", {}).get(k) or load(e["path"])
        return self.cache[k]

    def from_link(self, href):
        """Resolve a page link (core site, local page, R5 spec, THO) to a canonical resource entry."""
        if href in self.by_url:
            return self.by_url[href]
        m = re.search(r"(StructureDefinition|CodeSystem|ValueSet|ConceptMap)-([\w.-]+?)\.html", href, re.I)
        m5 = re.search(r"hl7\.org/fhir/R5/(valueset|codesystem)-([\w.-]+?)\.html", href)
        if m5:
            rtype = "ValueSet" if m5.group(1) == "valueset" else "CodeSystem"
            for src in ("hl7.fhir.r5.core#5.0.0", THO_PKG):
                e = self.by_key.get((src, rtype, m5.group(2)))
                if e:
                    return e
            return None
        if not m:
            return None
        rtype, rid = m.group(1), m.group(2)
        if href.startswith(CORE_SITE) or "dhp.uz/fhir/core" in href:
            src = CORE_PKG
        elif "terminology.hl7.org" in href:
            src = THO_PKG
        elif "://" not in href:
            src = "local"
        else:
            return None
        return self.by_key.get((src, rtype, rid))


REG = None


def page_link(entry):
    """Where a canonical resource is published, relative to the integrations IG."""
    rid, rtype, src = entry["id"], entry["type"], entry["src"]
    if src == "local":
        return f"{rtype}-{rid}.html"
    if src.startswith("uz.dhp.core"):
        return f"{CORE_SITE}{rtype}-{rid}.html"
    if src.startswith("hl7.terminology"):
        return f"https://terminology.hl7.org/{rtype}-{rid}.html"
    return f"https://hl7.org/fhir/R5/{rtype.lower()}-{rid}.html"


# ---------------------------------------------------------------- terminology


def supplement_designations(url, declared=()):
    """Designations from the supplements of a code system; the ones a ValueSet declares win."""
    urls = REG.supplements.get(url, [])
    supp = [REG.get(u) for u in sorted(urls, key=lambda u: u not in declared)]
    extra = {}
    for s in filter(None, supp):
        slang = (s.get("language") or "en")[:2]
        for c in flatten(s.get("concept", [])):
            d = extra.setdefault(c["code"], {})
            if c.get("display"):
                d.setdefault(slang, c["display"])
            for de in c.get("designation", []):
                if de.get("language"):
                    d.setdefault(de["language"][:2], de["value"])
    return extra


def unusable(c):
    for pr in c.get("property", []):
        k, v = pr.get("code"), pr.get("valueCode") or pr.get("valueString")
        if k in ("notSelectable", "abstract", "inactive") and pr.get("valueBoolean") or \
                k == "status" and v in ("retired", "deprecated", "inactive") or k == "deprecated" and pr.get("valueBoolean") is not False:
            return True
    return False


def complete(cs):
    return cs.get("content") in ("complete", None)


def cs_concepts(cs, declared=()):
    base = (cs.get("language") or "en")[:2]
    extra = supplement_designations(cs["url"], declared)
    out = []
    for c in flatten(cs.get("concept", [])):
        d = {}
        for de in c.get("designation", []):
            if de.get("language"):
                d.setdefault(de["language"][:2], de["value"])
        if c.get("display"):
            d[base] = c["display"]
        for k, v in extra.get(c["code"], {}).items():
            d.setdefault(k, v)
        out.append({"code": c["code"], "system": cs["url"], **{k: v for k, v in d.items() if k in LANGS},
                    **({"_unusable": True} if unusable(c) else {})})
    return out


def flatten(cc, parents=()):
    for c in cc:
        yield {**c, "_parents": parents}
        yield from flatten(c.get("concept", []), parents + (c["code"],))


def ancestors(cs):
    """code -> all ancestor codes, from nesting and the parent/subsumedBy properties."""
    direct = {}
    for c in flatten(cs["concept"]):
        ps = set(c["_parents"][-1:])
        ps |= {pr.get("valueCode") for pr in c.get("property", []) if pr.get("code") in ("parent", "subsumedBy")}
        direct[c["code"]] = ps - {None}
    out = {}
    for code in direct:
        seen, todo = set(), list(direct[code])
        while todo:
            x = todo.pop()
            if x not in seen:
                seen.add(x)
                todo += direct.get(x, ())
        out[code] = seen
    return out


def expand(vs_url, depth=0):
    """Return (concepts, unexpanded systems) for a ValueSet or CodeSystem canonical."""
    r = REG.get(vs_url)
    if r is None or depth > 5:
        return [], [vs_url]
    if r["resourceType"] == "ConceptMap":
        out, seen = [], set()
        for g in r.get("group", []):
            cs = REG.get(g.get("target"))
            known = {c["code"]: c for c in cs_concepts(cs)} if cs and cs.get("concept") else {}
            for el in g.get("element", []):
                for t in el.get("target", []):
                    if t.get("relationship") == "not-related-to" or (g.get("target"), t["code"]) in seen:
                        continue
                    seen.add((g.get("target"), t["code"]))
                    c = dict(known.get(t["code"], {"code": t["code"], "system": g.get("target")}))
                    if t.get("display"):
                        c.setdefault("en", t["display"])
                    out.append(c)
        return out, []
    if r["resourceType"] == "CodeSystem":
        if r.get("content") not in ("complete", "fragment", None) or not r.get("concept"):
            return [], [r["url"]]
        return [c for c in cs_concepts(r) if "_unusable" not in c], [] if complete(r) else [r["url"]]
    concepts, missing = [], []
    declared = {x["valueCanonical"].split("|")[0] for x in r.get("extension", [])
                if x.get("url") == "http://hl7.org/fhir/StructureDefinition/valueset-supplement"}
    for inc in r.get("compose", {}).get("include", []):
        part = []
        for sub in inc.get("valueSet", []):
            c, m = expand(sub, depth + 1)
            part += c
            missing += m
        system = inc.get("system")
        if system:
            cs = REG.get(system)
            known = {c["code"]: c for c in cs_concepts(cs, declared)} if cs and cs.get("concept") else {}
            extra = {} if known else supplement_designations(system, declared)
            if inc.get("concept"):
                for c in inc["concept"]:
                    k = known.get(c["code"], {"code": c["code"], "system": system})
                    k = dict(k)
                    if c.get("display"):
                        k.setdefault("en", c["display"])
                    for de in c.get("designation", []):
                        if de.get("language"):
                            k.setdefault(de["language"][:2], de["value"])
                    for lang, v in extra.get(c["code"], {}).items():
                        if lang in LANGS:
                            k.setdefault(lang, v)
                    part.append(k)
            elif inc.get("filter"):
                ok = known and all(f.get("op") in ("is-a", "descendent-of") and f.get("property") == "concept" for f in inc["filter"])
                if not ok:
                    missing.append(system)
                else:
                    tree = ancestors(cs)
                    for f in inc["filter"]:
                        root = f["value"]
                        part += [known[k] for k, ps in tree.items() if "_unusable" not in known[k] and (root in ps or (f["op"] == "is-a" and k == root))]
                    if not complete(cs):
                        missing.append(system)
            elif known:
                part += [c for c in known.values() if "_unusable" not in c]
                if not complete(cs):
                    missing.append(system)
            else:
                missing.append(system)
        concepts += part
    drop = set()
    for exc in r.get("compose", {}).get("exclude", []):
        drop |= {(exc.get("system"), c["code"]) for c in exc.get("concept", [])}
    seen, out = set(), []
    for c in concepts:
        key = (c.get("system"), c["code"])
        if key not in drop and key not in seen:
            seen.add(key)
            out.append(c)
    return out, sorted(set(missing))


def value_list(url, lists):
    url = url.split("|")[0]
    if url in lists:
        return url
    r = REG.get(url)
    if r is None:
        return None
    concepts, missing = expand(url)
    if not concepts:
        return None
    entry = REG.by_url[url]
    lists[url] = {
        "url": url, "title": r.get("title") or r.get("name") or entry["id"], "link": page_link(entry),
        "total": len(concepts), "incomplete": [short_system(m) for m in missing],
        "concepts": [] if len(concepts) > MAX_CONCEPTS else [{k: v for k, v in c.items() if not k.startswith("_")} for c in concepts],
    }
    return url


SYSTEMS = {"http://loinc.org": "LOINC", "http://snomed.info/sct": "SNOMED CT", "http://hl7.org/fhir/sid/icd-10": "ICD-10"}


def short_system(url):
    if url in SYSTEMS:
        return SYSTEMS[url]
    r = REG.get(url)
    return (r.get("title") or r.get("name")) if r else url.rsplit("/", 1)[-1]


# ---------------------------------------------------------------- structure definitions


def sd_elements(sd):
    return sd.get("snapshot", sd.get("differential", {})).get("element", [])


def unslice(eid):
    return re.sub(r":[^.]+", "", eid)


def element(sd, eid):
    """Merge min/max/type/binding for an element id along the profile's base chain."""
    merged, chain, cur = {}, [], sd
    while cur and len(chain) < 8:
        chain.append(cur)
        cur = REG.get(cur.get("baseDefinition"))
    for i, s in enumerate(chain):
        els = {e["id"]: e for e in sd_elements(s)}
        e = els.get(eid) or (els.get(unslice(eid)) or els.get(re.sub(r"(\.section)+", ".section", unslice(eid))) if i else None)
        if e is None:
            continue
        for k in ("min", "max", "type", "binding", "patternCodeableConcept", "fixedCode", "patternCoding", "short"):
            if k in e and k not in merged:
                merged[k] = e[k]
    if not merged:
        return None
    # unsliced path, binding only on a slice (Patient.address:uzAddress.state)
    if "binding" not in merged or merged["binding"].get("strength") == "example":
        for s in chain[:1] + chain[1:2]:
            for e in sd_elements(s):
                if unslice(e["id"]) == unslice(eid) and e["id"] != eid and e.get("binding", {}).get("strength") in ("required", "extensible"):
                    merged["binding"] = e["binding"]
                    break
    return merged


def datatype_sd(code):
    e = REG.by_key.get(("r5", "StructureDefinition", code))
    return REG.res(e) if e else None


SEG = re.compile(r"(\w+)(?:\[(\w[\w-]*)\])?")


def lookup(sd, eid, name, sl):
    if sl == "x":
        found = element(sd, f"{eid}.{name}[x]")
        return (found, f"{eid}.{name}[x]", None) if found else (None, None, None)
    for cand in ([f"{eid}.{name}:{sl}"] if sl else []) + [f"{eid}.{name}"]:
        found = element(sd, cand)
        if found is not None:
            return found, cand, None
    for i in [i for i, ch in enumerate(name) if ch.isupper()]:
        cand = f"{eid}.{name[:i]}[x]"
        found = element(sd, cand)
        if found is not None:
            codes = [t["code"] for t in found.get("type", [])]
            return found, cand, next((c for c in codes if c.lower() == name[i:].lower()), name[i:])
    return None, None, None


def resolve(profile_sd, path):
    """Walk a FHIR path through a profile and the datatypes it uses. Returns (element, type code)."""
    sd, eid, el, tcode = profile_sd, profile_sd["type"], None, profile_sd["type"]
    for seg in path.split(".")[1:]:
        m = SEG.fullmatch(seg)
        if not m:
            return el, tcode
        if tcode == "CodeableReference" and m.group(1) in ("concept", "reference"):
            tcode = "CodeableConcept" if m.group(1) == "concept" else "Reference"
            continue
        found, cand, choice = lookup(sd, eid, *m.groups())
        if found is None and el is not None and tcode and datatype_sd(tcode):
            sd, eid = datatype_sd(tcode), tcode
            found, cand, choice = lookup(sd, eid, *m.groups())
        if found is None:
            return None, None
        el, eid = found, cand
        types = found.get("type", [])
        tcode = choice or (types[0]["code"] if len(types) == 1 else None if types else "BackboneElement")
        if tcode == "Extension" and types and types[0].get("profile"):
            ext = REG.get(types[0]["profile"][0])
            vid = "Extension.value[x]"
            v = element(ext, vid) if ext else None
            if ext and (not v or v.get("max") == "0"):
                vid = next((e["id"] for e in sd_elements(ext) if re.fullmatch(r"Extension\.extension:\w+\.value\[x\]", e["id"])
                            and e.get("max") != "0" and e.get("binding")), None)
                v = element(ext, vid) if vid else None
            own = element(sd, cand + vid[len("Extension"):]) if v else None
            if own:
                v = {**v, **{k: own[k] for k in ("type", "binding") if k in own}}
            if v and v.get("max") != "0":
                el = {**v, **{k: found[k] for k in ("min", "max") if k in found}}
                tcode, sd, eid = (v.get("type") or [{}])[0].get("code"), ext, vid
    return el, tcode


def sd_name(url):
    r = REG.get(url)
    return r["name"] if r else url.rsplit("/", 1)[-1]


# ---------------------------------------------------------------- mapping pages


def strip_md(s):
    s = re.sub(r"\[([^\]]+)\]\([^)]+\)", r"\1", s)
    return re.sub(r"\s+", " ", s.replace("`", "").replace("<br>", " · ").replace("*", "")).strip()


def links(s):
    return re.findall(r"\[([^\]]+)\]\(([^)\s]+)\)", s)


def sections_of(md):
    """[heading, intro lines, rows] for every ### heading of a page."""
    out, cur = [], None
    for line in md.splitlines():
        h = re.match(r"#{3,4} (.*)", line)
        if h:
            cur = [h.group(1).strip(), [], []]
            out.append(cur)
        elif cur is None:
            continue
        elif line.startswith("|"):
            cells = [c.strip() for c in line.strip().strip("|").split("|")]
            if set("".join(cells)) <= set("-: "):
                continue
            cur[2].append(cells)
        elif line.strip() and line.strip() != "---" and not cur[2]:
            cur[1].append(line.strip())
    for s in out:
        if s[2]:
            s[2] = s[2][1:]  # header row
    return out


def code_parts(cell):
    """Split a Code cell into the item's own code and its value list."""
    parts = re.split(r"<br>", cell)
    item, value, generic = [], [], []
    for p in parts:
        p = p.strip()
        if p.startswith("`code`"):
            item.append(p[6:])
        elif p.startswith("`value`"):
            value.append(p[7:])
        else:
            generic.append(p)
    return " ".join(item), " ".join(value), " ".join(generic)


CODE_RX = re.compile(r"(LOINC|SNOMED CT|SNOMED|ATC|INN|CVX)\s+`([\w.-]+)`(?:\s+\"([^\"]+)\")?")


def item_code(text):
    m = CODE_RX.search(text)
    if m:
        sysname = "SNOMED CT" if m.group(1).startswith("SNOMED") else m.group(1)
        return {"system": sysname, "code": m.group(2), "display": m.group(3) or ""}
    m = re.search(r"\[([^\]]+)\]\(([^)]+)\)\s*:?\s*`([^`]+)`(?:\s*\"([^\"]+)\")?", text)
    if m and re.search(r"CodeSystem|ValueSet", m.group(2)):
        return {"system": m.group(1), "code": m.group(3), "display": m.group(4) or "", "link": m.group(2)}
    m = re.match(r"\s*([A-Z][\w ()-]+?):?\s+`([\w.-]+)`\s+\"([^\"]+)\"", text)
    if m:
        return {"system": m.group(1), "code": m.group(2), "display": m.group(3)}
    return None


def list_links(text):
    """Value set / code system links that stand for an answer list (not a single fixed code)."""
    out = []
    for m in re.finditer(r"\[([^\]]+)\]\(([^)\s]+)\)(\s*`)?", text):
        if m.group(3):
            continue
        if re.search(r"(ValueSet|CodeSystem|ConceptMap|valueset|codesystem)[-/]", m.group(2)):
            out.append(m.group(2))
    return out


PATH_START = re.compile(r"^[A-Z][A-Za-z0-9]+(?:\[\w+\])?(?:\.[A-Za-z]\w*(?:\[[\w-]+\])?)*")


def pick_path(text, prev_resource):
    t = re.sub(r"\(same (\w+?)(?:'s)?\)\s+(?=[a-z])", r"\1.", text)
    t = re.sub(r"\(same (\w+?)(?:'s)?\)", r"\1", t)
    t = re.sub(r"^section\[", "Composition.section[", t)
    t = re.sub(r"(?<=[ ;/(])section\[", "Composition.section[", t)
    parts = [p.strip(" ()") for p in re.split(r";|\s/\s|\s\+\s|,\s|\sor\s|\s→\s|\(|\)", t)]
    paths = [m.group(0) for p in parts if (m := PATH_START.match(p))]
    full = [p for p in paths if "." in p]
    bare = [p for p in paths if "." not in p]
    if bare and full and all(re.fullmatch(r"Composition\.section\[\w+\]", p) for p in full):
        return bare[0]
    if not full:
        # "element; other" after a resource name: "Condition.code; category" -> Condition.code
        return paths[0] if paths else None
    val = [p for p in full if re.search(r"\.value[A-Z]|\.value\b", p)]
    return (val or full)[0]


def profile_for(resource, link):
    if resource in REG.by_name:
        return REG.res(REG.by_name[resource])
    if link:
        e = REG.from_link(link)
        if e and e["type"] == "StructureDefinition" and REG.res(e).get("type") == resource:
            return REG.res(e)
    for rid in (f"uz-core-{resource.lower()}", "uz-core-" + re.sub(r"(?<!^)(?=[A-Z])", "-", resource).lower()):
        e = REG.by_key.get((CORE_PKG, "StructureDefinition", rid))
        if e:
            return REG.res(e)
    e = REG.by_key.get(("r5", "StructureDefinition", resource))
    return REG.res(e) if e else None


def field_type(tcode, path):
    if path and re.search(r"\.concept$", path):
        return "coded"
    if path and path.endswith(".reference"):
        return "reference"
    if path and path.endswith("section.text") or (path or "").endswith("].text") and "section" in (path or ""):
        return "text"
    return TYPE_MAP.get(tcode or "", None)


def heuristic_type(path, example):
    p = path or ""
    if "valueBoolean" in p:
        return "boolean"
    if re.search(r"valueQuantity|valueAge|\.length$", p):
        return "quantity"
    if "identifier" in p:
        return "identifier"
    if re.search(r"birthDate", p):
        return "date"
    if re.search(r"DateTime|Period\.|\.start$|\.end$|Date$|Time$", p):
        return "datetime"
    if re.search(r"Integer", p):
        return "count"
    if re.search(r"valueCodeableConcept|\.code$|category|status|type$", p):
        return "coded"
    if re.search(r"→|actor|practitioner|performer|requester|author|subject$", p):
        return "reference"
    return "text"


def role_of(label, subsections):
    low = label.lower() + " "
    roles = {s["code"]["code"] for s in subsections}
    for word, role in ROLE_WORDS:
        if word in low and role in roles:
            return next(s for s in subsections if s["code"]["code"] == role)
    return None


def sd_link_names(cell):
    """Replace profile links with the profile's name, so "[Form 066 Surgical Procedure](...).code" parses."""
    def sub(m):
        e = REG.from_link(m.group(2))
        if e and e["type"] == "StructureDefinition" and " " in m.group(1):
            return REG.res(e)["name"]
        return m.group(0)
    return re.sub(r"\[([^\]]+)\]\(([^)\s]+)\)", sub, cell)


def build_field(fid, row, langs_rows, prev_resource, lists, subsections, form, comp_sd, parent):
    cells = row + [""] * (5 - len(row))
    uz, ru, path_cell, code_cell, example = cells[:5]
    path_text = strip_md(path_cell)
    path = pick_path(strip_md(sd_link_names(path_cell)), prev_resource)
    for s in subsections:
        if path and parent and f"Composition.section[{s['slice']}]" in path:
            path = path.replace(f"Composition.section[{s['slice']}]", f"Composition.section[{parent}].section[{s['slice']}]")
    plinks = links(path_cell)
    resource = path.split(".")[0].split("[")[0] if path else prev_resource
    if path and path.startswith("Composition"):
        resource = "Composition"
    link = next((u for _, u in plinks if "StructureDefinition" in u or "hl7.org/fhir" in u), None)
    sd = comp_sd if resource == "Composition" else profile_for(resource, link) if resource else None
    el, tcode = (resolve(sd, path) if sd and path and "." in path else (None, None))
    ftype = field_type(tcode, path) or heuristic_type(path_text, example)
    if "→" in path_text:
        ftype = "reference"
    if re.match(r"(derived|calculated) ", path_text, re.I):
        ftype = "derived"
    if re.match(r"not sent", path_text, re.I):
        ftype, resource = "none", prev_resource
    elif path and "." not in path and not el:
        ftype = "reference"
    item_txt, value_txt, generic_txt = code_parts(code_cell)
    icode = item_code(item_txt) or item_code(re.split(r"\be\.g\.", generic_txt)[0])
    f = {
        "id": fid, "label": label_langs(uz, ru), "path": path_text, "resource": "" if ftype == "none" else resource or "",
        "type": ftype, "note": strip_md(code_cell) if strip_md(code_cell) not in ("-", "") else "",
        "example": strip_md(example) if strip_md(example) != "-" else "",
    }
    if link:
        f["resourceLink"] = link
    if DEBUG and not el:
        f["unresolved"] = True
    if el:
        if "min" in el and "max" in el:
            f["card"] = f"{el['min']}..{el['max']}"
        b = el.get("binding")
        if b and b.get("additional"):
            hit = next((a for a in b["additional"] for u in a.get("usage", [])
                        for c in (u.get("valueCodeableConcept") or {}).get("coding", []) if icode and c.get("code") == icode["code"]), None)
            b = {"strength": hit["purpose"], "valueSet": hit["valueSet"]} if hit else (None if b.get("strength") == "example" else b)
        if b and b.get("valueSet") and ftype == "coded":
            vs = REG.get(b["valueSet"])
            e = REG.by_url.get(b["valueSet"].split("|")[0])
            f["binding"] = {"strength": b["strength"], "url": b["valueSet"].split("|")[0],
                            "title": (vs.get("title") or vs.get("name")) if vs else b["valueSet"].rsplit("/", 1)[-1],
                            **({"link": page_link(e)} if e else {})}
        if ftype == "reference":
            targets = [sd_name(p) for t in el.get("type", []) for p in t.get("targetProfile", [])]
            if targets:
                f["targets"] = targets
    if icode:
        f["code"] = icode
    if ftype in ("coded", "boolean", "text") or value_txt:
        cands = list_links(value_txt) + list_links(generic_txt)
        vl = None
        for href in cands:
            e = REG.from_link(href)
            if e and e["type"] in ("ValueSet", "CodeSystem", "ConceptMap"):
                vl = value_list(e["url"], lists)
                if vl:
                    break
        inline = re.findall(r"`([\w.-]+)`\s+\"([^\"]+)\"", value_txt)
        if not vl and len(inline) >= 2:
            sysname = (re.search(r"(LOINC|SNOMED CT|SNOMED|ATC|INN|CVX)\s+`", value_txt) or [None, ""])[1] or ""
            vl = f"inline:{form}:{fid}"
            lists[vl] = {"url": vl, "title": sysname or "Answers", "total": len(inline), "incomplete": [],
                         "concepts": [{"code": c, "en": d} for c, d in inline]}
        if not vl and uz in LOCAL_LISTS:
            vl = value_list(LOCAL_LISTS[uz], lists)
        if not vl and f.get("binding") and f["binding"]["strength"] in ("required", "extensible", "preferred"):
            vl = value_list(f["binding"]["url"], lists)
        if vl and ftype == "text" and tcode in ("string", "markdown"):
            vl = None
        if vl:
            f["valueList"] = vl
            if ftype == "text":
                f["type"] = "coded"
    m = re.search(r"section\[(\w+)\]", path_text)
    sub = next((s for s in subsections if m and s["slice"] == m.group(1)), None) or (role_of(uz, subsections) if subsections else None)
    if sub:
        f["subsection"] = sub["slice"]
    return f, resource


def composition_model(sd):
    els = sd["differential"]["element"]
    top = [e for e in els if re.fullmatch(r"Composition\.section:\w+", e["id"])]
    secs = []
    for e in top:
        sid = e["id"]
        code = element(sd, sid + ".code") or {}
        coding = (code.get("patternCodeableConcept") or {}).get("coding", [{}])[0]
        entry = element(sd, sid + ".entry") or {}
        subs = []
        for s in [x for x in els if re.fullmatch(re.escape(sid) + r"\.section:\w+", x["id"])]:
            sc = (element(sd, s["id"] + ".code") or {}).get("patternCodeableConcept", {}).get("coding", [{}])[0]
            subs.append({"slice": s["sliceName"], "card": f"{s.get('min', 0)}..{s.get('max', '*')}",
                         "code": {"system": short_system(sc.get("system", "")), "code": sc.get("code", ""), "display": sc.get("display", "")}})
        secs.append({
            "slice": e["sliceName"], "card": f"{e.get('min', 0)}..{e.get('max', '*')}",
            "code": {"system": short_system(coding.get("system", "")), "code": coding.get("code", ""), "display": coding.get("display", "")},
            "entries": [] if entry.get("max") == "0" else sorted({sd_name(p) for t in entry.get("type", []) for p in t.get("targetProfile", [])}),
            "subsections": subs,
        })
    header = []
    for name in ("status", "type", "category", "subject", "encounter", "date", "author", "title", "custodian", "attester"):
        el = element(sd, f"Composition.{name}")
        if not el or el.get("max") == "0":
            continue
        changed = any(x["id"].startswith(f"Composition.{name}") for x in els)
        if el.get("min", 0) < 1 and not changed:
            continue
        tcode = (el.get("type") or [{}])[0].get("code")
        note = ""
        pat = el.get("patternCodeableConcept")
        if not pat:
            sl = next((x for x in els if x["id"].startswith(f"Composition.{name}:") and x["id"].count(".") == 1), None)
            if sl:
                pat = (element(sd, sl["id"]) or {}).get("patternCodeableConcept")
        if pat:
            c = pat["coding"][0]
            note = f"{short_system(c.get('system', ''))} {c.get('code', '')} {c.get('display', '')}".strip()
        elif tcode == "Reference":
            note = ", ".join(sd_name(p) for t in el["type"] for p in t.get("targetProfile", []))
        elif el.get("binding", {}).get("valueSet"):
            note = short_system(el["binding"]["valueSet"].split("|")[0])
        header.append({"el": name, "card": f"{el.get('min', 0)}..{el.get('max', '*')}", "type": TYPE_MAP.get(tcode, "text"), "note": note})
    return secs, header


def build(form):
    profile_id, example_id = FORMS[form]
    sd = REG.res(REG.by_key[("local", "StructureDefinition", profile_id)])
    secs, header = composition_model(sd)
    pages = {"en": REPO / f"input/pagecontent/form-{form}-mapping.md"}
    for lang in ("ru", "uz"):
        pages[lang] = REPO / f"input/translations/{lang}/pagecontent/form-{form}-mapping.md"
    parsed = {lang: sections_of(p.read_text()) for lang, p in pages.items()}
    # Required-fields tables have 4 columns (Resource | Element | Code | Value) and are not form fields
    tables = {lang: [s for s in v if s[2] and len(s[2][0]) >= 5] for lang, v in parsed.items()}
    en = tables["en"]
    for lang in ("ru", "uz"):
        if not tables[lang]:
            print(f"  {form}: the {lang} page has no mapping tables, using English section titles", file=sys.stderr)
            tables[lang] = en
        assert len(tables[lang]) == len(en), (form, lang, [s[0] for s in tables[lang]], [s[0] for s in en])
        for a, b in zip(en, tables[lang]):
            assert len(a[2]) == len(b[2]), (form, lang, a[0], b[0], len(a[2]), len(b[2]))

    def titled(i):
        return {lang: tables[lang][i][0] for lang in LANGS}, {lang: " ".join(strip_md(x) for x in tables[lang][i][1]) for lang in LANGS}

    lists, out_secs = {}, []
    doc_idx = [i for i, s in enumerate(en) if s[0] == "Document Information"]
    data_idx = [i for i in range(len(en)) if i not in doc_idx]
    by_slice = {s["slice"]: s for s in secs}
    prev = None

    def mkfields(rows, key, subsections):
        nonlocal prev
        out = []
        for r, row in enumerate(rows):
            f, prev = build_field(f"{key}-{r}", row, None, prev, lists, subsections, form, sd, key if key != "document" else None)
            out.append(f)
        return out

    if form in ROW_SLICES:
        rows = en[data_idx[0]][2]
        assert len(rows) == len(ROW_SLICES[form]), (form, len(rows))
        title, intro = titled(data_idx[0])
        doc_rows = [r for r, s in zip(rows, ROW_SLICES[form]) if s is None]
        out_secs.append({"slice": None, "card": "1..1", "code": None, "entries": [], "subsections": [],
                         "title": {"en": "Document information", "ru": "Сведения о документе", "uz": "Hujjat ma'lumotlari"},
                         "intro": intro, "fields": mkfields(doc_rows, "document", [])})
        for s in secs:
            srows = [r for r, sl in zip(rows, ROW_SLICES[form]) if sl == s["slice"]]
            out_secs.append({**s, "title": SLICE_TITLES.get(s["slice"]) or {lang: s["code"]["display"] or s["slice"] for lang in LANGS}, "intro": {lang: "" for lang in LANGS},
                             "fields": mkfields(srows, s["slice"], [])})
    else:
        assert len(data_idx) == len(secs), (form, [en[i][0] for i in data_idx], [s["slice"] for s in secs])
        for i in doc_idx:
            title, intro = titled(i)
            out_secs.append({"slice": None, "card": "1..1", "code": None, "entries": [], "subsections": [],
                             "title": title, "intro": intro, "fields": mkfields(en[i][2], "document", [])})
        for i, s in zip(data_idx, secs):
            title, intro = titled(i)
            out_secs.append({**s, "title": title, "intro": intro, "fields": mkfields(en[i][2], s["slice"], s["subsections"])})

    form_title = {lang: parsed[lang][0][0] for lang in LANGS}
    model = {
        "form": form,
        "title": form_title,
        "profile": {"id": profile_id, "name": sd["name"], "title": sd.get("title", sd["name"]),
                    "link": f"StructureDefinition-{profile_id}.html", "example": f"Bundle-{example_id}.html",
                    "mapping": f"form-{form}-mapping.html"},
        "header": header,
        "sections": out_secs,
        "valueLists": lists,
    }
    return model


def label_langs(uz, ru):
    if ru in LABELS_EN:
        USED_EN.add(ru)
        return {"en": LABELS_EN[ru], "uz": uz, "ru": ru}
    MISSING_EN.add(ru)
    return {"uz": uz, "ru": ru}


def main():
    global REG
    REG = Registry()
    check = "--check" in sys.argv
    OUT.mkdir(parents=True, exist_ok=True)
    stale = []
    pages = {re.fullmatch(r"form-(.+)-mapping\.md", p.name).group(1) for p in (REPO / "input/pagecontent").glob("form-*-mapping.md")}
    if pages - set(FORMS):
        sys.exit(f"mapping pages without a FORMS entry: {', '.join(sorted(pages - set(FORMS)))}")
    index = []
    for form in FORMS:
        model = build(form)
        text = json.dumps(model, ensure_ascii=False, separators=(",", ":"), sort_keys=False) + "\n"
        path = OUT / f"form-{form}.json"
        n = sum(len(s["fields"]) for s in model["sections"])
        coded = [f for s in model["sections"] for f in s["fields"] if f["type"] == "coded"]
        print(f"{form}: {len(model['sections'])} sections, {n} fields, {len(model['valueLists'])} lists, "
              f"{sum(1 for f in coded if f.get('valueList'))}/{len(coded)} coded with list, {len(text) // 1024} KB")
        index.append({"form": form, "title": model["title"], "sections": len(model["sections"]), "fields": n})
        if check:
            if not path.exists() or path.read_text() != text:
                stale.append(path.name)
        else:
            path.write_text(text)
    if MISSING_EN:
        print(f"  {len(MISSING_EN)} field labels have no English label in {LABELS_EN_FILE.name}: " + "; ".join(sorted(MISSING_EN)[:10]))
    if set(LABELS_EN) - USED_EN:
        print(f"  {len(set(LABELS_EN) - USED_EN)} unused English labels in {LABELS_EN_FILE.name}")
    idx = json.dumps(index, ensure_ascii=False, separators=(",", ":")) + "\n"
    if check:
        if (OUT / "index.json").read_text() != idx if (OUT / "index.json").exists() else True:
            stale.append("index.json")
        if stale:
            sys.exit(f"form explorer data is stale: {', '.join(stale)} - run python3 .github/scripts/build_form_explorer.py")
    else:
        (OUT / "index.json").write_text(idx)


main()
