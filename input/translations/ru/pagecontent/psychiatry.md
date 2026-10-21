### Регистрация социального статуса пациента (Observation)

Социальный статус пациента представляется с использованием профиля [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation).

**Примеры:** [`example-psychiatry-socio-economic-observation`](Observation-example-psychiatry-socio-economic-observation.html)

Наблюдение идентифицирует запись о социальном статусе с помощью концепта SNOMED CT `82996008`. Фактический социальный статус пациента записывается в `valueCodeableConcept` с использованием [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs).

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус наблюдения | ObservationStatus | `final` | `status` |
| Тип наблюдения | [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `SNOMED CT#82996008` | `code` |
| Социальный статус | [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `regis0010.00003` (Работает) | `valueCodeableConcept` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Дата наблюдения | - | `2026-08-15` | `effectiveDateTime` |
| Исполнитель | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `performer` |

`subject` ссылается на пациента, чей социальный статус фиксируется.

---

### Регистрация пациента в динамической группе наблюдения (EpisodeOfCare)

Постановка пациента на психиатрический учёт и его динамическая группа наблюдения представляются с использованием профиля [Psychiatry Episode Of Care](StructureDefinition-psychiatry-episode-of-care.html).

**Примеры:** [`example-psychiatry-episode-of-care`](EpisodeOfCare-example-psychiatry-episode-of-care.html)

Эпизод фиксирует статус постановки на учёт, тип услуги, динамическую группу наблюдения, диагнозы, связанные с эпизодом, пациента, организацию, ведущую случай, период регистрации и ответственную роль практикующего специалиста.

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | `https://dhp.uz/fhir/core/sid/reg/uz/psychiatry` | `identifier` |
| Статус постановки на учёт | [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `active` | `status` |
| Тип услуги | Episode Of Care Type | `mserv-0001-00004` (Лечебные услуги) | `type[serviceType]` |
| Динамическая группа наблюдения | [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `psycr0001-00001` | `type[group]` |
| Диагноз | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Назначение диагноза | Encounter Diagnosis Use | `working` | `diagnosis.use` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `patient` |
| Организация, ведущая случай | - | ссылка на [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `managingOrganization` |
| Дата регистрации | - | `2026-08-15` | `period.start` |
| Куратор случая | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `careManager` |

Когда пациент поставлен на учёт в Психиатрическом регистре, статус эпизода — `active`.

Когда пациент снят с учёта, статус эпизода должен быть изменён на `finished`.

Динамическая группа наблюдения представлена с помощью среза `group` в `EpisodeOfCare.type`.

Определённые коды групп episode-of-care для наркологии и психиатрии:

| Код | Код SNOMED CT | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0001-00001` | `302805002` | Профилактическая группа | Profilaktik guruh | Preventive group |
| `narcr0001-00002` | `225419007` | Диспансерная группа | Dispanser guruhi | Dispensary group |
| `psycr0001-00001` | `52748007` | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

Сопоставления с SNOMED CT определены в [Narcology and Psychiatry EpisodeOfCare Type Groups to SNOMED CT](ConceptMap-narcology-psychiatry-episode-of-care-type-group-to-snomed.html).

#### Коды диагнозов

При записи диагноза, связанного с психиатрическим эпизодом, разработчикам следует использовать применимый код из [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs).

Примеры Психиатрического регистра используют следующий диагноз:

| Клиническое состояние | Система кодирования | Код | Когда записывать |
| :--- | :--- | :--- | :--- |
| Пагубное употребление других стимуляторов, включая кофеин | ICD-10 | `F15.1` | Записывать, когда данный психиатрический диагноз применим к пациенту |

Эпизод может содержать несколько диагнозов. Каждый `diagnosis.condition` ссылается на соответствующий [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition).

---

### Регистрация медицинского визита (Encounter)

Медицинский визит пациента в рамках Психиатрического регистра представляется с использованием профиля [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter).

**Примеры:** [`example-psychiatry-encounter`](Encounter-example-psychiatry-encounter.html)

Визит представляет медицинское посещение, зафиксированное медицинским работником, и может быть связан с `PsychiatryEpisodeOfCare` пациента.

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус визита | Encounter Status | `completed` | `status` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Эпизод наблюдения | - | ссылка на [PsychiatryEpisodeOfCare](StructureDefinition-psychiatry-episode-of-care.html) | `episodeOfCare` |
| Фактический период визита | - | начинается `2026-08-15` | `actualPeriod` |
| Тип участника | Participant Type | `ATND` | `participant.type` |
| Практикующий специалист визита | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `participant.actor` |
| Тип визита | - | `mserv-0001-00004` (Лечебные услуги) | `type` |
| Диагноз | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Назначение диагноза | Encounter Diagnosis Use | `final` | `diagnosis.use` |

Статус визита может принимать значения:

- `in-progress`
- `on-hold`
- `completed`
- `cancelled`
- `entered-in-error`

Ссылка `episodeOfCare` может использоваться для связывания визита с эпизодом постановки пациента на психиатрический учёт.

Визит может содержать несколько диагнозов. Каждый диагноз ссылается на [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) и может иметь связанное значение назначения диагноза.

---

### Регистрация решения врачебно-консультационной комиссии (Observation)

Решение врачебно-консультационной комиссии представляется с использованием профиля [PsychiatryCommissionObservation](StructureDefinition-psychiatry-commission-observation.html).

**Примеры:** [`example-psychiatry-commission-observation`](Observation-example-psychiatry-commission-observation.html)

Профиль используется для записи решения врачебно-консультационной комиссии, включая результат решения и, при необходимости, номер протокола или наименование суда, на основании которого принято решение о принудительном лечении.

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | `https://dhp.uz/fhir/core/sid/reg/uz/psychiatry` | `identifier` |
| Статус наблюдения | Observation Status | `final` | `status` |
| Тип решения комиссии | [TypeResourceCS](CodeSystem-type-resource-cs.html) | `type-res-0002-0001` (фиксированный) | `code` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Визит | - | ссылка на [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Дата решения комиссии | - | `2026-08-15` | `effectiveDateTime` |
| Член комиссии | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `performer` |
| Результат решения комиссии | - | `Требуется принудительное стационарное лечение.` | `valueString` |
| Свободный текст-примечание | - | клиническое резюме, обосновывающее решение | `note` |
| Номер протокола / наименование суда | - | `Протокол № 123, Ташкентский городской гражданский суд` | `component[protocolNumber].valueString` |

Тип решения комиссии:

| Код | Код SNOMED CT | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `type-res-0002-0001` | `444804000` | Решение комиссии | Komissiya qarori | The commission's decision |

Соответствующая терминология определена в [TypeResourceCS](CodeSystem-type-resource-cs.html), а сопоставление с SNOMED CT — в [Type Resource to SNOMED CT ConceptMap](ConceptMap-type-resource-to-snomed.html).

Компонент `protocolNumber` используется для записи номера протокола или наименования суда, связанного с решением о принудительном лечении. Используется код `type-resource-cs#type-res-0002-0002`.

Каждый член комиссии записывается как отдельная ссылка `performer`.

---

### Регистрация клинического состояния пациента (Condition)

Психиатрическое клиническое состояние представляется с использованием профиля [PsychiatryCondition](StructureDefinition-psychiatry-condition.html).

**Примеры:** [`example-psychiatry-condition`](Condition-example-psychiatry-condition.html)

Профиль `PsychiatryCondition` фиксирует клинический статус, статус верификации, диагноз, пациента, связанный визит, дату начала, дату регистрации и организацию, предоставившую информацию.

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | `https://dhp.uz/fhir/core/sid/reg/uz/psychiatry` | `identifier` |
| Клинический статус | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Статус верификации | Condition Verification Status | `confirmed` | `verificationStatus` |
| Диагноз | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `code` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Визит | - | ссылка на [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Дата начала | - | `2026-08-15` | `onsetDateTime` |
| Дата регистрации | - | `2026-08-15` | `recordedDate` |
| Источник информации | - | ссылка на [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `participant.actor` |

Клинический статус обязателен.

Когда состояние в настоящее время актуально для пациента, его статус должен быть `active`.

Когда состояние более не актуально, статус состояния должен быть изменён в соответствии с семантикой клинического статуса FHIR, например на `resolved`, где применимо.

#### Коды диагнозов

Разработчикам следует использовать применимый код диагноза из [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs).

Примеры Психиатрического регистра используют следующий диагноз:

| Состояние | Система кодирования | Код | Когда записывать |
| :--- | :--- | :--- | :--- |
| Пагубное употребление других стимуляторов, включая кофеин | ICD-10 | `F15.1` | Записывать, когда данный психиатрический диагноз применим к пациенту |

Каждое состояние связано с пациентом через `subject`.

Если состояние выявлено или ведётся в рамках конкретного медицинского визита, может заполняться ссылка `encounter`.

---

### Регистрация социальной опасности и принудительного лечения (Flag)

Важная регистрационная информация, о которой медицинские работники должны знать при обследовании, лечении или ведении пациента, представлена с использованием профиля [NarcologyPsychiatryFlag](StructureDefinition-narcology-psychiatry-flag.html).

**Примеры:** [`example-psychiatry-flag`](Flag-example-psychiatry-flag.html)

Ресурс `Flag` используется совместно Регистрами наркологии и психиатрии для регистрации такой информации, как социальная опасность, принудительное лечение, статус законного опекуна, инвалидность и принудительное стационарное лечение.

| Информация для регистрации | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус флага | [FlagStatusVS](ValueSet-flag-status-vs.html) | `active` | `status` |
| Регистрационный флаг | [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) | `psycr0001-00001` | `code` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Период действия | - | `2026-08-15` | `period` |
| Медицинский случай | - | ссылка на [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Автор | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `author` |

Статус флага является обязательным и может иметь следующие значения:

- `active`
- `inactive`
- `entered-in-error`

Регистрационные флаги, применимые к Регистрам наркологии и психиатрии:

| Код | Код SNOMED CT | Название SNOMED | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `registri0001-00001` | `129707006` | At increased risk for other-directed violence (finding) | Социальная опасность | Ijtimoiy xavflilik | Social danger / Social risk |
| `registri0001-00002` | `303163003` | Treatments administered under the provisions of the law (regime/therapy) | Принудительное лечение | Majburiy davolanish | Compulsory treatment |
| `registri0001-00003` | `303163003` | Treatments administered under the provisions of the law (regime/therapy) | Принудительное амбулаторное лечение | Majburiy ambulatoriya sharoitida davolanish | Compulsory outpatient treatment |
| `registri0001-00005` | `1193838006` | Legal guardian status (observable entity) | Под опекой | Vasiylik ostida | Legal guardian status |
| `registri0001-00006` | `21134002` | Disability (finding) | Инвалидность | Nogironlik | Disability |
| `psycr0001-00001` | `52748007` | Involuntary hospital admission (procedure) | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

Код `psycr0001-00001` применяется непосредственно к Регистру психиатрии. Этот код определён в общем CodeSystem `NarcologyPsychiatryEpisodeOfCareTypeGroupCS` и включён в ValueSet [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html).

Полное сопоставление регистрационных флагов с концепциями SNOMED CT определено в ConceptMap [Narcology and Psychiatry Registry Flags to SNOMED CT](ConceptMap-narcology-psychiatry-registry-flag-to-snomed.html).

Элемент `subject` определяет пациента, к которому относится регистрационный флаг.

Элемент `encounter` может использоваться для связи флага с конкретным медицинским случаем.

Элемент `author` содержит ссылку на роль медицинского работника, ответственную за регистрацию флага.

---

### Сводка терминологии

Терминология, используемая ресурсами Психиатрического регистра, приведена ниже.

| Терминология | Ресурс / Элемент | Назначение |
| :--- | :--- | :--- |
| [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `Observation.valueCodeableConcept` | Социальный статус пациента |
| [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `Observation.code` | Идентифицирует наблюдение о социальном статусе |
| [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `EpisodeOfCare.type[group]` | Динамическая группа наблюдения, общая с Наркологией |
| [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `EpisodeOfCare.status` | Жизненный цикл постановки на психиатрический учёт |
| [TypeResourceCS](CodeSystem-type-resource-cs.html) | `Observation.code` | Решение врачебно-консультационной комиссии |
| [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `Condition.code`, `EpisodeOfCare.diagnosis.condition` | Психиатрический диагноз |
| [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) | `Flag.code` | Флаги регистров Наркологии и Психиатрии |
| [FlagStatusVS](ValueSet-flag-status-vs.html) | `Flag.status` | Жизненный цикл флага |

---

### Связи между ресурсами

Типичная запись Психиатрического регистра может связывать ресурсы следующим образом:

- `Patient` — центральный субъект.
- [PsychiatryEpisodeOfCare](StructureDefinition-psychiatry-episode-of-care.html) представляет постановку пациента на психиатрический учёт и его динамическую группу наблюдения.
- [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) фиксирует медицинский визит и может ссылаться на соответствующий `PsychiatryEpisodeOfCare`.
- [PsychiatryCondition](StructureDefinition-psychiatry-condition.html) фиксирует диагнозы, связанные с пациентом и визитом.
- [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) фиксирует социальный статус пациента.
- [PsychiatryCommissionObservation](StructureDefinition-psychiatry-commission-observation.html) фиксирует решение врачебно-консультационной комиссии, включая правовой протокол или суд, на основании которого принято решение о принудительном лечении.
- [NarcologyPsychiatryFlag](StructureDefinition-narcology-psychiatry-flag.html) фиксирует важную информацию регистра, применимую к Психиатрии, включая принудительное стационарное лечение, представленное кодом `psycr0001-00001`.

<div>{% include psychiatry-model-ru.svg %}</div><br clear="all"/>

Эти ресурсы связаны через ссылки на пациента, эпизод наблюдения, визит, организацию и роль практикующего специалиста, представляя постановку пациента на психиатрический учёт, клинические диагнозы, социальный статус, медицинские визиты, решения комиссии и важные флаги регистра.