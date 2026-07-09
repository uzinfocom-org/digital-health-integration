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

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### 066-shakl - Statsionardan chiqqan bemorning statistik kartasi

Ushbu sahifada 066-shakl (Statsionardan chiqqan bemorning statistik kartasi) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi.

---

### Umumiy ma'lumot

066-shakl statsionar shifoxona parvarishidan chiqarilgan bemorlarning ma'muriy va klinik ma'lumotlarini qayd etadi. Shakl ma'lumotlari [Form 066 Hospital Discharge Composition](StructureDefinition-form-066-hospital-discharge-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

To'liq namunaviy nusxa uchun [066-shakl statsionardan chiqarish misoli](Bundle-example-form-066-hospital-discharge.html)ga qarang.

---

### Maydonlarni moslashtirish

# UZ-066 Statsionardan chiqqan bemorning statistik kartasi - FHIR bilan moslashtirish

---

### Shaxsiy ma'lumotlar

| UZ-066 | RU-066 | FHIR yo'li | Kod | Misol qiymati |
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

### Yashash joyi haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| QQR/Viloyatlar/Toshkent sh. | Республика/область/г. Ташкент | Patient.address.state | - | Toshkent |
| Tuman/Shahar | Район/город | Patient.address.district | - | Yunusobod |
| Mahalla | Махалля | Patient.address.city | - | 12-mavze |
| Ko'cha | Улица | Patient.address.line | - | Amir Temur ko‘chasi |
| Uy | Дом | Patient.address.line | - | 15 |
| Xonadon | Квартира | Patient.address.line | - | 24 |
| Pochta indeksi | Почтовый индекс | Patient.address.postalCode | - | 100017 |

---

### Yotqizish haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Misol |
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

### Statsionarda yotish haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Misol |
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

### Yakuniy tashxis

Har bir tashxis [Diagnosis Role](CodeSystem-diagnosis-role.html) kod tizimidan olingan `Condition.category` bilan belgilanadi va Composition'ning rolga mos quyi bo'limiga joylashtiriladi, shu sababli rol kiritish tartibiga bog'liq bo'lmagan holda saqlanadi - Asosiy → `main`, Raqobat → `competing`, Yondosh → `concomitant`, Fon → `background`, Asorat → `complication`.

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Asosiy tashxis | Основной диагноз | Condition.code | ICD-10 | J18.9 |
| Raqobat tashxis | Конкурирующий диагноз | Condition.code | ICD-10 | J44.9 |
| Yondosh tashxis | Сопутствующий диагноз | Condition.code | ICD-10 | I10 |
| Fon tashxis | Фоновый диагноз | Condition.code | ICD-10 | E11.9 |
| Asorat | Осложнение | Condition.code | ICD-10 | J96.0 |

---

### Patologoanatomik tashxis

O'lim sabablari xuddi shu tarzda (`Condition.category`, [Diagnosis Role](CodeSystem-diagnosis-role.html)) rollar bo'yicha quyi bo'limlarda belgilanadi - O'limning bevosita sababi → `immediate-cause-of-death`, uni keltirib chiqargan kasallik → `underlying-cause-of-death`, Asosiy kasallik → `main-disease-death`, Boshqa muhim kasalliklar → `other-significant-death`.

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| O'limga olib kelgan bevosita sabab | Непосредственная причина смерти | Condition.code | ICD-10 | R99 |
| O'lim sababini bevosita chaqiruvchi kasallik | Заболевание, вызвавшее непосредственную причину смерти | Condition.code | ICD-10 | R99 |
| Asosiy kasallik | Основное заболевание | Condition.code | ICD-10 | R99 |
| Boshqa muhim kasalliklar | Другие значимые заболевания | Condition.code | ICD-10 | R99 |

---

### Jarrohlik amaliyotlari

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Sana va vaqti | Дата и время операции | [Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html).occurrenceDateTime | - | 2026-01-08T11:30:00+05:00 |
| Kod (ICHI) | Код операции | Procedure.code | SNOMED CT / ICHI | 123.AB.45 |
| Asosiy | Основная операция | Procedure.category | Local | Main |
| Nomi | Наименование операции | Procedure.code.text | - | Surgical procedure |
| Shifokor | Врач | Procedure.performer.actor | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) | Rasulov B.B. |

