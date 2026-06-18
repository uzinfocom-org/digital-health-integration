### Таблица привязки справочников (Terminology Bindings Map)

В данной таблице указано, какие локальные справочники (ValueSets) и международные стандарты (SNOMED/LOINC) должны использоваться при формировании различных ресурсов в системе скрининга рака шейки матки и молочной железы.

Разработчикам интерфейсов (UI) рекомендуется использовать указанные справочники для формирования выпадающих списков.

### Детализированная таблица привязки справочников к примерам (Instances)

| Категория | Пример (Instance ID) | Поле (FHIR Path) | Используемый Справочник (VS / CS) | Ожидаемый код в примере |
| :--- | :--- | :--- | :--- | :--- |
| **Направления (ServiceRequest)** | `ServiceRequest-cytology` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#18500-9` |
| **Направления (ServiceRequest)** | `ServiceRequest-hpv` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#82675-0` |
| **Направления (ServiceRequest)** | `ServiceRequest-colposcopy` | `code` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `screening-diagnostic-procedure-cs#scr-diag-6` |
| **Направления (ServiceRequest)** | `ServiceRequest-mammography` | `code` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `screening-diagnostic-procedure-cs#scr-diag-4` |

| **Отчеты (DiagnosticReport)** | `DiagnosticReport-cytology` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#18500-9` |
| **Отчеты (DiagnosticReport)** | `DiagnosticReport-colposcopy` | `code` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `screening-diagnostic-procedure-cs#scr-diag-6` |
| **Отчеты (DiagnosticReport)** | `DiagnosticReport-mammography` | `code`<br>`conclusionCode` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html)<br>[ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-diagnostic-procedure-cs#scr-diag-4`<br>`screening-birads-cs#src-birads-2` |

| **Результаты (Observation)** | `cytology-result` | `code`<br>`valueCodeableConcept` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html)<br>[ScreeningCervicalCytologyVS](ValueSet-screening-cervical-cytology-vs.html) | `screening-laboratory-cs#18500-9`<br>`screening-cervical-cytology-cs#scr-cyt-3` (LSIL) |
| **Результаты (Observation)** | `cytology-ai-analysis` | `code` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `screening-laboratory-cs#18500-9` *(значение — строка)* |
| **Результаты (Observation)** | `hpv-result` | `code`<br>`valueCodeableConcept` | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html)<br>[ScreeningHPVVS](ValueSet-screening-hpv-vs.html) | `screening-laboratory-cs#82675-0`<br>`screening-hpv-cs#scr-hpv-2` (Negative) |
| **Результаты (Observation)** | `colposcopy-result` | `code`<br>`valueCodeableConcept`<br>`component[0].value` | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html)<br>[ScreeningColposcopyVS](ValueSet-screening-colposcopy-vs.html)<br>[ScreeningTransformationZoneVS](ValueSet-screening-transformation-zone-vs.html) | `screening-diagnostic-procedure-cs#scr-diag-6`<br>`screening-colposcopy-cs#scr-colpo-2`<br>`screening-transformation-zone-cs#scr-tz-2` (TZ2) |
| **Результаты (Observation)** | `mammography-summary` | `code`<br>`component[0].value` (BI-RADS)<br>`component[1].value` (Структура)<br>`component[2].value` (Качество) | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html)<br>[ScreeningBiradsVS](ValueSet-screening-birads-vs.html)<br>[ScreeningBreastFormVS](ValueSet-screening-breast-form-vs.html)<br>[ScreeningImageQualityVS](ValueSet-screening-image-quality-vs.html) | `screening-diagnostic-procedure-cs#scr-diag-4`<br>`screening-birads-cs#src-birads-2`<br>`screening-breast-form-cs#src-breast-density-4`<br>`screening-image-quality-cs#src-img-quality-3` |
| **Результаты (Observation)** | `mammography-right-breast-finding` | `code`<br>`bodySite`<br>`bodySite.extension` | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html)<br>**SNOMED CT**<br>[ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `screening-breast-finding-cs#src-find-9`<br>`$sct#73056007` (Right)<br>`screening-breast-quadrant-cs#src-breast-quadrant-2` (UE) |
| **Результаты (Observation)** | `mammography-left-breast-finding` | `code`<br>`bodySite`<br>`bodySite.extension` | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html)<br>**SNOMED CT**<br>[ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `screening-breast-finding-cs#src-find-1`<br>`$sct#80248007` (Left)<br>`screening-breast-quadrant-cs#src-breast-quadrant-1` (UI) |
| **Результаты (Observation)** | `gynecological-physical-exam` | `component[0..2].code` | [ScreeningObservationTypeVS](ValueSet-screening-observation-type-vs.html) | `screening-observation-type-cs#scr-obser-4` (Рост)<br>`screening-observation-type-cs#scr-obser-5` (Вес)<br>`screening-observation-type-cs#scr-obser-6` (ИМТ) |
| **Результаты (Observation)** | `gynecological-complaints` | *Текстовые заметки* | *-* | *(Свободный текст в `note`)* |
| **Результаты (Observation)** | `oncogynecological-followup` | *Текстовые компоненты* | *-* | *(Свободный текст в `component`)* |

| **Роли (PractitionerRole)** | `practitioner-role-laborant` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_laboratory_laborant` |
| **Роли (PractitionerRole)** | `practitioner-role-gynecologist` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_centre_obstetrics_gynecology_obstetrician_gynecologist` |
| **Роли (PractitionerRole)** | `practitioner-role-radiologist` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_ris_ragiologist_head` |
| **Роли (PractitionerRole)** | `practitioner-role-nurse` | `code` | [ScreeningRolesVS](ValueSet-screening-roles-vs.html) | `his_poliklinika_patronage_nurse` |