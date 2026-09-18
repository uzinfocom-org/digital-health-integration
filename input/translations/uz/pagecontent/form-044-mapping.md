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

### 044-shakl - Chet elga chiqishga tibbiy qarshiliklar yo'qligi haqida ma'lumotnoma

Ushbu sahifada 044-shakl (Chet elga chiqishga tibbiy qarshiliklar yo'qligi haqida ma'lumotnoma) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi.

---

### Umumiy ma'lumot

044-shakl — tibbiy komissiya tomonidan beriladigan, bemorda xizmat safari doirasida chet elga chiqishga tibbiy qarshiliklar yo'qligini tasdiqlovchi mustaqil ma'lumotnomadir. 066-shakldan farqli o'laroq, u statsionar yoki ambulator uchrashuvga bog'lanmagan — `Composition.encounter` `0..0` sifatida belgilangan. Shakl ma'lumotlari [Form 044 Travel Clearance Certificate Composition](StructureDefinition-form-044-travel-clearance-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

To'liq namunaviy nusxa uchun [044-shakl ma'lumotnoma misoli](Bundle-example-form-044-travel-clearance.html)ga qarang.

---

### Maydonlarni moslashtirish

# UZ-044 Chet elga chiqish ma'lumotnomasi - FHIR bilan moslashtirish

---

### Shaxsiy ma'lumotlar

| UZ-044 | RU-044 | FHIR yo'li | Kod | Misol qiymati |
|--------|--------|-----------|------|---------------|
| Muassasa nomi | Наименование учреждения (шапка бланка) | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).name | - | Toshkent shahar 5-son poliklinikasi |
| Malumotnoma raqami | Номер справки | Composition.identifier | - | 044-2026-001 |
| Med ID raqami | Номер мед карты | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[healthCardId] | HC | HC-2026-00044 |
| JShShR | ПИНФЛ | Patient.identifier[nationalId] | NI | 31234567890044 |
| FISH | ФИО | Patient.name (text/family/given) | - | Yusupova Nodira Sharifovna |
| Yoshi (tug'ilgan sanasi) | Возраст (лет) | Patient.birthDate | - | 1988-07-22 |
| Malumotnoma berilgan sana | Дата выдачи справки | Composition.date | - | 2026-02-10T09:15:00+05:00 |

---

### Yashash joyi

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Yo'llanayotganning yashash joyi | Адрес пациента | Patient.address | - | 8-mavze, 22-uy |

---

### Kechirgan yuqumli kasalliklar

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Kechirgan yuqumli kasalliklar | Перенесённые инфекционные заболевания | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | B05 (Qizamiq), A38 (Skarlatina), A37 (Ko'k yo'tal) |

---

### Chet elga chiqishga ruxsat

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Tashxis va chet elga borish uchun qarshiliklar yoʻqligi borasida tibbiy yakun | Медицинское заключение об отсутствии противопоказаний к выезду | Observation.code / Observation.valueCodeableConcept | [Form Sections](CodeSystem-form-sections-cs.html) `travel-clearance` → `allowed` \| `denied` | Mumkin |
| Mamlakat nomi | Наименование страны назначения | Observation.code / Observation.valueCodeableConcept | [Form Sections](CodeSystem-form-sections-cs.html) `destination-country`; qiymat: ISO-3166-1 | Germaniya |
| Xizmat safarining muddati | На срок (период) | Observation.code / Observation.effectivePeriod | [Form Sections](CodeSystem-form-sections-cs.html) `trip-period` | 2026-02-20 – 2026-03-05 |

---

### Mas'ul shaxslar

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Komissiya raisi F.I.SH | Председатель комиссии (ФИО/подпись) | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html).practitioner / [Provenance](https://hl7.org/fhir/R5/provenance.html).signature | Occupation `1342.18` "Bo'linma (sog'liqni saqlash muassasalari) mudiri" | Nazarov T.T. |

---

### Bundle tuzilishi

044-shakl hujjati [Form044TravelClearanceCertificateComposition](StructureDefinition-form-044-travel-clearance-composition.html) Composition'ini o'z ichiga olgan FHIR Bundle sifatida tuzilgan:

```
Bundle (hujjat)
├── Composition (Form044TravelClearanceCertificateComposition)
├── Patient (bemorning demografik ma'lumotlari)
├── Organization (ma'lumotnoma beruvchi muassasa)
├── Practitioner (komissiya raisi)
├── PractitionerRole (komissiya raisining lavozimi)
├── Condition[] (kechirgan yuqumli kasalliklar)
├── Observation[] (chet elga chiqishga ruxsat, borish mo'ljallangan mamlakat, xizmat safari muddati)
└── Provenance (komissiya raisining imzosi)
```

### Misol

To'liq FHIR hujjati misoli uchun [044-shakl ma'lumotnoma misoli](Bundle-example-form-044-travel-clearance.html)ga qarang.