<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

На этой странице описано сопоставление данных регистрации рождения и смерти с ресурсами FHIR.

### Обзор

Модуль регистрации рождения и смерти содержит клиническую и административную информацию, необходимую для медицинской регистрации рождения и смерти в Узбекистане. Данные представлены с использованием ресурсов FHIR, описывающих новорожденных, умерших пациентов, клинические обращения, наблюдения и клинические документы.

Каждый раздел описывает ресурс, используемый для определённой цели, привязки к терминологиям (при необходимости), соответствующий профиль и пример ресурса. Документация о рождении представлена ресурсом Composition, который объединяет сведения о родах, оценку по шкале APGAR и антропометрические показатели новорождённого. Документация о смерти представлена ресурсом Composition, который объединяет сведения о случае смерти и наблюдение с причиной смерти.

---

# Регистрация рождения

### Медицинское свидетельство о рождении (Composition)

Медицинское свидетельство о рождении представлено ресурсом Composition. Он объединяет сведения о родах, оценку по шкале APGAR и антропометрические показатели новорождённого в единый клинический документ.

Профиль: [CompositionOfBirth](StructureDefinition-composition-of-birth.html)

Пример: [composition-of-birth-example](Composition-composition-of-birth-example.html)

| Информация | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Тип документа | LOINC | `LOINC#57075-4` (Информация о рождении новорождённого) | `Composition.type` |
| Идентификатор документа | Номер формы | `Форма №103` | `Composition.identifier` |
| Статус документа | Composition Status | `preliminary` | `Composition.status` |
| Сведения о родах | EncounterOfBirth | `encounter-of-birth-example` | `Composition.section` |
| Оценка APGAR | ObservationOfAPGAR | `observation-of-apgar-example` | `Composition.section` |
| Показатели при рождении | ObservationOfBirth | `observation-of-birth-example` | `Composition.section` |

---

### Новорождённый пациент

Представляет новорождённого, рождение которого документируется. Помимо стандартных демографических данных пациента профиль содержит время рождения, информацию о многоплодной беременности, сведения об опекунах, медицинской организации и лечащем враче.

Профиль: [NewbornPatient](StructureDefinition-newborn-patient.html)

Пример: [newborn-patient-example](Patient-newborn-patient-example.html)

| Информация | Хранится в |
| :--- | :--- |
| Номер свидетельства о рождении | `Patient.identifier` |
| ФИО пациента | `Patient.name` |
| Пол | `Patient.gender` |
| Дата рождения | `Patient.birthDate` |
| Время рождения | `Patient.birthDate.extension(birthTime)` |
| Многоплодные роды | `Patient.multipleBirth[x]` |
| Опекун / Контактное лицо | `Patient.contact` |
| Медицинская организация | `Patient.managingOrganization` |
| Лечащий врач | `Patient.generalPractitioner` |

---

### Связанное лицо

Представляет родителя или законного представителя новорождённого.

Профиль: [RelatedPersonOfBirth](StructureDefinition-related-person-of-birth.html)

Пример: [related-person-of-birth-example](RelatedPerson-related-person-of-birth-example.html)

| Информация | Хранится в |
| :--- | :--- |
| Паспортные данные | `RelatedPerson.identifier` |
| Связанный новорождённый | `RelatedPerson.patient` |
| Степень родства | `RelatedPerson.relationship` |
| ФИО | `RelatedPerson.name` |
| Пол | `RelatedPerson.gender` |
| Дата рождения | `RelatedPerson.birthDate` |
| Телефон | `RelatedPerson.telecom` |

---

### Сведения о родах

Представляет клиническое обращение, во время которого произошли роды. Содержит информацию о медицинской организации, медицинских работниках, месте родов и диагнозах, установленных при рождении.

Профиль: [EncounterOfBirth](StructureDefinition-encounter-of-birth.html)

Пример: [encounter-of-birth-example](Encounter-encounter-of-birth-example.html)

