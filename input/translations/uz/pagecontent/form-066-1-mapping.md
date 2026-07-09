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

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### 066-1-shakl - Psixiatrik/narkologik statsionardan chiqqan bemorning statistik kartasi

Ushbu sahifada 066-1-shakl (Psixiatrik/narkologik statsionardan chiqqan bemorning statistik kartasi) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi.

---

### Umumiy ma'lumot

066-1-shakl psixiatrik yoki narkologik statsionar parvarishidan chiqarilgan bemorlarning ma'muriy va klinik ma'lumotlarini qayd etadi. Shakl ma'lumotlari [Form 066-1 Psychiatric Discharge Composition](StructureDefinition-form-066-1-psychiatric-discharge-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

To'liq namunaviy nusxa uchun [066-1-shakl psixiatrik/narkologik chiqarish misoli](Bundle-example-form-066-1-psychiatric-discharge.html)ga qarang.

---

### Maydonlarni moslashtirish

# UZ-066-1 Psixiatrik/narkologik statsionardan chiqqan bemorning statistik kartasi - FHIR bilan moslashtirish

---

### Shaxsiy ma'lumotlar

| UZ-066-1 | RU-066-1 | FHIR yo'li | Kod | Misol qiymati |
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

### Yashash joyi haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| QQR/Viloyatlar/Toshkent sh. | Республика/область/г. Ташкент | Patient.address.state | - | 1726 |
| Tuman/Shahar | Район/город | Patient.address.district | - | 1726266 |
| Mahalla | Махалля | Patient.address.city | - | 16090011 |
| Ko‘cha | Улица | Patient.address.line | - | 12-mavze |
| Uy | Дом | Patient.address.line | - | 15-uy |
| Xonadon | Квартира | Patient.address.line | - | 24-xonadon |
| Pochta indeksi | Почтовый индекс | Patient.address.postalCode | - | 100017 |

---

### Yotqizish haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Misol |
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

### Statsionarda yotish haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Misol |
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

### Yakuniy tashxis

Har bir tashxis [Diagnosis Role](CodeSystem-diagnosis-role.html) kod tizimidan olingan `Condition.category` bilan belgilanadi va Composition'ning rolga mos quyi bo'limiga joylashtiriladi, shu sababli rol kiritish tartibiga bog'liq bo'lmagan holda saqlanadi - Asosiy → `main`, Raqobat → `competing`, Yondosh → `concomitant`, Fon → `background`, Asorat → `complication`.

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Asosiy tashxis | Основной диагноз | Condition.code | ICD-10 | F10.2 |
| Raqobat tashxis | Конкурирующий диагноз | Condition.code | ICD-10 | F17.2 |
| Yondosh tashxis | Сопутствующий диагноз | Condition.code | ICD-10 | I10 |
| Fon tashxis | Фоновый диагноз | Condition.code | ICD-10 | K29.7 |
| Asorat | Осложнение | Condition.code | ICD-10 | G47.0 |

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

### Sil kasalligining dorilarga sezgirligi

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| O'pka silida doriga sezgirlik | Чувствительность туберкулёза к препаратам | Observation.valueCodeableConcept | LOINC `18769-0` "Microbial susceptibility tests Set" | Drug-sensitive |

---

### Vaqtinchalik mehnatga layoqatsizlik

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Ochilgan sana | Дата открытия | Observation.effectivePeriod.start | LOINC `105583-9` "Worker Sick leave form" | 2026-01-05T10:00:00+05:00 |
| Berkitilgan sana | Дата закрытия | Observation.effectivePeriod.end | LOINC `105583-9` "Worker Sick leave form" | 2026-01-15T14:00:00+05:00 |

---

### Mas'ul shaxslar

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Davolovchi shifokor | Лечащий врач | PractitionerRole.practitioner | Local code | Rasulov B.B. |
| Bo'lim boshlig'i | Заведующий отделением | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html).practitioner | Local code | Qodirova M.M. |
| Katta hamshira | Старшая медсестра | PractitionerRole.practitioner | Local code | Karimova D.D. |

---

### Bundle tuzilishi

066-1-shakl hujjati [Form066_1_PsychiatricDischargeComposition](StructureDefinition-form-066-1-psychiatric-discharge-composition.html) Composition'ini o'z ichiga olgan FHIR Bundle sifatida tuzilgan:

```
Bundle (hujjat)
├── Composition (Form066_1_PsychiatricDischargeComposition)
├── Patient (bemorning demografik ma'lumotlari)
├── Encounter (statsionarga yotqizish va chiqarish)
├── Organization[] (shifoxona, bo'limlar, yo'llagan muassasa)
├── Practitioner[] (davolovchi shifokorlar)
├── PractitionerRole[] (mas'ul shaxslar: shifokor, bo'lim boshlig'i, hamshira)
├── Condition[] (yotqizishdagi va yakuniy tashxislar)
├── Observation[] (klinik va ma'muriy o'lchovlar)
├── Coverage (to'lov turi)
├── ServiceRequest (psixiatriya xizmatiga yo'llanma)
├── Location (parvarish joyi / palata)
└── Provenance (yozuv muallifligi va kelib chiqishi)
```

### Misol

To'liq FHIR hujjati misoli uchun [066-1-shakl psixiatrik/narkologik chiqarish misoli](Bundle-example-form-066-1-psychiatric-discharge.html)ga qarang.