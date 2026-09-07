<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td {
  overflow-wrap: anywhere;
  word-break: break-word;
  vertical-align: top;
}
</style>

### Регистрация пациента (Patient)

Пациенты в Реестре гепатита представлены с помощью профиля [HepatitisPatient](StructureDefinition-hepatitis-patient.html), который расширяет [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient).

**Примеры:** [`hepatitis-patient-example`](Patient-hepatitis-patient-example.html)

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Национальный идентификатор | - | `515050500505` | `identifier[nationalId]` |
| Внутренний паспорт | - | `AB1234567` | `identifier[passportLocal]` |
| Идентификатор медицинской карты | - | `01234567890456` | `identifier[healthCardId]` |
| Статус активности | - | `true` | `active` |
| ФИО | - | `To'lanboev Tolibjon` | `name` |
| Пол | AdministrativeGender | `male` | `gender` |
| Дата рождения | - | `1990-02-01` | `birthDate` |
| Контактные данные | - | `998-90-123-45-45` (мобильный) | `telecom` |
| Национальность | - | код `44` | `extension[nationality]` |
| Гражданство | ISO 3166 | `UZ` (Узбекистан) | `extension[citizenship]` |
| Адрес | - | г. Ташкент, Мирзо-Улугбекский район | `address` |

В отличие от базового профиля [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient), элемент `telecom` в профиле `HepatitisPatient` является обязательным (`Must Support`), поскольку контактная информация необходима для последующего наблюдения и мониторинга лечения.

---

### Регистрация медицинского визита (Encounter)

Клинический визит пациента, связанный с гепатитом, представлен с помощью профиля [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html), который расширяет [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter).

**Примеры:** [`hepatitis-encounter-example`](Encounter-hepatitis-encounter-example.html)

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус визита | Encounter Status | `completed` | `status` |
| Идентификатор | - | `ENC-2026-9901` | `identifier` |
| Тип идентификатора | Identifier Type | `PHC` (идентификатор случая общественного здравоохранения) | `identifier.type` |
| Тип визита | - | `mserv-0001-00004` (Лечебные услуги) | `type` |
| Класс визита | ActCode | `AMB` (Амбулаторный) | `class` |
| Пациент | - | ссылка на [HepatitisPatient](StructureDefinition-hepatitis-patient.html) | `subject` |
| Поставщик услуг | - | ссылка на [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `serviceProvider` |
| Тип участника | Participant Type | `ATND` | `participant.type` |
| Врач, проводивший визит | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `participant.actor` |
| Фактическое/плановое начало | - | `2026-01-26` / `2026-01-26T09:41:00+05:00` | `actualPeriod` |

В профиле `HepatitisEncounter` элемент `subject` ограничен кардинальностью `1..1`, допускает только ссылку на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) и является обязательным (`Must Support`).

---

### Регистрация диагноза гепатита (Condition)

Диагноз гепатита представлен с помощью профиля [HepatitisCondition](StructureDefinition-hepatitis-condition.html), который расширяет [UZCoreCondition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition).

