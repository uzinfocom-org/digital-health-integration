<style>
/* Равномерные таблицы на всю ширину (количество столбцов в разделах может различаться). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

На этой странице описано представление данных Онкологического регистра в виде ресурсов FHIR.

### Обзор

Онкологический регистр хранит онкологические диагнозы, эпизоды лечения, обращения, морфологию и поведение опухоли, гистологическую степень, прогрессирование заболевания и стадирование TNM. Данные передаются в DHP как связанные атомарные FHIR-ресурсы. Каждый ресурс соответствует указанному в разделе Cancer-профилю и [UZ Core](https://dhp.uz/fhir/core/ru/artifacts.html).

Центральным ресурсом является `CancerCondition`. `CancerEpisodeOfCare` объединяет курс лечения, а `CancerEncounter` описывает обращение в рамках этого курса. Связанные с диагнозом через `focus` наблюдения описывают морфологию, поведение, степень, прогрессирование и стадирование. Все ресурсы ссылаются на одного пациента.

Там, где возможно, используются стандартные коды ICD-10, ICD-O-3, SNOMED CT и LOINC. Специфичные для регистра понятия сохраняются в локальных Cancer CodeSystem. ConceptMap преобразуют числовые идентификаторы регистра в терминологию DHP.

### Регистрация онкологического диагноза (CancerCondition)

Содержит диагноз, идентификатор регистра, латеральность, условие выявления и общую стадию TNM. Диагноз кодируется по ICD-10. Латеральность записывается в `bodySite`, а условие выявления — в расширении этого элемента.

Профиль: [CancerCondition](StructureDefinition-cancer-condition.html)

Пример: [cancer-condition-example](Condition-cancer-condition-example.html)

| Записываемая информация | Набор значений | Пример кода | Элемент |
| :--- | :--- | :--- | :--- |
| Идентификатор Онкологического регистра | - | `57dcdd0a-5a68-4cc6-8503-5ab15a41c62b` | `identifier[cancerRegistry]` |
| Диагноз | [CancerICD10VS](ValueSet-cancer-icd-10-vs.html) | `ICD-10#C02` | `Condition.code` |
| Источник/тип диагноза | тип диагноза UZ Core | `diagnosis-type-cs#cancer-0003-0003` | `extension[diagnosisType]` |
| Группа ICCC-3 | ICCC-3 | `iccc-3-cs#IIId2` | `extension[cancer-iccc-3-group]` |
| Латеральность | [CancerLateralityQualifierVS](ValueSet-cancer-laterality-qualifier-vs.html) | `SNOMED CT#7771000` (слева) | `bodySite` |
| Условие выявления | [CancerDetectionConditionVS](ValueSet-cancer-detection-condition-vs.html) | `cancer-detection-condition-cs#cancer-0005-0002` | `bodySite.extension[detection-condition]` |
| Общая стадия | [CancerTNMStageVS](ValueSet-cancer-tnm-stage-vs.html) | `SNOMED CT#1352944009` (стадия II UICC) | `stage.summary` |
| Основание стадирования | - | ссылка на Observation общей стадии | `stage.assessment` |
| Пациент / обращение | - | ссылки на Patient и CancerEncounter | `subject` / `encounter` |
| Начало заболевания / дата регистрации | - | `2026-08-15` / `2026-08-20` | `onsetDateTime` / `recordedDate` |
| Ответственная организация | - | ссылка на Organization | `participant.actor` |

### Объединение курса лечения (CancerEpisodeOfCare)

Объединяет диагноз и курс его лечения. Предпочтительно стандартное намерение лечения SNOMED CT. Локальный срез намерения используется, когда для значения регистра нет стандартного понятия. Метод лечения остается локальным Cancer-кодом.

Профиль: [CancerEpisodeOfCare](StructureDefinition-cancer-episode-of-care.html)

Пример: [cancer-episode-of-care-example](EpisodeOfCare-cancer-episode-of-care-example.html)

| Записываемая информация | Набор значений | Пример кода | Элемент |
| :--- | :--- | :--- | :--- |
| Идентификатор Онкологического регистра | - | UUID регистра | `identifier[cancerRegistry]` |
| Тип услуги DHP | тип EpisodeOfCare UZ Core | `episode-of-care-type#mserv-0001-00004` | `type[serviceType]` |
| Стандартное намерение лечения | [CancerTreatmentIntentSnomedVS](ValueSet-cancer-treatment-intent-snomed-vs.html) | `SNOMED CT#373808002` (радикальное) | `type[treatmentIntent]` |
| Локальное намерение лечения | [CancerTreatmentIntentVS](ValueSet-cancer-treatment-intent-vs.html) | `cancer-treatment-intent-cs#cancer-0017-0001` | `type[localTreatmentIntent]` |
| Метод лечения | [CancerSpecialTreatmentVS](ValueSet-cancer-special-treatment-vs.html) | `cancer-special-treatment-cs#cancer-0018-0002` (хирургическое лечение) | `type[specialTreatment]` |
| Диагноз | - | ссылка на CancerCondition | `diagnosis.condition` |
| Пациент / организация / координатор | - | ссылки на ресурсы | `patient` / `managingOrganization` / `careManager` |
| Период лечения | - | дата начала и необязательная дата окончания | `period` |

### Документирование обращения (CancerEncounter)

Описывает онкологическое обращение и связывает его с эпизодом лечения и диагнозом.

Профиль: [CancerEncounter](StructureDefinition-cancer-encounter.html)

Пример: [cancer-encounter-example](Encounter-cancer-encounter-example.html)

| Записываемая информация | Пример | Элемент |
| :--- | :--- | :--- |
| Статус и класс | `completed`, `v3-ActCode#IMP` | `status`, `class` |
| Тип обращения | `encounter-type-cs#mserv-0001-00002` | `type` |
| Эпизод лечения | ссылка на CancerEpisodeOfCare | `episodeOfCare` |
| Диагноз и его роль | CancerCondition, `final` | `diagnosis.condition`, `diagnosis.use` |
| Пациент / организация / лечащий специалист | ссылки на ресурсы | `subject`, `serviceProvider`, `participant.actor` |
| Период обращения | начальная и конечная дата-время | `actualPeriod` |
| Исход выписки | `encounter-discharge-disposition-home-cs#mserv-0004-00004` | `admission.dischargeDisposition` |

### Панель морфологии опухоли

Панель объединяет наблюдения о поведении опухоли и гистологической степени. Компонентные наблюдения ссылаются через `focus` на тот же `CancerCondition`.

Профиль: [CancerObservationTumorMorphology](StructureDefinition-cancer-observation-tumor-morphology.html)

Пример: [cancer-observation-tumor-morphology-example](Observation-cancer-observation-tumor-morphology-example.html)

| Записываемая информация | Пример кода | Элемент |
| :--- | :--- | :--- |
| Тип панели | `LOINC#77753-2` (панель морфологии опухоли) | `Observation.code` |
| Наблюдение поведения | ссылка на CancerObservationBehavior | `hasMember` |
| Наблюдение гистологической степени | ссылка на CancerObservationHistologicGrade | `hasMember` |
| Пациент / онкологический диагноз | ссылки на Patient и CancerCondition | `subject` / `focus` |

### Поведение опухоли и первичная локализация

Содержит код морфологии/поведения и первичную топографию ICD-O-3. `bodySite` содержит код топографии ICD-O-3 и анатомический код SNOMED CT, который также удовлетворяет привязке UZ Core для локализации.

Профиль: [CancerObservationBehavior](StructureDefinition-cancer-observation-behavior.html)

Пример: [cancer-observation-behavior-example](Observation-cancer-observation-behavior-example.html)

| Записываемая информация | Пример кода | Элемент |
| :--- | :--- | :--- |
| Тип наблюдения | `LOINC#31206-6` (поведение опухоли ICD-O-3) | `Observation.code` |
| Морфология и поведение | `ICD-O-3#8070/3` (плоскоклеточная карцинома БДУ) | `valueCodeableConcept` |
| Первичная топография | `ICD-O-3#C15.1` (грудной отдел пищевода) | `bodySite.coding[icdO3]` |
| Анатомический эквивалент | `SNOMED CT#59609004` (структура грудного отдела пищевода) | `bodySite.coding[snomed]` |

### Гистологическая степень

Содержит степень опухоли и метод ее подтверждения.

Профиль: [CancerObservationHistologicGrade](StructureDefinition-cancer-observation-histologic-grade.html)

Пример: [cancer-observation-histologic-grade-example](Observation-cancer-observation-histologic-grade-example.html)

| Записываемая информация | Набор значений | Пример кода | Элемент |
| :--- | :--- | :--- | :--- |
| Тип наблюдения | [CancerTumorMorphologyPanelVS](ValueSet-cancer-tumor-morphology-panel-vs.html) | `LOINC#21858-6` (степень опухоли) | `Observation.code` |
| Метод подтверждения | [CancerConfirmationMethodVS](ValueSet-cancer-confirmation-method-vs.html) | `cancer-confirmation-method-cs#cancer-0002-0003` (гистология) | `method` |
| Степень | [CancerDegreeDifferentiationVS](ValueSet-cancer-degree-differentiation-vs.html) | `SNOMED CT#1155701009` (G1, высокодифференцированная) | `valueCodeableConcept` |

### Регистрация прогрессирования или метастазирования

Содержит рецидив, регионарные или отдаленные метастазы, прогрессирование либо другой развивающийся процесс и пораженную анатомическую область.

Профиль: [CancerObservationMetastase](StructureDefinition-cancer-observation-metastase.html)

Пример: [cancer-observation-metastase-example](Observation-cancer-observation-metastase-example.html)

| Записываемая информация | Набор значений | Пример кода | Элемент |
| :--- | :--- | :--- | :--- |
| Тип наблюдения | - | `LOINC#97509-4` (прогрессирование онкологического заболевания) | `Observation.code` |
| Тип прогрессирования | [CancerEmergingProcessVS](ValueSet-cancer-emerging-process-vs.html) | `cancer-emerging-process-cs#cancer-0015-0003` (отдаленные метастазы) | `valueCodeableConcept` |
| Пораженная область | [CancerBodyLocationVS](ValueSet-cancer-body-location-vs.html) | `SNOMED CT#110549009` (легкое и плевра) | `bodySite` |

### Регистрация категорий TNM

Для каждой доступной категории cT, pT, cN, pN, cM или pM создается отдельный Observation. `Observation.code` определяет ось, `method` — редакцию системы стадирования, а `valueCodeableConcept` — допустимое для этой оси значение категории.

Профиль: [CancerObservationTNMCategory](StructureDefinition-cancer-observation-tnm-category.html)

Примеры: [cT](Observation-cancer-observation-tnm-category-ct.html), [cN](Observation-cancer-observation-tnm-category-cn.html), [pN](Observation-cancer-observation-tnm-category-pn.html), [cM](Observation-cancer-observation-tnm-category-cm.html), [pM](Observation-cancer-observation-tnm-category-pm.html)

| Записываемая информация | Набор значений | Пример кода | Элемент |
| :--- | :--- | :--- | :--- |
| Ось TNM | [CancerTNMCategoryVS](ValueSet-cancer-tnm-category-vs.html) | `SNOMED CT#399504009` (категория cT) | `Observation.code` |
| Редакция стадирования | [CancerStagingEditionVS](ValueSet-cancer-staging-edition-vs.html) | `SNOMED CT#897275008` (AJCC, 8-я редакция) | `method` |
| Значение категории | отдельный набор значений cT/pT/cN/pN/cM/pM | `SNOMED CT#1352983006` (значение cT) | `valueCodeableConcept` |
| Пациент / диагноз / исполнитель | ссылки на ресурсы | Patient, CancerCondition и PractitionerRole | `subject` / `focus` / `performer` |

Наборы значений для отдельных осей: [CancerCCCtCategoryVS](ValueSet-cancer-ccc-t-category-vs.html), [CancerCCpTCategoryVS](ValueSet-cancer-cc-p-t-category-vs.html), [CancerCCcNCategoryVS](ValueSet-cancer-cc-c-n-category-vs.html), [CancerCCpNCategoryVS](ValueSet-cancer-cc-p-n-category-vs.html), [CancerCCcMCategoryVS](ValueSet-cancer-cc-c-m-category-vs.html) и [CancerCCpMCategoryVS](ValueSet-cancer-cc-p-m-category-vs.html). Большинство значений используют SNOMED CT; локальные коды сохраняются там, где точной категории SNOMED CT нет.

### Регистрация общей стадии TNM

Содержит общую стадию и ссылки на отдельные наблюдения категорий TNM, на которых она основана.

Профиль: [CancerObservationTNMStageGroup](StructureDefinition-cancer-observation-tnm-stage-group.html)

Пример: [cancer-observation-tnm-stage-group-example](Observation-cancer-observation-tnm-stage-group-example.html)

| Записываемая информация | Набор значений | Пример кода | Элемент |
| :--- | :--- | :--- | :--- |
| Тип наблюдения | - | `SNOMED CT#399390009` (группировка стадий TNM) | `Observation.code` |
| Общая стадия | [CancerTNMStageVS](ValueSet-cancer-tnm-stage-vs.html) | `SNOMED CT#1352927005` (стадия I) | `valueCodeableConcept` |
| Подтверждающие категории | - | ссылки на наблюдения cT, cN, pN, cM и pM | `hasMember` |

### Преобразование кодов Онкологического регистра

Эти ConceptMap используются, когда входящие данные содержат числовые идентификаторы Онкологического регистра вместо терминологических кодов DHP.

| Исходные данные | ConceptMap | Целевая терминология |
| :--- | :--- | :--- |
| Статус регистра и связанные локальные идентификаторы | [Статус Онкологического регистра в статус DHP](ConceptMap-cancer-registry-dictionary-to-dhp-status-cm.html) | CodeSystem DHP и Cancer |
| Идентификатор ICD-10 регистра | [ICD-10 Онкологического регистра в ICD-10 DHP](ConceptMap-cancer-registry-dictionary-icd10-to-dhp-icd10-cm.html) | ICD-10 |
| Идентификатор топографии ICD-O-3 регистра | [Топография ICD-O-3 Онкологического регистра в ICD-O-3 DHP](ConceptMap-cancer-registry-dict-icdo3-topography-to-dhp-icdo3-cm.html) | ICD-O-3 |

### Вспомогательные ресурсы

Примеры также ссылаются на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html), [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) и [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html).
