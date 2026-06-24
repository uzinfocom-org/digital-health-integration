### Terminology Bindings Map

This table specifies which local value sets (ValueSets) and international standards (SNOMED/LOINC) should be used when building the various resources in the cervical and breast cancer screening system.

User interface (UI) developers are encouraged to use the specified value sets to build dropdown lists.

### Detailed Terminology Bindings to Examples (Instances)

| Category | Example (Instance ID) | Field (FHIR Path) | Value Set / Code System Used (VS / CS) | Expected code in the example |
| :--- | :--- | :--- | :--- | :--- |
| **Referrals (ServiceRequest)** | `ServiceRequest-cytology` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#18500-9` |
| **Referrals (ServiceRequest)** | `ServiceRequest-hpv` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#82675-0` |
| **Referrals (ServiceRequest)** | `ServiceRequest-colposcopy` | `code` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `$sct#392003006` |
| **Referrals (ServiceRequest)** | `ServiceRequest-mammography` | `code` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `$sct#71651007` |

| **Reports (DiagnosticReport)** | `DiagnosticReport-cytology` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#18500-9` |
| **Reports (DiagnosticReport)** | `DiagnosticReport-colposcopy` | `code` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `$sct#392003006` |
| **Reports (DiagnosticReport)** | `DiagnosticReport-mammography` | `code`<br>`conclusionCode` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html)<br>[ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `$sct#71651007`<br>`screening-birads-cs#src-birads-2` |

| **Results (Observation)** | `cytology-result` | `code`<br>`valueCodeableConcept` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html)<br>[ScreeningCervicalCytologyVS](ValueSet-screening-cervical-cytology-vs.html) | `screening-laboratory-cs#18500-9`<br>`screening-cervical-cytology-cs#scr-cyt-3` (LSIL) |
| **Results (Observation)** | `cytology-ai-analysis` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#18500-9` *(value is a string)* |
| **Results (Observation)** | `hpv-result` | `code`<br>`valueCodeableConcept` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html)<br>[ScreeningHPVVS](ValueSet-screening-hpv-vs.html) | `screening-laboratory-cs#82675-0`<br>`screening-hpv-cs#scr-hpv-2` (Negative) |
| **Results (Observation)** | `colposcopy-result` | `code`<br>`valueCodeableConcept`<br>`component[0].value` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html)<br>[ScreeningColposcopyVS](ValueSet-screening-colposcopy-vs.html)<br>[ScreeningTransformationZoneVS](ValueSet-screening-transformation-zone-vs.html) | `$sct#392003006`<br>`screening-colposcopy-cs#scr-colpo-2`<br>`screening-transformation-zone-cs#scr-tz-2` (TZ2) |
| **Results (Observation)** | `mammography-summary` | `code`<br>`component[0].value` (BI-RADS)<br>`component[1].value` (Structure)<br>`component[2].value` (Quality) | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html)<br>[ScreeningBiradsVS](ValueSet-screening-birads-vs.html)<br>[ScreeningBreastFormVS](ValueSet-screening-breast-form-vs.html)<br>[ScreeningImageQualityVS](ValueSet-screening-image-quality-vs.html) | `$sct#71651007`<br>`screening-birads-cs#src-birads-2`<br>`screening-breast-form-cs#src-breast-density-4`<br>`screening-image-quality-cs#src-img-quality-3` |
| **Results (Observation)** | `mammography-right-breast-finding` | `code`<br>`bodySite`<br>`bodySite.extension` | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html)<br>**SNOMED CT**<br>[ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `$sct#30285000` (Verruca)<br>`$sct#73056007` (Right)<br>`screening-breast-quadrant-cs#src-breast-quadrant-2` (UE) |
| **Results (Observation)** | `mammography-left-breast-finding` | `code`<br>`bodySite`<br>`bodySite.extension` | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html)<br>**SNOMED CT**<br>[ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `$sct#129797000`<br>`$sct#80248007` (Left)<br>`screening-breast-quadrant-cs#src-breast-quadrant-1` (UI) |
| **Results (Observation)** | `gynecological-physical-exam` | `component[0..2].code` | [ScreeningObservationTypeVS](ValueSet-screening-observation-type-vs.html) | `$loinc#8302-2` (Height)<br>`$loinc#29463-7` (Weight)<br>`$loinc#39156-5` (BMI) |
| **Results (Observation)** | `gynecological-complaints` | *Text notes* | *-* | *(Free text in `note`)* |
| **Results (Observation)** | `oncogynecological-followup` | *Text components* | *-* | *(Free text in `component`)* |

| **Roles (PractitionerRole)** | `practitioner-role-laborant` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_laboratory_laborant` |
| **Roles (PractitionerRole)** | `practitioner-role-gynecologist` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_centre_obstetrics_gynecology_obstetrician_gynecologist` |
| **Roles (PractitionerRole)** | `practitioner-role-radiologist` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_ris_ragiologist_head` |
| **Roles (PractitionerRole)** | `practitioner-role-nurse` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_poliklinika_patronage_nurse` |