| Информация | Пример | Хранится в |
| :--- | :--- | :--- |
| Статус обращения | `completed` | `Encounter.status` |
| Класс обращения | `IMP` | `Encounter.class` |
| Новорождённый | `newborn-patient-example` | `Encounter.subject` |
| Медицинская организация | `organization1-example` | `Encounter.serviceProvider` |
| Обращение матери | `encounter-mother-delivery-example` | `Encounter.partOf` |
| Акушер | `LOINC#87286-1` | `Encounter.participant` |
| Врач, оформивший свидетельство | `LOINC#87287-9` | `Encounter.participant` |
| Диагноз при рождении | `condition-neonatal-jaundice-example` | `Encounter.diagnosis` |
| Место родов | `location-delivery-room-example` | `Encounter.location` |

---

### Оценка по шкале APGAR

Содержит результат оценки по шкале APGAR, выполненной вскоре после рождения.

Профиль: [ObservationOfAPGAR](StructureDefinition-observation-of-apgar.html)

Пример: [observation-of-apgar-example](Observation-observation-of-apgar-example.html)

| Информация | Набор значений | Пример | Хранится в |
| :--- | :--- | :--- | :--- |
| Тип наблюдения | LOINCBirthVS | `LOINC#9274-2` (Оценка APGAR через 5 минут) | `Observation.code` |
| Балл APGAR | Числовое значение | `8` | `Observation.valueQuantity` |
| Время оценки | — | `2026-04-01T10:08:00+05:00` | `Observation.effectiveDateTime` |
| Исполнитель | Practitioner | `practitioner-003` | `Observation.performer` |

---

### Показатели при рождении

Содержит измерения и критерии жизнедеятельности, зарегистрированные сразу после рождения. Каждое наблюдение представляет отдельный клинический показатель, например массу тела при рождении, длину тела или гестационный возраст.

Профиль: [ObservationOfBirth](StructureDefinition-observation-of-birth.html)

Пример: [observation-of-birth-example](Observation-observation-of-birth-example.html)

| Информация | Набор значений | Пример | Хранится в |
| :--- | :--- | :--- | :--- |
| Тип измерения | LOINCBirthVS | `LOINC#8339-4` (Масса тела при рождении) | `Observation.code` |
| Масса тела при рождении | UCUM | `3200 g` | `Observation.valueQuantity` |
| Дыхание | ObservationLifeCriteriaVS | `Breathing = true` | `Observation.component` |
| Сердцебиение | ObservationLifeCriteriaVS | `Heartbeat = true` | `Observation.component` |
| Непроизвольные мышечные сокращения | ObservationLifeCriteriaVS | `Involuntary muscle contractions = true` | `Observation.component` |

### Связи документов о рождении

Процесс регистрации рождения связывает новорождённого, клиническое обращение, наблюдения и ресурс Composition в единый клинический документ. Ресурс Composition является корневым документом и ссылается на Encounter и Observation через свои разделы.

| Ресурс | Ссылается на | Назначение |
| :--- | :--- | :--- |
| CompositionOfBirth | EncounterOfBirth | Информация о родах |
| CompositionOfBirth | ObservationOfAPGAR | Оценка по шкале APGAR |
| CompositionOfBirth | ObservationOfBirth | Показатели при рождении |
| EncounterOfBirth | NewbornPatient | Новорождённый, связанный с обращением |
| EncounterOfBirth | UZCoreOrganization | Медицинская организация, где произошли роды |
| EncounterOfBirth | Practitioner | Медицинский работник, принимавший роды и оформивший свидетельство |
| ObservationOfAPGAR | NewbornPatient | Пациент, которому выполнена оценка APGAR |
| ObservationOfBirth | NewbornPatient | Пациент, у которого зарегистрированы показатели при рождении |
| RelatedPersonOfBirth | NewbornPatient | Родитель или законный представитель |

---

### Участники родов

В профиле EncounterOfBirth различаются медицинский работник, принимавший роды, и медицинский работник, оформивший медицинское свидетельство о рождении.

Профиль: [EncounterOfBirth](StructureDefinition-encounter-of-birth.html)

Пример: [encounter-of-birth-example](Encounter-encounter-of-birth-example.html)

