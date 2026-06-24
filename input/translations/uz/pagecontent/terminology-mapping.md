### Ma'lumotnomalarni bog'lash jadvali (Terminology Bindings Map)

Ushbu jadvalda bachadon bo'yni va sut bezi saratoni skrining tizimida turli resurslarni shakllantirishda qaysi mahalliy ma'lumotnomalar (ValueSets) va xalqaro standartlar (SNOMED/LOINC) ishlatilishi kerakligi ko'rsatilgan.

Interfeyslarni (UI) ishlab chiquvchilarga ochiluvchi ro'yxatlarni shakllantirish uchun ko'rsatilgan ma'lumotnomalardan foydalanish tavsiya etiladi.

### Ma'lumotnomalarni misollarga bog'lashning batafsil jadvali (Instances)

| Toifa | Misol (Instance ID) | Maydon (FHIR Path) | Foydalaniladigan ma'lumotnoma (VS / CS) | Misoldagi kutilayotgan kod |
| :--- | :--- | :--- | :--- | :--- |
| **Yo'llanmalar (ServiceRequest)** | `ServiceRequest-cytology` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#18500-9` |
| **Yo'llanmalar (ServiceRequest)** | `ServiceRequest-hpv` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#82675-0` |
| **Yo'llanmalar (ServiceRequest)** | `ServiceRequest-colposcopy` | `code` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `$sct#392003006` |
| **Yo'llanmalar (ServiceRequest)** | `ServiceRequest-mammography` | `code` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `$sct#71651007` |

| **Hisobotlar (DiagnosticReport)** | `DiagnosticReport-cytology` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#18500-9` |
| **Hisobotlar (DiagnosticReport)** | `DiagnosticReport-colposcopy` | `code` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `$sct#392003006` |
| **Hisobotlar (DiagnosticReport)** | `DiagnosticReport-mammography` | `code`<br>`conclusionCode` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html)<br>[ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `$sct#71651007`<br>`screening-birads-cs#src-birads-2` |

| **Natijalar (Observation)** | `cytology-result` | `code`<br>`valueCodeableConcept` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html)<br>[ScreeningCervicalCytologyVS](ValueSet-screening-cervical-cytology-vs.html) | `screening-laboratory-cs#18500-9`<br>`screening-cervical-cytology-cs#scr-cyt-3` (LSIL) |
| **Natijalar (Observation)** | `cytology-ai-analysis` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#18500-9` *(qiymat - satr)* |
| **Natijalar (Observation)** | `hpv-result` | `code`<br>`valueCodeableConcept` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html)<br>[ScreeningHPVVS](ValueSet-screening-hpv-vs.html) | `screening-laboratory-cs#82675-0`<br>`screening-hpv-cs#scr-hpv-2` (Negative) |
| **Natijalar (Observation)** | `colposcopy-result` | `code`<br>`valueCodeableConcept`<br>`component[0].value` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html)<br>[ScreeningColposcopyVS](ValueSet-screening-colposcopy-vs.html)<br>[ScreeningTransformationZoneVS](ValueSet-screening-transformation-zone-vs.html) | `$sct#392003006`<br>`screening-colposcopy-cs#scr-colpo-2`<br>`screening-transformation-zone-cs#scr-tz-2` (TZ2) |
| **Natijalar (Observation)** | `mammography-summary` | `code`<br>`component[0].value` (BI-RADS)<br>`component[1].value` (Tuzilma)<br>`component[2].value` (Sifat) | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html)<br>[ScreeningBiradsVS](ValueSet-screening-birads-vs.html)<br>[ScreeningBreastFormVS](ValueSet-screening-breast-form-vs.html)<br>[ScreeningImageQualityVS](ValueSet-screening-image-quality-vs.html) | `$sct#71651007`<br>`screening-birads-cs#src-birads-2`<br>`screening-breast-form-cs#src-breast-density-4`<br>`screening-image-quality-cs#src-img-quality-3` |
| **Natijalar (Observation)** | `mammography-right-breast-finding` | `code`<br>`bodySite`<br>`bodySite.extension` | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html)<br>**SNOMED CT**<br>[ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `$sct#30285000` (Verruca)<br>`$sct#73056007` (Right)<br>`screening-breast-quadrant-cs#src-breast-quadrant-2` (UE) |
| **Natijalar (Observation)** | `mammography-left-breast-finding` | `code`<br>`bodySite`<br>`bodySite.extension` | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html)<br>**SNOMED CT**<br>[ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `$sct#129797000`<br>`$sct#80248007` (Left)<br>`screening-breast-quadrant-cs#src-breast-quadrant-1` (UI) |
| **Natijalar (Observation)** | `gynecological-physical-exam` | `component[0..2].code` | [ScreeningObservationTypeVS](ValueSet-screening-observation-type-vs.html) | `$loinc#8302-2` (Bo'y)<br>`$loinc#29463-7` (Vazn)<br>`$loinc#39156-5` (TVI) |
| **Natijalar (Observation)** | `gynecological-complaints` | *Matnli izohlar* | *-* | *(`note` ichidagi erkin matn)* |
| **Natijalar (Observation)** | `oncogynecological-followup` | *Matnli komponentlar* | *-* | *(`component` ichidagi erkin matn)* |

| **Rollar (PractitionerRole)** | `practitioner-role-laborant` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_laboratory_laborant` |
| **Rollar (PractitionerRole)** | `practitioner-role-gynecologist` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_centre_obstetrics_gynecology_obstetrician_gynecologist` |
| **Rollar (PractitionerRole)** | `practitioner-role-radiologist` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_ris_ragiologist_head` |
| **Rollar (PractitionerRole)** | `practitioner-role-nurse` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_poliklinika_patronage_nurse` |
