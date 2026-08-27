<style>

/* Равномерные таблицы сопоставления на всю ширину (количество столбцов в разделах может различаться). */

.col-12 table { table-layout: fixed; width: 100%; }

.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }

</style>

На этой странице документировано, как данные по ведению онкологических случаев представлены в виде FHIR-ресурсов.

### Обзор

Модуль Cancer registry охватывает регистрацию, диагностику, стадирование, лечение и последующее наблюдение онкологических пациентов. Данные поступают из информационной системы Cancer и добавляются в DHP в виде отдельных атомарных FHIR-ресурсов. Ресурсы соответствуют Cancer-профилям, указанным в каждом разделе, а в остальных случаях — профилям UZ Core или стандартным FHIR-профилям.

Везде, где для понятия существует стандартный эквивалент, в ресурсах непосредственно используется стандартный код — ICD-10 для кодированного диагноза и SNOMED CT для анатомической области. Исходная система хранит собственные локальные коды (регистрационный статус, метод подтверждения, категории TNM, топография, морфология, характер лечения и т. д.); каждый локальный код хранится в собственной Cancer CodeSystem и сопоставляется с соответствующим стандартным или DHP-кодом посредством ConceptMap. Таким образом, интегратор всегда может найти стандартный/целевой код для имеющегося у него кода. В ресурсах используется стандартный или DHP-код везде, где существует точное (`equivalent`) соответствие; связанный с каждым полем value set содержит такой код и сохраняет локальный код только в тех случаях, когда точного стандартного эквивалента нет (например, степени категорий TNM, подкатегории стадий и комбинации методов лечения, для которых отсутствует эквивалент 1:1 во внешней терминологии). В каждом разделе ниже указаны соответствующий профиль, конкретный пример ресурса, а также value set и пример кода для каждого поля, содержащего код.