| Участник | Терминология | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Медицинский работник, принимавший роды | LOINC | `LOINC#87286-1` | `Encounter.participant[attendant]` |
| Медицинский работник, оформивший свидетельство | LOINC | `LOINC#87287-9` | `Encounter.participant[certifier]` |

---

### Критерии жизнедеятельности при рождении

Профиль ObservationOfBirth регистрирует непосредственные признаки жизни, наблюдаемые сразу после рождения. Каждый критерий представлен компонентом с кодированным наблюдением и логическим (Boolean) значением.

Профиль: [ObservationOfBirth](StructureDefinition-observation-of-birth.html)

Пример: [observation-of-birth-example](Observation-observation-of-birth-example.html)

| Критерий жизнедеятельности | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Дыхание | ObservationLifeCriteriaVS | `birth0003-00001` | `Observation.component` |
| Сердцебиение | ObservationLifeCriteriaVS | `birth0003-00002` | `Observation.component` |
| Непроизвольные мышечные сокращения | ObservationLifeCriteriaVS | `birth0003-00004` | `Observation.component` |

---

### Показатели при рождении

В зависимости от регистрируемого показателя значение Observation может содержать Quantity или Integer.

Профиль: [ObservationOfBirth](StructureDefinition-observation-of-birth.html)

Пример: [observation-of-birth-example](Observation-observation-of-birth-example.html)

| Показатель | Тип значения | Пример |
| :--- | :--- | :--- |
| Масса тела при рождении | Quantity | `3200 g` |
| Длина тела при рождении | Quantity | `50 cm` |
| Окружность головы | Quantity | `35 cm` |
| Гестационный возраст | Integer | `39 недель` |
| Порядковый номер рождения | Integer | `1` |
| Номер беременности | Integer | `2` |

---

### Значения оценки APGAR

Профиль ObservationOfAPGAR хранит одну оценку для определённого времени обследования. Может быть зарегистрировано несколько наблюдений APGAR (например, через 1, 5 и 10 минут после рождения).

Профиль: [ObservationOfAPGAR](StructureDefinition-observation-of-apgar.html)

Пример: [observation-of-apgar-example](Observation-observation-of-apgar-example.html)

| Информация | Хранится в |
| :--- | :--- |
| Код наблюдения APGAR | `Observation.code` |
| Время оценки | `Observation.effectiveDateTime` |
| Медицинский работник | `Observation.performer` |
| Балл APGAR (0–10) | `Observation.valueQuantity` |

---

### Административная информация о новорождённом

Профиль NewbornPatient расширяет профиль UZ Core Patient информацией, необходимой для регистрации рождения.

Профиль: [NewbornPatient](StructureDefinition-newborn-patient.html)

Пример: [newborn-patient-example](Patient-newborn-patient-example.html)

| Административная информация | Хранится в |
| :--- | :--- |
| Идентификатор свидетельства о рождении | `Patient.identifier` |
| Дата рождения | `Patient.birthDate` |
| Время рождения | `Patient.birthDate.extension` |
| Признак многоплодных родов | `Patient.multipleBirth[x]` |
| Информация об опекуне | `Patient.contact` |
| Ответственная медицинская организация | `Patient.managingOrganization` |
| Основной лечащий врач | `Patient.generalPractitioner` |

---

### Сводная информация о документах регистрации рождения

Для формирования полного медицинского свидетельства о рождении требуются следующие ресурсы.

| Ресурс | Назначение | Пример |
| :--- | :--- | :--- |
| CompositionOfBirth | Клинический документ о рождении | `composition-of-birth-example` |
| NewbornPatient | Демографическая информация о новорождённом | `newborn-patient-example` |
| RelatedPersonOfBirth | Родитель или законный представитель | `related-person-of-birth-example` |
| EncounterOfBirth | Сведения о родах | `encounter-of-birth-example` |
| ObservationOfAPGAR | Оценка по шкале APGAR | `observation-of-apgar-example` |
| ObservationOfBirth | Показатели при рождении и критерии жизнедеятельности | `observation-of-birth-example` |

---

На этом завершается документация по **регистрации рождения**.

