<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

На этой странице описано, как данные ведения случаев туберкулёза представляются в виде ресурсов FHIR.

### Обзор

Модуль туберкулёза DHIS охватывает регистрацию, диагностику, лабораторное обследование и курс лечения пациентов с туберкулёзом (ТБ). Данные поступают из информационной системы туберкулёза DHIS и добавляются в DHP в виде отдельных, атомарных FHIR-ресурсов. Ресурсы соответствуют профилям DHIS, ссылки на которые приведены в каждом разделе, а в остальных случаях - [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) или стандартным профилям FHIR.

Везде, где у концепта есть стандартный эквивалент, ресурсы несут стандартный код напрямую - SNOMED CT для диагнозов, типов образцов, идентифицированных видов и стадий обработки, LOINC для диагностических тестов и препаратов для определения лекарственной чувствительности. Исходная система записывает эти данные собственными локальными кодами; каждый локальный код сохраняется в своей CodeSystem DHIS и сопоставляется с ближайшим стандартным концептом с помощью ConceptMap, так что интегратор всегда может найти стандартный код для имеющегося у него кода. В ресурсах используйте стандартный код везде, где существует точное соответствие (`equivalent`) - справочник, привязанный к каждому полю, предлагает стандартный код для таких концептов и сохраняет локальный код только там, где точного стандартного эквивалента нет (например, варианты питательных сред, степени мазка/посева и диапазоны лекарственной чувствительности). В каждом разделе ниже приведены управляющий профиль, конкретный пример ресурса и таблица со справочником и примером кода для каждого поля, несущего код.

