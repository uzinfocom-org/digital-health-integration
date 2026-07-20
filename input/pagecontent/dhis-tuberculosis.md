<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

This page documents how tuberculosis case-management data is represented as FHIR resources.

### Overview

The DHIS tuberculosis module captures the registration, diagnosis, laboratory work-up and treatment course of tuberculosis (TB) patients. The data originates from the DHIS tuberculosis information system and is added to the DHP as individual, atomic FHIR resources. Resources conform to the DHIS profiles linked in each section, and to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) or standard FHIR profiles otherwise.

Wherever a concept has a standard equivalent, resources carry the standard code directly - SNOMED CT for diagnoses, specimen types, identified species and processing states, LOINC for diagnostic tests and drug-susceptibility agents. The source system records this data with its own local codes; every local code is kept in its DHIS CodeSystem and mapped to its nearest standard concept by a ConceptMap, so an integrator can always look up the standard code for a code they hold. In resources, use the standard code wherever an exact (`equivalent`) match exists - the value set bound to each field offers the standard code for those concepts and keeps a local code only where no exact standard equivalent exists (for example culture-medium variants, smear/culture grades and drug-susceptibility bands). Each section below gives the governing profile, a concrete example resource, and a table of the value set and an example code for every field that carries a code.

A typical record links together: a [patient](#registering-a-patient-patient), one or more [TB diagnoses](#recording-a-tb-diagnosis-condition), an [episode of care](#grouping-the-treatment-course-episodeofcare) that groups the treatment course, the [specimens](#collecting-a-specimen-specimen) collected, and the [diagnostic test results](#recording-diagnostic-test-results-observation) produced from them.

### Registering a patient (Patient)

The subject of every TB record. There is no DHIS-specific Patient profile; use UZ Core directly.

Profile: [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html)

Example: [example-patient-john](Patient-example-patient-john.html)

| Information to record | Stored in |
| :--- | :--- |
| National identifier | `identifier` (national ID slice) |
| Name, gender, birth date | `name`, `gender`, `birthDate` |
| Address | `address` (UZ address slice) |
| Responsible facility | `managingOrganization` → [Organization](#supporting-resources) |

### Recording a TB diagnosis (Condition)

Set `Condition.code` to the TB diagnosis (or a relevant comorbidity). Most diagnoses use SNOMED CT directly; a few that have no 1:1 SNOMED CT match use local codes.

Profile: [DHISCondition](StructureDefinition-dhis-condition.html)

Example: [example-tbc-diagnosis](Condition-example-tbc-diagnosis.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Diagnosis | [DHISConditionCodeVS](ValueSet-dhis-condition-code-vs.html) | `SNOMED CT#88356006` (Primary tuberculous complex) | `Condition.code` |
| Clinical status | [condition-clinical](https://dhp.uz/fhir/core/CodeSystem-clinical-status-cs.html) | `condition-clinical#active` (Active) | `clinicalStatus` |
| Verification status | [condition-ver-status](https://dhp.uz/fhir/core/CodeSystem-condition-verification-status-cs.html) | `condition-ver-status#confirmed` (Confirmed) | `verificationStatus` |
| Category | [condition-category](http://terminology.hl7.org/CodeSystem/condition-category) | `condition-category#encounter-diagnosis` (Encounter Diagnosis) | `category` |
| When it started | - | `2025-06-03` | `onsetDateTime` |
| Subject | - | reference to [Patient](#registering-a-patient-patient) | `subject` |

Use the SNOMED CT code wherever an exact match exists; only the few diagnoses without a 1:1 SNOMED CT match (e.g. fibro-cavitary TB and the non-TB comorbidities) keep a local code. The [dhis-tuberculosis-to-snomed](ConceptMap-dhis-tuberculosis-to-snomed.html) ConceptMap maps every DHIS diagnosis code to its SNOMED CT concept, so an integrator can find the standard code for any local code they hold.

### Grouping the treatment course (EpisodeOfCare)

An episode of care groups a patient's TB diagnosis, treatment and follow-up over the whole course of care, and names the care manager.

Profile: [DHISEpisodeOfCare](StructureDefinition-dhis-episode-of-care.html)

Example: [example-dhis-episode-of-care](EpisodeOfCare-example-dhis-episode-of-care.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Episode type | [episode-of-care-type-cs](https://dhp.uz/fhir/core/CodeSystem-episode-of-care-type-cs.html) | `episode-of-care-type-cs#mserv-0001-00004` (Treatment services) | `type` |
| Status | [EpisodeOfCareStatus](https://hl7.org/fhir/R5/valueset-episode-of-care-status.html) | `active` | `status` |
| Care period | - | `2025-03-12` to `2025-09-12` | `period.start` / `period.end` |
| Diagnosis being treated | - | reference to [DHISCondition](#recording-a-tb-diagnosis-condition) | `diagnosis.condition` |
| Patient | - | reference to [Patient](#registering-a-patient-patient) | `patient` |
| Care manager | - | reference to [PractitionerRole](#supporting-resources) | `careManager` |

### Collecting a specimen (Specimen)

Each sample collected for laboratory testing. `Specimen.type` records what kind of sample it is; `Specimen.feature.type` records its processing state (primary sample, sediment, culture isolate).

Profile: [DHISSpecimen](StructureDefinition-dhis-specimen.html)

Example: [example-dhis-specimen](Specimen-example-dhis-specimen.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Specimen type | [SpecimenTypeVS](ValueSet-specimen-type-vs.html) | `SNOMED CT#119334006` (Sputum specimen) | `Specimen.type` |
| Processing state | [SpecimenFeatureTypeVS](ValueSet-specimen-feature-type-vs.html) | `specimen-feature-type-cs#Spec002-0001` (Primary sample) | `feature.type` |
| Status | [specimen-status](https://hl7.org/fhir/R5/valueset-specimen-status.html) | `available` | `status` |
| Subject | - | reference to [Patient](#registering-a-patient-patient) | `subject` |
| Derived from | - | reference to a parent Specimen | `parent` |

Use the SNOMED CT code wherever an exact match exists; only the site groupings and culture media without a 1:1 SNOMED CT match keep a local code. The [specimen-type-conceptmap](ConceptMap-specimen-type-conceptmap.html) ConceptMap maps every DHIS specimen type to its SNOMED CT concept, and the [specimen-feature-type-to-snomed](ConceptMap-specimen-feature-type-to-snomed.html) ConceptMap does the same for the processing states (the culture isolate uses a SNOMED CT code; primary sample and sediment keep a local code).

### Recording diagnostic test results (Observation)

Every laboratory or imaging result is its own Observation. In all four profiles below, `Observation.code` identifies the test, drawn from [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) - LOINC where an exact code exists, otherwise a local code for culture-medium and assay variants. The [observation-tuberculosis-code](ConceptMap-dhis-observation-tuberculosis-code.html) ConceptMap maps every DHIS test code to its LOINC concept. What differs is how the result is carried:

- coded results use [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) (SNOMED CT for identified species, local codes for smear/culture grades, plus HL7 interpretation codes such as `POS`/`NEG`),
- result components (for example, one row per drug in a susceptibility panel) are labelled with [DHISObservationComponentCodeVS](ValueSet-dhis-observation-component-code-vs.html),
- yes/no findings use a boolean.

Choose the profile that matches the test:

| Test | Profile | Result is carried as |
| :--- | :--- | :--- |
| Sputum smear microscopy | [DHISObservationMicroscopy](StructureDefinition-dhis-observation-microscopy.html) | coded AFB grade in a component |
| Culture, species identification, drug-susceptibility testing (DST), line-probe assay | [DHISObservation](StructureDefinition-dhis-observation.html) | coded value and/or per-agent components |
| Chest X-ray | [DHISObservationXray](StructureDefinition-dhis-observation-xray.html) | boolean (finding present/absent) |
| HIV test | [DHISObservationHIV](StructureDefinition-dhis-observation-hiv.html) | boolean |

#### Sputum smear microscopy

Records the acid-fast bacilli (AFB) load found on a stained smear. The grade is stored in a component.

Profile: [DHISObservationMicroscopy](StructureDefinition-dhis-observation-microscopy.html)

Example: [example-microscopy](Observation-example-microscopy.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Test code | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `LOINC#53904-9` (Sputum smear microscopy, fluorescent) | `Observation.code` |
| What the component reports | [DHISObservationComponentCodeVS](ValueSet-dhis-observation-component-code-vs.html) | `observation-component-code-cs#Tub004-0032` (Grading) | `component.code` |
| AFB grade | [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) | `dhis-observation-codeable-concept-cs#Tub003-0008` (3+ / 40 fields) | `component.valueCodeableConcept` |
| Specimen tested | - | reference to [DHISSpecimen](#collecting-a-specimen-specimen) | `specimen` |

#### Culture, identification and drug-susceptibility testing

Covers solid/liquid culture, species identification and drug-susceptibility testing (DST), including line-probe assays. The overall result goes in `valueCodeableConcept`; in a DST panel each drug is a component whose code is the agent and whose value is the susceptibility outcome.

Profile: [DHISObservation](StructureDefinition-dhis-observation.html)

Example: [example-tb-microscopy](Observation-example-tb-microscopy.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Test code | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `observation-dhis-code-cs#Tub002-0007` (Phenotypic DST on MGIT) | `Observation.code` |
| Overall result | [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) | `SNOMED CT#113858008` (M. tuberculosis complex) | `valueCodeableConcept` |
| Drug tested (DST) | [DHISObservationComponentCodeVS](ValueSet-dhis-observation-component-code-vs.html) | `observation-component-code-cs#Tub004-0008` (Isoniazid 0.1 mg/mL) | `component.code` |
| Susceptibility outcome | [ObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) | `v3-ObservationInterpretation#R` (Resistant) | `component.valueCodeableConcept` |
| Specimen tested | - | reference to [DHISSpecimen](#collecting-a-specimen-specimen) | `specimen` |

Identified species and the trace and identification qualifiers use their SNOMED CT code directly; the [observation-result-to-snomed](ConceptMap-dhis-observation-result-to-snomed.html) ConceptMap records the DHIS result code each one replaces, while smear/culture grades and resistance-band outcomes without a standard equivalent keep a local code.

For DST components, plain drug-name agents use the LOINC `<drug> [Susceptibility]` code directly; concentration-bearing agents keep a local code (the critical concentration a standard code drops). The [observation-component-to-loinc](ConceptMap-dhis-observation-component-to-loinc.html) ConceptMap maps every DHIS drug agent to its LOINC concept.

#### Chest X-ray

Records whether a TB-related finding was seen on a chest X-ray.

Profile: [DHISObservationXray](StructureDefinition-dhis-observation-xray.html)

Example: [example-observation-xray](Observation-example-observation-xray.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Test code | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `LOINC#30745-4` (Chest X-ray) | `Observation.code` |
| Finding present | - | `false` | `Observation.value` (boolean) |

#### HIV test

Records the result of an HIV test performed as part of TB/HIV co-infection screening.

Profile: [DHISObservationHIV](StructureDefinition-dhis-observation-hiv.html)

Example: [example-obs-hiv](Observation-example-obs-hiv.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Test code | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `LOINC#56888-1` (HIV testing) | `Observation.code` |
| Result | - | `true` | `Observation.value` (boolean) |

### Documenting the inpatient stay (Encounter)

An inpatient admission for TB treatment. There is no DHIS-specific Encounter profile; use UZ Core directly. `diagnosis.condition` links the admission to the TB diagnosis.

Profile: [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition-uz-core-encounter.html)

Example: [example-dhis-encounter](Encounter-example-dhis-encounter.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Class | [v3-ActCode](https://dhp.uz/fhir/core/CodeSystem-actcode-cs.html) | `v3-ActCode#IMP` (inpatient encounter) | `class` |
| Status | [EncounterStatus](https://hl7.org/fhir/R5/valueset-encounter-status.html) | `completed` | `status` |
| Admission period | - | `2026-02-12` to `2026-02-18` | `actualPeriod` |
| Diagnosis | - | reference to [DHISCondition](#recording-a-tb-diagnosis-condition) | `diagnosis.condition` |
| Diagnosis role | [encounter-diagnosis-use](https://hl7.org/fhir/R5/codesystem-encounter-diagnosis-use.html) | `encounter-diagnosis-use#final` (Final) | `diagnosis.use` |

### Supporting resources

These resources are referenced by the records above and use UZ Core profiles directly.

| Resource | Profile | Example | Role |
| :--- | :--- | :--- | :--- |
| Organization | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | [example-organization](Organization-example-organization.html) | The TB treatment facility |
| Practitioner | [UZCorePractitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | [example-practitioner](Practitioner-example-practitioner.html) | A clinician involved in care |
| PractitionerRole | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html) | [practitionerrole-001](PractitionerRole-practitionerrole-001.html) | Links a clinician to a facility |
