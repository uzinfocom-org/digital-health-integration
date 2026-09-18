<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>


> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

На этой странице описано, как сведения реестра гепатита представляются ресурсами FHIR.

### Обзор

Модель разделяет пациента, длительный эпизод помощи, отдельное посещение, диагноз, лабораторные результаты, результаты УЗИ и ответы на анкету. Каждый раздел содержит ссылки на профиль и примеры, а также сопоставление данных с полями FHIR. Профили гепатита наследуют [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html); их опубликованные ограничения являются определяющими.

Condition, EpisodeOfCare и оба профиля Observation требуют один `identifier[hepatitisRegistry]` с системой `https://dhp.uz/fhir/core/sid/org/uz/hepatitis` и значением. Questionnaire требует хотя бы один идентификатор. QuestionnaireResponse фиксирует систему идентификатора, если элемент присутствует. Это идентификаторы записей, отдельные от персональных идентификаторов пациента.

[Эпизод помощи](#following-the-care-episode) ссылается на [пациента](#registering-the-patient) и [диагноз](#recording-diagnosis-and-outcome). [Посещение](#recording-the-visit) может ссылаться на эпизод, а диагноз — на посещение. Наблюдения и [ответы на анкету](#recording-answers) самостоятельно указывают пациента. Примеры иллюстрируют отдельные ресурсы и не образуют единую полностью связанную запись пациента.

### Регистрация пациента (Patient) {#registering-the-patient}

Запись пациента содержит идентификационные, демографические и контактные данные. HepatitisPatient наследует UZ Core Patient и помечает `telecom` как Must Support; сама по себе эта пометка не делает поле обязательным.

Профиль: [HepatitisPatient](StructureDefinition-hepatitis-patient.html)

Пример: [hepatitis-patient-example](Patient-hepatitis-patient-example.html)

| Что фиксируется | Справочник | Пример кода или значения | Где хранится |
| :--- | :--- | :--- | :--- |
| Национальный идентификатор | - | `515050500505` | `identifier[nationalId].value` |
| Внутренний паспорт | - | `AB1234567` | `identifier[passportLocal].value` |
| Номер медицинской карты | - | `01234567890456` | `identifier[healthCardId].value` |
| ФИО | - | `Xalida Yusupova Maxmudovna` | `name` |
| Административный пол | [administrative-gender-vs](https://dhp.uz/fhir/core/ValueSet-administrative-gender-vs.html) | `female` | `gender` |
| Дата рождения | - | `1990-02-01` | `birthDate` |
| Телефон | - | `998-90-123-45-45` | `telecom.value` |

### Ведение эпизода помощи (EpisodeOfCare) {#following-the-care-episode}

EpisodeOfCare объединяет процесс оказания помощи пациенту, состоящему на учёте по поводу гепатита A, B, C или D. Ресурс связывает пациента, диагноз, ответственную организацию и координатора помощи.

Профиль: [HepatitisEpisodeOfCare](StructureDefinition-hepatitis-episode-of-care.html)

Пример: [hepatitis-episode-of-care-example](EpisodeOfCare-hepatitis-episode-of-care-example.html)

| Что фиксируется | Справочник | Пример кода или значения | Где хранится |
| :--- | :--- | :--- | :--- |
| Идентификатор реестра | - | `75dcdd0a-5a68-4cc6-8503-5ab15a42c63b` | `identifier[hepatitisRegistry].value` |
| Статус | [episode-of-care-status](https://hl7.org/fhir/R5/valueset-episode-of-care-status.html) | `active` | `status` |
| Вид услуги | [episode-of-care-type-vs](https://dhp.uz/fhir/core/ValueSet-episode-of-care-type-vs.html) | `episode-of-care-type-cs#mserv-0001-00004` | `type[serviceType]` |
| Диагноз | - | [example-hepatitis-condition](Condition-example-hepatitis-condition.html) | `diagnosis.condition.reference` |
| Назначение диагноза | [encounter-diagnosis-use](https://hl7.org/fhir/R5/valueset-encounter-diagnosis-use.html) | `encounter-diagnosis-use-cs#final` | `diagnosis.use` |
| Пациент | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `patient` |
| Ответственная организация | - | [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `managingOrganization` |
| Координатор помощи | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | `careManager` |
| Период помощи | - | `2026-09-18T09:00:00+05:00` / `2026-11-10T17:00:00+05:00` | `period` |

Пример имеет статус `active`; дата окончания является ожидаемой. Ссылка на диагноз ведёт к примеру острого гепатита C (`B17.1`), хотя описание эпизода упоминает гепатит B.

### Регистрация посещения (Encounter) {#recording-the-visit}

Encounter описывает отдельное посещение. Обязательное поле `subject` ссылается на HepatitisPatient; поле `episodeOfCare`, если заполнено, ссылается на HepatitisEpisodeOfCare.

Профиль: [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html)

Пример: [hepatitis-encounter-example](Encounter-hepatitis-encounter-example.html)

| Что фиксируется | Справочник | Пример кода или значения | Где хранится |
| :--- | :--- | :--- | :--- |
| Статус посещения | [encounter-status-vs](https://dhp.uz/fhir/core/ValueSet-encounter-status-vs.html) | `completed` | `status` |
| Класс посещения | [encounter-class-vs](https://dhp.uz/fhir/core/ValueSet-encounter-class-vs.html) | `v3-ActCode#AMB` | `class` |
| Вид посещения | [encounter-type-vs](https://dhp.uz/fhir/core/ValueSet-encounter-type-vs.html) | `encounter-type-cs#mserv-0001-00004` | `type` |
| Пациент | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Роль участника | [encounter-participant-type-vs](https://dhp.uz/fhir/core/ValueSet-encounter-participant-type-vs.html) | `v3-ParticipationType#ATND` | `participant.type` |
| Медицинский работник | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | `participant.actor` |
| Организация оказания помощи | - | [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `serviceProvider` |
| Фактический период | - | `2026-09-18T09:45:00+05:00` / `2026-09-18T11:00:00+05:00` | `actualPeriod` |
| Плановое начало | - | `2026-09-18T09:30:00+05:00` | `plannedStartDate` |

В примере посещения `episodeOfCare` не заполнено. Профиль поддерживает эту связь, но для привязки посещения к эпизоду помощи её необходимо указать явно.

### Регистрация диагноза и исхода (Condition) {#recording-diagnosis-and-outcome}

Condition содержит диагноз и клинический статус. Ресурс ссылается на HepatitisPatient и, при наличии связи с посещением, на HepatitisEncounter. Необязательное расширение outcome отражает ответ на лечение отдельно от клинического статуса.

Профиль: [HepatitisCondition](StructureDefinition-hepatitis-condition.html)

Пример: [example-hepatitis-condition](Condition-example-hepatitis-condition.html)

| Что фиксируется | Справочник | Пример кода или значения | Где хранится |
| :--- | :--- | :--- | :--- |
| Идентификатор реестра | - | `69dcdd0a-5a68-4cc6-8503-5ab15a41c63b` | `identifier[hepatitisRegistry].value` |
| Диагноз | [condition-code-vs](https://dhp.uz/fhir/core/ValueSet-condition-code-vs.html) | `ICD-10#B17.1` | `code` |
| Клинический статус | [clinical-status-vs](https://dhp.uz/fhir/core/ValueSet-clinical-status-vs.html) | `condition-clinical#active` | `clinicalStatus` |
| Тип диагноза | [diagnosis-type-vs](https://dhp.uz/fhir/core/ValueSet-diagnosis-type-vs.html) | `diagnosis-type-cs#gencl-0001-00003` | `extension[diagnosisType]` |
| Исход лечения | [HepatitisConditionOutcomeCodesVS](ValueSet-hepatitis-condition-outcome-codes-vs.html) | `SNOMED CT#1137679005` | `extension[outcome].valueCodeableConcept` |
| Пациент | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Посещение | - | [hepatitis-encounter-example](Encounter-hepatitis-encounter-example.html) | `encounter` |
| Дата регистрации | - | `2026-09-18T10:45:00+05:00` | `recordedDate` |
| Медицинский работник | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | `participant.actor` |

[Расширение исхода](StructureDefinition-hepatitis-condition-outcome.html) имеет кратность `0..1` и обязательную привязку к HepatitisConditionOutcomeCodesVS. Коды взяты из SNOMED CT; локальная CodeSystem является дополнением с переводами наименований.

### Регистрация лабораторных результатов (Observation) {#recording-laboratory-results}

Лабораторные наблюдения указывают исследование, метод, результат, время, пациента и исполнителей. Код примера обозначает исследование антител IgM к вирусу гепатита A, хотя описание упоминает ДНК гепатита B.

Профиль: [HepatitisObservationAnalysis](StructureDefinition-hepatitis-observation-analysis.html)

Пример: [example-hepatitis-observation-analysis](Observation-example-hepatitis-observation-analysis.html)

| Что фиксируется | Справочник | Пример кода или значения | Где хранится |
| :--- | :--- | :--- | :--- |
| Идентификатор реестра | - | `85dcdd0a-5a68-4cc6-8503-5ab15a42c63b` | `identifier[hepatitisRegistry].value` |
| Статус результата | [observation-status-vs](https://dhp.uz/fhir/core/ValueSet-observation-status-vs.html) | `final` | `status` |
| Исследование | [observation-codes-vs](https://dhp.uz/fhir/core/ValueSet-observation-codes-vs.html) | `LOINC#22314-9` | `code` |
| Метод | [lab-method-vs](https://dhp.uz/fhir/core/ValueSet-lab-method-vs.html) | `lab-methods-cs#lab-method-1` (PCR) | `method` |
| Результат | [v3-ObservationInterpretation](https://terminology.hl7.org/CodeSystem-v3-ObservationInterpretation.html) | `v3-ObservationInterpretation#NEG` | `valueCodeableConcept` |
| Пациент | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Время наблюдения | - | `2026-09-18T10:00:00+05:00` | `effectiveDateTime` |
| Исполнители | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html), [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `performer` |

`effective[x]` допускает dateTime или Period. `value[x]` допускает Attachment, Quantity или CodeableConcept; значения компонентов — string, CodeableConcept или Quantity. Компоненты также поддерживают `dataAbsentReason` и не более одного `interpretation`. Кодирование результата в таблице взято из примера и не является обязательным набором значений для всех результатов по гепатиту.

### Регистрация результатов УЗИ (Observation) {#recording-ultrasound-findings}

Каждое наблюдение УЗИ содержит кодируемую находку и логический результат. В примерах наличие цирроза и отсутствие поражения печени записаны отдельными ресурсами.

Профиль: [HepatitisObservationUltraSound](StructureDefinition-hepatitis-observation-ultra-sound.html)

Пример: [example-ultrasound-cirrhosis](Observation-example-ultrasound-cirrhosis.html), [example-ultrasound-lesion](Observation-example-ultrasound-lesion.html)

| Что фиксируется | Справочник | Пример кода или значения | Где хранится |
| :--- | :--- | :--- | :--- |
| Идентификатор реестра | - | `85dcdd0a-5a68-4cc6-8503-5ab15a42c73b` | `identifier[hepatitisRegistry].value` |
| Статус результата | [observation-status-vs](https://dhp.uz/fhir/core/ValueSet-observation-status-vs.html) | `final` | `status` |
| Находка | [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html) | `SNOMED CT#19943007` / `SNOMED CT#300332007` | `code` |
| Наличие находки | - | `true` / `false` | `valueBoolean` |
| Пациент | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Время наблюдения | - | `2026-09-18T10:30:00+05:00` | `effectiveDateTime` |
| Исполнители | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html), [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `performer` |

`code` имеет обязательную привязку к HepatitisTypeOfUltraSoundVS, использующему коды SNOMED CT с локальным дополнением переводов наименований. `effective[x]` допускает dateTime или Period; `value[x]` ограничен типом boolean.

### Определение анкеты (Questionnaire) {#defining-the-assessment}

Questionnaire определяет вопросы и правила их условного отображения. Пример включает предшествующее лечение гепатита B/C, препараты и триместр беременности.

Профиль: [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html)

Пример: [hepatitis-questionnaire](Questionnaire-hepatitis-questionnaire.html)

| Что фиксируется | Справочник | Пример кода или значения | Где хранится |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | `HCV-HBV-QS-2026` | `identifier.value` |
| Статус публикации | [publication-status](https://hl7.org/fhir/R5/valueset-publication-status.html) | `active` | `status` |
| Тип субъекта | [resource-types](https://hl7.org/fhir/R5/valueset-resource-types.html) | `Patient` | `subjectType` |
| Идентификатор вопроса | - | `hx-tx-hcv-hbv` | `item.item.linkId` |
| Тип вопроса | [item-type](https://hl7.org/fhir/R5/valueset-item-type.html) | `boolean`, `string`, `coding` | `item.item.type` |
| Условие отображения | [questionnaire-enable-operator](https://hl7.org/fhir/R5/valueset-questionnaire-enable-operator.html) | `=` / `true` | `item.item.enableWhen.operator / answerBoolean` |
| Варианты триместра | SNOMED CT | `255246003`, `255247007`, `255248002` | `item.item.answerOption.valueCoding` |

Канонический URL: `https://dhp.uz/fhir/integrations/Questionnaire/hepatitis-questionnaire`. Вопрос о препаратах отображается, когда `hx-tx-hcv-hbv` равен `true`. Варианты триместра заданы непосредственно в анкете, а не отдельным набором значений.

### Регистрация ответов (QuestionnaireResponse) {#recording-answers}

QuestionnaireResponse связывает заполненную анкету с её определением и пациентом. Значения `linkId` сохраняют иерархию анкеты и определяют вопросы, на которые даны ответы.

Профиль: [HepatitisQuestionnaireResponse](StructureDefinition-hepatitis-questionnaire-response.html)

Пример: [example-hcv-response](QuestionnaireResponse-example-hcv-response.html)

| Что фиксируется | Справочник | Пример кода или значения | Где хранится |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | `6f9b9d8e-3b7d-4d87-8f6e-123456789abc` | `identifier.value` |
| Статус ответов | [questionnaire-answers-status](https://hl7.org/fhir/R5/valueset-questionnaire-answers-status.html) | `completed` | `status` |
| Анкета | - | [hepatitis-questionnaire](Questionnaire-hepatitis-questionnaire.html) | `questionnaire` |
| Пациент | - | [example-hepatitis-patient](Patient-example-hepatitis-patient.html) | `subject` |
| Автор | - | [muratova-gulshoda-role](PractitionerRole-muratova-gulshoda-role.html) | `author` |
| Время заполнения | - | `2026-03-19T12:00:00Z` | `authored` |
| Предшествующее лечение | - | `true` | `item.item.answer.valueBoolean` |
| Лекарственный анамнез | - | `Sofosbuvir + Declatasvir` | `item.item.answer.valueString` |
| Триместр беременности | SNOMED CT | `255246003` | `item.item.answer.valueCoding` |

Профиль ограничивает `subject` типом HepatitisPatient, `author` — UZCorePractitionerRole, `source` — UZCoreRelatedPerson, а `partOf` — UZCoreSocioeconomicObservation. Пример использует другую запись пациента, чем эпизод помощи. Ответы вложены в группы (`item.item.answer`); явное ограничение boolean/string в профиле относится к верхнему уровню `item.answer.value[x]`. Названия препаратов являются примером ответа, а не рекомендацией по лечению.

### Вспомогательные ресурсы {#supporting-resources}

PractitionerRole связывает медицинского работника с организацией. На эти ресурсы ссылаются эпизод помощи, посещение, диагноз и наблюдения.

| Ресурс | Пример | Роль |
| :--- | :--- | :--- |
| PractitionerRole | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | Гепатолог в организации оказания помощи |
| Practitioner | [example-hepatologist](Practitioner-example-hepatologist.html) | Врач, указанный в PractitionerRole |
| Organization | [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | Организация оказания помощи и ведения эпизода |
