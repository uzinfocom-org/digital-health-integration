<style>
/* Per-form mapping-table column widths (027: UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 11%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 18%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 21%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 35%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 15%; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### 027-shakl - Tibbiy kartadan koʻchirma

Ushbu sahifada 027-shakl (Bemorning tibbiy kartasidan koʻchirma) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi.

### Umumiy ma'lumot

027-shakl yo'llanma yoki ko'chirish maqsadida bemorning tibbiy kartasidan umumlashtirilgan ko'chirmani qayd etadi. Shakl ma'lumotlari [Form 027 Medical Record Extract Composition](StructureDefinition-form-027-medical-record-extract-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

To'liq namunaviy nusxa uchun [027-shakl ko'chirma misoli](Bundle-example-form-027-medical-record-extract.html)ga qarang.

### Maydonlarni moslashtirish

# UZ-027 Tibbiy kartadan koʻchirma - FHIR bilan moslashtirish

---

### Roʻyxatga olish maʼlumotlari

| UZ-027 | RU-027 | FHIR yo'li | Kod | Misol qiymati |
|--------|--------|-----------|------|-----------------|
| Muassasa kodi | Код учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).identifier | Local | 200015 |
| Muassasa nomi | Наименование учреждения | Organization.name | - | Chilonzor tuman poliklinikasi |
| Bemorning ro'yxatdan o'tish raqami | Регистрационный номер пациента | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).identifier.value | - | REG-027-2026-0124 |
| Bemor turi | Тип пациента | Encounter.class | v3-ActCode | Inpatient encounter |
| Murojaat sanasi | Дата подачи заявления | Encounter.actualPeriod.start | - | 2026-02-08T09:00:00+05:00 |
| Chiqarilgan sana | Дата выписки | Encounter.actualPeriod.end | - | 2026-02-10T09:00:00+05:00 |

---

### Shaxsiy maʼlumotlar

| UZ-027 | RU-027 | FHIR yo'li | Kod | Misol qiymati |
|--------|--------|-----------|------|-----------------|
| Bemor JShShIR | ПИНФЛ | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[nationalId].value | NI | 31234567890124 |
| Med ID raqami | Медицинский идентификационный номер | Patient.identifier[healthCardId].value | HC | HC-2026-00027 |
| Bemor FISh | ФИО пациента | Patient.name.text | - | Yusupova Nilufar Rustamovna |
| Bemor tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1988-07-22 |
| Bemor jinsi | Пол пациента | Patient.gender | AdministrativeGender | female |
| Bemor fuqaroligi | Гражданство пациента | Patient.extension[citizenship] | ISO 3166-1 | Uzbekistan (UZ) |
| Bemor Pasport seriyasi va № | Серия и № паспорта | Patient.identifier[passportLocal or passportInternational or passportForeign] | PPN | AC7654321 |

---

### Manzil va aloqa

| UZ-027 | RU-027 | FHIR yo'li | Kod | Misol qiymati |
|--------|--------|-----------|------|-----------------|
| Bemor yashab kelayotgan manzili | Адрес проживания (фактический) | Patient.address.text | - | Toshkent sh., Chilonzor tumani, 12-mavze, 5-uy, 10-xonadon |
| Bemor telefoni | Телефон | Patient.telecom[phone] | - | +998901112233 |
| Bemor emaili | Email | Patient.telecom[email] | - | nilufar.yusupova@mail.com |

---

### Yoʻllanma va tashxis

Har bir tashxis [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) kod tizimidan `Condition.category` bilan belgilanadi va Composition'ning mos kelgan quyi-bo'limiga joylashtiriladi - Asosiy tashxis → `main`, Asorati → `complication`, Yo'ldosh kasallik → `concomitant`.

| UZ-027 | RU-027 | FHIR yo'li | Kod | Misol qiymati |
|--------|--------|-----------|------|-----------------|
| Yo'llagan muassasa | Направившее учреждение | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).admission.origin | Organization | Yakkasaroy tuman oilaviy poliklinikasi |
| Asosiy tashxis kodi | Код основного диагноза | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code.coding.code | ICD-10 | J06.9 |
| Asosiy tashxis nomi | Наименование основного диагноза | Condition.code.coding.display | - | Acute upper respiratory infection, unspecified |
| Asorati | Код осложнения | [Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html).complication | ICD-10 | J96.0 |
| Yo'ldosh kasallik kodi | Код сопутствующего заболевания | Condition.code.coding.code | ICD-10 | E66.9 |

---

### Klinik maʼlumotlar

| UZ-027 | RU-027 | FHIR yo'li | Kod | Misol qiymati |
|--------|--------|-----------|------|-----------------|
| Shikoyatlar | Жалобы | Encounter.reason.value.concept.text | - | Yuqori nafas yo'llari infeksiyasiga xos shikoyatlar |
| Anamnez | Анамнез | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString | LOINC `10164-2` "History of present illness Narrative" | 3 kundan beri tana harorati ko'tarilishi, quruq yo'tal, bosh og'rig'i |
| Klinik ko'rik | Клинический осмотр | Observation.valueString | LOINC `10210-3` "Physical findings of General status Narrative" | Umumiy holati qoniqarli, teri qoplamlari toza |
| Diagnostik tekshiruv | Диагностическое обследование | [DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html).code | LOINC | CBC panel - Blood by Automated count |

---

### Davolash va tavsiyalar

| UZ-027 | RU-027 | FHIR yo'li | Kod | Misol qiymati |
|--------|--------|-----------|------|-----------------|
| Davolash | Лечение | CarePlan.activity.performedActivity.concept.text | Local | Ko'p suyuqlik ichish, dam olish |
| Tavsiyalar | Рекомендации | CarePlan.note.text | - | Ko'p suyuqlik ichish, dam olish tavsiya etiladi, 3 kundan keyin qayta ko'rikka kelish |
| Retsept | Рецепт | MedicationRequest.medication | Local | Paracetamol 500 mg tablet |

*Izoh: CarePlan va MedicationRequest uchun hali alohida milliy UZ Core profillari yo'q; bazaviy FHIR resurslaridan foydalanilgan.*

---

### Keyingi tadbirlar

| UZ-027 | RU-027 | FHIR yo'li | Kod | Misol qiymati |
|--------|--------|-----------|------|-----------------|
| Kuzatuv | Наблюдение | CarePlan.note.text | - | 1 hafta davomida kuzatuvda saqlash |
| Dispanserizatsiya | Диспансеризация | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episode-of-care.html).type.text | Local | Treatment services |
| Shifoxonaga yotqazish | Госпитализация | ServiceRequest.code | Local | CBC panel |

*Izoh: ServiceRequest hozircha vaqtinchalik UZCoreServiceRequestLaboratory profilidan foydalanmoqda, umumiy UZCoreServiceRequest profili e'lon qilinguncha.*

---

### Masʼul shaxslar

| UZ-027 | RU-027 | FHIR yo'li | Kod | Misol qiymati |
|--------|--------|-----------|------|-----------------|
| Davolovchi shifokor FIShi | Лечащий врач (Ф.И.О.) | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html).name.text | - | Ismoilova M.T. |
| Davolovchi shifokor imzosi | Лечащий врач (подпись) | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | - | Digital signature (PDF) |
| Mas'ul shaxs FIShi | Ответственное лицо (Ф.И.О.) | Practitioner.name.text | - | Nazarov S.K. |
| Mas'ul shaxs imzosi | Ответственное лицо (подпись) | Provenance.signature | - | Digital signature (PDF) |

---

### Bundle tuzilishi

027-shakl hujjati [Form027MedicalRecordExtractComposition](StructureDefinition-form-027-medical-record-extract-composition.html) Composition'ini o'z ichiga olgan FHIR Bundle sifatida tuzilgan:

```
Bundle (hujjat)
├── Composition (Form027MedicalRecordExtractComposition)
├── Patient (bemorning demografik ma'lumotlari)
├── Encounter (tashrif/yotqizish)
├── Organization[] (ro'yxatga oluvchi va yo'llovchi muassasa)
├── Practitioner[] (davolovchi shifokor, mas'ul shaxs)
├── PractitionerRole[] (shifokor va mas'ul shaxs rollari)
├── Condition[] (asosiy va yo'ldosh tashxislar)
├── Procedure (asorat)
├── Observation[] (shikoyatlar, anamnez, klinik ko'rik)
├── DiagnosticReport (diagnostik tekshiruv natijalari)
├── CarePlan[] (davolash, tavsiyalar, kuzatuv)
├── MedicationRequest / Medication (retsept)
├── EpisodeOfCare (dispanser kuzatuvi)
├── ServiceRequest (hospitalizatsiya so'rovi)
└── Provenance[] (shifokor va mas'ul shaxs imzolari)
```

### Misol

To'liq FHIR hujjati misoli uchun [027-shakl ko'chirma misoli](Bundle-example-form-027-medical-record-extract.html)ga qarang.