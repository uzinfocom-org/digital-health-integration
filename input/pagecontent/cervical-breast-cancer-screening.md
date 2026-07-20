<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

This page documents the mapping between cervical and breast cancer screening data and FHIR resources.

### Overview

Cervical and breast cancer screening captures laboratory results, imaging findings and clinical observations from the screening programme. The data originates from the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System and is added to the DHP as individual, atomic FHIR resources. Resources conform to the screening profiles linked in each section where available, and to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) or standard FHIR profiles otherwise.

Each section gives the value set to use, an example code, the governing profile and a concrete example resource. Height, weight and BMI use the standard [FHIR vital signs](https://hl7.org/fhir/observation-vitalsigns.html) profiles.

### Ordering a test or procedure (ServiceRequest)

Set `ServiceRequest.code` to the test or procedure being ordered.

Profile: [ScreeningServiceRequest](StructureDefinition-screening-service-request.html)

Examples: [ServiceRequest-cytology](ServiceRequest-ServiceRequest-cytology.html), [ServiceRequest-hpv](ServiceRequest-ServiceRequest-hpv.html), [ServiceRequest-colposcopy](ServiceRequest-ServiceRequest-colposcopy.html), [ServiceRequest-mammography](ServiceRequest-ServiceRequest-mammography.html)

| What is ordered | Value set | Example code |
| :--- | :--- | :--- |
| Cytology smear | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#18500-9` |
| HPV test | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#82675-0` |
| Colposcopy | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#392003006` |
| Mammography | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#71651007` |

### Issuing a report (DiagnosticReport)

Set `DiagnosticReport.code` to the procedure (same codes as the referral). A mammography report may also carry an overall conclusion in `conclusionCode`.

Profile: [ScreeningDiagnosticReport](StructureDefinition-screening-diagnostic-report.html)

Examples: [DiagnosticReport-cytology](DiagnosticReport-DiagnosticReport-cytology.html), [DiagnosticReport-colposcopy](DiagnosticReport-DiagnosticReport-colposcopy.html), [DiagnosticReport-mammography](DiagnosticReport-DiagnosticReport-mammography.html)

| Information to record | Value set | Example code |
| :--- | :--- | :--- |
| Report type | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) / [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `LOINC#18500-9` (cytology)<br>`SNOMED CT#392003006` (colposcopy)<br>`SNOMED CT#71651007` (mammography) |
| Overall BI-RADS conclusion (mammography) | [ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-birads-cs#src-birads-2` (BI-RADS 2) |

### Cytology result

Records the grade of a cytological smear.

Profile: [ScreeningObservation](StructureDefinition-screening-observation.html)

Example: [cytology-result](Observation-cytology-result.html) (AI variant: [cytology-ai-analysis](Observation-cytology-ai-analysis.html), whose output is stored as free text in `Observation.value`)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Test code | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#18500-9` (cytology smear) | `Observation.code` |
| Cytology grade | [ScreeningCervicalCytologyVS](ValueSet-screening-cervical-cytology-vs.html) | `screening-cervical-cytology-cs#scr-cyt-3` (LSIL) | `Observation.value` |

### HPV test result

Records a high-risk HPV DNA result.

Profile: [ScreeningObservation](StructureDefinition-screening-observation.html)

Example: [hpv-result](Observation-hpv-result.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Test code | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#82675-0` (HPV test) | `Observation.code` |
| HPV result | [ScreeningHPVVS](ValueSet-screening-hpv-vs.html) | `screening-hpv-cs#scr-hpv-3` (Positive) | `Observation.value` |

### Colposcopy result

Records the colposcopy impression and the cervical transformation zone.

Profile: [ScreeningObservation](StructureDefinition-screening-observation.html)

Example: [colposcopy-result](Observation-colposcopy-result.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Procedure code | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#392003006` (colposcopy) | `Observation.code` |
| Colposcopy impression | [ScreeningColposcopyVS](ValueSet-screening-colposcopy-vs.html) | `screening-colposcopy-cs#scr-colpo-2` (LSIL) | `Observation.value` |
| Transformation zone type | [ScreeningTransformationZoneVS](ValueSet-screening-transformation-zone-vs.html) | `screening-transformation-zone-cs#scr-tz-2` (Type 2) | `component` (code `SNOMED CT#1285652007`) |

### Mammography reading

A structured mammography assessment. The procedure code `SNOMED CT#71651007` (Mammography) identifies the observation; each measurement below is recorded as a component.

Profile: [ScreeningObservation](StructureDefinition-screening-observation.html)

Example: [mammography-summary](Observation-mammography-summary.html)

| Information to record | Value set | Example code | Stored in (component code) |
| :--- | :--- | :--- | :--- |
| BI-RADS category | [ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-birads-cs#src-birads-2` (BI-RADS 2) | `SNOMED CT#1348266008` |
| Breast density | [ScreeningBreastFormVS](ValueSet-screening-breast-form-vs.html) | `screening-breast-form-cs#src-breast-density-4` (Type D) | `SNOMED CT#129793001` |
| Image quality | [ScreeningImageQualityVS](ValueSet-screening-image-quality-vs.html) | `screening-image-quality-cs#src-img-quality-3` (moderate) | `SNOMED CT#246646005` |

### Breast finding

For each finding seen on mammography, record what it is, which breast and quadrant, and that it is present. The observation's `code` is `SNOMED CT#71651007` (Mammography).

Profile: [ScreeningObservation](StructureDefinition-screening-observation.html)

Examples: [mammography-right-breast-finding](Observation-mammography-right-breast-finding.html), [mammography-left-breast-finding](Observation-mammography-left-breast-finding.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| The finding (present = `true`) | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html) | `SNOMED CT#109285009` (melanocytic nevus, right)<br>`SNOMED CT#129797000` (skin thickening, left) | `component.code` (value = boolean) |
| Breast | [ScreeningBodySiteVS](ValueSet-screening-body-site-vs.html) | `SNOMED CT#73056007` (Right)<br>`SNOMED CT#80248007` (Left) | `Observation.bodySite` |
| Quadrant | [ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `screening-breast-quadrant-cs#src-breast-quadrant-2` (UE)<br>`screening-breast-quadrant-cs#src-breast-quadrant-1` (UI) | `bodySite` quadrant extension |

### Vital signs (height, weight, BMI)

Height, weight and BMI are standard [FHIR vital signs](https://hl7.org/fhir/observation-vitalsigns.html), each recorded as its own Observation - they are not screening-specific. Use the FHIR profile for each; the code is fixed by the profile.

Profiles: [bodyheight](https://hl7.org/fhir/bodyheight.html), [bodyweight](https://hl7.org/fhir/bodyweight.html), [bmi](https://hl7.org/fhir/bmi.html)

Examples: [body-height](Observation-body-height.html), [body-weight](Observation-body-weight.html), [body-mass-index](Observation-body-mass-index.html)

| Measurement | FHIR profile | Code | Example value |
| :--- | :--- | :--- | :--- |
| Body height | `bodyheight` | `LOINC#8302-2` | 160 cm |
| Body weight | `bodyweight` | `LOINC#29463-7` | 52 kg |
| Body mass index | `bmi` | `LOINC#39156-5` | 20.3 kg/m2 |

### Free-text clinical notes

These observations carry free text rather than coded values; set `Observation.code` to the type of note.

Profile: [ScreeningObservation](StructureDefinition-screening-observation.html)

| Observation | Observation.code | What it holds |
| :--- | :--- | :--- |
| [gynecological-physical-exam](Observation-gynecological-physical-exam.html) | `SNOMED CT#5880005` (Physical examination) | Obstetric and gynecological history, in `note` |
| [gynecological-complaints](Observation-gynecological-complaints.html) | `SNOMED CT#1269489004` (Chief complaint) | Patient-reported complaints, in `note` |
| [oncogynecological-followup](Observation-oncogynecological-followup.html) | `SNOMED CT#281036007` (Follow-up consultation) | Follow-up findings, in `component` |

### Care team roles (PractitionerRole)

Set `PractitionerRole.code` from [ScreeningRolesVS](ValueSet-screening-roles-vs.html).

Profile: [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html)

Examples: [practitioner-role-laborant](PractitionerRole-practitioner-role-laborant.html), [practitioner-role-gynecologist](PractitionerRole-practitioner-role-gynecologist.html), [practitioner-role-radiologist](PractitionerRole-practitioner-role-radiologist.html), [practitioner-role-nurse](PractitionerRole-practitioner-role-nurse.html)

| Role | Example code |
| :--- | :--- |
| Laboratory technician | `screening-roles-cs#his_laboratory_laborant` |
| Obstetrician-gynecologist | `screening-roles-cs#his_centre_obstetrics_gynecology_obstetrician_gynecologist` |
| Radiologist | `screening-roles-cs#his_ris_ragiologist_head` |
| Patronage nurse | `screening-roles-cs#his_poliklinika_patronage_nurse` |