Следующая часть содержит документацию по **регистрации смерти**, включая:

- CompositionOfDeath
- DeceasedPatient
- EncounterOfDeath
- ObservationCauseOfDeath

# Регистрация смерти

### Медицинское свидетельство о смерти (Composition)

Медицинское свидетельство о смерти представлено ресурсом **Composition**. Оно объединяет сведения о случае регистрации смерти (**Encounter**) и наблюдение (**Observation**) с причиной смерти в единый клинический документ, используемый для регистрации смерти.

**Профиль:** [CompositionOfDeath](StructureDefinition-composition-of-death.html)

**Пример:** [composition-of-death-example](Composition-composition-of-death-example.html)

| Информация для регистрации | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Тип документа | LOINC | `LOINC#64297-5` (Свидетельство о смерти) | `Composition.type` |
| Идентификатор документа | Номер формы | `Death form №106` | `Composition.identifier` |
| Статус документа | Composition Status | `preliminary` | `Composition.status` |
| Причина смерти | ObservationCauseOfDeath | `observation-cause-of-death-example` | `Composition.section` |
| Случай регистрации смерти | EncounterOfDeath | `encounter-of-death-example` | `Composition.section` |

---

### Умерший пациент

Представляет пациента, смерть которого документируется. Профиль расширяет профиль UZ Core Patient, делая обязательными дату и время смерти, а также организацию, ответственную за ведение медицинской записи пациента.

**Профиль:** [DeceasedPatient](StructureDefinition-patient-of-death.html)

**Пример:** [deceased-patient-example](Patient-deceased-patient-example.html)

| Информация для регистрации | Хранится в |
| :--- | :--- |
| Национальный идентификатор | `Patient.identifier` |
| Имя пациента | `Patient.name` |
| Пол | `Patient.gender` |
| Дата рождения | `Patient.birthDate` |
| Дата и время смерти | `Patient.deceasedDateTime` |
| Адрес | `Patient.address` |
| Ответственная организация | `Patient.managingOrganization` |

---

### Случай регистрации смерти

Представляет медицинский случай, в рамках которого была удостоверена смерть. Содержит сведения о медицинском работнике, подтвердившем смерть, медицинской организации, месте оказания помощи, типе услуги и месте смерти.

**Профиль:** [EncounterOfDeath](StructureDefinition-encounter-of-death.html)

**Пример:** [encounter-of-death-example](Encounter-encounter-of-death-example.html)

| Информация для регистрации | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус случая | EncounterStatus | `completed` | `Encounter.status` |
| Класс случая | v3 ActCode | `EMER` | `Encounter.class` |
| Тип услуги | DeathEncounterTypeVS | `mserv-0001-00006` (Судебно-медицинская экспертиза) | `Encounter.serviceType` |
| Умерший пациент | — | `deceased-patient-example` | `Encounter.subject` |
| Медицинский работник, удостоверивший смерть | UZCorePractitionerRole | `practitionerrole-001` | `Encounter.participant.actor` |
| Медицинская организация | UZCoreOrganization | `organization1-example` | `Encounter.serviceProvider` |
| Место смерти | UZCoreLocation | `location-death-example` | `Encounter.location` |
| Тип места смерти | SNOMED CT | `183676005` (Смерть в больнице) | `Encounter.extension(deathPlaceType)` |

---

### Наблюдение: причина смерти

Фиксирует подтвержденную основную причину смерти, обстоятельства смерти, непосредственную причину смерти, а также сведения о травме при необходимости.

**Профиль:** [ObservationCauseOfDeath](StructureDefinition-observation-cause-of-death.html)

**Пример:** [observation-cause-of-death-example](Observation-observation-cause-of-death-example.html)

| Информация для регистрации | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Тип наблюдения | LOINC | `LOINC#79378-6` (Причина смерти) | `Observation.code` |
| Основная причина смерти | CauseOfDeathVS | `death0003-00003` | `Observation.valueCodeableConcept` |
| Дата и время смерти | — | `2026-04-10T14:30:00+05:00` | `Observation.effectiveDateTime` |
| Медицинский работник | UZCorePractitioner | `practitioner-003` | `Observation.performer` |

