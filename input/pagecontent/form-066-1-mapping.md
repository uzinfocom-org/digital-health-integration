<style>
/* Per-form mapping-table column widths (066-1: long UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 23%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 23%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 18%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 19%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 17%; }
</style>

### Form 066-1 - Psychiatric/Narcological Hospital Discharge Statistical Card

This page documents the mapping between Form 066-1 (Psychiatric/Narcological Hospital Discharge Statistical Card) fields and FHIR resources.

---

### Overview

Form 066-1 captures administrative and clinical data for patients discharged from psychiatric or narcological inpatient care. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 066-1 Psychiatric Discharge Composition](StructureDefinition-form-066-1-psychiatric-discharge-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

For a complete reference instance, see the [Form 066-1 psychiatric/narcological discharge example](Bundle-example-form-066-1-psychiatric-discharge.html).

---

### Field Mapping

# UZ-066-1 Psychiatric/Narcological Hospital Discharge Statistical Card - FHIR Mapping

---

### Personal Information

| UZ-066-1 | RU-066-1 | FHIR Path | Code | Example Value |
|----------|----------|------------|------|---------------|
| Muassasa kodi | Код учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).identifier | Local | 200001 |
| Muassasa nomi | Наименование учреждения | Organization.name | - | Toshkent shahar ruhiy kasalliklar shifoxonasi |
| Bemor ro'yxat raqami | Регистрационный номер | Composition.identifier | - | 066-1-2026-001 |
| Tibbiy bayonnoma № | № медицинской карты | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[healthCardId] | MR | HC-2026-00066 |
| JShShIR | ПИНФЛ | Patient.identifier[nationalId].value | NI | 31234567890123 |
| Familiyasi | Фамилия | Patient.name.family | - | Tursunov |
| Ismi | Имя | Patient.name.given | - | Alisher |
| Otasining ismi | Отчество | Patient.name.given | - | Valiyevich |
| Tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1990-04-12 |
| Jinsi | Пол | Patient.gender | AdministrativeGender | male |
| Fuqaroligi | Гражданство | Patient.extension[nationality] | Local code | Azerbaijanis |
| ID yoki Pasport | ID или паспорт | Patient.identifier[passportLocal] | - | AC1234567 |
| Ijtimoiy holati | Социальное положение | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | Local code | Unemployed |
| Imtiyoz toifasi | Льготная категория | UZCoreSocioeconomicObservation.valueCodeableConcept | Local code | Medical staff |
| Telefon | Телефон | Patient.telecom[phone].value | - | +998901234567 |
| E-mail | E-mail | Patient.telecom[email].value | - | test@mail.com |
| Bemor biriktirilgan muassasa | Прикреплённое учреждение | Patient.managingOrganization | - | Toshkent shahar ruhiy kasalliklar shifoxonasi |
| Ma'lumoti | Образование | UZCoreSocioeconomicObservation.valueCodeableConcept | Local code | Higher education |
| Yashash manbai | Источник дохода | UZCoreSocioeconomicObservation.valueCodeableConcept | Local code | Pension |
| Ish joyi, lavozimi | Работа, должность | UZCoreSocioeconomicObservation.valueCodeableConcept | Local code | Teacher |

---

### Residence Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| QQR/Viloyatlar/Toshkent sh. | Республика/область/г. Ташкент | Patient.address.state | - | 1726 |
| Tuman/Shahar | Район/город | Patient.address.district | - | 1726266 |
| Mahalla | Махалля | Patient.address.city | - | 16090011 |
| Ko‘cha | Улица | Patient.address.line | - | 12-mavze |
| Uy | Дом | Patient.address.line | - | 15-uy |
| Xonadon | Квартира | Patient.address.line | - | 24-xonadon |
| Pochta indeksi | Почтовый индекс | Patient.address.postalCode | - | 100017 |

---

### Admission Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Psixonevrologik (narkologik) muassasa ro'yxatga olingan sana | Дата регистрации | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueDateTime | LOINC `8656-1` "Hospital admission date" | 2026-01-05T09:30:00+05:00 |
| Avval necha marta shifoxonada davolangan | Количество предыдущих госпитализаций | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueInteger | [Local](CodeSystem-local-observation-code.html) `num-previous-hospitalizations` | 5 |
| Tezkor yordam ko'rsatildi | Экстренная помощь оказана | Observation.valueBoolean | LOINC `57276-8` "Emergent care utilized during assessment period [CMS Assessment]" | true |
| Yotqizish turi | Тип госпитализации | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).admission.admitSource | Local code | Dispensary |
| Tez tibbiy yordam mashinasida keldi | Доставлен скорой помощью | Observation.valueBoolean | LOINC `LP97912-7` "Ambulance transport" | true |
| Yo'llanma mavjud | Наличие направления | Observation.valueBoolean | LOINC `57133-1` "Referral note" | true |
| Kim tomonidan yo'llangan | Кем направлен | ServiceRequest.requester | SNOMED CT | Referral to psychiatry service |
| Yo'llagan muassasa | Направившее учреждение | Organization.name | - | Yunusobod tuman psixonevrologik dispanseri |
| Yo'llagan muassasa tashxisi | Диагноз направившего учреждения | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | F10.2 |
| Yo'llashdan maqsad | Цель направления | Encounter.reason.value.concept | Local | Diagnostics |
| Shifoxonaga yotqizildi | Госпитализирован | Observation.valueBoolean | SNOMED CT `32485007` "Hospital admission" | true |
| Qaerdan keldi | Откуда поступил | Encounter.admission.origin | Local code | From home |
| Kasallikning davomiyligi | Продолжительность заболевания | Observation.valueQuantity | LOINC `77977-7` "Illness duration" | 3 days |

---

### Hospitalization Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Qabul bo'limi tashxisi | Диагноз при поступлении | Condition.code | ICD-10 | F10.2 |
| Yotqizilgan sanasi va vaqti | Дата и время госпитализации | Encounter.actualPeriod.start | - | 2026-01-05T10:00:00+05:00 |
| O'rin joy turi | Тип койки | Encounter.location.form | Local code | Narcological |
| Chiqarilgan sanasi va vaqti | Дата и время выписки | Encounter.actualPeriod.end | - | 2026-01-15T14:00:00+05:00 |
| Reanimatsiyada yotgan kunlar | Дни в реанимации | Observation.valueQuantity | LOINC `LP76050-1` "Intensive care unit" | 0 days |
| O'rin kunlari | Койко-дни | Encounter.length | UCUM | 10 days |
| Chiqarilgan bo'lim | Отделение выписки | Organization.name | Local code | Narcology department |
| Shifoxonadan chiqarish holati | Исход госпитализации | Encounter.admission.dischargeDisposition | Local code | Discharged |
| Bemor holati | Состояние пациента | Encounter.subjectStatus | Local code | Recovered |
| Nogironlik | Инвалидность | Observation.valueCodeableConcept | Local code | Group II |
| Shifoxona ichidagi ta'til kunlari soni | Дни отпуска внутри стационара | Observation.valueQuantity | LOINC `LA17962-4` "Medical leave of absence" | 0 days |

---

### Final Diagnosis

Each diagnosis is tagged with `Condition.category` from the [Diagnosis Role](CodeSystem-diagnosis-role.html) code system and placed in a matching per-role sub-section of the Composition, so the role is preserved without relying on entry order - Основной → `main`, Конкурирующий → `competing`, Сопутствующий → `concomitant`, Фоновый → `background`, Осложнение → `complication`.

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Asosiy tashxis | Основной диагноз | Condition.code | ICD-10 | F10.2 |
| Raqobat tashxis | Конкурирующий диагноз | Condition.code | ICD-10 | F17.2 |
| Yondosh tashxis | Сопутствующий диагноз | Condition.code | ICD-10 | I10 |
| Fon tashxis | Фоновый диагноз | Condition.code | ICD-10 | K29.7 |
| Asorat | Осложнение | Condition.code | ICD-10 | G47.0 |

---

### Pathologoanatomical Diagnosis

Causes of death are tagged the same way (`Condition.category`, [Diagnosis Role](CodeSystem-diagnosis-role.html)) in per-role sub-sections - Непосредственная причина смерти → `immediate-cause-of-death`, вызвавшее её заболевание → `underlying-cause-of-death`, Основное заболевание → `main-disease-death`, Другие значимые заболевания → `other-significant-death`.

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| O'limga olib kelgan bevosita sabab | Непосредственная причина смерти | Condition.code | ICD-10 | R99 |
| O'lim sababini bevosita chaqiruvchi kasallik | Заболевание, вызвавшее непосредственную причину смерти | Condition.code | ICD-10 | R99 |
| Asosiy kasallik | Основное заболевание | Condition.code | ICD-10 | R99 |
| Boshqa muhim kasalliklar | Другие значимые заболевания | Condition.code | ICD-10 | R99 |

---

### Laboratory Results

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| OITS | ВИЧ/СПИД | Observation.valueCodeableConcept | LOINC `56888-1` "HIV 1+2 Ab+HIV1 p24 Ag [Presence] in Serum or Plasma by Immunoassay" | Negative |
| RW | RW / сифилис | Observation.valueCodeableConcept | LOINC `47236-5` "Treponema pallidum IgG+IgM Ab [Presence] in Serum or Plasma by Immunoassay" | Negative |
| Gepatit B | Гепатит B | Observation.valueCodeableConcept | LOINC `5196-1` "Hepatitis B virus surface Ag [Presence] in Serum or Plasma by Immunoassay" | Negative |
| Gepatit C | Гепатит C | Observation.valueCodeableConcept | LOINC `13955-0` "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay" | Negative |

---

### Payment Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| To'lov turi | Тип оплаты | Coverage.type | Local code | State Health Insurance treated case |

---

### Tuberculosis Drug Sensitivity

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| O'pka silida doriga sezgirlik | Чувствительность туберкулёза к препаратам | Observation.valueCodeableConcept | LOINC `18769-0` "Microbial susceptibility tests Set" | Drug-sensitive |

---

### Temporary Disability

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Ochilgan sana | Дата открытия | Observation.effectivePeriod.start | LOINC `105583-9` "Worker Sick leave form" | 2026-01-05T10:00:00+05:00 |
| Berkitilgan sana | Дата закрытия | Observation.effectivePeriod.end | LOINC `105583-9` "Worker Sick leave form" | 2026-01-15T14:00:00+05:00 |

---

### Responsible Persons

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Davolovchi shifokor | Лечащий врач | PractitionerRole.practitioner | Local code | Rasulov B.B. |
| Bo'lim boshlig'i | Заведующий отделением | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html).practitioner | Local code | Qodirova M.M. |
| Katta hamshira | Старшая медсестра | PractitionerRole.practitioner | Local code | Karimova D.D. |

---

### Bundle structure

The Form 066-1 document is structured as a FHIR Bundle containing a [Form066_1_PsychiatricDischargeComposition](StructureDefinition-form-066-1-psychiatric-discharge-composition.html) Composition:

```
Bundle (document)
├── Composition (Form066_1_PsychiatricDischargeComposition)
├── Patient (patient demographics)
├── Encounter (inpatient admission and discharge)
├── Organization[] (hospital, departments, referring facility)
├── Practitioner[] (treating clinicians)
├── PractitionerRole[] (responsible persons: doctor, department head, nurse)
├── Condition[] (admission and final diagnoses)
├── Observation[] (clinical and administrative measurements)
├── Coverage (payment type)
├── ServiceRequest (psychiatric service referral)
├── Location (care location / ward)
└── Provenance (record authorship and provenance)
```

### Example

See [Form 066-1 psychiatric/narcological discharge example](Bundle-example-form-066-1-psychiatric-discharge.html) for a complete FHIR document example.