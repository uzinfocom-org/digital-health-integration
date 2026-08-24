<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

This page documents how oncology case-management data is represented as FHIR resources.

### Overview

The Cancer registry module captures the registration, diagnosis, staging, treatment and follow-up of oncology patients. The data originates from the Cancer information system and is added to the DHP as individual, atomic FHIR resources. Resources conform to the Cancer profiles linked in each section, and to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) or standard FHIR profiles otherwise.

Wherever a concept has a standard equivalent, resources carry the standard code directly - ICD-10 for the coded diagnosis and SNOMED CT for body site. The source system records this data with its own local codes (registry disposition, confirmation method, TNM categories, topography, morphology, treatment character, and so on); every local code is kept in its own Cancer CodeSystem and mapped to the corresponding standard or DHP code by a ConceptMap, so an integrator can always look up the standard/target code for a code they hold. In resources, use the standard or DHP code wherever an exact (`equivalent`) match exists - the value set bound to each field offers that code and keeps a local code only where no exact standard equivalent exists (for example TNM category grades, stage sub-classifications and treatment modality combinations, which have no 1:1 external terminology). Each section below gives the governing profile, a concrete example resource, and a table of the value set and an example code for every field that carries a code.

A typical record links together: a [patient](#registering-a-patient-patient), a [primary cancer diagnosis](#recording-the-primary-diagnosis-cancerconditionprimary) and any related [secondary/metastatic condition](#recording-metastatic-or-recurrent-disease-cancerconditionsecondary), an [episode of care](#grouping-the-treatment-course-cancerepisodeofcare) that groups the treatment course, an [encounter](#documenting-a-visit-cancerencounter) at which the condition and treatment plan are determined, and the [staging observations](#recording-staging-cancerobservationtnmcategory-and-cancerobservationtnmstagegroup) (individual TNM categories and the overall stage group) produced from the work-up.

### Registering a patient (Patient)

The subject of every cancer record. There is no Cancer-specific Patient profile; use UZ Core directly.

Profile: [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html)

| Information to record | Stored in |
| :--- | :--- |
| National identifier | `identifier` (national ID slice) |
| Name, gender, birth date | `name`, `gender`, `birthDate` |
| Address | `address` (UZ address slice) |
| Responsible facility | `managingOrganization` → [Organization](#supporting-resources) |

### Recording the primary diagnosis (CancerConditionPrimary)

Determines tumor topography (site of origin) and morphology (histologic type). `Condition.code` carries the diagnosis coded to ICD-10; the tumor-specific detail - laterality, ICD-O-3 topography and morphology, grade of differentiation, tumor behavior, circumstance of detection, ICCC-3 group and method of confirmation - is carried in extensions, since none of these have a direct home on the base `Condition` element.

Profile: [CancerConditionPrimary](StructureDefinition-cancer-condition-primary.html)

Example: [cancer-condition-primary-example](Condition-cancer-condition-primary-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Diagnosis | ICD10VS | `ICD-10#C02` | `Condition.code` |
| Laterality | [CancerLaterlityQualifierCS](CodeSystem-cancer-laterlity-qualifier-cs.html) | `cancer-laterlity-qualifier-cs#cancer-0004-0002` (Chap tomonda / Слева / Left) | `extension[lateralityQualifier]` |
| Topography (ICD-O-3) | [CancerICD3TopographyCS](CodeSystem-cancer-icd3-topography-cs.html) | `cancer-icd3-topography-cs#C020` (tilning yuqori yuzasi QA / языка верхняя поверхность БДУ) | `extension[topography]` |
| Morphology (ICD-O-3) | [CancerICD3morphologyCS](CodeSystem-cancer-icd3-morphology-cs.html) | `cancer-icd3-morphology-cs#8000` (Xavfli o'smalar QA / Новообразование злокачественное БДУ) | `extension[morphology]` |
| Grade of differentiation | [CancerDegreeDifferentiationCS](CodeSystem-cancer-degree-differentiation-cs.html) | `cancer-degree-differentiation-cs#cancer-0020-0002` (G2, moderately differentiated) | `extension[gradeDifferentiation]` |
| Tumor behavior | [CancerTumorBehaviorCS](CodeSystem-cancer-tumor-behavior-cs.html) | `cancer-tumor-behavior-cs#cancer-0019-0004` (Yomon sifatli / Malignant) | `extension[tumorBehavior]` |
| Circumstance of detection | [CancerDetectionCircumstanceCS](CodeSystem-cancer-detection-circumstance-cs.html) | `cancer-detection-circumstance-cs#cancer-0005-0002` (Onkonazorat kabinetida aniqlangan) | `extension[detectionCircumstance]` |
| ICCC-3 group | `$iccc-3-cs` | `iccc-3-cs#III` | `extension[cancer-iccc-3-group]` |
| Method of confirmation | [CancerConfirmationMethodCS](CodeSystem-cancer-confirmation-method-cs.html) | `cancer-confirmation-method-cs#cancer-0002-0003` (Gistologiya / Histology) | `extension[confirmationMethod]` |
| Clinical status | [condition-clinical](https://dhp.uz/fhir/core/CodeSystem-clinical-status-cs.html) | `condition-clinical#active` | `clinicalStatus` |
| Verification status | [condition-ver-status](https://dhp.uz/fhir/core/CodeSystem-condition-verification-status-cs.html) | `condition-ver-status#confirmed` | `verificationStatus` |
| Category | [condition-category](http://terminology.hl7.org/CodeSystem/condition-category) | `condition-category#problem-list-item` | `category` |
| Body site | SNOMED CT | `SNOMED CT#422005` | `bodySite` |
| Onset / recorded date | - | `2026-08-15` / `2020-08-15` | `onsetDateTime` / `recordedDate` |
| Overall stage | [CancerStageCS](CodeSystem-cancer-stage-cs.html) | `cancer-stage-cs#cancer-0012-0002` (I) | `stage.summary` |
| Sub-stage | [CancerSubStageCS](CodeSystem-cancer-sub-stage-cs.html) | `cancer-sub-stage-cs#cancer-0013-0007` (a1) | `stage.summary` |
| Staging evidence | - | reference to [CancerObservationTNMStageGroup](#recording-staging-cancerobservationtnmcategory-and-cancerobservationtnmstagegroup) | `stage.assessment` |
| Subject / encounter | - | references to [Patient](#registering-a-patient-patient) / [CancerEncounter](#documenting-a-visit-cancerencounter) | `subject` / `encounter` |
| Responsible clinician | - | reference to [PractitionerRole](#supporting-resources) | `participant.actor` |

None of the topography, morphology, laterality, detection-circumstance, confirmation-method, grade, or behavior codes have a 1:1 external terminology match, so each keeps its Cancer-derived local code (`cancer-000X-YYYY`); only the base diagnosis (ICD-10) and body site (SNOMED CT) use a standard code. Registration-level fields such as method of case ascertainment (`CancerIdCS` codes #505-#513) and the discharge-disposition-style vital status (#29-#33) are mapped by the [cancer-id-status-to-dhp-status-cm](ConceptMap-cancer-id-status-to-dhp-status-cm.html) ConceptMap onto the corresponding DHP diagnosis-type and discharge-disposition code systems, and by the Cancer-specific `CancerDiagnosisTypeCS`/`CancerEncounterDischargeDispositionCS` code systems otherwise. Topography codes from the source system's numeric `CancerIdICD3TopographyCS` are mapped 1:1 onto the `CancerICD3TopographyCS` alphanumeric (`Cxxx`) codes by the [cancer-id-icd3-topography-to-cancer-icd3-topography-cm](ConceptMap-cancer-id-icd3-topography-to-cancer-icd3-topography-cm.html) ConceptMap, so an integrator holding either code set can resolve to the other.

### Recording metastatic or recurrent disease (CancerConditionSecondary)

Captures a metastatic, recurrent or otherwise secondary oncology process and the anatomical area it involves, linked back to the primary diagnosis.

Profile: [CancerConditionSecondary](StructureDefinition-condition-cancer-secondary.html)

Example: [cancer-condition-secondary-example](Condition-cancer-condition-secondary-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Related primary diagnosis | - | reference to [CancerConditionPrimary](#recording-the-primary-diagnosis-cancerconditionprimary) | `extension[relatedCondition]` |
| Nature of the process | [CancerEmergingProcessCS](CodeSystem-cancer-emerging-process-cs.html) | `cancer-emerging-process-cs#cancer-0015-0001` (Retsidiv / Рецидив / Recurrence) | `code` |
| Anatomical area involved | [CancerDamageAreaCS](CodeSystem-cancer-damage-area-cs.html) | `cancer-damage-area-cs#cancer-0014-0002` (Suyaklar / Кости / Bones) | `bodySite` |
| Clinical / verification status | - | `condition-clinical#active` / `condition-verification-status#confirmed` | `clinicalStatus` / `verificationStatus` |
| Subject / encounter | - | references to [Patient](#registering-a-patient-patient) / [CancerEncounter](#documenting-a-visit-cancerencounter) | `subject` / `encounter` |
| Onset | - | `2026-08-15` | `onsetDateTime` |

Neither the emerging-process nor the damage-area concepts have a standard terminology equivalent in this registry, so both stay Cancer local codes.

### Documenting a visit (CancerEncounter)

An encounter at which a patient's oncology condition and treatment are assessed. Extends UZ Core's Encounter with a constrained encounter class and a required link to the episode of care it belongs to.

Profile: [CancerEncounter](StructureDefinition-cancer-encounter.html)

Example: [cancer-encounter-example](Encounter-cancer-encounter-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Class | [v3-ActCode](https://dhp.uz/fhir/core/CodeSystem-actcode-cs.html) | `v3-ActCode#IMP` (inpatient encounter) | `class` |
| Status | [EncounterStatus](https://hl7.org/fhir/R5/valueset-encounter-status.html) | `completed` | `status` |
| Episode of care | - | reference to [CancerEpisodeOfCare](#grouping-the-treatment-course-cancerepisodeofcare) | `episodeOfCare` |
| Visit period | - | `2026-08-18T09:00` to `2026-08-18T10:30` | `actualPeriod` |
| Diagnosis | - | reference to [CancerConditionPrimary](#recording-the-primary-diagnosis-cancerconditionprimary) | `diagnosis.condition` |
| Diagnosis role | [encounter-diagnosis-use](https://hl7.org/fhir/R5/codesystem-encounter-diagnosis-use.html) | `encounter-diagnosis-use#final` (Final) | `diagnosis.use` |
| Discharge disposition | [discharge-disposition-home-cs](https://dhp.uz/fhir/core/CodeSystem-discharge-disposition-home-cs.html) | `discharge-disposition-home-cs#mserv-0004-00002` | `admission.dischargeDisposition` |

The registry's own vital-status/disposition codes (`CancerIdCS` #29-#33 - alive, deceased, moved away, diagnosis not confirmed, follow-up period completed) are mapped onto this DHP discharge-disposition code system and onto Cancer-specific disposition codes by the [cancer-id-status-to-dhp-status-cm](ConceptMap-cancer-id-status-to-dhp-status-cm.html) ConceptMap.

### Grouping the treatment course (CancerEpisodeOfCare)

An episode of care groups a patient's cancer diagnosis and the treatment course delivered for it, recording both the intent (character) and the modality (special treatment) of that course.

Profile: [CancerEpisodeOfCare](StructureDefinition-cancer-episode-of-care.html)

Example: [cancer-episode-of-care-example](EpisodeOfCare-cancer-episode-of-care-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Episode type | [episode-of-care-type](https://dhp.uz/fhir/core/CodeSystem-episode-of-care-type-cs.html) | `episode-of-care-type#mserv-0001-00004` (Treatment services) | `type[serviceType]` |
| Character of treatment | [CancerCharacterTreatmentCS](CodeSystem-cancer-character-treatment-cs.html) | `cancer-character-treatment-cs#cancer-0017-0002` (Radikal / Радикальное / Radical) | `type[characterTreatment]` |
| Special (modality) treatment | [CancerSpecialTreatmentCS](CodeSystem-cancer-special-treatment-cs.html) | `cancer-special-treatment-cs#cancer-0018-0002` (Jarrohlik davolash / Хирургическое / Surgical treatment) | `type[specialTreatment]` |
| Status | [EpisodeOfCareStatus](https://hl7.org/fhir/R5/valueset-episode-of-care-status.html) | `active` | `status` |
| Care period | - | `2026-08-15` to `2026-08-15` | `period.start` / `period.end` |
| Diagnosis being treated | - | reference to [CancerConditionPrimary](#recording-the-primary-diagnosis-cancerconditionprimary) | `diagnosis.condition` |
| Patient / managing organization | - | references to [Patient](#registering-a-patient-patient) / [Organization](#supporting-resources) | `patient` / `managingOrganization` |
| Care manager | - | reference to [PractitionerRole](#supporting-resources) | `careManager` |

Both character of treatment and special treatment are combinations specific to the registry (e.g. "surgery + external beam radiation + chemotherapy" as a single value) with no standard modality-combination terminology to map onto, so both keep Cancer local codes end to end.

### Recording staging (CancerObservationTNMCategory and CancerObservationTNMStageGroup)

Staging is split across two observation profiles: one instance per individual TNM category (cT, cN, cM, pT, pN, pM), and one summary instance for the overall stage grouping that references the category observations it was derived from.

#### Individual TNM category

Profile: [CancerObservationTNMCategory](StructureDefinition-cancer-observation-tnm-category.html)

Example: [cancer-observation-tnm-category-ct](Observation-cancer-observation-tnm-category-ct.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Which category is being recorded | [CancerTNMCategoryCS](CodeSystem-cancer-tnm-category-cs.html) | `cancer-tnm-category-cs#cancer-0022-0003` (cT category) | `Observation.code` |
| Category value | one of `CancerCCcTCategoryCS` / `CancerCCcNCategoryCS` / `CancerCCcMCategoryCS` / `CancerCCpTCategoryCS` / `CancerCCpNCategoryCS` / `CancerCCpMCategoryCS`, matched to the category coded above | `cancer-cc-p-n-category-cs#cancer-0010-0001` (X) | `valueCodeableConcept` |
| Status | [ObservationStatus](https://hl7.org/fhir/R5/valueset-observation-status.html) | `final` | `status` |
| Category (kind of observation) | [observation-category](https://hl7.org/fhir/R5/valueset-observation-category.html) | `observation-category#imaging` | `category` |
| Subject / focus | - | references to [Patient](#registering-a-patient-patient) / [CancerConditionPrimary](#recording-the-primary-diagnosis-cancerconditionprimary) | `subject` / `focus` |
| Performer | - | reference to [PractitionerRole](#supporting-resources) | `performer` |

Each of the six category value code systems is a scale specific to that TNM axis (clinical vs. pathologic, T vs. N vs. M), so category values keep Cancer local codes; only which axis is being reported (`CancerTNMCategoryCS`) is a fixed, closed list.

#### Overall stage group

Profile: [CancerObservationTNMStageGroup](StructureDefinition-cancer-observation-tnm-stage-group.html)

Example: [cancer-observation-tnm-stage-group-example](Observation-cancer-observation-tnm-stage-group-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation type | [CancerStageGroupCS](CodeSystem-cancer-stage-group-cs.html) | `cancer-stage-group-cs#cancer-0021-0001` (TNM bosqichlarini guruhlash / TNM stage grouping) | `Observation.code` |
| Stage | [CancerStageCS](CodeSystem-cancer-stage-cs.html) via component code `cancer-stage-group-cs#cancer-0021-0004` | `cancer-stage-cs#cancer-0012-0002` (I) | `component[stage].valueCodeableConcept` |
| Stage clarification (sub-stage) | [CancerSubStageCS](CodeSystem-cancer-sub-stage-cs.html) via component code `cancer-stage-group-cs#cancer-0021-0005` | `cancer-sub-stage-cs#cancer-0013-0007` (a1) | `component[stageClarification].valueCodeableConcept` |
| Subject / focus | - | references to [Patient](#registering-a-patient-patient) / [CancerConditionPrimary](#recording-the-primary-diagnosis-cancerconditionprimary) | `subject` / `focus` |
| Supporting category observations | - | reference(s) to [CancerObservationTNMCategory](#individual-tnm-category) | `hasMember` |
| Effective date / performer | - | `2025-08-15T10:30` / reference to [PractitionerRole](#supporting-resources) | `effectiveDateTime` / `performer` |

Stage and sub-stage are plain ordinal/letter scales (0, I-IV and a-d plus sub-splits like a1/b2) with no standard staging terminology equivalent in this registry, so both stay as Cancer local codes; `hasMember` is how a stage-group observation ties back to the individual category observations (e.g. cT) that support it.

### Supporting resources

These resources are referenced by the records above and use UZ Core profiles directly.

| Resource | Profile | Role |
| :--- | :--- | :--- |
| Organization | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | The oncology treatment facility |
| Practitioner | [UZCorePractitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | A clinician involved in care |
| PractitionerRole | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html) | Links a clinician to a facility |