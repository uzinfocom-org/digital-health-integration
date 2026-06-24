Эта страница организована вокруг информации, которую система скрининга рака шейки матки и молочной железы должна записывать. Для каждого элемента указано, из какого справочника выбирать значение (для построения выпадающих списков), приведён пример кода, дана ссылка на конкретный пример ресурса и показано, где значение хранится в ресурсе FHIR.

В каждом разделе приведена ссылка на **профиль**, который управляет ресурсом - следуйте ему для нормативных указаний - и на конкретные **примеры** ресурсов, подтверждающие эти указания на практике.

Элементы, отмеченные как **(обязательные)**, должны быть кодированы из указанного справочника; для остальных приведён рекомендуемый справочник. Рост, вес и ИМТ - это стандартные [витальные показатели FHIR](https://hl7.org/fhir/observation-vitalsigns.html), не относящиеся к скринингу.

### Назначение теста или процедуры (ServiceRequest)

Установите `ServiceRequest.code` в назначаемый тест или процедуру.

**Профиль:** [ScreeningServiceRequest](StructureDefinition-screening-service-request.html)

**Примеры:** [ServiceRequest-cytology](ServiceRequest-ServiceRequest-cytology.html), [ServiceRequest-hpv](ServiceRequest-ServiceRequest-hpv.html), [ServiceRequest-colposcopy](ServiceRequest-ServiceRequest-colposcopy.html), [ServiceRequest-mammography](ServiceRequest-ServiceRequest-mammography.html)

| Что назначается | Справочник | Пример кода |
| :--- | :--- | :--- |
| Цитологический мазок | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#18500-9` |
| Тест на ВПЧ | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#82675-0` |
| Кольпоскопия | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#392003006` |
| Маммография | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#71651007` |

### Выпуск отчёта (DiagnosticReport)

Установите `DiagnosticReport.code` в процедуру (те же коды, что и в направлении). Отчёт о маммографии может также содержать общее заключение в `conclusionCode`.

**Профиль:** [ScreeningDiagnosticReport](StructureDefinition-screening-diagnostic-report.html)

**Примеры:** [DiagnosticReport-cytology](DiagnosticReport-DiagnosticReport-cytology.html), [DiagnosticReport-colposcopy](DiagnosticReport-DiagnosticReport-colposcopy.html), [DiagnosticReport-mammography](DiagnosticReport-DiagnosticReport-mammography.html)

| Записываемая информация | Справочник | Пример кода |
| :--- | :--- | :--- |
| Тип отчёта | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) / [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `LOINC#18500-9` (цитология)<br>`SNOMED CT#392003006` (кольпоскопия)<br>`SNOMED CT#71651007` (маммография) |
| Общее заключение BI-RADS (маммография) | [ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-birads-cs#src-birads-2` (BI-RADS 2) |

### Результат цитологии

Записывает степень цитологического мазка.

**Профиль:** [ScreeningObservation](StructureDefinition-screening-observation.html)

**Пример:** [cytology-result](Observation-cytology-result.html) (вариант с ИИ: [cytology-ai-analysis](Observation-cytology-ai-analysis.html), результат которого хранится в виде свободного текста в `Observation.value`)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код теста | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#18500-9` (цитологический мазок) | `Observation.code` |
| Степень цитологии | [ScreeningCervicalCytologyVS](ValueSet-screening-cervical-cytology-vs.html) | `screening-cervical-cytology-cs#scr-cyt-3` (LSIL) | `Observation.value` |

### Результат теста на ВПЧ

Записывает результат ДНК ВПЧ высокого риска.

**Профиль:** [ScreeningObservation](StructureDefinition-screening-observation.html)

**Пример:** [hpv-result](Observation-hpv-result.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код теста | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#82675-0` (тест на ВПЧ) | `Observation.code` |
| Результат ВПЧ | [ScreeningHPVVS](ValueSet-screening-hpv-vs.html) | `screening-hpv-cs#scr-hpv-3` (Positive) | `Observation.value` |

### Результат кольпоскопии

Записывает заключение кольпоскопии и зону трансформации шейки матки.

**Профиль:** [ScreeningObservation](StructureDefinition-screening-observation.html)

**Пример:** [colposcopy-result](Observation-colposcopy-result.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код процедуры | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#392003006` (кольпоскопия) | `Observation.code` |
| Заключение кольпоскопии | [ScreeningColposcopyVS](ValueSet-screening-colposcopy-vs.html) | `screening-colposcopy-cs#scr-colpo-2` (LSIL) | `Observation.value` |
| Тип зоны трансформации **(обязательно)** | [ScreeningTransformationZoneVS](ValueSet-screening-transformation-zone-vs.html) | `screening-transformation-zone-cs#scr-tz-2` (Type 2) | `component` (код `SNOMED CT#1285652007`) |

### Описание маммографии

Структурированная оценка маммографии. Код процедуры `SNOMED CT#71651007` (Маммография) идентифицирует наблюдение; каждое измерение ниже записывается как компонент.

**Профиль:** [ScreeningObservation](StructureDefinition-screening-observation.html)

**Пример:** [mammography-summary](Observation-mammography-summary.html)

| Записываемая информация | Справочник | Пример кода | Где хранится (код компонента) |
| :--- | :--- | :--- | :--- |
| Категория BI-RADS **(обязательно)** | [ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-birads-cs#src-birads-2` (BI-RADS 2) | `SNOMED CT#1348266008` |
| Плотность молочной железы **(обязательно)** | [ScreeningBreastFormVS](ValueSet-screening-breast-form-vs.html) | `screening-breast-form-cs#src-breast-density-4` (тип D) | `SNOMED CT#129793001` |
| Качество снимка **(обязательно)** | [ScreeningImageQualityVS](ValueSet-screening-image-quality-vs.html) | `screening-image-quality-cs#src-img-quality-3` (умеренное) | `SNOMED CT#246646005` |

### Находка в молочной железе

Для каждой находки, выявленной на маммографии, записывается, что это, в какой молочной железе и квадранте и что она присутствует. `code` наблюдения - это `SNOMED CT#71651007` (Маммография).

**Профиль:** [ScreeningObservation](StructureDefinition-screening-observation.html)

**Примеры:** [mammography-right-breast-finding](Observation-mammography-right-breast-finding.html), [mammography-left-breast-finding](Observation-mammography-left-breast-finding.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Находка (присутствует = `true`) | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html) | `SNOMED CT#109285009` (melanocytic nevus, right)<br>`SNOMED CT#129797000` (skin thickening, left) | `component.code` (значение = boolean) |
| Молочная железа **(обязательно)** | [ScreeningBodySiteVS](ValueSet-screening-body-site-vs.html) | `SNOMED CT#73056007` (Right)<br>`SNOMED CT#80248007` (Left) | `Observation.bodySite` |
| Квадрант **(обязательно)** | [ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `screening-breast-quadrant-cs#src-breast-quadrant-2` (UE)<br>`screening-breast-quadrant-cs#src-breast-quadrant-1` (UI) | расширение квадранта в `bodySite` |

### Витальные показатели (рост, вес, ИМТ)

Рост, вес и ИМТ - это стандартные [витальные показатели FHIR](https://hl7.org/fhir/observation-vitalsigns.html), каждый из которых записывается как отдельное Observation - они не относятся к скринингу. Используйте для каждого свой профиль FHIR; код фиксируется профилем.

**Профили:** [bodyheight](https://hl7.org/fhir/bodyheight.html), [bodyweight](https://hl7.org/fhir/bodyweight.html), [bmi](https://hl7.org/fhir/bmi.html)

**Примеры:** [body-height](Observation-body-height.html), [body-weight](Observation-body-weight.html), [body-mass-index](Observation-body-mass-index.html)

| Измерение | Профиль FHIR | Код | Пример значения |
| :--- | :--- | :--- | :--- |
| Рост | `bodyheight` | `LOINC#8302-2` | 160 см |
| Вес | `bodyweight` | `LOINC#29463-7` | 52 кг |
| Индекс массы тела | `bmi` | `LOINC#39156-5` | 20.3 кг/м2 |

### Текстовые клинические записи

Некоторая информация фиксируется в виде свободного текста, а не кодированных значений. Эти наблюдения сами являются примерами:

**Профиль:** [ScreeningObservation](StructureDefinition-screening-observation.html)

| Observation | Что содержит |
| :--- | :--- |
| [gynecological-physical-exam](Observation-gynecological-physical-exam.html) | Акушерский и гинекологический анамнез, в `note` |
| [gynecological-complaints](Observation-gynecological-complaints.html) | Жалобы, сообщённые пациентом, в `note` |
| [oncogynecological-followup](Observation-oncogynecological-followup.html) | Результаты наблюдения, в виде свободного текста в `component` |

### Роли участников (PractitionerRole)

Установите `PractitionerRole.code` из [ScreeningRolesVS](ValueSet-screening-roles-vs.html).

**Профиль:** [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html)

**Примеры:** [practitioner-role-laborant](PractitionerRole-practitioner-role-laborant.html), [practitioner-role-gynecologist](PractitionerRole-practitioner-role-gynecologist.html), [practitioner-role-radiologist](PractitionerRole-practitioner-role-radiologist.html), [practitioner-role-nurse](PractitionerRole-practitioner-role-nurse.html)

| Роль | Пример кода |
| :--- | :--- |
| Лаборант | `screening-roles-cs#his_laboratory_laborant` |
| Акушер-гинеколог | `screening-roles-cs#his_centre_obstetrics_gynecology_obstetrician_gynecologist` |
| Радиолог | `screening-roles-cs#his_ris_ragiologist_head` |
| Патронажная медсестра | `screening-roles-cs#his_poliklinika_patronage_nurse` |
