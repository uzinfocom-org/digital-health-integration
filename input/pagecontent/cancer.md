<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

This page documents how Cancer Registry data is represented as FHIR resources.

### Overview

The Cancer Registry records cancer diagnoses, treatment episodes, encounters, tumor morphology and behavior, histologic grade, disease progression and TNM staging. Data is submitted to the DHP as linked, atomic FHIR resources. Each resource conforms to the cancer profile named in its section and to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

The central resource is `CancerCondition`. `CancerEpisodeOfCare` groups the treatment course, and `CancerEncounter` records a visit within that course. Observations linked through `focus` describe morphology, behavior, grade, progression and staging. All resources refer to the same patient.

Standard ICD-10, ICD-O-3, SNOMED CT and LOINC codes are used where available. Registry-specific concepts remain in local Cancer CodeSystems. ConceptMaps translate the registry's numeric identifiers into the terminology used by DHP.

### Recording a cancer diagnosis (CancerCondition)

Records the cancer diagnosis, registry identifier, laterality, detection condition and overall TNM stage. The diagnosis uses ICD-10. Laterality is represented in `bodySite`, while the detection condition is an extension on that element.

Profile: [CancerCondition](StructureDefinition-cancer-condition.html)

Example: [cancer-condition-example](Condition-cancer-condition-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Cancer Registry identifier | - | `57dcdd0a-5a68-4cc6-8503-5ab15a41c62b` | `identifier[cancerRegistry]` |
| Diagnosis | [CancerICD10VS](ValueSet-cancer-icd-10-vs.html) | `ICD-10#C02` | `Condition.code` |
| Diagnosis source/type | UZ Core diagnosis type | `diagnosis-type-cs#cancer-0003-0003` | `extension[diagnosisType]` |
| ICCC-3 group | ICCC-3 | `iccc-3-cs#IIId2` | `extension[cancer-iccc-3-group]` |
| Laterality | [CancerLateralityQualifierVS](ValueSet-cancer-laterality-qualifier-vs.html) | `SNOMED CT#7771000` (Left) | `bodySite` |
| Detection condition | [CancerDetectionConditionVS](ValueSet-cancer-detection-condition-vs.html) | `cancer-detection-condition-cs#cancer-0005-0002` | `bodySite.extension[detection-condition]` |
| Overall stage | [CancerTNMStageVS](ValueSet-cancer-tnm-stage-vs.html) | `SNOMED CT#1352944009` (Stage II UICC) | `stage.summary` |
| Staging evidence | - | reference to the stage-group Observation | `stage.assessment` |
| Patient / encounter | - | references to Patient and CancerEncounter | `subject` / `encounter` |
| Onset / registration date | - | `2026-08-15` / `2026-08-20` | `onsetDateTime` / `recordedDate` |
| Responsible organization | - | reference to Organization | `participant.actor` |

### Grouping a treatment course (CancerEpisodeOfCare)

Groups a diagnosis and its treatment course. A standard SNOMED CT treatment intent is preferred. Use the local intent slice when no standard concept represents the registry value. Treatment modality remains a local Cancer code.

Profile: [CancerEpisodeOfCare](StructureDefinition-cancer-episode-of-care.html)

Example: [cancer-episode-of-care-example](EpisodeOfCare-cancer-episode-of-care-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Cancer Registry identifier | - | registry UUID | `identifier[cancerRegistry]` |
| DHP service type | UZ Core episode-of-care type | `episode-of-care-type#mserv-0001-00004` | `type[serviceType]` |
| Standard treatment intent | [CancerTreatmentIntentSnomedVS](ValueSet-cancer-treatment-intent-snomed-vs.html) | `SNOMED CT#373808002` (Curative) | `type[treatmentIntent]` |
| Local treatment intent | [CancerTreatmentIntentVS](ValueSet-cancer-treatment-intent-vs.html) | `cancer-treatment-intent-cs#cancer-0017-0001` | `type[localTreatmentIntent]` |
| Treatment modality | [CancerSpecialTreatmentVS](ValueSet-cancer-special-treatment-vs.html) | `cancer-special-treatment-cs#cancer-0018-0002` (Surgical treatment) | `type[specialTreatment]` |
| Diagnosis | - | reference to CancerCondition | `diagnosis.condition` |
| Patient / organization / care manager | - | resource references | `patient` / `managingOrganization` / `careManager` |
| Care period | - | start and optional end date | `period` |

### Documenting a visit (CancerEncounter)

Records a cancer-related visit and links it to the treatment episode and diagnosis.

Profile: [CancerEncounter](StructureDefinition-cancer-encounter.html)

Example: [cancer-encounter-example](Encounter-cancer-encounter-example.html)

| Information to record | Example | Stored in |
| :--- | :--- | :--- |
| Status and class | `completed`, `v3-ActCode#IMP` | `status`, `class` |
| Encounter type | `encounter-type-cs#mserv-0001-00002` | `type` |
| Episode of care | reference to CancerEpisodeOfCare | `episodeOfCare` |
| Diagnosis and role | CancerCondition, `final` | `diagnosis.condition`, `diagnosis.use` |
| Patient / provider / attending clinician | resource references | `subject`, `serviceProvider`, `participant.actor` |
| Visit period | start and end date-time | `actualPeriod` |
| Discharge disposition | `encounter-discharge-disposition-home-cs#mserv-0004-00004` | `admission.dischargeDisposition` |

### Tumor morphology panel

The panel groups the tumor behavior and histologic-grade observations. The component observations refer back to the same `CancerCondition` through `focus`.

Profile: [CancerObservationTumorMorphology](StructureDefinition-cancer-observation-tumor-morphology.html)

Example: [cancer-observation-tumor-morphology-example](Observation-cancer-observation-tumor-morphology-example.html)

| Information to record | Example code | Stored in |
| :--- | :--- | :--- |
| Panel type | `LOINC#77753-2` (Tumor morphology panel Cancer) | `Observation.code` |
| Behavior observation | reference to CancerObservationBehavior | `hasMember` |
| Histologic-grade observation | reference to CancerObservationHistologicGrade | `hasMember` |
| Patient / cancer diagnosis | references to Patient and CancerCondition | `subject` / `focus` |

### Tumor behavior and primary site

Records the ICD-O-3 morphology/behavior code and primary topography. The body site carries both the ICD-O-3 topography and a SNOMED CT anatomical code so it also satisfies the UZ Core body-site binding.

Profile: [CancerObservationBehavior](StructureDefinition-cancer-observation-behavior.html)

Example: [cancer-observation-behavior-example](Observation-cancer-observation-behavior-example.html)

| Information to record | Example code | Stored in |
| :--- | :--- | :--- |
| Observation type | `LOINC#31206-6` (Behavior ICD-O-3 Cancer) | `Observation.code` |
| Morphology and behavior | `ICD-O-3#8070/3` (Squamous cell carcinoma, NOS) | `valueCodeableConcept` |
| Primary topography | `ICD-O-3#C15.1` (Thoracic esophagus) | `bodySite.coding[icdO3]` |
| Anatomical equivalent | `SNOMED CT#59609004` (Thoracic esophagus structure) | `bodySite.coding[snomed]` |

### Histologic grade

Records the tumor grade and the method used to confirm it.

Profile: [CancerObservationHistologicGrade](StructureDefinition-cancer-observation-histologic-grade.html)

Example: [cancer-observation-histologic-grade-example](Observation-cancer-observation-histologic-grade-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation type | [CancerTumorMorphologyPanelVS](ValueSet-cancer-tumor-morphology-panel-vs.html) | `LOINC#21858-6` (Grade Cancer) | `Observation.code` |
| Confirmation method | [CancerConfirmationMethodVS](ValueSet-cancer-confirmation-method-vs.html) | `cancer-confirmation-method-cs#cancer-0002-0003` (Histology) | `method` |
| Grade | [CancerDegreeDifferentiationVS](ValueSet-cancer-degree-differentiation-vs.html) | `SNOMED CT#1155701009` (G1, well differentiated) | `valueCodeableConcept` |

### Recording progression or metastasis

Records recurrence, regional or distant metastasis, progression or another emerging process, together with the affected anatomical site.

Profile: [CancerObservationMetastase](StructureDefinition-cancer-observation-metastase.html)

Example: [cancer-observation-metastase-example](Observation-cancer-observation-metastase-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation type | - | `LOINC#97509-4` (Cancer disease progression) | `Observation.code` |
| Progression type | [CancerEmergingProcessVS](ValueSet-cancer-emerging-process-vs.html) | `cancer-emerging-process-cs#cancer-0015-0003` (Distant metastases) | `valueCodeableConcept` |
| Affected site | [CancerBodyLocationVS](ValueSet-cancer-body-location-vs.html) | `SNOMED CT#110549009` (Lung and pleura) | `bodySite` |

### Recording TNM categories

Create one Observation for each available cT, pT, cN, pN, cM or pM category. `Observation.code` identifies the axis, `method` identifies the staging edition, and `valueCodeableConcept` records the category value permitted for that axis.

Profile: [CancerObservationTNMCategory](StructureDefinition-cancer-observation-tnm-category.html)

Examples: [cT](Observation-cancer-observation-tnm-category-ct.html), [cN](Observation-cancer-observation-tnm-category-cn.html), [pN](Observation-cancer-observation-tnm-category-pn.html), [cM](Observation-cancer-observation-tnm-category-cm.html), [pM](Observation-cancer-observation-tnm-category-pm.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| TNM axis | [CancerTNMCategoryVS](ValueSet-cancer-tnm-category-vs.html) | `SNOMED CT#399504009` (cT category) | `Observation.code` |
| Staging edition | [CancerStagingEditionVS](ValueSet-cancer-staging-edition-vs.html) | `SNOMED CT#897275008` (AJCC 8th edition) | `method` |
| Category value | axis-specific cT/pT/cN/pN/cM/pM value set | `SNOMED CT#1352983006` (cT value) | `valueCodeableConcept` |
| Patient / diagnosis / performer | resource references | Patient, CancerCondition and PractitionerRole | `subject` / `focus` / `performer` |

The axis-specific value sets are [CancerCCCtCategoryVS](ValueSet-cancer-ccc-t-category-vs.html), [CancerCCpTCategoryVS](ValueSet-cancer-cc-p-t-category-vs.html), [CancerCCcNCategoryVS](ValueSet-cancer-cc-c-n-category-vs.html), [CancerCCpNCategoryVS](ValueSet-cancer-cc-p-n-category-vs.html), [CancerCCcMCategoryVS](ValueSet-cancer-cc-c-m-category-vs.html) and [CancerCCpMCategoryVS](ValueSet-cancer-cc-p-m-category-vs.html). Most values use SNOMED CT; local codes remain where no exact SNOMED CT category exists.

### Recording the overall TNM stage

Records the overall stage and links the individual TNM category observations that support it.

Profile: [CancerObservationTNMStageGroup](StructureDefinition-cancer-observation-tnm-stage-group.html)

Example: [cancer-observation-tnm-stage-group-example](Observation-cancer-observation-tnm-stage-group-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation type | - | `SNOMED CT#399390009` (TNM stage grouping) | `Observation.code` |
| Overall stage | [CancerTNMStageVS](ValueSet-cancer-tnm-stage-vs.html) | `SNOMED CT#1352927005` (Stage I) | `valueCodeableConcept` |
| Supporting categories | - | references to cT, cN, pN, cM and pM observations | `hasMember` |

### Translating Cancer Registry codes

Use these ConceptMaps when incoming registry data contains numeric Cancer Registry identifiers rather than DHP terminology codes.

| Source data | ConceptMap | Target terminology |
| :--- | :--- | :--- |
| Registry status and related local identifiers | [Cancer Registry Status to DHP Status](ConceptMap-cancer-registry-dictionary-to-dhp-status-cm.html) | DHP and Cancer CodeSystems |
| Registry ICD-10 identifier | [Cancer Registry ICD-10 to DHP ICD-10](ConceptMap-cancer-registry-dictionary-icd10-to-dhp-icd10-cm.html) | ICD-10 |
| Registry ICD-O-3 topography identifier | [Cancer Registry ICD-O-3 Topography to DHP ICD-O-3 Topography](ConceptMap-cancer-registry-dict-icdo3-topography-to-dhp-icdo3-cm.html) | ICD-O-3 |

### Supporting resources

The examples also reference [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html), [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) and [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html).
