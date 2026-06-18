### Таблица привязки справочников (Terminology Bindings Map)

В данной таблице указано, какие локальные справочники (ValueSets) и международные стандарты (SNOMED/LOINC) должны использоваться при формировании различных ресурсов в системе скрининга.

Разработчикам интерфейсов (UI) рекомендуется использовать указанные справочники для формирования выпадающих списков.

### Детализированная таблица привязки справочников к примерам (Instances)

| Категория | Пример (Instance ID) | Поле (FHIR Path) | Используемый Справочник (VS / CS) | Ожидаемый код в примере |
| :--- | :--- | :--- | :--- | :--- |
| **Направления (ServiceRequest)** | `ServiceRequest-cytology` | `code` | [ScrLabVS](ValueSet-scr-lab-vs.html) | `scr-lab-cs#18500-9` |
| **Направления (ServiceRequest)** | `ServiceRequest-hpv` | `code` | [ScrLabVS](ValueSet-scr-lab-vs.html) | `scr-lab-cs#82675-0` |
| **Направления (ServiceRequest)** | `ServiceRequest-colposcopy` | `code` | [ScrDiagVS](ValueSet-scr-diag-vs.html) | `scr-diag-cs#scr-diag-6` |
| **Направления (ServiceRequest)** | `ServiceRequest-mammography` | `code` | [ScrDiagVS](ValueSet-scr-diag-vs.html) | `scr-diag-cs#scr-diag-4` |

| **Отчеты (DiagnosticReport)** | `DiagnosticReport-cytology` | `code` | [ScrLabVS](ValueSet-scr-lab-vs.html) | `scr-lab-cs#18500-9` |
| **Отчеты (DiagnosticReport)** | `DiagnosticReport-colposcopy` | `code` | [ScrDiagVS](ValueSet-scr-diag-vs.html) | `scr-diag-cs#scr-diag-6` |
| **Отчеты (DiagnosticReport)** | `DiagnosticReport-mammography` | `code`<br>`conclusionCode` | [ScrDiagVS](ValueSet-scr-diag-vs.html)<br>[SrcBiradsVS](ValueSet-src-birads-vs.html) | `scr-diag-cs#scr-diag-4`<br>`src-birads-cs#src-birads-2` |

| **Результаты (Observation)** | `cytology-result` | `code`<br>`valueCodeableConcept` | [ScrLabVS](ValueSet-scr-lab-vs.html)<br>[ScrCytVS](ValueSet-scr-cyt-vs.html) | `scr-lab-cs#18500-9`<br>`scr-cyt-cs#scr-cyt-3` (LSIL) |
| **Результаты (Observation)** | `cytology-ai-analysis` | `code` | [ScrLabVS](ValueSet-scr-lab-vs.html) | `scr-lab-cs#18500-9` *(значение — строка)* |
| **Результаты (Observation)** | `hpv-result` | `code`<br>`valueCodeableConcept` | [ScrLabVS](ValueSet-scr-lab-vs.html)<br>[ScrHpvVS](ValueSet-scr-hpv-vs.html) | `scr-lab-cs#82675-0`<br>`scr-hpv-cs#scr-hpv-2` (Negative) |
| **Результаты (Observation)** | `colposcopy-result` | `code`<br>`valueCodeableConcept`<br>`component[0].value` | [ScrDiagVS](ValueSet-scr-diag-vs.html)<br>[ScrColpoVS](ValueSet-scr-colpo-vs.html)<br>[ScrTzVS](ValueSet-scr-tz-vs.html) | `scr-diag-cs#scr-diag-6`<br>`scr-colpo-cs#scr-colpo-2`<br>`scr-tz-cs#scr-tz-2` (TZ2) |
| **Результаты (Observation)** | `mammography-summary` | `code`<br>`component[0].value` (BI-RADS)<br>`component[1].value` (Структура)<br>`component[2].value` (Качество) | [ScrDiagVS](ValueSet-scr-diag-vs.html)<br>[SrcBiradsVS](ValueSet-src-birads-vs.html)<br>[SrcBreastFormVS](ValueSet-src-breast-form-vs.html)<br>[SrcImgQualityVS](ValueSet-src-img-quality-vs.html) | `scr-diag-cs#scr-diag-4`<br>`src-birads-cs#src-birads-2`<br>`src-breast-form-cs#src-breast-density-4`<br>`src-img-quality-cs#src-img-quality-3` |
| **Результаты (Observation)** | `mammography-right-breast-finding` | `code`<br>`bodySite`<br>`bodySite.extension` | [SrcFindVS](ValueSet-src-find-vs.html)<br>**SNOMED CT**<br>[SrcBreastQuadrantVS](ValueSet-src-breast-quadrant-vs.html) | `src-find-cs#src-find-9`<br>`$sct#73056007` (Right)<br>`src-breast-quadrant-cs#src-breast-quadrant-2` (UE) |
| **Результаты (Observation)** | `mammography-left-breast-finding` | `code`<br>`bodySite`<br>`bodySite.extension` | [SrcFindVS](ValueSet-src-find-vs.html)<br>**SNOMED CT**<br>[SrcBreastQuadrantVS](ValueSet-src-breast-quadrant-vs.html) | `src-find-cs#src-find-1`<br>`$sct#80248007` (Left)<br>`src-breast-quadrant-cs#src-breast-quadrant-1` (UI) |
| **Результаты (Observation)** | `gynecological-physical-exam` | `component[0..2].code` | [ScrObserVS](ValueSet-scr-obser-vs.html) | `scr-obser-cs#scr-obser-4` (Рост)<br>`scr-obser-cs#scr-obser-5` (Вес)<br>`scr-obser-cs#scr-obser-6` (ИМТ) |
| **Результаты (Observation)** | `gynecological-complaints` | *Текстовые заметки* | *-* | *(Свободный текст в `note`)* |
| **Результаты (Observation)** | `oncogynecological-followup` | *Текстовые компоненты* | *-* | *(Свободный текст в `component`)* |

| **Роли (PractitionerRole)** | `practitioner-role-laborant` | `code` | [SrcRolesVS](ValueSet-src-roles-vs.html) | `his_laboratory_laborant` |
| **Роли (PractitionerRole)** | `practitioner-role-gynecologist` | `code` | [SrcRolesVS](ValueSet-src-roles-vs.html) | `his_centre_obstetrics_gynecology_obstetrician_gynecologist` |
| **Роли (PractitionerRole)** | `practitioner-role-radiologist` | `code` | [SrcRolesVS](ValueSet-src-roles-vs.html) | `his_ris_ragiologist_head` |
| **Роли (PractitionerRole)** | `practitioner-role-nurse` | `code` | [SrcRolesVS](ValueSet-src-roles-vs.html) | `his_poliklinika_patronage_nurse` |