---

### Обстоятельства смерти

Профиль Observation Cause of Death содержит дополнительную информацию об обстоятельствах, приведших к смерти.

**Профиль:** [ObservationCauseOfDeath](StructureDefinition-observation-cause-of-death.html)

**Пример:** [observation-cause-of-death-example](Observation-observation-cause-of-death-example.html)

| Информация для регистрации | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Обстоятельства смерти | DeathOccuredFromVS | `SNOMED CT#7878000` (Несчастный случай) | `Observation.component[occurredFrom]` |
| Непосредственная причина смерти | ICD-10 | `I21.9` (Острый инфаркт миокарда) | `Observation.component[immediateCause]` |
| Вид травмы | DeathInjuryPlaceVS | `death0002_00003` (Связано с транспортом) | `Observation.component[accidentPlaceType]` |
| Дата получения травмы | — | `2026-04-08T18:00:00+05:00` | `Observation.component[accidentDate]` |
| Место и обстоятельства происшествия | DeathInjuryPlaceVS | `death0002_00003` | `Observation.component[accidentPlaceCircumstances]` |

---

### Участники случая регистрации смерти

Случай регистрации смерти определяет медицинского работника, удостоверившего смерть, а также медицинскую организацию, в которой была выполнена регистрация.

**Профиль:** [EncounterOfDeath](StructureDefinition-encounter-of-death.html)

**Пример:** [encounter-of-death-example](Encounter-encounter-of-death-example.html)

| Участник | Хранится в |
| :--- | :--- |
| Роль медицинского работника | `Encounter.participant.actor` |
| Тип участия | `Encounter.participant.type` |
| Период участия | `Encounter.participant.period` |

---

### Связи между документами регистрации смерти

Документ регистрации смерти состоит из ресурсов пациента, случая регистрации и клинического наблюдения, необходимых для официального оформления медицинского свидетельства о смерти.

| Ресурс | Ссылается на | Назначение |
| :--- | :--- | :--- |
| CompositionOfDeath | ObservationCauseOfDeath | Подтверждение причины смерти |
| CompositionOfDeath | EncounterOfDeath | Случай регистрации смерти |
| EncounterOfDeath | DeceasedPatient | Пациент, смерть которого удостоверена |
| EncounterOfDeath | UZCoreOrganization | Медицинская организация |
| EncounterOfDeath | UZCorePractitionerRole | Медицинский работник, удостоверивший смерть |
| ObservationCauseOfDeath | DeceasedPatient | Пациент, к которому относится наблюдение |
| ObservationCauseOfDeath | UZCorePractitioner | Медицинский работник, выполнивший наблюдение |

---

### Сводка по регистрации смерти

Для представления полного медицинского свидетельства о смерти требуются следующие ресурсы.

| Ресурс | Назначение | Пример |
| :--- | :--- | :--- |
| CompositionOfDeath | Клинический документ о смерти | `composition-of-death-example` |
| DeceasedPatient | Информация об умершем пациенте | `deceased-patient-example` |
| EncounterOfDeath | Случай удостоверения смерти | `encounter-of-death-example` |
| ObservationCauseOfDeath | Наблюдение с причиной смерти | `observation-cause-of-death-example` |

---

## Связи между ресурсами

В руководстве по реализации регистрации рождения и смерти ресурс **Composition** используется как точка входа в клинический документ.

### Регистрация рождения

```text
CompositionOfBirth
├── EncounterOfBirth
├── ObservationOfAPGAR
└── ObservationOfBirth
      │
      └── NewbornPatient
            │
            └── RelatedPersonOfBirth
```

### Регистрация смерти

```text
CompositionOfDeath
├── EncounterOfDeath
└── ObservationCauseOfDeath
      │
      └── DeceasedPatient
```

Эти ресурсы совместно представляют клиническую и административную информацию, необходимую для медицинской регистрации рождения и смерти в Республике Узбекистан, сохраняя соответствие требованиям **UZ Core** и **HL7 FHIR R5**.