Типичная запись связывает между собой: [patient](#регистрация-пациента-patient), [primary cancer diagnosis](#регистрация-первичного-диагноза-cancerconditionprimary) и связанную [secondary/metastatic condition](#регистрация-метастатического-или-рецидивирующего-заболевания-cancerconditionsecondary), [episode of care](#группировка-курса-лечения-cancerepisodeofcare), объединяющий курс лечения, [encounter](#документирование-визита-cancerencounter), в рамках которого определяется состояние пациента и план лечения, а также [staging observations](#регистрация-стадирования-cancerobservationtnmcategory-и-cancerobservationtnmstagegroup) — отдельные категории TNM и общую группу стадии, полученные в результате обследования.

### Регистрация пациента (Patient)

Субъект каждой онкологической записи. Специального Cancer-профиля Patient не существует; следует непосредственно использовать UZ Core.

Profile: [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html)

| Информация для записи | Где хранится |
| :--- | :--- |
| Национальный идентификатор | `identifier` (national ID slice) |
| Имя, пол, дата рождения | `name`, `gender`, `birthDate` |
| Адрес | `address` (UZ address slice) |
| Ответственная организация | `managingOrganization` → [Organization](#поддерживающие-ресурсы) |

### Регистрация первичного диагноза (CancerConditionPrimary)

Определяет топографию опухоли (место первичного возникновения) и морфологию (гистологический тип). `Condition.code` содержит диагноз, закодированный по ICD-10; специфические для опухоли сведения — латеральность, топография и морфология ICD-O-3, степень дифференцировки, биологическое поведение опухоли, обстоятельства выявления, группа ICCC-3 и метод подтверждения — хранятся в extensions, поскольку в базовом `Condition` для них нет соответствующего элемента.

Profile: [CancerConditionPrimary](StructureDefinition-cancer-condition-primary.html)

Example: [cancer-condition-primary-example](Condition-cancer-condition-primary-example.html)

| Информация для записи | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Диагноз | ICD10VS | `ICD-10#C02` | `Condition.code` |
| Латеральность | [CancerLaterlityQualifierCS](CodeSystem-cancer-laterlity-qualifier-cs.html) | `cancer-laterlity-qualifier-cs#cancer-0004-0002` (Слева / Chap tomonda / Left) | `extension[lateralityQualifier]` |
| Топография (ICD-O-3) | [CancerICD3TopographyCS](CodeSystem-cancer-icd3-topography-cs.html) | `cancer-icd3-topography-cs#C020` (языка верхняя поверхность БДУ / tilning yuqori yuzasi QA) | `extension[topography]` |
| Морфология (ICD-O-3) | [CancerICD3morphologyCS](CodeSystem-cancer-icd3-morphology-cs.html) | `cancer-icd3-morphology-cs#8000` (Новообразование злокачественное БДУ / Xavfli o‘smalar QA) | `extension[morphology]` |
| Степень дифференцировки | [CancerDegreeDifferentiationCS](CodeSystem-cancer-degree-differentiation-cs.html) | `cancer-degree-differentiation-cs#cancer-0020-0002` (G2, умеренно дифференцированная) | `extension[gradeDifferentiation]` |
| Биологическое поведение опухоли | [CancerTumorBehaviorCS](CodeSystem-cancer-tumor-behavior-cs.html) | `cancer-tumor-behavior-cs#cancer-0019-0004` (Злокачественная / Yomon sifatli / Malignant) | `extension[tumorBehavior]` |
| Обстоятельства выявления | [CancerDetectionCircumstanceCS](CodeSystem-cancer-detection-circumstance-cs.html) | `cancer-detection-circumstance-cs#cancer-0005-0002` (Выявлено в кабинете онкоконтроля) | `extension[detectionCircumstance]` |
| Группа ICCC-3 | `$iccc-3-cs` | `iccc-3-cs#III` | `extension[cancer-iccc-3-group]` |
| Метод подтверждения | [CancerConfirmationMethodCS](CodeSystem-cancer-confirmation-method-cs.html) | `cancer-confirmation-method-cs#cancer-0002-0003` (Гистология / Histology) | `extension[confirmationMethod]` |
| Клинический статус | [condition-clinical](https://dhp.uz/fhir/core/CodeSystem-clinical-status-cs.html) | `condition-clinical#active` | `clinicalStatus` |
| Статус верификации | [condition-ver-status](https://dhp.uz/fhir/core/CodeSystem-condition-verification-status-cs.html) | `condition-ver-status#confirmed` | `verificationStatus` |
| Категория | [condition-category](http://terminology.hl7.org/CodeSystem/condition-category) | `condition-category#problem-list-item` | `category` |
| Анатомическая область | SNOMED CT | `SNOMED CT#422005` | `bodySite` |
| Дата начала / дата регистрации | - | `2026-08-15` / `2020-08-15` | `onsetDateTime` / `recordedDate` |
| Общая стадия | [CancerStageCS](CodeSystem-cancer-stage-cs.html) | `cancer-stage-cs#cancer-0012-0002` (I) | `stage.summary` |
| Подстадия | [CancerSubStageCS](CodeSystem-cancer-sub-stage-cs.html) | `cancer-sub-stage-cs#cancer-0013-0007` (a1) | `stage.summary` |
| Данные стадирования | - | ссылка на [CancerObservationTNMStageGroup](#регистрация-стадирования-cancerobservationtnmcategory-и-cancerobservationtnmstagegroup) | `stage.assessment` |
| Субъект / encounter | - | ссылки на [Patient](#регистрация-пациента-patient) / [CancerEncounter](#документирование-визита-cancerencounter) | `subject` / `encounter` |
| Ответственный клиницист | - | ссылка на [PractitionerRole](#поддерживающие-ресурсы) | `participant.actor` |

Ни один из кодов топографии, морфологии, латеральности, обстоятельств выявления, метода подтверждения, степени дифференцировки или биологического поведения опухоли не имеет точного эквивалента 1:1 во внешней терминологии. Поэтому каждый из них сохраняет локальный Cancer-код (`cancer-000X-YYYY`); только основной диагноз (ICD-10) и анатомическая область (SNOMED CT) используют стандартные коды.

Регистрационные поля, такие как метод выявления случая (`CancerIdCS` коды #505–#513) и статус, аналогичный статусу при выписке (#29–#33), сопоставляются посредством ConceptMap [cancer-id-status-to-dhp-status-cm](ConceptMap-cancer-id-status-to-dhp-status-cm.html) с соответствующими системами кодов типа диагноза DHP и discharge disposition, а также с Cancer-specific `CancerDiagnosisTypeCS` / `CancerEncounterDischargeDispositionCS` code systems.

Коды топографии из исходной системы — числовой `CancerIdICD3TopographyCS` — сопоставляются 1:1 с алфавитно-цифровыми кодами (`Cxxx`) `CancerICD3TopographyCS` посредством ConceptMap [cancer-id-icd3-topography-to-cancer-icd3-topography-cm](ConceptMap-cancer-id-icd3-topography-to-cancer-icd3-topography-cm.html). Поэтому интегратор, располагающий любым из этих наборов кодов, может определить соответствующий код из другого набора.

### Регистрация метастатического или рецидивирующего заболевания (CancerConditionSecondary)

Описывает метастатический, рецидивирующий или иной вторичный онкологический процесс и анатомическую область, которую он затрагивает, а также связывает его с первичным диагнозом.

Profile: [CancerConditionSecondary](StructureDefinition-condition-cancer-secondary.html)

Example: [cancer-condition-secondary-example](Condition-cancer-condition-secondary-example.html)

| Информация для записи | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Связь с первичным диагнозом | - | ссылка на [CancerConditionPrimary](#регистрация-первичного-диагноза-cancerconditionprimary) | `extension[relatedCondition]` |
| Характер процесса | [CancerEmergingProcessCS](CodeSystem-cancer-emerging-process-cs.html) | `cancer-emerging-process-cs#cancer-0015-0001` (Рецидив / Retsidiv / Recurrence) | `code` |
| Затронутая анатомическая область | [CancerDamageAreaCS](CodeSystem-cancer-damage-area-cs.html) | `cancer-damage-area-cs#cancer-0014-0002` (Кости / Suyaklar / Bones) | `bodySite` |
| Клинический / верификационный статус | - | `condition-clinical#active` / `condition-verification-status#confirmed` | `clinicalStatus` / `verificationStatus` |
| Субъект / encounter | - | ссылки на [Patient](#регистрация-пациента-patient) / [CancerEncounter](#документирование-визита-cancerencounter) | `subject` / `encounter` |
| Дата начала | - | `2026-08-15` | `onsetDateTime` |

Ни для понятия рецидивирующего/метастатического процесса, ни для понятия поражённой области в данном реестре нет стандартного терминологического эквивалента. Поэтому оба понятия сохраняются как локальные Cancer-коды.

### Документирование визита (CancerEncounter)

Encounter, в рамках которого оцениваются онкологическое состояние пациента и его лечение. Профиль расширяет Encounter UZ Core, задавая ограниченный encounter class и обязательную связь с соответствующим episode of care.

Profile: [CancerEncounter](StructureDefinition-cancer-encounter.html)

Example: [cancer-encounter-example](Encounter-cancer-encounter-example.html)

| Информация для записи | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Class | [v3-ActCode](https://dhp.uz/fhir/core/CodeSystem-actcode-cs.html) | `v3-ActCode#IMP` (стационарный encounter) | `class` |
| Статус | [EncounterStatus](https://hl7.org/fhir/R5/valueset-encounter-status.html) | `completed` | `status` |
| Episode of care | - | ссылка на [CancerEpisodeOfCare](#группировка-курса-лечения-cancerepisodeofcare) | `episodeOfCare` |
| Период визита | - | с `2026-08-18T09:00` до `2026-08-18T10:30` | `actualPeriod` |
| Диагноз | - | ссылка на [CancerConditionPrimary](#регистрация-первичного-диагноза-cancerconditionprimary) | `diagnosis.condition` |
| Роль диагноза | [encounter-diagnosis-use](https://hl7.org/fhir/R5/codesystem-encounter-diagnosis-use.html) | `encounter-diagnosis-use#final` (Окончательный) | `diagnosis.use` |
| Распоряжение при выписке | [discharge-disposition-home-cs](https://dhp.uz/fhir/core/CodeSystem-discharge-disposition-home-cs.html) | `discharge-disposition-home-cs#mserv-0004-00002` | `admission.dischargeDisposition` |

Собственные коды реестра для статуса пациента/распоряжения (`CancerIdCS` #29–#33 — жив, умер, выбыл, диагноз не подтверждён, период наблюдения завершён) сопоставляются посредством ConceptMap [cancer-id-status-to-dhp-status-cm](ConceptMap-cancer-id-status-to-dhp-status-cm.html) с данной системой кодов DHP discharge-disposition и с Cancer-specific кодами disposition.

### Группировка курса лечения (CancerEpisodeOfCare)

Episode of care объединяет диагноз пациента и проводимый в связи с ним курс лечения, фиксируя как характер (направленность) лечения, так и метод (специальное лечение) этого курса.

Profile: [CancerEpisodeOfCare](StructureDefinition-cancer-episode-of-care.html)

Example: [cancer-episode-of-care-example](EpisodeOfCare-cancer-episode-of-care-example.html)

| Информация для записи | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Тип episode | [episode-of-care-type](https://dhp.uz/fhir/core/CodeSystem-episode-of-care-type-cs.html) | `episode-of-care-type#mserv-0001-00004` (Лечебные услуги) | `type[serviceType]` |
| Характер лечения | [CancerCharacterTreatmentCS](CodeSystem-cancer-character-treatment-cs.html) | `cancer-character-treatment-cs#cancer-0017-0002` (Радикальное / Radikal / Radical) | `type[characterTreatment]` |
| Специальное (модальное) лечение | [CancerSpecialTreatmentCS](CodeSystem-cancer-special-treatment-cs.html) | `cancer-special-treatment-cs#cancer-0018-0002` (Хирургическое лечение / Jarrohlik davolash / Surgical treatment) | `type[specialTreatment]` |
| Статус | [EpisodeOfCareStatus](https://hl7.org/fhir/R5/valueset-episode-of-care-status.html) | `active` | `status` |
| Период лечения | - | с `2026-08-15` по `2026-08-15` | `period.start` / `period.end` |
| Лечимый диагноз | - | ссылка на [CancerConditionPrimary](#регистрация-первичного-диагноза-cancerconditionprimary) | `diagnosis.condition` |
| Пациент / управляющая организация | - | ссылки на [Patient](#регистрация-пациента-patient) / [Organization](#поддерживающие-ресурсы) | `patient` / `managingOrganization` |
| Ответственный за ведение | - | ссылка на [PractitionerRole](#поддерживающие-ресурсы) | `careManager` |

Как характер лечения, так и специальное лечение представляют собой комбинации, специфичные для реестра (например, «хирургическое лечение + дистанционная лучевая терапия + химиотерапия» как одно значение). Для таких комбинаций не существует стандартной терминологии с эквивалентом 1:1, поэтому оба поля сохраняют локальные Cancer-коды на всём протяжении процесса.

### Регистрация стадирования (CancerObservationTNMCategory и CancerObservationTNMStageGroup)

Стадирование разделено между двумя профилями Observation: один экземпляр для каждой отдельной категории TNM (cT, cN, cM, pT, pN, pM) и один сводный экземпляр для общей группы стадии, который ссылается на наблюдения категорий, на основании которых она была определена.

#### Отдельная категория TNM

Profile: [CancerObservationTNMCategory](StructureDefinition-cancer-observation-tnm-category.html)

Example: [cancer-observation-tnm-category-ct](Observation-cancer-observation-tnm-category-ct.html)

| Информация для записи | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Какая категория регистрируется | [CancerTNMCategoryCS](CodeSystem-cancer-tnm-category-cs.html) | `cancer-tnm-category-cs#cancer-0022-0003` (категория cT) | `Observation.code` |
| Значение категории | одно из `CancerCCcTCategoryCS` / `CancerCCcNCategoryCS` / `CancerCCcMCategoryCS` / `CancerCCpTCategoryCS` / `CancerCCpNCategoryCS` / `CancerCCpMCategoryCS`, соответствующее закодированной выше категории | `cancer-cc-p-n-category-cs#cancer-0010-0001` (X) | `valueCodeableConcept` |
| Статус | [ObservationStatus](https://hl7.org/fhir/R5/valueset-observation-status.html) | `final` | `status` |
| Категория (вид наблюдения) | [observation-category](https://hl7.org/fhir/R5/valueset-observation-category.html) | `observation-category#imaging` | `category` |
| Субъект / focus | - | ссылки на [Patient](#регистрация-пациента-patient) / [CancerConditionPrimary](#регистрация-первичного-диагноза-cancerconditionprimary) | `subject` / `focus` |
| Исполнитель | - | ссылка на [PractitionerRole](#поддерживающие-ресурсы) | `performer` |

Каждая из шести систем кодирования значений категорий представляет шкалу, специфичную для соответствующей оси TNM (клиническая или патологическая, T, N или M). Поэтому значения категорий сохраняют локальные Cancer-коды; только сама ось, которая регистрируется (`CancerTNMCategoryCS`), представляет собой фиксированный закрытый список.

#### Общая группа стадии

Profile: [CancerObservationTNMStageGroup](StructureDefinition-cancer-observation-tnm-stage-group.html)

Example: [cancer-observation-tnm-stage-group-example](Observation-cancer-observation-tnm-stage-group-example.html)

| Информация для записи | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Тип Observation | [CancerStageGroupCS](CodeSystem-cancer-stage-group-cs.html) | `cancer-stage-group-cs#cancer-0021-0001` (Группировка стадий TNM / TNM bosqichlarini guruhlash) | `Observation.code` |
| Стадия | [CancerStageCS](CodeSystem-cancer-stage-cs.html) через component-код `cancer-stage-group-cs#cancer-0021-0004` | `cancer-stage-cs#cancer-0012-0002` (I) | `component[stage].valueCodeableConcept` |
| Уточнение стадии (подстадия) | [CancerSubStageCS](CodeSystem-cancer-sub-stage-cs.html) через component-код `cancer-stage-group-cs#cancer-0021-0005` | `cancer-sub-stage-cs#cancer-0013-0007` (a1) | `component[stageClarification].valueCodeableConcept` |
| Субъект / focus | - | ссылки на [Patient](#регистрация-пациента-patient) / [CancerConditionPrimary](#регистрация-первичного-диагноза-cancerconditionprimary) | `subject` / `focus` |
| Поддерживающие наблюдения категорий | - | ссылка/ссылки на [CancerObservationTNMCategory](#отдельная-категория-tnm) | `hasMember` |
| Дата проведения / исполнитель | - | `2025-08-15T10:30` / ссылка на [PractitionerRole](#поддерживающие-ресурсы) | `effectiveDateTime` / `performer` |

Стадия и подстадия представляют собой простые порядковые/буквенные шкалы (0, I–IV и a–d, а также подуровни вроде a1/b2), для которых в данном реестре отсутствует стандартная эквивалентная терминология стадирования. Поэтому оба значения сохраняются как локальные Cancer-коды. `hasMember` используется для связывания Observation группы стадии с отдельными наблюдениями категорий (например, cT), на основании которых была определена группа стадии.

### Поддерживающие ресурсы

Эти ресурсы используются в приведённых выше записях в качестве ссылок и непосредственно используют профили UZ Core.

| Ресурс | Профиль | Роль |
| :--- | :--- | :--- |
| Organization | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | Онкологическое лечебное учреждение |
| Practitioner | [UZCorePractitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | Клиницист, участвующий в оказании помощи |
| PractitionerRole | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html) | Связывает клинициста с учреждением |