**Примеры:** [`example-hepatitis-condition`](Condition-example-hepatitis-condition.html)

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | `COND-2026-5541` | `identifier` |
| Тип идентификатора | Identifier Type | `PHC` (идентификатор случая общественного здравоохранения) | `identifier.type` |
| Клинический статус | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Тип диагноза | [DiagnosisTypeVS](https://dhp.uz/fhir/core/ValueSet/diagnosis-type-vs.html) | `gencl-0001-00003` (Основной диагноз) | `extension[diagnosisType]` |
| Диагноз | ICD-10 | `B17.1` (Острый гепатит C) | `code` |
| Пациент | - | ссылка на [HepatitisPatient](StructureDefinition-hepatitis-patient.html) | `subject` |
| Визит | - | ссылка на [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html) | `encounter` |
| Дата регистрации | - | `2025-11-09T13:31:00Z` | `recordedDate` |
| Ответственный специалист | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `participant.actor` |
| Исход лечения | [HepatitisConditionOutcomeCodesCS](CodeSystem-hepatitis-condition-outcome-codes-cs.html) | SNOMED CT `1137679005` (Хороший ответ на лечение) | `extension[outcome]` |
| Примечания | - | произвольный текст | `note` |

Профиль `HepatitisCondition` добавляет два элемента, отсутствующих в базовом профиле [UZCoreCondition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition):

- `identifier` (`0..*`, `Must Support`) — используется для записи идентификатора случая, специфичного для гепатита, из выделенной системы идентификаторов.
- `extension[outcome]` (`0..1`, `Must Support`, расширение `HepatitisConditionOutcome`) — используется для записи исхода лечения в виде `valueCodeableConcept`.

#### Коды исхода лечения

Исход лечения выбирается из [HepatitisConditionOutcomeCodesCS](CodeSystem-hepatitis-condition-outcome-codes-cs.html) — дополнения SNOMED CT с узбекскими и русскими обозначениями:

| Код | RU | UZ | ENG |
| :--- | :--- | :--- | :--- |
| `1137679005` | Хороший ответ на лечение | Dori-darmonlar yaxshi ta'sir etdi | Good response to medication |
| `405786003` | Плохой ответ на лечение | Dori-darmonlar ta'sir etmadi | Poor response to treatment |

---

### Регистрация результатов лабораторного анализа (Observation)

Результаты лабораторных исследований на гепатит представлены с помощью профиля [HepatitisObservationAnalysis](StructureDefinition-hepatitis-observation-analysis.html), который расширяет [UZCoreObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation).

**Примеры:** [`example-hepatitis-observation-analysis`](Observation-example-hepatitis-observation-analysis.html)

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус наблюдения | Observation Status | `final` | `status` |
| Идентификатор | - | `PZR-2026-001` | `identifier` |
| Тип идентификатора | Identifier Type | `PHC` (идентификатор случая общественного здравоохранения) | `identifier.type` |
| Метод лабораторного исследования | [LabMethodsCS](https://dhp.uz/fhir/core/CodeSystem/lab-methods-cs.html) | `lab-method-1` (ПЦР) | `method` |
| Тип теста | LOINC | `22314-9` (Hepatitis A virus IgM Ab [Presence] in Serum) | `code` |
| Пациент | - | ссылка на [HepatitisPatient](StructureDefinition-hepatitis-patient.html) | `subject` |
| Дата результата | - | `2026-01-27T09:57:00Z` | `effectiveDateTime` |
| Результат | Observation Interpretation | `NEG` (Отрицательный) | `valueCodeableConcept` |
| Исполнитель | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) и [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `performer` |

В профиле `HepatitisObservationAnalysis` обязательными (`Must Support`) являются `identifier`, `subject` (ограничен ссылкой на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient)), `effective[x]` (`dateTime` или `Period`) и `value[x]` (`Attachment`, `Quantity` или `CodeableConcept`) — это позволяет сообщать результат в виде кодированной интерпретации, числового значения или прикреплённого отчёта. Если результат разбит на несколько компонентов (аналитов), также обязательными (`Must Support`) являются `component.value[x]` (`string`, `CodeableConcept` или `Quantity`), `component.dataAbsentReason` и `component.interpretation`.

---

### Регистрация результатов ультразвукового исследования (Observation)

Результаты УЗИ печени представлены с помощью профиля [HepatitisObservationUltraSound](StructureDefinition-hepatitis-observation-ultra-sound.html), который расширяет [UZCoreObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation).

**Примеры:** [`example-ultrasound-cirrhosis`](Observation-example-ultrasound-cirrhosis.html), [`example-ultrasound-lesion`](Observation-example-ultrasound-lesion.html)

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус наблюдения | Observation Status | `final` | `status` |
| Идентификатор | - | `OBS-2026-5541` | `identifier` |
| Тип идентификатора | Identifier Type | `PHC` (идентификатор случая общественного здравоохранения) | `identifier.type` |
| Тип признака УЗИ | [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html) | SNOMED CT `19943007` (Признаки цирроза) | `code` |
| Пациент | - | ссылка на [HepatitisPatient](StructureDefinition-hepatitis-patient.html) | `subject` |
| Дата обследования | - | `2026-01-26` | `effectiveDateTime` |
| Наличие признака | - | `true` / `false` | `valueBoolean` |
| Исполнитель | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) и [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `performer` |

Элемент `code` привязан (`required`) к [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html), а `value[x]` ограничен типом `boolean`, что позволяет каждому наблюдению УЗИ фиксировать, был ли конкретный признак обнаружен при обследовании или нет.

#### Коды признаков УЗИ

Тип признака выбирается из [HepatitisTypeOfUltraSoundCS](CodeSystem-hepatitis-type-of-ultra-sound-cs.html) — дополнения SNOMED CT с узбекскими и русскими обозначениями:

| Код | RU | UZ | ENG |
| :--- | :--- | :--- | :--- |
| `19943007` | Признаки цирроза | Jigar sirrozi belgilari | Signs of cirrhosis |
| `300332007` | Признаки образований в печени | Jigar shikastlanishining belgilari | Signs of liver lesions |

Для каждого типа признака, о котором сообщается, следует создавать отдельный экземпляр `HepatitisObservationUltraSound`, при этом `valueBoolean` указывает, был ли данный конкретный признак обнаружен.

---

### Сбор анамнестической и эпидемиологической информации (Questionnaire)

Клиническая и эпидемиологическая информация собирается с помощью профиля [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html), который расширяет [UZCoreQuestionnaire](https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire).

**Примеры:** [`hepatitis-questionnaire`](Questionnaire-hepatitis-questionnaire.html)

| Информация для записи | Набор значений | Пример | Хранится в |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | `HCV-HBV-QS-2026` | `identifier` |
| Тип субъекта | Resource Types | `Patient` | `subjectType` |
| Группировка разделов | - | «ОСНОВНАЯ ИНФОРМАЦИЯ» | `item` (`type = group`) |
| Условный вопрос | - | «Какие препараты принимались против HCV/HBV?» | `item.item`, отображается, если `hx-tx-hcv-hbv` = `true` |
| Кодированные варианты ответа | - | Триместр беременности (первый / второй / третий) | `item.item.answerOption` |

Профиль `HepatitisQuestionnaire` требует (`Must Support`) наличие `identifier` и `subjectType`. Пункты поддерживают вложенную группировку (`item.item`) с `enableBehavior`, а также условную логику отображения через `item.item.enableWhen`, которая в данном профиле ограничена ответом типа `boolean` (`enableWhen.answer[x] only boolean`). Для кодированных вопросов используется `item.item.answerOption`, ограниченный значениями `string` или `Coding`.

В примере вопрос «Какие препараты принимались против HCV/HBV?» отображается только в случае, если пациент ответил `true` на вопрос о ранее проведённом лечении HCV/HBV, а отдельная группа собирает информацию, связанную с беременностью, включая триместр беременности в виде кодированного ответа.

---

### Регистрация ответов на опросник (QuestionnaireResponse)

Ответы на [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) представлены с помощью профиля [HepatitisQuestionnaireResponse](StructureDefinition-hepatitis-questionnaire-response.html), который расширяет [UZCoreQuestionnaireResponse](https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response).

**Примеры:** [`example-hcv-response`](QuestionnaireResponse-example-hcv-response.html)

| Информация для записи | Набор значений | Пример | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус ответа | QuestionnaireResponse Status | `completed` | `status` |
| Опросник | - | ссылка на [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) | `questionnaire` |
| Пациент | - | ссылка на [HepatitisPatient](StructureDefinition-hepatitis-patient.html) | `subject` |
| Дата ответа | - | `2026-03-19T12:00:00Z` | `authored` |
| Автор | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `author` |
| Предшествующее лечение | - | `true` | `item.item.answer` (`valueBoolean`) |
| Принимаемые препараты | - | «Sofosbuvir + Declatasvir» | `item.item.answer` (`valueString`) |
| Связанная социально-экономическая запись | - | ссылка на [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) | `partOf` |
| Родственник, предоставивший информацию | - | ссылка на [UZCoreRelatedPerson](https://dhp.uz/fhir/core/StructureDefinition/uz-core-related-person) | `source` |

В профиле `HepatitisQuestionnaireResponse` типы ссылок ограничены: `partOf` — только на [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation), `subject` — только на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient), `author` — только на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role), `source` — только на [UZCoreRelatedPerson](https://dhp.uz/fhir/core/StructureDefinition/uz-core-related-person). Значения ответов (`item.answer.value[x]`) ограничены типами `boolean` или `string`.

---

### Сводка терминологии

Ниже приведена сводка терминологии, используемой ресурсами Реестра гепатита.

| Терминология | Ресурс / Элемент | Назначение |
| :--- | :--- | :--- |
| [DiagnosisTypeVS](https://dhp.uz/fhir/core/ValueSet/diagnosis-type-vs.html) | `Condition.extension[diagnosisType]` | Основной или сопутствующий диагноз |
| ICD-10 | `Condition.code` | Диагноз гепатита |
| [HepatitisConditionOutcomeCodesCS](CodeSystem-hepatitis-condition-outcome-codes-cs.html) | `Condition.extension[outcome]` | Исход лечения |
| LOINC | `Observation.code` (анализ) | Тип лабораторного теста |
| Observation Interpretation | `Observation.valueCodeableConcept` (анализ) | Результат лабораторного исследования |
| [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html) / [HepatitisTypeOfUltraSoundCS](CodeSystem-hepatitis-type-of-ultra-sound-cs.html) | `Observation.code` (УЗИ) | Тип признака УЗИ |
| SNOMED CT | `Condition.code` (инвалидность, при наличии) | Дополнительные клинические данные |

---

### Связи между ресурсами

Типичная запись Реестра гепатита может связывать ресурсы следующим образом:

- [HepatitisPatient](StructureDefinition-hepatitis-patient.html) является центральным субъектом.
- [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html) фиксирует медицинский визит пациента, связанный с гепатитом.
- [HepatitisCondition](StructureDefinition-hepatitis-condition.html) фиксирует диагноз гепатита, исход его лечения и может ссылаться на связанный визит.
- [HepatitisObservationAnalysis](StructureDefinition-hepatitis-observation-analysis.html) фиксирует результаты лабораторных исследований (например, ПЦР, серология) пациента.
- [HepatitisObservationUltraSound](StructureDefinition-hepatitis-observation-ultra-sound.html) фиксирует результаты УЗИ печени пациента.
- [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) определяет структурированную форму сбора анамнеза и эпидемиологических данных.
- [HepatitisQuestionnaireResponse](StructureDefinition-hepatitis-questionnaire-response.html) фиксирует ответы пациента (или связанного лица) на опросник и может ссылаться на связанную социально-экономическую запись.

Эти ресурсы связаны через ссылки на пациента, визит, роль специалиста, организацию и связанное лицо, что позволяет представить диагноз гепатита у пациента, результаты лабораторных и инструментальных исследований, исход лечения и собранный анамнез.