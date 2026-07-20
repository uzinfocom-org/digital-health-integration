<style>
/* Per-form mapping-table column widths (066: long UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 23%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 23%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 18%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 19%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 17%; }
</style>

### Form 066 - Hospital Discharge Statistical Card

This page documents the mapping between Form 066 (Hospital Discharge Statistical Card) fields and FHIR resources.

---

### Overview

Form 066 captures administrative and clinical data for patients discharged from inpatient hospital care. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 066 Hospital Discharge Composition](StructureDefinition-form-066-hospital-discharge-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

For a complete reference instance, see the [Form 066 hospital discharge example](Bundle-example-form-066-hospital-discharge.html).

---

### Field Mapping

# UZ-066 Hospital Discharge Statistical Card - FHIR Mapping

---

### Personal Information

| UZ-066 | RU-066 | FHIR Path | Code | Example Value |
|--------|--------|------------|------|---------------|
| Muassasa kodi | Код учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).identifier | Local | 200001 |
| Muassasa nomi | Наименование учреждения | Organization.name | - | Toshkent shahar klinik shifoxonasi |
| Bemor tibbiy bayoni qayd raqami | Регистрационный номер медицинской карты | Composition.identifier | - | 066-2026-001 |
| JShShIR | ПИНФЛ | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[nationalId].value | NI | 31234567890123 |
| Familiyasi | Фамилия | Patient.name.family | - | Tursunov |
| Ismi | Имя | Patient.name.given | - | Alisher |
| Otasining ismi | Отчество | Patient.name.given | - | Valiyevich |
| Tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1990-04-12 |
| Jinsi | Пол | Patient.gender | AdministrativeGender | male |
| Fuqaroligi | Гражданство | Patient.extension[nationality] | Local code | Uzbekistan |
| ID yoki Pasport | ID или паспорт | Patient.identifier[passportLocal] | - | AC1234567 |
| Ijtimoiy holati | Социальное положение | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | Local code | Unemployed |
| Imtiyoz toifasi mavjud | Наличие льготной категории | UZCoreSocioeconomicObservation.valueCodeableConcept | Local code | Medical staff |
| Telefon | Телефон | Patient.telecom[phone].value | - | +998901234567 |
| E-mail | E-mail | Patient.telecom[email].value | - | test@mail.com |
| Bemor biriktirilgan muassasa | Прикреплённое учреждение | Patient.managingOrganization | Organization | Yunusobod tuman oilaviy poliklinikasi |

---

### Residence Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| QQR/Viloyatlar/Toshkent sh. | Республика/область/г. Ташкент | Patient.address.state | - | Toshkent |
| Tuman/Shahar | Район/город | Patient.address.district | - | Yunusobod |
| Mahalla | Махалля | Patient.address.city | - | 12-mavze |
| Ko'cha | Улица | Patient.address.line | - | Amir Temur ko‘chasi |
| Uy | Дом | Patient.address.line | - | 15 |
| Xonadon | Квартира | Patient.address.line | - | 24 |
| Pochta indeksi | Почтовый индекс | Patient.address.postalCode | - | 100017 |

---

### Admission Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Tezkor yordam ko'rsatildi | Экстренная помощь оказана | Observation.valueBoolean | LOINC `57276-8` "Emergent care utilized during assessment period [CMS Assessment]" | true |
| Yotqizish turi | Тип госпитализации | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).admission.admitSource | Local code | Without referral / Self-referred |
| Kasallik yoki jarohatlangandan so'ng necha soatda | Через сколько часов после заболевания/травмы | Observation.valueCodeableConcept | Local code | Within first 6 hours |
| Tez tibbiy yordam mashinasida keldi | Доставлен скорой помощью | Observation.valueBoolean | LOINC `LP97912-7` "Ambulance transport" | true |
| Yo'llanma mavjud | Наличие направления | Observation.valueBoolean | LOINC `57133-1` "Referral note" | true |
| Yo'llagan muassasa | Направившее учреждение | Organization.name | Organization | Yunusobod tuman tibbiyot birlashmasi |
| Yo'llagan muassasa tashxisi | Диагноз направившего учреждения | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | J18.9 |
| Ayni shu kasallik bilan shifoxonaga oxirgi 30 kun ichida qayta yotqizilgan | Повторная госпитализация в течение 30 дней | Observation.valueBoolean | LOINC `LP73229-4` "Readmission to the same hospital within 30D of surgical discharge" | false |

---

### Hospitalization Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Qabul bo'limi tashxisi | Диагноз при поступлении | Condition.code | ICD-10 | J18.9 |
| Yotqizilgan sanasi va vaqti | Дата и время госпитализации | Encounter.actualPeriod.start | - | 2026-01-05T10:00:00+05:00 |
| O'rin joy turi | Тип койки | Encounter.location.form | Local code | Therapy |
| Chiqarilgan sanasi va vaqti | Дата и время выписки | Encounter.actualPeriod.end | - | 2026-01-15T14:00:00+05:00 |
| Jami o'rin kunlar | Койко-дни | Observation.valueQuantity / Encounter.length | LOINC `78033-8` "Hospital stay duration" | 10 days |
| Shundan, reanimatsiyada | Из них, в реанимации | Observation.valueQuantity | LOINC `LP76050-1` "Intensive care unit" | 0 days |
| Chiqarilgan bo'lim | Отделение выписки | Organization.name | Local code | Therapeutic department |
| Shifoxonadan chiqarish holati | Исход госпитализации | Encounter.admission.dischargeDisposition | Local code | Discharged |
| Bemor holati | Состояние пациента | Encounter.subjectStatus | Local code | Recovered |

---

### Final Diagnosis

Each diagnosis is tagged with `Condition.category` from the [Diagnosis Role](CodeSystem-diagnosis-role.html) code system and placed in a matching per-role sub-section of the Composition, so the role is preserved without relying on entry order - Основной → `main`, Конкурирующий → `competing`, Сопутствующий → `concomitant`, Фоновый → `background`, Осложнение → `complication`.

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Asosiy tashxis | Основной диагноз | Condition.code | ICD-10 | J18.9 |
| Raqobat tashxis | Конкурирующий диагноз | Condition.code | ICD-10 | J44.9 |
| Yondosh tashxis | Сопутствующий диагноз | Condition.code | ICD-10 | I10 |
| Fon tashxis | Фоновый диагноз | Condition.code | ICD-10 | E11.9 |
| Asorat | Осложнение | Condition.code | ICD-10 | J96.0 |

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

### Surgical Procedures

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Sana va vaqti | Дата и время операции | [Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html).occurrenceDateTime | - | 2026-01-08T11:30:00+05:00 |
| Kod (ICHI) | Код операции | Procedure.code | SNOMED CT / ICHI | 123.AB.45 |
| Asosiy | Основная операция | Procedure.category | Local | Main |
| Nomi | Наименование операции | Procedure.code.text | - | Surgical procedure |
| Shifokor | Врач | Procedure.performer.actor | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) | Rasulov B.B. |

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

### Newborn Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Vazni | Вес | Observation.valueQuantity | LOINC `8339-4` "Birth weight Measured" | 3200 g |
| Bo'yi | Рост | Observation.valueQuantity | LOINC `89269-5` "Body height Measured --at birth" | 51 cm |
| Onasining JShShIRi | ПИНФЛ матери | [RelatedPerson](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-relatedperson.html).identifier[nationalId] | NI | 39876543210987 |

---

### Tuberculosis Drug Sensitivity

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| O'pka silida doriga sezgirlik | Чувствительность туберкулёза к препаратам | Observation.valueCodeableConcept | LOINC `18769-0` "Microbial susceptibility tests Set" | Drug-sensitive |

---

### Temporary Disability

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Ochilgan sana | Дата открытия | Observation.effectivePeriod.start | LOINC `105583-9` "Worker Sick leave form" | 2026-01-05 |
| Berkitilgan sana | Дата закрытия | Observation.effectivePeriod.end | LOINC `105583-9` "Worker Sick leave form" | 2026-01-15 |

---

### Responsible Persons

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Davolovchi shifokor | Лечащий врач | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html).practitioner | Local code | Rasulov B.B. |
| Bo'lim boshlig'i | Заведующий отделением | PractitionerRole.practitioner | Local code | Qodirov A.A. |
| Katta hamshira | Старшая медсестра | PractitionerRole.practitioner | Local code | Karimova D.D. |

---

### Bundle structure

The Form 066 document is structured as a FHIR Bundle containing a [Form066HospitalDischargeComposition](StructureDefinition-form-066-hospital-discharge-composition.html) Composition:

```
Bundle (document)
├── Composition (Form066HospitalDischargeComposition)
├── Patient (patient demographics)
├── Encounter (inpatient admission and discharge)
├── Organization[] (hospital, departments, referring facility)
├── Practitioner[] (treating and operating clinicians)
├── PractitionerRole[] (responsible persons: doctor, department head, nurse)
├── Condition[] (admission, final and pathological diagnoses)
├── Observation[] (clinical and administrative measurements, lab results)
├── Procedure[] (surgical procedures)
├── Coverage (payment type)
├── RelatedPerson (newborn's mother)
└── Provenance (record authorship and provenance)
```

### Example

See [Form 066 hospital discharge example](Bundle-example-form-066-hospital-discharge.html) for a complete FHIR document example.