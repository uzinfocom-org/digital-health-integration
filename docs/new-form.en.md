# How to add a new form

> English copy of [`new-form.ru.md`](new-form.ru.md). Keep the two in step: a change to one goes into the other in the same PR.

This guide is for adding a new clinical form (document) to this IG. Read the [modelling guidelines](https://github.com/uzinfocom-org/digital-health-ig/blob/main/modelling-guidelines.md) first: this guide adds the rules specific to forms and does not repeat the general ones.

**Model forms.** Use Form 111 for sections, terminology and the mapping page, and Form 096 for the Composition header (the first form derived from UZ Core Composition) and for organizations in the example. Forms 011, 066, 066-1 and 130, and the Composition header of Form 111, were written before these rules: do not copy from them. Where a model form and this guide disagree, follow this guide.

A form in this IG is a FHIR document: a `Composition` profile that describes the document's sections and references resources (Patient, Encounter, Observation, Condition and so on), plus an example `Bundle` of type `document` and a field mapping page. Use UZ Core profiles for the resources wherever they exist, and a base FHIR resource only when there is no suitable profile. The data source is the forms of Ministry of Health Order No. 399; the source tables are in `input/excel/` (CSV conversion: `input/convert.sh`).

## What a form consists of

For one form (number `0XX`) you create and register these artifacts:

| # | Artifact | Path |
|---|----------|------|
| 1 | `Composition` profile | `input/fsh/profiles/Form0XX...Composition.fsh` |
| 2 | Document category code | `#form-0XX` line in `input/fsh/terminology/DocumentCategoryCS.fsh` |
| 3 | Form terminology: ValueSets, local codes, supplements, ConceptMaps | `input/fsh/terminology/form0XX/` |
| 4 | Example document (`Bundle`) | `input/fsh/examples/Form0XX....fsh` |
| 5 | Field mapping page | `input/pagecontent/form-0XX-mapping.md` |
| 6 | Profile intro | `input/pagecontent/StructureDefinition-<profile id>-intro.md` |
| 7 | Page registration and menu item | `pages:` and `menu:` blocks in `sushi-config.yaml` |
| 8 | Translations (ru + uz): pages and profile `^short` | `input/translations/{ru,uz}/pagecontent/`, `input/translations/{ru,uz}/StructureDefinition-<profile id>.po` |
| 9 | Changelog entry | `input/pagecontent/changelog.md` (+ translations) |

Naming conventions (using 096 as the example):
- Profile: `Profile: Form096MaternityMedicalRecordComposition`, `Id: form-096-maternity-medical-record-composition`, `Parent: UZCoreComposition`.
- Example file: `Form096MaternityMedicalRecord.fsh`, instance `example-form-096-maternity-medical-record` (rendered as `Bundle-example-form-096-maternity-medical-record.html`).
- The intro file is named after the profile `Id`: `StructureDefinition-form-096-maternity-medical-record-composition-intro.md`. The publisher puts it at the top of the profile page on its own; it does not need registering anywhere.

## Steps

### 1. Find what already exists

Before creating a profile, code, ValueSet or identifier system, look for an existing one. The same fact must have the same code and the same representation in every form. Search in this order:

- **UZ Core**: profiles, their ValueSets and CodeSystems on the [Artifacts](https://dhp.uz/fhir/core/en/artifacts.html) page, identifier systems on the [Identifiers](https://dhp.uz/fhir/core/en/identifiers.html) page, and the document type of your form in [composition-type-cs](https://dhp.uz/fhir/core/en/CodeSystem-composition-type-cs.html).
- **Other forms in this IG**: their ValueSets, CodeSystems and ConceptMaps (`input/fsh/terminology/`, the [Artifacts](https://dhp.uz/fhir/integrations/en/artifacts.html) page) and their mapping pages (`input/pagecontent/form-*-mapping.md`). If your form has a field that another form already has, take its code, its ValueSet and its way of filling the resource.
- **Standard terminologies**: active SNOMED CT concepts, LOINC, ICD-10, HL7 terminology. Only an exact match counts: a broader or narrower concept is not a replacement.
- **Extensions**: the base resource elements and the HL7 registry, as in §5.4 of the modelling guidelines.

Create a new code, ValueSet or profile only when the search found nothing. If what is missing belongs in UZ Core (a document type, an identifier system), add it to UZ Core first and use it here once that change is merged.

### 2. Composition profile

Describe the document metadata and its sections. The template:

```fsh
Profile: Form0XXNameComposition
Parent: UZCoreComposition
Id: form-0XX-name-composition
Title: "Form 0XX - ... Composition"
Description: "Composition profile for Form 0XX (<form name in Uzbek>): <what the document records>."
* ^experimental = true

* identifier 1..*
* identifier ^short = "Document instance UUID and form number (0XX)"

* status ^short = "Document status: preliminary while ..., final once ..."

* type = $composition-type-cs#emdoc-0010-NNNN "..."    // the form's code from core composition-type-cs
* type ^short = "Form 0XX document type; LOINC NNNNN-N \"...\" is sent as an additional coding"

* category 1..*
* category ^short = "Document category: ..., and the Form 0XX category"
* category[dhpCategory] 1..1
* category[dhpCategory] = $composition-category-cs#Comp-001-NNNN "..."  // from core composition-category-cs
* category contains formCategory 1..1
* category[formCategory] = $document-category-cs#form-0XX   // added in step 3
* category[formCategory] ^short = "Form 0XX document category"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "..."

* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "..."

* date ^short = "Date the document was generated"

* author 1..*
* author only Reference(UZCorePractitionerRole or UZCorePractitioner)
* author ^short = "..."

* title 1..1
* title ^short = "Document title"

* custodian only Reference(UZCoreOrganization)
* custodian ^short = "Organization keeping the document"

// Sections are sliced by code
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    personalInformation 0..1 and
    diagnosis 0..1 and
    responsiblePersons 0..1

// 1. <section name in Uzbek, as on the paper form>
* section[personalInformation].title 1..1
* section[personalInformation].title ^short = "1. Personal information"
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#45970-1 "Demographic information section"
* section[personalInformation].code ^short = "<the paper form fields of this section, in English>"
* section[personalInformation].entry only Reference(UZCorePatient or UZCoreRelatedPerson or UZCoreObservation)
* section[personalInformation].entry ^short = "..."
```

Rules for the profile:
- `Parent: UZCoreComposition` and `^experimental = true`, like the parent profile.
- `type` is the form's code from core `composition-type-cs` (the binding is required). The matching LOINC document code goes in the example as a second `type.coding` and is named in `type ^short`. If the form has no code in `composition-type-cs`, add it to UZ Core first.
- `status` is not fixed. The document goes through the lifecycle on the [Document statuses](../input/pagecontent/document-statuses.md) page, and `status ^short` says when this form is `preliminary` and when it is `final`.
- `category` holds two codes: the `dhpCategory` slice from core `composition-category-cs` and the `formCategory` slice with the form code from `document-category-cs`.
- Restrict every reference to a UZ Core profile where one exists (§4 of the modelling guidelines); use a base resource only when there is no profile.
- Each section has `title 1..1` with a numbered English `^short`, `code 1..1` with a LOINC or active SNOMED CT section code and a `^short` listing the paper form fields of the section, and `entry` restricted to specific profiles. Make a section `1..1` only if every document has it; the rest are `0..1`, so the profile does not demand data the source system may not have.
- Make `encounter` `0..1` if the form is not always tied to one encounter (as in 111 and 130).
- Every `^short`, `^definition` and `Description` is in English. Russian and Uzbek translations go in `.po` files (step 9), not in FSH.

### 3. Document category code

Add the form code to `input/fsh/terminology/DocumentCategoryCS.fsh`. The display is in Uzbek, with translations as `designation` (en + ru):

```fsh
* #form-0XX "Forma nomi o'zbekcha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Form name in English"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Название формы по-русски"
```

### 4. Form terminology

Put the form terminology in `input/fsh/terminology/form0XX/`. Use the `Rulesets.fsh` inserts for the standard headers: `OriginalCodeSystemDraft(id)` / `OriginalCodeSystem(id)`, `IntegrationsValueSet(id)`, `SupplementCodeSystemDraft(id, supplements, version)` / `SupplementCodeSystem(...)`; pass `supplements` as an alias (`$sct`), without quotes.

Codes:
- Choose a code in the order from step 1: an exact standard code, then a code already used in UZ Core or another form, and only then a local code.
- Code every diagnosis in ICD-10, including the conditions of family members in the history.
- Write each code with its official display, in FSH and on the mapping page alike.

ValueSets:
- Form ValueSets are not bound to profile elements: a form reuses UZ Core profiles and has no profiles of its own for its parts. A ValueSet tells implementers which codes go in which field.
- So the `Description` of each ValueSet names the element and the field it is for, e.g. "Observation.valueCodeableConcept for the Form 0XX ... field (Observation.code SNOMED CT NNNNNN \"...\")".
- Every ValueSet and CodeSystem is used in the example or on the mapping page. Delete any that nothing uses.

Supplements (Russian and Uzbek displays for SNOMED CT and LOINC codes):
- A form has one supplement per code system: `form0XX-snomed-supplement-cs`, `form0XX-loinc-supplement-cs`. It holds the codes the form uses that no other form's supplement translates yet.
- The supplement version is the release of the system it translates, written as SemVer per §5.1 of the modelling guidelines (SNOMED CT `2026-01` -> `2026.1.0`, LOINC `2.82` -> `2.82.0`), not the IG version.
- Every SNOMED CT and LOINC code the form uses has a `ru` and `uz` `designation` in its own supplement or in another form's.
- Every ValueSet that contains such codes carries a `valueset-supplement` extension for each supplement that translates them (§5.3 of the modelling guidelines). Without it the published ValueSet shows no Russian or Uzbek names.

### 5. Example document (Bundle)

One `Bundle` of type `document`: the first entry is the `Composition`, then all the resources, and the last is the `Provenance` with the signature. All resources are `Usage: #inline` and referenced via `urn:uuid:`.

```fsh
Instance: example-form-0XX-name
InstanceOf: Bundle
Usage: #example
Title: "Form 0XX - ..."
Description: "Example of Form 0XX (<form name in Uzbek>) represented as a FHIR document Bundle: <scenario>."
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:..."
* type = #document
* timestamp = "2026-01-15T14:30:00+05:00"
* entry[0].fullUrl = "urn:uuid:...0001"
* entry[=].resource = composition-0XX-001
* entry[+].fullUrl = "urn:uuid:...0002"
* entry[=].resource = patient-0XX-001
// ... the other resources ...
* entry[+].fullUrl = "urn:uuid:...9999"
* entry[=].resource = provenance-signature-0XX

Instance: composition-0XX-001
InstanceOf: Form0XXNameComposition
Usage: #inline
* language = #en
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:..."
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "0XX"                       // official form number
* status = #final
* type.coding[0] = $composition-type-cs#emdoc-0010-NNNN "..."
* type.coding[+] = $loinc#NNNNN-N "..."
* category[dhpCategory] = $composition-category-cs#Comp-001-NNNN "..."
* category[formCategory] = $document-category-cs#form-0XX
* subject = Reference(urn:uuid:...0002)
* encounter = Reference(urn:uuid:...0003)
* date = "2026-01-15T14:30:00+05:00"                // when the document was finalised
* author = Reference(urn:uuid:...)
* title = "Form 0XX - ..."
* custodian = Reference(urn:uuid:...0004)
* section[personalInformation].title = "Personal information"
* section[=].code = $loinc#45970-1 "Demographic information section"
* section[=].entry[0] = Reference(urn:uuid:...0002)

Instance: organization-0XX-001
InstanceOf: UZCoreOrganization
Usage: #inline
* language = #en
* identifier[taxId].type = $identifier-type#TAX "Tax ID number"
* identifier[taxId].system = $organization-tax-id-system-dhp
* identifier[taxId].value = "201234567"
* name = "..."
```

Rules for the example:
- Every resource is an instance of a UZ Core profile where one exists (`InstanceOf: UZCoreOrganization`, `UZCoreImmunization`, `UZCoreMedication` and so on), not of a base resource.
- Organizations are identified by the Soliq tax ID in the `taxId` slice, as above. Do not use the local `https://dhp.uz/fhir/core/sid/uz/organization-code` system.
- The dates tell one coherent story: events go in clinical order, and nothing happens after the encounter ends or after the document date.
- The document is dated when it was finalised: for a `final` document, `Composition.date`, `Bundle.timestamp` and `Provenance.signature.when` are the moment it was closed (for example the discharge), not an earlier date.
- The example uses the codes from the form's ValueSets, with the same displays.
- The UUIDs of `Bundle.identifier` and `Composition.identifier` are different and unique within the IG: do not copy them from another example without changing them.

### 6. Field mapping page

`input/pagecontent/form-0XX-mapping.md` is a field-by-field table of the form for developers implementing the integration. Copy `form-111-mapping.md` and replace the content: a `<style>` block with column widths, a heading, an Overview section (with links to the profile and the example), tables per section with the columns `UZ | RU | FHIR Path | Code | Example Value`, and a link to the example.

Rules for the tables:
- Every coded row links the ValueSet (or CodeSystem, or ConceptMap) its code comes from and gives the code with its display, e.g. ``[Social Observation Code](ValueSet-form111-social-observation-code-vs.html) `chr-0029-00004` "Workplace phone number"``. A bare code is not enough.
- For an Observation, the observed concept (the question or finding) goes in `code` and the answer goes in `value`: a code from its ValueSet, yes/no, a number or text. In the `Code` column, label both parts: `` `code` ...<br>`value` ...``.
- If the format of a value in the source system (DMED) is not known, map it to free text (`valueString`) rather than inventing a ValueSet for it.
- Each identifier is given with its `system`.
- Write only guidance specific to this form. General FHIR or integration advice ("copy, don't compute", "omit missing values" and the like) does not belong on a mapping page.

### 7. Profile intro

`input/pagecontent/StructureDefinition-<profile id>-intro.md` is one or two lines linking to the mapping page and the example. Use an existing `*-intro.md` as a template.

### 8. Page registration and menu

In `sushi-config.yaml` a new page is registered in two places: in the `pages:` block (the page list is kept by hand, and a page missing from it does not get into the IG) and in the `menu:` block under `Documents:`:

```yaml
pages:
  form-0XX-mapping.md:
    title: Form 0XX Mapping

menu:
  Documents:
    Form 0XX Mapping: form-0XX-mapping.html
```

### 9. Translations

- **Pages.** Every IG page exists in three languages: the English original in `input/pagecontent/` and translations with the same name in `input/translations/ru/pagecontent/` and `input/translations/uz/pagecontent/`. Translate the mapping page and the profile intro into Russian and Uzbek in the same PR.
- **Profile.** Translate the `^short`, titles and descriptions of the profile through `.po` files, as in §6 of the modelling guidelines: after a build, copy `StructureDefinition-<profile id>.po` into `input/translations/{ru,uz}/` and fill in `msgstr`. Form 096 is the example.
- **Terminology** is translated in FSH: local codes through `designation`, SNOMED CT and LOINC codes through the supplement (step 4).

### 10. Changelog

Add a line about the new form to `input/pagecontent/changelog.md`, under `### In development` (and to its translations in `input/translations/{ru,uz}/pagecontent/`).

## Build and check

- Full build: `_genonce.sh` (it runs SUSHI itself, so there is no need to run SUSHI separately). If the publisher runs out of memory, give it 12 GB through an environment variable: `export JAVA_TOOL_OPTIONS="-Xmx12g"` (macOS/Linux) or `set JAVA_TOOL_OPTIONS=-Xmx12g` (Windows).
- Markdown-only changes: `./fast-narrative-rebuild.sh` (~12 s) instead of a full build.
- Do not run two full builds at once: they clash on the shared `~/.fhir` lock.
- After the build, open the QA page (`output/qa.html`) and fix the new errors and warnings.
- Terminology check: after `sushi .`, run `python3 .github/scripts/check_terminology.py`; CI runs it on every PR. It fails on a supplement with the IG version, a ValueSet without the `valueset-supplement` extension for a supplement that translates its codes, and a ValueSet or CodeSystem that nothing uses. Problems that predate the check are listed in `.github/scripts/check_terminology_baseline.txt`: do not add new lines to it, and remove a line when you fix it.

## New form checklist

- [ ] Searched UZ Core, the other forms and the standard terminologies before creating anything (step 1)
- [ ] `Composition` profile: `Parent: UZCoreComposition`, `type` from `composition-type-cs`, `category` with two slices, `status` not fixed
- [ ] Every reference restricted to UZ Core profiles where they exist
- [ ] Sections: LOINC/SNOMED CT code, `title 1..1` with a numbered `^short`
- [ ] Every `^short` in English, ru/uz in `.po` files
- [ ] `#form-0XX` code in `DocumentCategoryCS.fsh` (uz + en/ru designation)
- [ ] Every ValueSet describes its field and is used; unused ones deleted
- [ ] Supplements versioned to the base release, covering every SNOMED CT and LOINC code, linked from every ValueSet
- [ ] Example `Bundle` (`#document`) with UZ Core profiles, the organization's Soliq tax ID, coherent dates and a `Provenance`
- [ ] `form-0XX-mapping.md` page: every code with its ValueSet and display, no generic advice
- [ ] `StructureDefinition-<id>-intro.md` intro file
- [ ] Entry in `pages:` and menu item in `sushi-config.yaml`
- [ ] Translations of the pages and the profile in `input/translations/{ru,uz}/`
- [ ] Entry in `changelog.md` (`### In development`) + translations
- [ ] `_genonce.sh` build with no new QA errors
- [ ] `check_terminology.py` passes
