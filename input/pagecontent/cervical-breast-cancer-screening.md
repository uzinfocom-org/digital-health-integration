<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

This page documents the mapping between cervical and breast cancer screening data and FHIR resources.

### Overview

Cervical and breast cancer screening captures laboratory results, imaging findings, pathology conclusions, questionnaire answers and clinical observations from the screening programme. The data originates from the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System and is added to the DHP as individual, atomic FHIR resources. Resources conform to the screening profiles linked in each section where available, and to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) or standard FHIR profiles otherwise.

Each section gives the value set to use, an example code, the governing profile and a concrete example resource. Height, weight and BMI use the standard [FHIR vital signs](https://hl7.org/fhir/observation-vitalsigns.html) profiles.

Coded values use SNOMED CT or LOINC wherever an equivalent concept exists. Local codes remain only where no standard concept matches; those are published in the `screening-*-cs` CodeSystems with Uzbek, Russian and English designations.

<div>{% include screening-model-en.svg %}</div><br clear="all"/>

### Program and source identifiers

**Screening program type.** Besides its record identifier, a screening resource carries a second `identifier` that says which screening program it belongs to. Its system is `https://dhp.uz/fhir/core/sid/prg/uz/program` and its value is the program's code from the table in the next section.

- Add it to Observation, DiagnosticReport, ServiceRequest, Condition, Consent and Specimen, and to a Questionnaire and its QuestionnaireResponse when the whole questionnaire belongs to one program.
- Leave it off Patient, Practitioner and PractitionerRole: they are shared across programs.
- The HPV [Woman medical exam](Questionnaire-screening-woman-exam.html) questionnaire and its responses belong to both HPV programs, so they carry both codes.
- An HPV resource that cannot be attributed to either program carries one identifier with the value `breast-cervical-unspecified`. This applies to a Condition whose ICD-10 code is on neither program's list, or on both, and to a referral to a branch of the national oncology or maternal and child health centre. `breast-cervical-unspecified` does not stand for a DMED program.

**Source system.** `meta.source` identifies which system created a resource: `https://dhp.uz/fhir/source/screening` (this Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System) or `https://dhp.uz/fhir/source/dmed` (DMED). Required and enforced by invariant on [ScreeningObservation](StructureDefinition-screening-observation.html), [ScreeningServiceRequest](StructureDefinition-screening-service-request.html), [ScreeningDiagnosticReport](StructureDefinition-screening-diagnostic-report.html), [ScreeningDocumentReference](StructureDefinition-screening-document-reference.html) and [ScreeningComposition](StructureDefinition-screening-composition.html). Do not infer the source system from the presence of an identifier from `https://dhp.uz/fhir/core/sid/doc/uz/screening` - that identifier system does not indicate which system produced a resource.

This source metadata rule applies to clinical evidence and orders; new plan invitations use the documented [screening plan contract](#screening-plans) and omit `meta.source`.

### DMED and HPV programs

Select the exact program identifier from [Screening Program Types](https://dhp.uz/fhir/core/en/ValueSet-screening-program-type-vs.html). The identifier is additional to the record identifier. DMED and HPV use distinct breast/cervical programs; matching clinical SNOMED codes do not make the programs interchangeable.

| Program | `identifier.value` | Implementing system | Questionnaire |
| :--- | :--- | :--- | :--- |
| DMED breast questionnaire program | `mserv-0007-00007` | DMED | [Breast questionnaire](Questionnaire-BreastCancerScreeningQuestionnaire.html) |
| HPV breast screening program | `268547008` | HPV screening system | [screening-breast-risk](Questionnaire-screening-breast-risk.html), followed by applicable screening activities |
| DMED cervical questionnaire program | `mserv-0007-00009` | DMED | [Cervical questionnaire](Questionnaire-CervicalCancerScreeningQuestionnaire.html) |
| HPV cervical screening program | `171149006` | HPV screening system | [screening-cervical-risk](Questionnaire-screening-cervical-risk.html), followed by applicable screening activities |

<a id="screening-plans"></a>
### Screening plans and invitations

For each patient and program, the MIS links its clinical resources to a plan ServiceRequest. A national invitation is a plan created by DHP; if no open plan exists, the MIS creates its own. Use the existing Core profiles for these resources:

| Resource | Purpose | Profile and example |
| :--- | :--- | :--- |
| PlanDefinition | Defines the national program and refers to its invitation template through `action.definitionCanonical` | [UZ Core PlanDefinition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-plan-definition.html); [example](PlanDefinition-example-hpv-cervical-plan.html) |
| ActivityDefinition | Describes the invitation template: `kind = ServiceRequest`, `intent = plan`, `profile = https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest` | [UZ Core ActivityDefinition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-activitydefinition.html); [example](ActivityDefinition-example-hpv-cervical-invitation-activity.html) |
| ServiceRequest | Records a patient's invitation or MIS plan for one program | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html); [national invitation](ServiceRequest-ServiceRequest-screening-invitation-cervical.html), [MIS plan](ServiceRequest-example-hpv-breast-mis-plan.html) |

<div>{% include screening-plan-model-en.svg %}</div><br clear="all"/>

#### Populating the patient plan

| Field | What to send |
| :--- | :--- |
| `intent` | `plan` |
| `category` | SNOMED CT `310422005` — Prevention/screening invitation |
| `identifier` | One program identifier with system `https://dhp.uz/fhir/core/sid/prg/uz/program` and the program's exact code |
| `subject` | Reference to the patient |
| `authoredOn` | Date and time the plan was created |
| `status` | `draft` for a national invitation; `active` when the MIS accepts it or creates its own plan |
| `instantiatesCanonical` | National invitation: exact <code>PlanDefinition.url&#124;version</code>; independent MIS plan: omit |
| `performer` | Assigned provider, if there is one; otherwise omit |
| `code` | Optional clinical coding in `code.concept`; identify the program through `identifier` |
| `meta.source`, `occurrencePeriod` | Omit on the plan; clinical resources retain their source metadata |

#### Finding, activating and creating a plan

Before saving screening data, find the patient's open plan for the exact program:

```
GET [base]/ServiceRequest?subject=Patient/{id}&intent=plan&status=draft,active&category=http://snomed.info/sct|310422005&identifier=https://dhp.uz/fhir/core/sid/prg/uz/program|{programCode}&_sort=-_lastUpdated
```

URL-encode parameter values in the request. For a national invitation, also compare `instantiatesCanonical` with the current program's exact canonical and version. An invitation to an older definition must not be reused for the current definition.

1. One matching plan: reuse it; change `draft` to `active` when accepting an invitation, preserving the other fields.
2. No matching open plan: create an `active` MIS plan without `instantiatesCanonical`.
3. Several matching plans: resolve the duplicate records before linking results; sorting does not establish uniqueness.

Use conditional creation (`If-None-Exist`) with the complete plan identity to prevent duplicates, and version-aware updates (`If-Match`) when changing an existing plan.

#### Linking clinical resources and changing status

| Clinical resource | Link to the plan |
| :--- | :--- |
| QuestionnaireResponse, Observation, DiagnosticReport, Procedure, clinical ServiceRequest | `basedOn[]` |
| Specimen | `request[]` |
| Condition | Standard [event-basedOn](https://hl7.org/fhir/extensions/StructureDefinition-event-basedOn.html) extension with `valueReference` |

Keep the immediate clinical-order reference alongside the plan reference. Pathology ServiceRequest permits `basedOn` 1..*; IHC and other screening Observations permit 0..*. A shared resource may link to both HPV plans when it belongs to both programs.

HPV keeps its plan `active` across repeated examinations. DMED sets the linked plan to `completed` after saving a completed QuestionnaireResponse, whether DHP or DMED created the plan. For a subsequent new DMED screening, repeat the open-plan lookup and create a new MIS plan if none exists; preserve the completed plan as history. See the [completed DMED plan](ServiceRequest-example-dmed-breast-plan-completed.html) and its [linked response](QuestionnaireResponse-example-dmed-breast-response-with-plan.html).

The MIS changes plan status. DHP does not infer plan completion from the received results.

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
| Colposcopy impression | [ScreeningColposcopyVS](ValueSet-screening-colposcopy-vs.html) | `SNOMED CT#416030007` (LSIL) | `Observation.value` |
| Transformation zone type | [ScreeningTransformationZoneVS](ValueSet-screening-transformation-zone-vs.html) | `screening-transformation-zone-cs#scr-tz-2` (Type 2) | `component` (code `SNOMED CT#1285652007`) |

Use the following codes from [ScreeningColposcopyVS](ValueSet-screening-colposcopy-vs.html) in `Observation.valueCodeableConcept`. Set `coding.system` to `http://snomed.info/sct` for SNOMED CT rows, or `https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-colposcopy-cs` for local rows.

| Screening source value | Code | Coding system | Meaning |
| :--- | :--- | :--- | :--- |
| `NORM_NILM` | `373887005` | SNOMED CT | Negative for intraepithelial lesion or malignancy |
| `LSIL` | `416030007` | SNOMED CT | Cervicovaginal cytology: Low grade squamous intraepithelial lesion |
| `HSIL` | `22725004` | SNOMED CT | High-grade squamous intraepithelial lesion |
| `ATYPICAL_CHANGE` | `scrn-0091-00004` | Local | Atypical change |
| `ASC_H` | `373878001` | SNOMED CT | Atypical squamous cells, cannot exclude high-grade squamous intraepithelial lesion |
| `CIN1` | `285836003` | SNOMED CT | Cervical intraepithelial neoplasia grade 1 |
| `CIN2_PLUS` | `scrn-0091-00007` | Local | Cervical intraepithelial neoplasia grade 2 or worse (CIN 2+) |

### Mammography reading

A structured mammography assessment. The procedure code `SNOMED CT#71651007` (Mammography) identifies the observation; each measurement below is recorded as a component.

Profile: [ScreeningMammographyObservation](StructureDefinition-screening-mammography-observation.html)

Examples: [ScreeningMammographyObservationExample](Observation-screening-mammography-observation-example.html), [mammography-summary](Observation-mammography-summary.html)

| Information to record | Value set | Example code | Stored in (component code) |
| :--- | :--- | :--- | :--- |
| BI-RADS category | [ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-birads-cs#src-birads-2` (BI-RADS 2) | `SNOMED CT#1348266008` |
| Breast density | [ScreeningBreastFormVS](ValueSet-screening-breast-form-vs.html) | `screening-breast-form-cs#src-breast-density-4` (Type D) | `SNOMED CT#129793001` |
| Image quality | [ScreeningImageQualityVS](ValueSet-screening-image-quality-vs.html) | `screening-image-quality-cs#src-img-quality-3` (moderate) | `SNOMED CT#246646005` |
| Reading number (1-3) | - | `2` | `screening-specialized-observation-parameter-cs#scrn-0073-00026` |
| Selected as consensus result | - | `true` | `screening-specialized-observation-parameter-cs#scrn-0073-00027` |
| Result of the third arbitration reading | - | `true` | `screening-specialized-observation-parameter-cs#scrn-0073-00028` |

Double reading is modelled as one Observation per reading, each carrying its own reading number. The reading chosen as final sets the consensus flag; a third, arbitration reading sets the arbitration flag instead.

### Breast finding

For each finding seen on mammography, record what it is, which breast and quadrant, and that it is present. The observation's `code` is `SNOMED CT#71651007` (Mammography).

Profile: [ScreeningObservation](StructureDefinition-screening-observation.html)

Examples: [mammography-right-breast-finding](Observation-mammography-right-breast-finding.html), [mammography-left-breast-finding](Observation-mammography-left-breast-finding.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| The finding (present = `true`) | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html) | `SNOMED CT#400096001` (melanocytic naevus)<br>`SNOMED CT#17417006` (thickening of skin) | `component.code` (value = boolean) |
| Breast | [ScreeningBodySiteVS](ValueSet-screening-body-site-vs.html) | `SNOMED CT#73056007` (Right)<br>`SNOMED CT#80248007` (Left) | `Observation.bodySite` |
| Quadrant | [ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `screening-breast-quadrant-cs#src-breast-quadrant-2` (UE)<br>`screening-breast-quadrant-cs#src-breast-quadrant-1` (UI) | `bodySite` quadrant extension |

### Breast ultrasound

A structured breast ultrasound examination. `Observation.code` is `SNOMED CT#47079000` (Ultrasonography of breast) and `bodySite` records the examined side. Whole-breast parameters and the characteristics of a focal lesion are all recorded as components.

Profile: [ScreeningBreastUltrasoundObservation](StructureDefinition-screening-breast-ultrasound-observation.html)

Example: [ScreeningBreastUltrasoundObservationExample](Observation-screening-breast-ultrasound-observation-example.html)

| Information to record | Value set | Stored in (component code) |
| :--- | :--- | :--- |
| Examined side | [ScreeningUltrasoundBreastSideVS](ValueSet-screening-ultrasound-breast-side-vs.html) | `Observation.bodySite` |
| Breast symmetry | [ScreeningUltrasoundBreastSymmetryVS](ValueSet-screening-ultrasound-breast-symmetry-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00004` |
| ACR composition | [ScreeningUltrasoundAcrCompositionVS](ValueSet-screening-ultrasound-acr-composition-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00005` |
| Skin and nipple status | [ScreeningUltrasoundSkinNippleStatusVS](ValueSet-screening-ultrasound-skin-nipple-status-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00006` |
| Duct status | [ScreeningUltrasoundDuctStatusVS](ValueSet-screening-ultrasound-duct-status-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00012` |
| Axillary node status | [ScreeningUltrasoundAxillaryNodeStatusVS](ValueSet-screening-ultrasound-axillary-node-status-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00017` |
| Focal lesion shape | [ScreeningUltrasoundLesionShapeVS](ValueSet-screening-ultrasound-lesion-shape-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00027` |
| Focal lesion orientation | [ScreeningUltrasoundLesionOrientationVS](ValueSet-screening-ultrasound-lesion-orientation-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00028` |
| Focal lesion contour | [ScreeningUltrasoundLesionContourVS](ValueSet-screening-ultrasound-lesion-contour-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00029` |
| Focal lesion echogenicity | [ScreeningUltrasoundLesionEchogenicityVS](ValueSet-screening-ultrasound-lesion-echogenicity-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00030` |
| Lesion size, position and distance from nipple | - | `scrn-0052-00022` to `scrn-0052-00026` |

The full list of parameters is on the [profile page](StructureDefinition-screening-breast-ultrasound-observation.html); every coded parameter has its own value set under [ScreeningUltrasoundParameterVS](ValueSet-screening-ultrasound-parameter-vs.html).

### Ordering pathology

A histology, cytology or immunohistochemistry order. `code` is fixed to `SNOMED CT#714797009` (Histologic test); what was actually sent to the laboratory is carried in `orderDetail.parameter`.

Profile: [ScreeningPathologyServiceRequest](StructureDefinition-screening-pathology-service-request.html)

Example: [ScreeningPathologyRequestExample](ServiceRequest-screening-pathology-request-example.html)

| Parameter | Value set | Parameter code |
| :--- | :--- | :--- |
| Material class | [ScreeningBreastMaterialClassVS](ValueSet-screening-breast-material-class-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00001` |
| Biopsy subtype | [ScreeningBreastBiopsySubtypeVS](ValueSet-screening-breast-biopsy-subtype-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00002` |
| Surgical procedure type | [ScreeningBreastSurgicalProcedureTypeVS](ValueSet-screening-breast-surgical-procedure-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00003` |
| Breast cytology material type | [ScreeningBreastCytologyMaterialTypeVS](ValueSet-screening-breast-cytology-material-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00004` |
| Cervical material type | [ScreeningCervicalMaterialTypeVS](ValueSet-screening-cervical-material-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00005` |
| Special treatment type (repeatable) | [ScreeningSpecialTreatmentTypeVS](ValueSet-screening-special-treatment-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00006` |
| Treatment date or period | `Period` | `screening-histology-order-parameter-cs#scrn-0069-00007` |
| Other treatment | `string` | `screening-histology-order-parameter-cs#scrn-0069-00008` |

Five invariants make the second parameter conditional on the material class and require other-treatment text if and only if the special treatment type includes `Other`. A single treatment date is represented by a `Period` with equal `start` and `end` values; when the treatment date is unknown, the optional parameter is omitted. This historical treatment period is distinct from `ServiceRequest.occurrencePeriod`, which represents when the requested pathology service should occur.

### Specimen

The material the pathology request refers to.

Profile: [ScreeningSpecimen](StructureDefinition-screening-specimen.html) (based on [UZCoreSpecimen](https://dhp.uz/fhir/core/StructureDefinition-uz-core-specimen.html))

Example: [ScreeningSpecimenExample](Specimen-screening-breast-biopsy-specimen-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Specimen type | [ScreeningPathologySpecimenTypeVS](ValueSet-screening-pathology-specimen-type-vs.html) | `SNOMED CT#258415003` (biopsy specimen) | `Specimen.type` |
| Patient | - | - | `Specimen.subject` |
| How and when it was collected | - | - | `Specimen.collection` |

### Breast biopsy

The request for a biopsy and the biopsy actually performed both carry the subtype in `code`.

Profiles: [ScreeningBreastBiopsyServiceRequest](StructureDefinition-screening-breast-biopsy-service-request.html), [ScreeningBreastBiopsyProcedure](StructureDefinition-screening-breast-biopsy-procedure.html)

Examples: [ScreeningBreastBiopsyRequestExample](ServiceRequest-screening-breast-biopsy-request-example.html), [ScreeningBreastBiopsyProcedureExample](Procedure-screening-breast-biopsy-procedure-example.html)

| Information to record | Value set | Example code |
| :--- | :--- | :--- |
| Biopsy subtype | [ScreeningBreastBiopsySubtypeVS](ValueSet-screening-breast-biopsy-subtype-vs.html) | `SNOMED CT#9911007` (core needle biopsy) |

### Breast histology result

The breast histology conclusion, including pathological TNM staging. `Observation.code` is `SNOMED CT#394597005` (Histopathology); every finding is a component.

Profile: [ScreeningBreastHistologyObservation](StructureDefinition-screening-breast-histology-observation.html)

Example: [ScreeningBreastHistologyObservationExample](Observation-screening-breast-histology-observation-example.html)

| Information to record | Value set | Stored in (component code) |
| :--- | :--- | :--- |
| Material class (required) | [ScreeningBreastMaterialClassVS](ValueSet-screening-breast-material-class-vs.html) | `SNOMED CT#371439000` |
| Histologic type | [ScreeningBreastHistologicTypeVS](ValueSet-screening-breast-histologic-type-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00006` |
| Nottingham scores (tubular formation, nuclear pleomorphism, mitotic count) | - | `LOINC#85321-8`, `LOINC#44645-0`, `LOINC#85300-2` |
| Largest invasive focus (mm) | - | `LOINC#44635-1` |
| DCIS grade | [ScreeningDCISMalignancyGradeVS](ValueSet-screening-dcis-malignancy-grade-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00009` |
| DCIS architectural pattern | [ScreeningHistologyDCISArchitecturalPatternVS](ValueSet-screening-histology-dcis-architectural-pattern-vs.html) | `LOINC#85302-8` |
| Lymphovascular invasion | [ScreeningHistologyLymphovascularInvasionVS](ValueSet-screening-histology-lymphovascular-invasion-vs.html) | `LOINC#59544-7` |
| Stage modifier | [ScreeningStageModifierVS](ValueSet-screening-stage-modifier-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00010` |
| Pathological T / N / M | [ScreeningPathologicalTVS](ValueSet-screening-pathological-t-vs.html), [ScreeningPathologicalNVS](ValueSet-screening-pathological-n-vs.html), [ScreeningPathologicalMVS](ValueSet-screening-pathological-m-vs.html) | `scrn-0073-00011`, `scrn-0073-00012`, `scrn-0073-00013` |
| Resection margin status (invasive, DCIS) | [ScreeningResectionMarginStatusVS](ValueSet-screening-resection-margin-status-vs.html) | `scrn-0073-00038`, `scrn-0073-00039` |
| Residual Cancer Burden class | [ScreeningResidualCancerBurdenClassVS](ValueSet-screening-residual-cancer-burden-class-vs.html) | `SNOMED CT#444987009` |
| Tumor focality | - | `SNOMED CT#396199003` |

The TNM categories use the AJCC pathological staging concepts (for example `SNOMED CT#1228957006` pT1, `SNOMED CT#1229947003` pN0). AJCC defines no pathological M0, so `ScreeningPathologicalMVS` uses `SNOMED CT#1229901006` (cM0) alongside `SNOMED CT#1229916009` (pM1).

### Cervical histology result

The cervical histology conclusion. `Observation.code` is `SNOMED CT#394597005` (Histopathology), `bodySite` is fixed to `SNOMED CT#71252005` (Cervix uteri structure), and the morphological diagnosis goes in `Observation.value`.

Profile: [ScreeningCervicalHistologyObservation](StructureDefinition-screening-cervical-histology-observation.html)

Example: [ScreeningCervicalHistologyObservationExample](Observation-screening-cervical-histology-observation-example.html)

| Information to record | Value set | Stored in |
| :--- | :--- | :--- |
| Morphological diagnosis | [ScreeningCervicalHistologyMorphologyVS](ValueSet-screening-cervical-histology-morphology-vs.html) | `Observation.value` |
| Histologic grade | [ScreeningCervicalHistologicGradeVS](ValueSet-screening-cervical-histologic-grade-vs.html) | `LOINC#33732-9` |
| Depth of stromal invasion | - | `SNOMED CT#396235003` |
| Lymphovascular invasion | [ScreeningHistologyLymphovascularInvasionVS](ValueSet-screening-histology-lymphovascular-invasion-vs.html) | `LOINC#59544-7` |
| Resection margin status | [ScreeningResectionMarginStatusVS](ValueSet-screening-resection-margin-status-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00019` |
| Other organs involved | [ScreeningOtherOrganInvolvementVS](ValueSet-screening-other-organ-involvement-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00020` |
| Metastasis type | [ScreeningMetastasisTypeVS](ValueSet-screening-metastasis-type-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00022` |
| Sentinel lymph node examination | [ScreeningSentinelLymphNodeExaminationVS](ValueSet-screening-sentinel-lymph-node-examination-vs.html) | `SNOMED CT#396487001` |
| Gross and microscopic description | - | `LOINC#22634-0`, `LOINC#22635-7` |

### Breast cytology result

A breast cytology conclusion graded with the Yokohama system.

Profile: [ScreeningBreastCytologyObservation](StructureDefinition-screening-breast-cytology-observation.html)

Example: [ScreeningBreastCytologyObservationExample](Observation-screening-breast-cytology-observation-example.html)

| Information to record | Value set | Stored in |
| :--- | :--- | :--- |
| Test code | - | `Observation.code` = `screening-specialized-observation-parameter-cs#scrn-0073-00029` |
| Yokohama category | [ScreeningYokohamaCategoryVS](ValueSet-screening-yokohama-category-vs.html) | `Observation.value` |
| Material class | [ScreeningBreastMaterialClassVS](ValueSet-screening-breast-material-class-vs.html) | `SNOMED CT#371439000` |

### Immunohistochemistry result

ER, PR, Ki-67, HER2 and p16 results from one immunohistochemistry run. `Observation.code` is `SNOMED CT#117617002` (Immunohistochemistry procedure).

Profile: [ScreeningImmunohistochemistryObservation](StructureDefinition-screening-immunohistochemistry-observation.html)

Example: [ScreeningImmunohistochemistryObservationExample](Observation-screening-immunohistochemistry-observation-example.html)

| Information to record | Value set | Stored in (component code) |
| :--- | :--- | :--- |
| Allred score, ER | - | `screening-specialized-observation-parameter-cs#scrn-0073-00002` |
| Allred score, PR | - | `screening-specialized-observation-parameter-cs#scrn-0073-00003` |
| HER2 IHC score | [ScreeningHer2IhcScoreVS](ValueSet-screening-her2-ihc-score-vs.html) | see profile |
| p16 result | [ScreeningP16ResultVS](ValueSet-screening-p16-result-vs.html) | see profile |

### Screening questionnaires

Three questionnaires are published. Answers come back as a QuestionnaireResponse whose `item` hierarchy mirrors the questionnaire, with each `linkId` matching the published question exactly. Coded answers are bound with `answerValueSet`.

| Questionnaire | Canonical | Example response |
| :--- | :--- | :--- |
| [Breast risk](Questionnaire-screening-breast-risk.html) | `https://dhp.uz/fhir/integrations/Questionnaire/screening-breast-risk` | [ScreeningBreastRiskResponseExample](QuestionnaireResponse-screening-breast-risk-response-example.html) |
| [Cervical risk](Questionnaire-screening-cervical-risk.html) | `https://dhp.uz/fhir/integrations/Questionnaire/screening-cervical-risk` | [ScreeningCervicalRiskResponseExample](QuestionnaireResponse-screening-cervical-risk-response-example.html) |
| [Woman medical exam](Questionnaire-screening-woman-exam.html) | `https://dhp.uz/fhir/integrations/Questionnaire/screening-woman-exam` | [ScreeningWomanExamResponse128](QuestionnaireResponse-screening-woman-exam-response-128.html) |

### Historical screening summary documents

[ScreeningComposition](StructureDefinition-screening-composition.html) is retired. Its canonical and existing examples are retained for historical validation. HPV may continue to submit legacy Composition; retirement retains the canonical and structural rules and introduces no payload rejection. New screening flows do not require Composition; retrieve atomic results by program identifier or via `basedOn` on the [screening plan](#screening-plans).

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
| Obstetrician-gynecologist | `screening-roles-cs#his_centre_obgyn_obstetrician_gynecologist` |
| Radiologist | `screening-roles-cs#his_ris_ragiologist_head` |
| Patronage nurse | `screening-roles-cs#his_poliklinika_patronage_nurse` |
