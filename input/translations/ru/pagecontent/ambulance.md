<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

На этой странице описано, как вызов скорой медицинской помощи (карта вызова СМП) представляется в виде ресурсов FHIR.

### Обзор {#overview}

Карта вызова СМП фиксирует один выезд бригады скорой помощи к пациенту: номер карты вызова, служба СМП, принявшая вызов, повод вызова, время, когда бригада находилась с пациентом, состояние пациента и диагноз, а также то, куда пациент был направлен после оказания помощи. Данные поступают из МИС СМП и добавляются в DHP в виде отдельных, атомарных ресурсов FHIR. Ресурсы соответствуют профилю СМП, указанному в каждом разделе, а в остальных случаях - профилям [UZ Core](https://dhp.uz/fhir/core/ru/artifacts.html) или стандартным профилям FHIR.

Там, где существует стандартное понятие, оно используется напрямую: HL7 `v3-ActCode` для класса встречи, HL7 `v3-ActPriority` для приоритета, HL7 `v3-ParticipationType` для роли члена бригады, МКБ-10 для медицинской причины и диагноза и коды мест SNOMED CT для места, откуда был взят пациент. Понятия, специфичные для службы СМП Узбекистана - тип встречи, повод вызова, состояние пациента и исход вызова, - используют локальные кодовые системы UZ Core с обозначениями на узбекском, русском и английском языках. Каждое из них доступно через набор значений UZ Core, связанный с соответствующим полем. В каждом разделе ниже указаны применяемый профиль, конкретный пример ресурса и таблица с набором значений и примером кода для каждого поля.

Типичная запись связывает: [вызов СМП](#recording-an-ambulance-call-encounter), который и является картой вызова, [место, куда была вызвана бригада](#recording-the-call-address-location), и [пациента](#supporting-resources), к которому была вызвана бригада. Вызов также может ссылаться на запрос, по которому он выполнен, на Condition, ставшее причиной вызова, и на больницу, куда был доставлен пациент.

<div>{% include ambulance-model-ru.svg %}</div><br clear="all"/>

### Регистрация вызова СМП (Encounter) {#recording-an-ambulance-call-encounter}

Сама карта вызова. Encounter представляет вызов с момента его поступления до момента, когда бригада закончила работу с пациентом; `reason` содержит повод вызова, а `admission` - то, что произошло с пациентом после оказания помощи.

Профиль: [AmbulanceEncounter](StructureDefinition-ambulance-encounter.html)

Пример: [example-ambulance-call-encounter](Encounter-example-ambulance-call-encounter.html)

| Регистрируемая информация | Набор значений | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Номер карты вызова | - | `01.CM5742/26` | `identifier` (system `https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card`) |
| Статус вызова | [EncounterStatusVS](https://dhp.uz/fhir/core/ValueSet-encounter-status-vs.html) | `completed` | `status` |
| Класс | [EncounterClassVS](https://dhp.uz/fhir/core/ValueSet-encounter-class-vs.html) | `v3-ActCode#EMER` (экстренный) | `class[dhpClass]` |
| Приоритет | [EncounterPriorityVS](https://dhp.uz/fhir/core/ValueSet-encounter-priority-vs.html) | `v3-ActPriority#EM` (экстренный) | `priority` |
| Тип вызова | [EncounterTypeVS](https://dhp.uz/fhir/core/ValueSet-encounter-type-vs.html) | `encounter-type-ambulance-cs#emer5-0006-1` (первичный) | `type[nationalType]` |
| Оказанная услуга | - | ссылка на [HealthcareService](https://dhp.uz/fhir/core/StructureDefinition-uz-core-healthcareservice.html) | `serviceType` |
| Пациент | - | ссылка на [Patient](#supporting-resources) | `subject` |
| Состояние пациента | [EncounterSubjectStatusVS](https://dhp.uz/fhir/core/ValueSet-encounter-subject-status-vs.html) | `encounter-subject-status-cs#gencl-0003-00002` (без сознания) | `subjectStatus` |
| Запрос, по которому выполнен вызов | - | ссылка на ServiceRequest или MedicationRequest | `basedOn` |
| Встреча, частью которой является вызов | - | ссылка на Encounter | `partOf` |
| Организация СМП | - | ссылка на [Organization](#supporting-resources) | `serviceProvider` |
| Роль члена бригады | [EncounterParticipantTypeVS](https://dhp.uz/fhir/core/ValueSet-encounter-participant-type-vs.html) | `v3-ParticipationType#ATND` (лечащий) | `participant.type` |
| Член бригады | - | ссылка на [PractitionerRole](#supporting-resources) | `participant.actor` |
| Повод вызова | [EncounterReasonUseVS](https://dhp.uz/fhir/core/ValueSet-encounter-reason-use-vs.html) | `encounter-reason-use-ambulance-cs#emer103054` (значительное изменение артериального давления) | `reason.use` |
| Медицинская причина | [ICD-10](ValueSet-icd-10-vs.html) | `ICD-10#I10` | `reason.value` |
| Начало и окончание вызова | - | `2026-03-01T09:30` - `2026-03-01T10:15` | `actualPeriod` |
| Диагноз | [ICD-10](ValueSet-icd-10-vs.html) | `ICD-10#I10` | `diagnosis.condition` |
| Откуда взят пациент | [EncounterAdmitSourceVS](https://dhp.uz/fhir/core/ValueSet-encounter-admit-source-vs.html) | `SNOMED CT#257630004` (House) | `admission.admitSource` |
| Повторный вызов | [EncounterReAdmissionVS](https://dhp.uz/fhir/core/ValueSet-encounter-reAdmission-vs.html) | - | `admission.reAdmission` |
| Куда доставлен пациент | - | ссылка на Location или Organization больницы | `admission.destination` |
| Исход вызова | [EncounterDischargeDispositionVS](https://dhp.uz/fhir/core/ValueSet-encounter-discharge-disposition-vs.html) | `encounter-discharge-disposition-home-cs#mserv-0004-00001` (госпитализирован) | `admission.dischargeDisposition` |
| Место, куда вызвана бригада | - | ссылка на [Location](#recording-the-call-address-location) | `location.location` |
| Время пребывания бригады на месте | - | `2026-03-01T09:42` - `2026-03-01T10:05` | `location.period` |

Номер карты вызова, статус, тип, пациент, организация СМП, начало и окончание вызова и место, куда была вызвана бригада, передаются всегда. `reason.value` и `diagnosis.condition` имеют тип CodeableReference: передайте код МКБ-10 в `concept` или ссылку на уже зарегистрированное у пациента Condition. `admission` передаётся только тогда, когда у вызова есть исход, и в этом случае всегда содержит исход. На [странице профиля](StructureDefinition-ambulance-encounter.html) JSON строится пошагово.

### Регистрация адреса вызова (Location) {#recording-the-call-address-location}

Адрес, по которому была вызвана бригада - дом пациента, улица, место работы, - это Location, на который ссылается `location.location` вызова. Больница, куда доставлен пациент, указывается в `admission.destination` как Location или Organization.

Профиль: [UZCoreLocation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-location.html)

Пример: [example-ambulance-call-location](Location-example-ambulance-call-location.html)

| Регистрируемая информация | Набор значений | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Название места | - | `Bemorning uyi` | `name` |
| Адрес | - | `Toshkent shahar, Yunusobod tumani, Amir Temur ko'chasi 108` | `address.text` |
| Статус | - | `active` | `status` |
| Экземпляр или вид | - | `instance` | `mode` |

### Вспомогательные ресурсы {#supporting-resources}

На эти ресурсы ссылаются приведённые выше записи. Каждая ссылка ограничена соответствующим профилем UZ Core.

| Ресурс | Тип ссылки | Пример | Роль |
| :--- | :--- | :--- | :--- |
| Patient | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) | [example-salim](Patient-example-salim.html) | Человек, к которому была вызвана бригада (`subject`) |
| Organization | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | [xonobod-medical-association](Organization-xonobod-medical-association.html) | Служба СМП, ответственная за вызов (`serviceProvider`) |
| PractitionerRole | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html) | [example-practitionerrole](PractitionerRole-example-practitionerrole.html) | Член бригады СМП (`participant.actor`) |
| Location | [UZCoreLocation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-location.html) | [example-location](Location-example-location.html) | Больница, куда был доставлен пациент (`admission.destination`) |
