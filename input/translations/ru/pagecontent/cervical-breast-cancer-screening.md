<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

На этой странице описано сопоставление данных скрининга рака шейки матки и молочной железы с ресурсами FHIR.

### Обзор

Скрининг рака шейки матки и молочной железы охватывает лабораторные результаты, данные визуализации, патоморфологические заключения, ответы на опросники и клинические наблюдения, полученные в рамках программы скрининга. Данные поступают из системы Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System и добавляются в DHP в виде отдельных, атомарных FHIR-ресурсов. Ресурсы соответствуют профилям скрининга, ссылки на которые приведены в каждом разделе, где они доступны, а в остальных случаях - [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) или стандартным профилям FHIR.

В каждом разделе указан справочник для использования, пример кода, управляющий профиль и конкретный пример ресурса. Рост, вес и ИМТ используют стандартные профили [витальных показателей FHIR](https://hl7.org/fhir/observation-vitalsigns.html).

Кодируемые значения используют SNOMED CT или LOINC везде, где существует эквивалентное понятие. Локальные коды остаются только там, где стандартного понятия нет; они публикуются в CodeSystem `screening-*-cs` с обозначениями на узбекском, русском и английском языках.

### Назначение теста или процедуры (ServiceRequest)

Установите `ServiceRequest.code` в назначаемый тест или процедуру.

Профиль: [ScreeningServiceRequest](StructureDefinition-screening-service-request.html)

Примеры: [ServiceRequest-cytology](ServiceRequest-ServiceRequest-cytology.html), [ServiceRequest-hpv](ServiceRequest-ServiceRequest-hpv.html), [ServiceRequest-colposcopy](ServiceRequest-ServiceRequest-colposcopy.html), [ServiceRequest-mammography](ServiceRequest-ServiceRequest-mammography.html)

| Что назначается | Справочник | Пример кода |
| :--- | :--- | :--- |
| Цитологический мазок | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#18500-9` |
| Тест на ВПЧ | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#82675-0` |
| Кольпоскопия | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#392003006` |
| Маммография | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#71651007` |

### Выпуск отчёта (DiagnosticReport)

Установите `DiagnosticReport.code` в процедуру (те же коды, что и в направлении). Отчёт о маммографии может также содержать общее заключение в `conclusionCode`.

Профиль: [ScreeningDiagnosticReport](StructureDefinition-screening-diagnostic-report.html)

Примеры: [DiagnosticReport-cytology](DiagnosticReport-DiagnosticReport-cytology.html), [DiagnosticReport-colposcopy](DiagnosticReport-DiagnosticReport-colposcopy.html), [DiagnosticReport-mammography](DiagnosticReport-DiagnosticReport-mammography.html)

| Записываемая информация | Справочник | Пример кода |
| :--- | :--- | :--- |
| Тип отчёта | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) / [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `LOINC#18500-9` (цитология)<br>`SNOMED CT#392003006` (кольпоскопия)<br>`SNOMED CT#71651007` (маммография) |
| Общее заключение BI-RADS (маммография) | [ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-birads-cs#src-birads-2` (BI-RADS 2) |

### Результат цитологии

Записывает степень цитологического мазка.

Профиль: [ScreeningObservation](StructureDefinition-screening-observation.html)

Пример: [cytology-result](Observation-cytology-result.html) (вариант с ИИ: [cytology-ai-analysis](Observation-cytology-ai-analysis.html), результат которого хранится в виде свободного текста в `Observation.value`)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код теста | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#18500-9` (цитологический мазок) | `Observation.code` |
| Степень цитологии | [ScreeningCervicalCytologyVS](ValueSet-screening-cervical-cytology-vs.html) | `screening-cervical-cytology-cs#scr-cyt-3` (LSIL) | `Observation.value` |

### Результат теста на ВПЧ

Записывает результат ДНК ВПЧ высокого риска.

Профиль: [ScreeningObservation](StructureDefinition-screening-observation.html)

Пример: [hpv-result](Observation-hpv-result.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код теста | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#82675-0` (тест на ВПЧ) | `Observation.code` |
| Результат ВПЧ | [ScreeningHPVVS](ValueSet-screening-hpv-vs.html) | `screening-hpv-cs#scr-hpv-3` (Positive) | `Observation.value` |

### Результат кольпоскопии

Записывает заключение кольпоскопии и зону трансформации шейки матки.

Профиль: [ScreeningObservation](StructureDefinition-screening-observation.html)

Пример: [colposcopy-result](Observation-colposcopy-result.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код процедуры | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#392003006` (кольпоскопия) | `Observation.code` |
| Заключение кольпоскопии | [ScreeningColposcopyVS](ValueSet-screening-colposcopy-vs.html) | `screening-colposcopy-cs#scr-colpo-2` (LSIL) | `Observation.value` |
| Тип зоны трансформации | [ScreeningTransformationZoneVS](ValueSet-screening-transformation-zone-vs.html) | `screening-transformation-zone-cs#scr-tz-2` (Type 2) | `component` (код `SNOMED CT#1285652007`) |

### Описание маммографии

Структурированная оценка маммографии. Код процедуры `SNOMED CT#71651007` (Маммография) идентифицирует наблюдение; каждое измерение ниже записывается как компонент.

Профиль: [ScreeningMammographyObservation](StructureDefinition-screening-mammography-observation.html)

Примеры: [ScreeningMammographyObservationExample](Observation-screening-mammography-observation-example.html), [mammography-summary](Observation-mammography-summary.html)

| Записываемая информация | Справочник | Пример кода | Где хранится (код компонента) |
| :--- | :--- | :--- | :--- |
| Категория BI-RADS | [ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-birads-cs#src-birads-2` (BI-RADS 2) | `SNOMED CT#1348266008` |
| Плотность молочной железы | [ScreeningBreastFormVS](ValueSet-screening-breast-form-vs.html) | `screening-breast-form-cs#src-breast-density-4` (тип D) | `SNOMED CT#129793001` |
| Качество снимка | [ScreeningImageQualityVS](ValueSet-screening-image-quality-vs.html) | `screening-image-quality-cs#src-img-quality-3` (умеренное) | `SNOMED CT#246646005` |
| Номер чтения (1-3) | - | `2` | `screening-specialized-observation-parameter-cs#scrn-0073-00026` |
| Выбрано как консенсусный результат | - | `true` | `screening-specialized-observation-parameter-cs#scrn-0073-00027` |
| Результат третьего, арбитражного чтения | - | `true` | `screening-specialized-observation-parameter-cs#scrn-0073-00028` |

Двойное чтение моделируется как отдельное Observation на каждое чтение, каждое со своим номером чтения. Чтение, выбранное как окончательное, устанавливает признак консенсуса; третье, арбитражное чтение вместо этого устанавливает признак арбитража.

### Находка в молочной железе

Для каждой находки, выявленной на маммографии, записывается, что это, в какой молочной железе и квадранте и что она присутствует. `code` наблюдения - это `SNOMED CT#71651007` (Маммография).

Профиль: [ScreeningObservation](StructureDefinition-screening-observation.html)

Примеры: [mammography-right-breast-finding](Observation-mammography-right-breast-finding.html), [mammography-left-breast-finding](Observation-mammography-left-breast-finding.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Находка (присутствует = `true`) | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html) | `SNOMED CT#400096001` (меланоцитарный невус)<br>`SNOMED CT#17417006` (утолщение кожи) | `component.code` (значение = boolean) |
| Молочная железа | [ScreeningBodySiteVS](ValueSet-screening-body-site-vs.html) | `SNOMED CT#73056007` (Right)<br>`SNOMED CT#80248007` (Left) | `Observation.bodySite` |
| Квадрант | [ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `screening-breast-quadrant-cs#src-breast-quadrant-2` (UE)<br>`screening-breast-quadrant-cs#src-breast-quadrant-1` (UI) | расширение квадранта в `bodySite` |

### УЗИ молочных желёз

Структурированное ультразвуковое исследование молочных желёз. `Observation.code` - это `SNOMED CT#47079000` (УЗИ молочной железы), а `bodySite` фиксирует исследуемую сторону. Параметры всей железы и характеристики очагового образования записываются как компоненты.

Профиль: [ScreeningBreastUltrasoundObservation](StructureDefinition-screening-breast-ultrasound-observation.html)

Пример: [ScreeningBreastUltrasoundObservationExample](Observation-screening-breast-ultrasound-observation-example.html)

| Записываемая информация | Справочник | Где хранится (код компонента) |
| :--- | :--- | :--- |
| Исследуемая сторона | [ScreeningUltrasoundBreastSideVS](ValueSet-screening-ultrasound-breast-side-vs.html) | `Observation.bodySite` |
| Симметричность молочных желёз | [ScreeningUltrasoundBreastSymmetryVS](ValueSet-screening-ultrasound-breast-symmetry-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00004` |
| Состав по ACR | [ScreeningUltrasoundAcrCompositionVS](ValueSet-screening-ultrasound-acr-composition-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00005` |
| Состояние кожи и соска | [ScreeningUltrasoundSkinNippleStatusVS](ValueSet-screening-ultrasound-skin-nipple-status-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00006` |
| Состояние протоков | [ScreeningUltrasoundDuctStatusVS](ValueSet-screening-ultrasound-duct-status-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00012` |
| Состояние подмышечных лимфоузлов | [ScreeningUltrasoundAxillaryNodeStatusVS](ValueSet-screening-ultrasound-axillary-node-status-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00017` |
| Форма очагового образования | [ScreeningUltrasoundLesionShapeVS](ValueSet-screening-ultrasound-lesion-shape-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00027` |
| Ориентация очагового образования | [ScreeningUltrasoundLesionOrientationVS](ValueSet-screening-ultrasound-lesion-orientation-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00028` |
| Контур очагового образования | [ScreeningUltrasoundLesionContourVS](ValueSet-screening-ultrasound-lesion-contour-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00029` |
| Эхогенность очагового образования | [ScreeningUltrasoundLesionEchogenicityVS](ValueSet-screening-ultrasound-lesion-echogenicity-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00030` |
| Размер, положение и расстояние от соска | - | от `scrn-0052-00022` до `scrn-0052-00026` |

Полный перечень параметров приведён на [странице профиля](StructureDefinition-screening-breast-ultrasound-observation.html); каждый кодируемый параметр имеет собственный справочник в составе [ScreeningUltrasoundParameterVS](ValueSet-screening-ultrasound-parameter-vs.html).

### Назначение патоморфологического исследования

Заявка на гистологическое, цитологическое или иммуногистохимическое исследование. `code` фиксирован как `SNOMED CT#714797009` (Гистологическое исследование); то, что фактически направлено в лабораторию, передаётся в `orderDetail.parameter`.

Профиль: [ScreeningPathologyServiceRequest](StructureDefinition-screening-pathology-service-request.html)

Пример: [ScreeningPathologyRequestExample](ServiceRequest-screening-pathology-request-example.html)

| Параметр | Справочник | Код параметра |
| :--- | :--- | :--- |
| Класс материала | [ScreeningBreastMaterialClassVS](ValueSet-screening-breast-material-class-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00001` |
| Подтип биопсии | [ScreeningBreastBiopsySubtypeVS](ValueSet-screening-breast-biopsy-subtype-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00002` |
| Тип хирургической операции | [ScreeningBreastSurgicalProcedureTypeVS](ValueSet-screening-breast-surgical-procedure-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00003` |
| Тип цитологического материала молочной железы | [ScreeningBreastCytologyMaterialTypeVS](ValueSet-screening-breast-cytology-material-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00004` |
| Тип материала шейки матки | [ScreeningCervicalMaterialTypeVS](ValueSet-screening-cervical-material-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00005` |

Четыре инварианта делают второй параметр зависимым от класса материала: биопсия (`SNOMED CT#258415003`) требует указания подтипа биопсии, хирургический материал (`SNOMED CT#373826004`) - типа операции, а цитологический материал (`SNOMED CT#764445001`) - типа цитологического материала.

### Образец (Specimen)

Материал, к которому относится заявка на патоморфологическое исследование.

Профиль: [ScreeningSpecimen](StructureDefinition-screening-specimen.html) (на основе [UZCoreSpecimen](https://dhp.uz/fhir/core/StructureDefinition-uz-core-specimen.html))

Пример: [ScreeningSpecimenExample](Specimen-screening-breast-biopsy-specimen-example.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Тип образца | [ScreeningPathologySpecimenTypeVS](ValueSet-screening-pathology-specimen-type-vs.html) | `SNOMED CT#258415003` (биопсийный материал) | `Specimen.type` |
| Пациент | - | - | `Specimen.subject` |
| Как и когда получен | - | - | `Specimen.collection` |

### Биопсия молочной железы

И заявка на биопсию, и фактически выполненная биопсия указывают подтип в `code`.

Профили: [ScreeningBreastBiopsyServiceRequest](StructureDefinition-screening-breast-biopsy-service-request.html), [ScreeningBreastBiopsyProcedure](StructureDefinition-screening-breast-biopsy-procedure.html)

Примеры: [ScreeningBreastBiopsyRequestExample](ServiceRequest-screening-breast-biopsy-request-example.html), [ScreeningBreastBiopsyProcedureExample](Procedure-screening-breast-biopsy-procedure-example.html)

| Записываемая информация | Справочник | Пример кода |
| :--- | :--- | :--- |
| Подтип биопсии | [ScreeningBreastBiopsySubtypeVS](ValueSet-screening-breast-biopsy-subtype-vs.html) | `SNOMED CT#9911007` (кор-биопсия) |

### Результат гистологии молочной железы

Гистологическое заключение по молочной железе, включая патоморфологическую стадию TNM. `Observation.code` - это `SNOMED CT#394597005` (Гистопатология); каждая находка записывается как компонент.

Профиль: [ScreeningBreastHistologyObservation](StructureDefinition-screening-breast-histology-observation.html)

Пример: [ScreeningBreastHistologyObservationExample](Observation-screening-breast-histology-observation-example.html)

| Записываемая информация | Справочник | Где хранится (код компонента) |
| :--- | :--- | :--- |
| Класс материала (обязательно) | [ScreeningBreastMaterialClassVS](ValueSet-screening-breast-material-class-vs.html) | `SNOMED CT#371439000` |
| Гистологический тип | [ScreeningBreastHistologicTypeVS](ValueSet-screening-breast-histologic-type-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00006` |
| Баллы по Ноттингему (тубулярные структуры, ядерный полиморфизм, митозы) | - | `LOINC#85321-8`, `LOINC#44645-0`, `LOINC#85300-2` |
| Наибольший инвазивный очаг (мм) | - | `LOINC#44635-1` |
| Степень злокачественности DCIS | [ScreeningDCISMalignancyGradeVS](ValueSet-screening-dcis-malignancy-grade-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00009` |
| Архитектурный тип DCIS | [ScreeningHistologyDCISArchitecturalPatternVS](ValueSet-screening-histology-dcis-architectural-pattern-vs.html) | `LOINC#85302-8` |
| Лимфоваскулярная инвазия | [ScreeningHistologyLymphovascularInvasionVS](ValueSet-screening-histology-lymphovascular-invasion-vs.html) | `LOINC#59544-7` |
| Модификатор стадии | [ScreeningStageModifierVS](ValueSet-screening-stage-modifier-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00010` |
| Патоморфологические T / N / M | [ScreeningPathologicalTVS](ValueSet-screening-pathological-t-vs.html), [ScreeningPathologicalNVS](ValueSet-screening-pathological-n-vs.html), [ScreeningPathologicalMVS](ValueSet-screening-pathological-m-vs.html) | `scrn-0073-00011`, `scrn-0073-00012`, `scrn-0073-00013` |
| Состояние краёв резекции (инвазивный компонент, DCIS) | [ScreeningResectionMarginStatusVS](ValueSet-screening-resection-margin-status-vs.html) | `scrn-0073-00038`, `scrn-0073-00039` |
| Класс остаточной опухолевой нагрузки (RCB) | [ScreeningResidualCancerBurdenClassVS](ValueSet-screening-residual-cancer-burden-class-vs.html) | `SNOMED CT#444987009` |
| Фокальность опухоли | - | `SNOMED CT#396199003` |

Категории TNM используют понятия патоморфологического стадирования AJCC (например, `SNOMED CT#1228957006` pT1, `SNOMED CT#1229947003` pN0). В AJCC не определена патоморфологическая категория M0, поэтому `ScreeningPathologicalMVS` использует `SNOMED CT#1229901006` (cM0) вместе с `SNOMED CT#1229916009` (pM1).

### Результат гистологии шейки матки

Гистологическое заключение по шейке матки. `Observation.code` - это `SNOMED CT#394597005` (Гистопатология), `bodySite` фиксирован как `SNOMED CT#71252005` (Структура шейки матки), а морфологический диагноз записывается в `Observation.value`.

Профиль: [ScreeningCervicalHistologyObservation](StructureDefinition-screening-cervical-histology-observation.html)

Пример: [ScreeningCervicalHistologyObservationExample](Observation-screening-cervical-histology-observation-example.html)

| Записываемая информация | Справочник | Где хранится |
| :--- | :--- | :--- |
| Морфологический диагноз | [ScreeningCervicalHistologyMorphologyVS](ValueSet-screening-cervical-histology-morphology-vs.html) | `Observation.value` |
| Степень дифференцировки | [ScreeningCervicalHistologicGradeVS](ValueSet-screening-cervical-histologic-grade-vs.html) | `LOINC#33732-9` |
| Глубина инвазии в строму | - | `SNOMED CT#396235003` |
| Лимфоваскулярная инвазия | [ScreeningHistologyLymphovascularInvasionVS](ValueSet-screening-histology-lymphovascular-invasion-vs.html) | `LOINC#59544-7` |
| Состояние краёв резекции | [ScreeningResectionMarginStatusVS](ValueSet-screening-resection-margin-status-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00019` |
| Вовлечение других органов | [ScreeningOtherOrganInvolvementVS](ValueSet-screening-other-organ-involvement-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00020` |
| Тип метастазирования | [ScreeningMetastasisTypeVS](ValueSet-screening-metastasis-type-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00022` |
| Исследование сторожевого лимфоузла | [ScreeningSentinelLymphNodeExaminationVS](ValueSet-screening-sentinel-lymph-node-examination-vs.html) | `SNOMED CT#396487001` |
| Макро- и микроскопическое описание | - | `LOINC#22634-0`, `LOINC#22635-7` |

### Результат цитологии молочной железы

Цитологическое заключение по молочной железе по системе Yokohama.

Профиль: [ScreeningBreastCytologyObservation](StructureDefinition-screening-breast-cytology-observation.html)

Пример: [ScreeningBreastCytologyObservationExample](Observation-screening-breast-cytology-observation-example.html)

| Записываемая информация | Справочник | Где хранится |
| :--- | :--- | :--- |
| Код исследования | - | `Observation.code` = `screening-specialized-observation-parameter-cs#scrn-0073-00029` |
| Категория Yokohama | [ScreeningYokohamaCategoryVS](ValueSet-screening-yokohama-category-vs.html) | `Observation.value` |
| Класс материала | [ScreeningBreastMaterialClassVS](ValueSet-screening-breast-material-class-vs.html) | `SNOMED CT#371439000` |

### Результат иммуногистохимии

Результаты ER, PR, Ki-67, HER2 и p16 одного иммуногистохимического исследования. `Observation.code` - это `SNOMED CT#117617002` (Иммуногистохимическое исследование).

Профиль: [ScreeningImmunohistochemistryObservation](StructureDefinition-screening-immunohistochemistry-observation.html)

Пример: [ScreeningImmunohistochemistryObservationExample](Observation-screening-immunohistochemistry-observation-example.html)

| Записываемая информация | Справочник | Где хранится (код компонента) |
| :--- | :--- | :--- |
| Балл Allred, ER | - | `screening-specialized-observation-parameter-cs#scrn-0073-00002` |
| Балл Allred, PR | - | `screening-specialized-observation-parameter-cs#scrn-0073-00003` |
| Балл HER2 по ИГХ | [ScreeningHer2IhcScoreVS](ValueSet-screening-her2-ihc-score-vs.html) | см. профиль |
| Результат p16 | [ScreeningP16ResultVS](ValueSet-screening-p16-result-vs.html) | см. профиль |

### Опросники скрининга

Публикуются три опросника. Ответы возвращаются в виде QuestionnaireResponse, иерархия `item` которого повторяет опросник, а каждый `linkId` точно совпадает с опубликованным вопросом. Кодируемые ответы привязываются через `answerValueSet`.

| Опросник | Каноническая ссылка | Пример ответа |
| :--- | :--- | :--- |
| [Риск рака молочной железы](Questionnaire-screening-breast-risk.html) | `https://dhp.uz/fhir/integrations/Questionnaire/screening-breast-risk` | [ScreeningBreastRiskResponseExample](QuestionnaireResponse-screening-breast-risk-response-example.html) |
| [Риск рака шейки матки](Questionnaire-screening-cervical-risk.html) | `https://dhp.uz/fhir/integrations/Questionnaire/screening-cervical-risk` | [ScreeningCervicalRiskResponseExample](QuestionnaireResponse-screening-cervical-risk-response-example.html) |
| [Медицинский осмотр женщины](Questionnaire-screening-woman-exam.html) | `https://dhp.uz/fhir/integrations/Questionnaire/screening-woman-exam` | [ScreeningWomanExamResponse128](QuestionnaireResponse-screening-woman-exam-response-128.html) |

### Итоговый документ скрининга

Итоговый документ скрининга собирает всё, что зафиксировано в рамках одного цикла скрининга, в один скачиваемый документ. Он может быть сформирован на любом этапе цикла: то, что ещё не внесено, просто не попадает в документ, поэтому сформированный на раннем этапе документ содержит только ответы на опросники.

Отдельные этапы не получают собственный Composition - каждый результат остаётся Observation, а этот документ ссылается на них.

Профиль: [ScreeningComposition](StructureDefinition-screening-composition.html)

Примеры: [ScreeningCompositionExample](Composition-screening-composition-example.html), [ScreeningCompositionDocumentExample](Bundle-screening-composition-document-example.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Тип документа | - | `LOINC#34133-9` (Summary of episode note) | `Composition.type` |
| Опросники | - | `LOINC#74465-6` | `section[questionnaire].entry` (QuestionnaireResponse) |
| Результаты всех выполненных этапов | - | `LOINC#30954-2` | `section[results].entry` (Observation) |
| Окончательный диагноз по МКБ-10 | - | `LOINC#29308-4` | `section[diagnosis].entry` (Condition) |
| Автор | - | - | `Composition.author` (PractitionerRole) |
| Ответственная организация | - | - | `Composition.custodian` |
| Документируемые направления, процедуры и визиты | - | - | `Composition.event.detail` |

Чтобы передать итоговый документ как неизменяемый, поместите его в `Bundle` с `type = document`, где Composition является **первой** записью, а все ресурсы, на которые он ссылается - Patient, Encounter, Condition, Observation, QuestionnaireResponse и прочие - находятся в том же Bundle.

### Витальные показатели (рост, вес, ИМТ)

Рост, вес и ИМТ - это стандартные [витальные показатели FHIR](https://hl7.org/fhir/observation-vitalsigns.html), каждый из которых записывается как отдельное Observation - они не относятся к скринингу. Используйте для каждого свой профиль FHIR; код фиксируется профилем.

Профили: [bodyheight](https://hl7.org/fhir/bodyheight.html), [bodyweight](https://hl7.org/fhir/bodyweight.html), [bmi](https://hl7.org/fhir/bmi.html)

Примеры: [body-height](Observation-body-height.html), [body-weight](Observation-body-weight.html), [body-mass-index](Observation-body-mass-index.html)

| Измерение | Профиль FHIR | Код | Пример значения |
| :--- | :--- | :--- | :--- |
| Рост | `bodyheight` | `LOINC#8302-2` | 160 см |
| Вес | `bodyweight` | `LOINC#29463-7` | 52 кг |
| Индекс массы тела | `bmi` | `LOINC#39156-5` | 20.3 кг/м2 |

### Текстовые клинические записи

Эти наблюдения содержат свободный текст, а не кодированные значения; установите `Observation.code` в тип записи.

Профиль: [ScreeningObservation](StructureDefinition-screening-observation.html)

| Observation | Observation.code | Что содержит |
| :--- | :--- | :--- |
| [gynecological-physical-exam](Observation-gynecological-physical-exam.html) | `SNOMED CT#5880005` (физикальный осмотр) | Акушерский и гинекологический анамнез, в `note` |
| [gynecological-complaints](Observation-gynecological-complaints.html) | `SNOMED CT#1269489004` (главная жалоба) | Жалобы, сообщённые пациентом, в `note` |
| [oncogynecological-followup](Observation-oncogynecological-followup.html) | `SNOMED CT#281036007` (контрольная консультация) | Результаты наблюдения, в `component` |

### Роли участников (PractitionerRole)

Установите `PractitionerRole.code` из [ScreeningRolesVS](ValueSet-screening-roles-vs.html).

Профиль: [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html)

Примеры: [practitioner-role-laborant](PractitionerRole-practitioner-role-laborant.html), [practitioner-role-gynecologist](PractitionerRole-practitioner-role-gynecologist.html), [practitioner-role-radiologist](PractitionerRole-practitioner-role-radiologist.html), [practitioner-role-nurse](PractitionerRole-practitioner-role-nurse.html)

| Роль | Пример кода |
| :--- | :--- |
| Лаборант | `screening-roles-cs#his_laboratory_laborant` |
| Акушер-гинеколог | `screening-roles-cs#his_centre_obstetrics_gynecology_obstetrician_gynecologist` |
| Радиолог | `screening-roles-cs#his_ris_ragiologist_head` |
| Патронажная медсестра | `screening-roles-cs#his_poliklinika_patronage_nurse` |
