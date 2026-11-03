<style>
/* Per-form mapping-table column widths (044: short UZ/RU labels, moderate Code cells). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 20%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 20%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 20%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 25%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 15%; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### 044-shakl - Xorijga ketayotganlar uchun tibbiy ma'lumotnoma

Ushbu sahifada [044-shakl](forms-volume-02-ambulatory.html) (Xorijga ketayotganlar uchun tibbiy ma'lumotnoma) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi.

---

### Umumiy ma'lumot

044-shakl - poliklinika tibbiy komissiyasi beradigan, shaxsda xizmat safari bilan chet elga chiqishga tibbiy qarshiliklar yo'qligini tasdiqlovchi mustaqil ma'lumotnoma. `Composition.encounter` majburiy emas: komissiya ko'rigi o'tkazilgan tashrif qayd etilgan bo'lsa, uni yuboring. Shakl ma'lumotlari [Form 044 Travel Clearance Certificate Composition](StructureDefinition-form-044-travel-clearance-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

To'liq namunaviy nusxa uchun [044-shakl ma'lumotnoma misoli](Bundle-example-form-044-travel-clearance.html)ga qarang.

---

### Maydonlarni moslashtirish

### 044-shakl Xorijga ketayotganlar uchun tibbiy ma'lumotnoma - FHIR bilan moslashtirish

---

### Hujjat ma'lumotlari

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:044e8400-e29b-41d4-a716-446655440044 |
| Hujjat instansiyasi UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:944f9511-f30c-52e5-b827-557766550044 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 044 |
| Ma'lumotnoma raqami | Номер справки | Composition.identifier[certificateNumber] | `https://dhp.uz/fhir/core/sid/doc/uz/medical-certificate-number` | 044-2026-001 |
| Hujjat holati | Статус документа | Composition.status | [Hujjat holatlari](document-statuses.html): komissiya ma'lumotnomani berganda `final`, keyingi tuzatishlarda `amended`, ma'lumotnoma xato deb bekor qilinsa `entered-in-error` | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0042` "Medical certificate for travelers abroad", hamda LOINC `104988-1` "Medical Fitness Certificate" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" va [Document Category](ValueSet-document-category-vs.html) `form-044` "Medical certificate for travelers abroad" | - |
| Chet elga ketayotgan shaxs | Лицо, выезжающее за границу | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Yusupova Nodira Sharifovna |
| Ma'lumotnoma berilgan sana | Дата выдачи справки | Composition.date | - | 2026-02-10T09:15:00+05:00 |
| Komissiya raisi | Председатель комиссии | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html), lavozimi noma'lum bo'lsa [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) | Nazarov T.T. |
| Muassasa nomi | Наименование учреждения | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Toshkent shahar 5-son poliklinikasi |
| Muassasa kodi | Код учреждения | Organization.identifier[taxId] | `system` `https://dhp.uz/fhir/core/sid/org/uz/soliq`<br>`type` `TAX` | 200017044 |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 044 - Medical Certificate for Travelers Abroad |
| Komissiya raisi imzosi | Подпись председателя комиссии | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | `signature.type[nationalType]` [UZ Core Signature Type](https://dhp.uz/fhir/core/en/CodeSystem-signature-type-cs.html) `soliqAuth` | soliqAuth |
| Komissiya a'zolari imzolari | Подписи членов комиссии | Provenance.signature, har bir a'zo uchun bittadan, `Provenance.agent.type` `attester` bilan | `soliqAuth`; majburiy emas | soliqAuth |

---

### 1. Shaxsiy ma'lumotlar

Bo'lim kodi: LOINC `LP36348-8` "Patient information".

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Med ID raqami | Номер Med ID | Patient.identifier[healthCardId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/hc`<br>`type` `HC` | HC-2026-00044 |
| JShShIR | ПИНФЛ | Patient.identifier[nationalId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 31234567890044 |
| Familiya, ismi, otasining ismi | ФИО | Patient.name (text/family/given) | - | Yusupova Nodira Sharifovna |
| Yoshi | Возраст | Patient.birthDate | - | 1988-07-22 |

---

### 2. Kechirgan yuqumli kasalliklar

Bo'lim kodi: LOINC `11348-0` "History of Past illness note".

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Kechirgan yuqumli kasalliklar | Перенесённые инфекционные заболевания | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | XKT-10 | B05 "Measles", A38 "Scarlet fever", A37 "Whooping cough" |

---

### 3. Chet elga chiqishga ruxsat

Bo'lim kodi: LOINC `104988-1` "Medical Fitness Certificate".

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Tashxis va chet elga borish uchun qarshiliklar yo'qligi borasida tibbiy yakun | Медицинское заключение об отсутствии противопоказаний к выезду | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueBoolean | `code` [Form 044 Observation Codes](ValueSet-form-044-observation-code-vs.html) `travel-clearance` "Travel clearance" | true |
| Mamlakat nomi | Наименование страны | Observation.valueCodeableConcept | `code` LOINC `94651-7` "Country of travel [Location]"; qiymat [ISO 3166 part 1 2-letter codes, sans Uzbekistan](https://terminology.dhp.uz/fhir/core/ValueSet/iso-3166-2-vs-sans-uz) dan | DE "Germany" |
| Xizmat safarining muddati | Срок командировки | Observation.valuePeriod | `code` [Form 044 Observation Codes](ValueSet-form-044-observation-code-vs.html) `trip-period` "Business trip period" | 2026-02-20 - 2026-03-05 |

---

### 4. Yashash joyi

Bo'lim kodi: LOINC `56799-0` "Address".

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Yo'llanayotganning yashash joyi | Место жительства выезжающего | Patient.address | - | 8-mavze, 22-uy |

---

### 5. Mas'ul shaxslar

Bo'lim kodi: LOINC `LP35157-4` "Responsible party".

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Komissiya raisi F.I.Sh. | ФИО председателя комиссии | PractitionerRole.practitioner | `code` [Position and profession](https://terminology.dhp.uz/fhir/core/ValueSet/position-and-profession-vs) `1342.18` "Head of department (health institution)" | Nazarov T.T. |
| Komissiya a'zolari F.I.Sh. | ФИО членов комиссии | PractitionerRole.practitioner, har bir a'zo uchun bittadan; majburiy emas | `code` Position and profession `2212.113` "Physician" | Karimova D.A. |

---

### Majburiy maydonlar

FHIR bu elementlarni talab qiladi, lekin qog'oz shaklda ular uchun maydon yo'q. Ularni quyidagicha to'ldiring:

| Resurs | Element | Kod | Qiymat |
|---|---|---|---|
| Condition | clinicalStatus | [Clinical Status](https://dhp.uz/fhir/core/en/ValueSet-clinical-status-vs.html) | kechirgan yuqumli kasallik uchun `resolved` |
| Observation | status | [Observation Status](https://dhp.uz/fhir/core/en/ValueSet-observation-status-vs.html) | komissiya xulosa chiqargandan keyin `final` |

---

### Bundle strukturasi

044-shakl hujjati [Form044TravelClearanceCertificateComposition](StructureDefinition-form-044-travel-clearance-composition.html) Composition'ini o'z ichiga olgan FHIR Bundle:

```
Bundle (document)
├── Composition (Form044TravelClearanceCertificateComposition)
├── Patient (chet elga ketayotgan shaxs)
├── Organization (ma'lumotnomani bergan poliklinika)
├── Practitioner[] (komissiya raisi va a'zolari)
├── PractitionerRole[] (komissiya raisi va a'zolarining lavozimlari)
├── Condition[] (kechirgan yuqumli kasalliklar)
├── Observation[] (chet elga chiqishga ruxsat, borish mamlakati, xizmat safari muddati)
└── Provenance (komissiya imzolari)
```

### Misol

To'liq FHIR hujjati misoli - [044-shakl ma'lumotnoma misoli](Bundle-example-form-044-travel-clearance.html).