---

### Laboratoriya natijalari

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| OITS | ВИЧ/СПИД | Observation.valueCodeableConcept | LOINC `56888-1` "HIV 1+2 Ab+HIV1 p24 Ag [Presence] in Serum or Plasma by Immunoassay" | Negative |
| RW | RW / сифилис | Observation.valueCodeableConcept | LOINC `47236-5` "Treponema pallidum IgG+IgM Ab [Presence] in Serum or Plasma by Immunoassay" | Negative |
| Gepatit B | Гепатит B | Observation.valueCodeableConcept | LOINC `5196-1` "Hepatitis B virus surface Ag [Presence] in Serum or Plasma by Immunoassay" | Negative |
| Gepatit C | Гепатит C | Observation.valueCodeableConcept | LOINC `13955-0` "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay" | Negative |

---

### To'lov haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| To'lov turi | Тип оплаты | Coverage.type | Local code | State Health Insurance treated case |

---

### Yangi tug'ilgan chaqaloq haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Vazni | Вес | Observation.valueQuantity | LOINC `8339-4` "Birth weight Measured" | 3200 g |
| Bo'yi | Рост | Observation.valueQuantity | LOINC `89269-5` "Body height Measured --at birth" | 51 cm |
| Onasining JShShIRi | ПИНФЛ матери | [RelatedPerson](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-relatedperson.html).identifier[nationalId] | NI | 39876543210987 |

---

### Sil kasalligining dorilarga sezgirligi

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| O'pka silida doriga sezgirlik | Чувствительность туберкулёза к препаратам | Observation.valueCodeableConcept | LOINC `18769-0` "Microbial susceptibility tests Set" | Drug-sensitive |

---

### Vaqtinchalik mehnatga layoqatsizlik

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Ochilgan sana | Дата открытия | Observation.effectivePeriod.start | LOINC `105583-9` "Worker Sick leave form" | 2026-01-05 |
| Berkitilgan sana | Дата закрытия | Observation.effectivePeriod.end | LOINC `105583-9` "Worker Sick leave form" | 2026-01-15 |

---

### Mas'ul shaxslar

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Davolovchi shifokor | Лечащий врач | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html).practitioner | Local code | Rasulov B.B. |
| Bo'lim boshlig'i | Заведующий отделением | PractitionerRole.practitioner | Local code | Qodirov A.A. |
| Katta hamshira | Старшая медсестра | PractitionerRole.practitioner | Local code | Karimova D.D. |

---

### Bundle tuzilishi

066-shakl hujjati [Form066HospitalDischargeComposition](StructureDefinition-form-066-hospital-discharge-composition.html) Composition'ini o'z ichiga olgan FHIR Bundle sifatida tuzilgan:

```
Bundle (hujjat)
├── Composition (Form066HospitalDischargeComposition)
├── Patient (bemorning demografik ma'lumotlari)
├── Encounter (statsionarga yotqizish va chiqarish)
├── Organization[] (shifoxona, bo'limlar, yo'llagan muassasa)
├── Practitioner[] (davolovchi va operatsiya qiluvchi shifokorlar)
├── PractitionerRole[] (mas'ul shaxslar: shifokor, bo'lim boshlig'i, hamshira)
├── Condition[] (yotqizishdagi, yakuniy va patologoanatomik tashxislar)
├── Observation[] (klinik va ma'muriy o'lchovlar, laboratoriya natijalari)
├── Procedure[] (jarrohlik amaliyotlari)
├── Coverage (to'lov turi)
├── RelatedPerson (yangi tug'ilgan chaqaloqning onasi)
└── Provenance (yozuv muallifligi va kelib chiqishi)
```

### Misol

To'liq FHIR hujjati misoli uchun [066-shakl statsionardan chiqarish misoli](Bundle-example-form-066-hospital-discharge.html)ga qarang.