Типичная запись связывает воедино: [пациента](#registering-a-patient-patient), один или несколько [диагнозов ТБ](#recording-a-tb-diagnosis-condition), [эпизод оказания помощи](#grouping-the-treatment-course-episodeofcare), группирующий курс лечения, собранные [образцы](#collecting-a-specimen-specimen) и [результаты диагностических тестов](#recording-diagnostic-test-results-observation), полученные на их основе.

### Регистрация пациента (Patient) {#registering-a-patient-patient}

Субъект каждой записи о ТБ. Специфичного для DHIS профиля Patient нет; используйте UZ Core напрямую.

Профиль: [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html)

Пример: [example-patient-john](Patient-example-patient-john.html)

| Записываемая информация | Где хранится |
| :--- | :--- |
| Национальный идентификатор | `identifier` (срез национального идентификатора) |
| Имя, пол, дата рождения | `name`, `gender`, `birthDate` |
| Адрес | `address` (срез адреса UZ) |
| Ответственное учреждение | `managingOrganization` → [Organization](#supporting-resources) |

### Запись диагноза туберкулёза (Condition) {#recording-a-tb-diagnosis-condition}

Установите `Condition.code` в диагноз ТБ (или соответствующую сопутствующую патологию). Большинство диагнозов используют SNOMED CT напрямую; немногие, не имеющие соответствия 1:1 в SNOMED CT, используют локальные коды.

Профиль: [DHISCondition](StructureDefinition-dhis-condition.html)

Пример: [example-tbc-diagnosis](Condition-example-tbc-diagnosis.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Диагноз | [DHISConditionCodeVS](ValueSet-dhis-condition-code-vs.html) | `SNOMED CT#88356006` (Primary tuberculous complex) | `Condition.code` |
| Клинический статус | [condition-clinical](https://dhp.uz/fhir/core/CodeSystem-clinical-status-cs.html) | `condition-clinical#active` (Active) | `clinicalStatus` |
| Статус верификации | [condition-ver-status](https://dhp.uz/fhir/core/CodeSystem-condition-verification-status-cs.html) | `condition-ver-status#confirmed` (Confirmed) | `verificationStatus` |
| Категория | [condition-category](http://terminology.hl7.org/CodeSystem/condition-category) | `condition-category#encounter-diagnosis` (Encounter Diagnosis) | `category` |
| Когда началось | - | `2025-06-03` | `onsetDateTime` |
| Субъект | - | ссылка на [Patient](#registering-a-patient-patient) | `subject` |

Используйте код SNOMED CT везде, где существует точное соответствие; лишь немногие диагнозы без соответствия 1:1 в SNOMED CT (например, фиброзно-кавернозный туберкулёз и сопутствующие патологии, не связанные с ТБ) сохраняют локальный код. ConceptMap [tuberculosis-to-snomed](ConceptMap-dhis-tuberculosis-to-snomed.html) сопоставляет каждый диагностический код DHIS с его концептом SNOMED CT, так что интегратор может найти стандартный код для любого имеющегося у него локального кода.

### Группировка курса лечения (EpisodeOfCare) {#grouping-the-treatment-course-episodeofcare}

Эпизод оказания помощи группирует диагноз ТБ пациента, лечение и наблюдение на протяжении всего курса оказания помощи и указывает куратора случая.

Профиль: [DHISEpisodeOfCare](StructureDefinition-dhis-episode-of-care.html)

Пример: [example-dhis-episode-of-care](EpisodeOfCare-example-dhis-episode-of-care.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Тип эпизода | [episode-of-care-type-cs](https://dhp.uz/fhir/core/CodeSystem-episode-of-care-type-cs.html) | `episode-of-care-type-cs#mserv-0001-00004` (Treatment services) | `type` |
| Статус | [EpisodeOfCareStatus](https://hl7.org/fhir/R5/valueset-episode-of-care-status.html) | `active` | `status` |
| Период оказания помощи | - | `2025-03-12` - `2025-09-12` | `period.start` / `period.end` |
| Диагноз, по которому проводится лечение | - | ссылка на [DHISCondition](#recording-a-tb-diagnosis-condition) | `diagnosis.condition` |
| Пациент | - | ссылка на [Patient](#registering-a-patient-patient) | `patient` |
| Куратор случая | - | ссылка на [PractitionerRole](#supporting-resources) | `careManager` |

### Сбор образца (Specimen) {#collecting-a-specimen-specimen}

Каждый образец, собранный для лабораторного исследования. `Specimen.type` записывает, какого рода это образец; `Specimen.feature.type` записывает его состояние обработки (первичный образец, осадок, изолят культуры).

Профиль: [DHISSpecimen](StructureDefinition-dhis-specimen.html)

Пример: [example-dhis-specimen](Specimen-example-dhis-specimen.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Тип образца | [SpecimenTypeVS](ValueSet-specimen-type-vs.html) | `SNOMED CT#119334006` (Sputum specimen) | `Specimen.type` |
| Состояние обработки | [SpecimenFeatureTypeVS](ValueSet-specimen-feature-type-vs.html) | `specimen-feature-type-cs#Spec002-0001` (Primary sample) | `feature.type` |
| Статус | [specimen-status](https://hl7.org/fhir/R5/valueset-specimen-status.html) | `available` | `status` |
| Субъект | - | ссылка на [Patient](#registering-a-patient-patient) | `subject` |
| Производный от | - | ссылка на родительский Specimen | `parent` |

Используйте код SNOMED CT везде, где существует точное соответствие; лишь группировки участков и питательные среды без соответствия 1:1 в SNOMED CT сохраняют локальный код. ConceptMap [specimen-type-conceptmap](ConceptMap-specimen-type-conceptmap.html) сопоставляет каждый тип образца DHIS с его концептом SNOMED CT, а ConceptMap [specimen-feature-type-to-snomed](ConceptMap-specimen-feature-type-to-snomed.html) делает то же самое для стадий обработки (изолят культуры использует код SNOMED CT; первичный образец и осадок сохраняют локальный код).

### Запись результатов диагностических тестов (Observation) {#recording-diagnostic-test-results-observation}

Каждый лабораторный результат или результат визуализации - это отдельное Observation. Во всех четырёх профилях ниже `Observation.code` идентифицирует тест и берётся из [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) - LOINC, где существует точный код, иначе локальный код для вариантов питательных сред и анализов. ConceptMap [observation-tuberculosis-code](ConceptMap-dhis-observation-tuberculosis-code.html) сопоставляет каждый код теста DHIS с его концептом LOINC. Различается то, как переносится результат:

- кодированные результаты используют [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) (SNOMED CT для идентифицированных видов, локальные коды для степеней мазка/посева, а также коды интерпретации HL7, такие как `POS`/`NEG`),
- компоненты результата (например, по одной строке на препарат в панели чувствительности) помечаются с помощью [DHISObservationComponentCodeVS](ValueSet-dhis-observation-component-code-vs.html),
- находки да/нет используют boolean.

Выберите профиль, соответствующий тесту:

| Тест | Профиль | Как переносится результат |
| :--- | :--- | :--- |
| Микроскопия мазка мокроты | [DHISObservationMicroscopy](StructureDefinition-dhis-observation-microscopy.html) | кодированная степень КУБ в компоненте |
| Посев, идентификация видов, тестирование лекарственной чувствительности (ТЛЧ), линейный зондовый анализ | [DHISObservation](StructureDefinition-dhis-observation.html) | кодированное значение и/или компоненты по каждому препарату |
| Рентгенография грудной клетки | [DHISObservationXray](StructureDefinition-dhis-observation-xray.html) | boolean (находка присутствует/отсутствует) |
| Тест на ВИЧ | [DHISObservationHIV](StructureDefinition-dhis-observation-hiv.html) | boolean |

#### Микроскопия мазка мокроты

Записывает нагрузку кислотоустойчивых бактерий (КУБ), обнаруженную в окрашенном мазке. Степень хранится в компоненте.

Профиль: [DHISObservationMicroscopy](StructureDefinition-dhis-observation-microscopy.html)

Пример: [example-microscopy](Observation-example-microscopy.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код теста | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `LOINC#53904-9` (Sputum smear microscopy, fluorescent) | `Observation.code` |
| Что сообщает компонент | [DHISObservationComponentCodeVS](ValueSet-dhis-observation-component-code-vs.html) | `dhis-observation-component-code-cs#Tub004-0032` (Grading) | `component.code` |
| Степень КУБ | [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) | `dhis-observation-codeable-concept-cs#Tub003-0008` (3+ / 40 fields) | `component.valueCodeableConcept` |
| Исследованный образец | - | ссылка на [DHISSpecimen](#collecting-a-specimen-specimen) | `specimen` |

#### Посев, идентификация и тестирование лекарственной чувствительности

Охватывает посев на плотных/жидких средах, идентификацию видов и тестирование лекарственной чувствительности (ТЛЧ), включая линейные зондовые анализы. Общий результат помещается в `valueCodeableConcept`; в панели ТЛЧ каждый препарат - это компонент, код которого - это препарат, а значение - это результат чувствительности.

Профиль: [DHISObservation](StructureDefinition-dhis-observation.html)

Пример: [example-tb-microscopy](Observation-example-tb-microscopy.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код теста | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `dhis-observation-code-cs#Tub002-0007` (Phenotypic DST on MGIT) | `Observation.code` |
| Общий результат | [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) | `SNOMED CT#113858008` (M. tuberculosis complex) | `valueCodeableConcept` |
| Тестируемый препарат (ТЛЧ) | [DHISObservationComponentCodeVS](ValueSet-dhis-observation-component-code-vs.html) | `dhis-observation-component-code-cs#Tub004-0008` (Isoniazid 0.1 mg/mL) | `component.code` |
| Результат чувствительности | [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) | `v3-ObservationInterpretation#R` (Resistant) | `component.valueCodeableConcept` |
| Исследованный образец | - | ссылка на [DHISSpecimen](#collecting-a-specimen-specimen) | `specimen` |

Идентифицированные виды и квалификаторы следов и идентификации используют свой код SNOMED CT напрямую; ConceptMap [dhis-observation-result-to-snomed](ConceptMap-dhis-observation-result-to-snomed.html) фиксирует код результата DHIS, который каждый из них заменяет, тогда как степени мазка/посева и результаты диапазонов устойчивости без стандартного эквивалента сохраняют локальный код.

Для компонентов ТЛЧ агенты с простым названием препарата используют код LOINC `<drug> [Susceptibility]` напрямую; агенты, несущие концентрацию, сохраняют локальный код (критическая концентрация, которую отбрасывает стандартный код). ConceptMap [dhis-observation-component-to-loinc](ConceptMap-dhis-observation-component-to-loinc.html) сопоставляет каждый препарат DHIS с его концептом LOINC.

#### Рентгенография грудной клетки

Записывает, была ли обнаружена связанная с ТБ находка на рентгенограмме грудной клетки.

Профиль: [DHISObservationXray](StructureDefinition-dhis-observation-xray.html)

Пример: [example-observation-xray](Observation-example-observation-xray.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код теста | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `LOINC#30745-4` (Chest X-ray) | `Observation.code` |
| Находка присутствует | - | `false` | `Observation.value` (boolean) |

#### Тест на ВИЧ

Записывает результат теста на ВИЧ, выполненного в рамках скрининга на ко-инфекцию ТБ/ВИЧ.

Профиль: [DHISObservationHIV](StructureDefinition-dhis-observation-hiv.html)

Пример: [example-obs-hiv](Observation-example-obs-hiv.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код теста | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `LOINC#56888-1` (HIV testing) | `Observation.code` |
| Результат | - | `true` | `Observation.value` (boolean) |

### Документирование стационарного пребывания (Encounter)

Госпитализация для лечения ТБ. Специфичного для DHIS профиля Encounter нет; используйте UZ Core напрямую. `diagnosis.condition` связывает госпитализацию с диагнозом ТБ.

Профиль: [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition-uz-core-encounter.html)

Пример: [example-dhis-encounter](Encounter-example-dhis-encounter.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Класс | [v3-ActCode](https://dhp.uz/fhir/core/CodeSystem-actcode-cs.html) | `v3-ActCode#IMP` (inpatient encounter) | `class` |
| Статус | [EncounterStatus](https://hl7.org/fhir/R5/valueset-encounter-status.html) | `completed` | `status` |
| Период госпитализации | - | `2026-02-12` - `2026-02-18` | `actualPeriod` |
| Диагноз | - | ссылка на [DHISCondition](#recording-a-tb-diagnosis-condition) | `diagnosis.condition` |
| Роль диагноза | [encounter-diagnosis-use](https://hl7.org/fhir/R5/codesystem-encounter-diagnosis-use.html) | `encounter-diagnosis-use#final` (Final) | `diagnosis.use` |

### Вспомогательные ресурсы {#supporting-resources}

На эти ресурсы ссылаются записи выше, и они используют профили UZ Core напрямую.

| Ресурс | Профиль | Пример | Роль |
| :--- | :--- | :--- | :--- |
| Organization | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | [example-organization](Organization-example-organization.html) | Учреждение, проводящее лечение ТБ |
| Practitioner | [UZCorePractitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | [example-practitioner](Practitioner-example-practitioner.html) | Клиницист, участвующий в оказании помощи |
| PractitionerRole | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html) | [practitionerrole-001](PractitionerRole-practitionerrole-001.html) | Связывает клинициста с учреждением |
