<style>
/* Per-form mapping-table column widths (011: short UZ/RU labels, long multi-code
   Code cells - so Code gets the room UZ/RU don't need). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 11%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 18%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 21%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 35%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 15%; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### 011-shakl - Gemodializ seansi bayonnomasi

Ushbu sahifada 011-shakl (Gemodializ seansi bayonnomasi) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi.

### Umumiy ma'lumot

011-shakl gemodializ seanslarining klinik ma'lumotlarini qayd etadi. Shakl ma'lumotlari [Form 011 Hemodialysis Composition](StructureDefinition-form-011-hemodialysis-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

To'liq namunaviy nusxa uchun [011-shakl gemodializ misoli](Bundle-example-form-011-hemodialysis.html)ga qarang.

### Maydonlarni moslashtirish

# UZ-011 Gemodializ seansi shakli - FHIR bilan moslashtirish

| UZ-011 | RU-011 | FHIR yo'li | Kod | Misol qiymati |
|--------|--------|-----------|------|---------------|
| Bemor | Пациент | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).name | - | Aziz John |
| Sana | Дата | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).period.start | - | 2026-06-01 |
| Amb № | Амбулаторный № | Patient.identifier | - | 1245 |
| Seans № | № сеанса | [Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html).identifier | - | 128 |
| Dializ turi | Тип диализа | Procedure.code | SNOMED CT `302497006` "Hemodialysis (procedure)" | Hemodialysis |
| Dializ boshlanishi | Начало диализа | Procedure.occurrencePeriod.start | - | 2026-06-01T09:00:00 |
| Dializ tugashi | Окончание диализа | Procedure.occurrencePeriod.end | - | 2026-06-01T13:00:00 |
| AQB (sistolik) | Артериальное давление (систолическое) | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).component.code / Observation.component.valueQuantity | Observation.code: LOINC `85354-9` "Blood pressure panel"; component.code: LOINC `8480-6` "Systolic blood pressure" | 150 mmHg |
| AQB (diastolik) | Артериальное давление (диастолическое) | Observation.component.code / Observation.component.valueQuantity | component.code: LOINC `8462-4` "Diastolic blood pressure" | 90 mmHg |
| PS | Пульс | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 72 /min |
| t(°C) | Температура тела (°C) | Observation.valueQuantity | LOINC `8310-5` "Body temperature" | 36.6 Cel |
| SPO (SpO₂ (%)) | Сатурация кислорода (%) | Observation.valueQuantity | LOINC `2708-6` "Oxygen saturation in Arterial blood"; additional coding: LOINC `59408-5` "Oxygen saturation in Arterial blood by Pulse oximetry" | 98 % |
| Asosiy Davolash | Основное лечение | MedicationAdministration.medication.concept | Use appropriate medication code, e.g. for Heparin: SNOMED CT `96382006` "Heparin" or ATC `B01AB01` | Geparin 2000 ED |
| Qo'shimcha Davolash | Дополнительное лечение | Observation.valueString | Local code - TBD | |
| Dializator | Диализатор | Procedure.used.concept | Local code - TBD (e.g. "FX 80") | FX 80 |
| Magistral | Магистраль | Procedure.used.concept | Local code - TBD | Arterial/Venoz |
| Ignalar | Иглы | Procedure.used.concept | Local code - TBD | AVF 16G |
| UF | Ультрафильтрация | Observation.valueQuantity | Local code - TBD (no standard LOINC for total UF volume per session) | 2500 mL |
| Vazn seansgacha | Масса тела до сеанса | Observation.valueQuantity | LOINC `8347-7` "Body weight Measured --pre dialysis" | 72.5 kg |
| Vazn seansdan keyin | Масса тела после сеанса | Observation.valueQuantity | LOINC `8344-4` "Body weight Measured --post dialysis" | 70.0 kg |
| Shifokor | Врач | Encounter.participant.actor | Encounter.participant.type: SNOMED CT `309343006` "Physician" | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) (Каримов А.А.) |
| Hamshira | Медсестра | Encounter.participant.actor | Encounter.participant.type: SNOMED CT `106292003` "Professional nurse" | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) (Рахматова М.М.) |
| Fistul | Фистула | Procedure.bodySite | SNOMED CT `439786007` "Surgically constructed arteriovenous fistula" + laterality qualifier | Левая AV-фистула |

### Bundle tuzilishi

011-shakl hujjati [Form011HemodialysisComposition](StructureDefinition-form-011-hemodialysis-composition.html) Composition'ini o'z ichiga olgan FHIR Bundle sifatida tuzilgan:

```
Bundle (hujjat)
├── Composition (Form011HemodialysisComposition)
├── Patient (bemorning demografik ma'lumotlari)
├── Encounter (seans uchrashuvi)
├── Procedure (gemodializ muolajasi)
├── Observation[] (hayotiy ko'rsatkichlar, o'lchovlar)
├── MedicationAdministration (berilgan dorilar)
└── Practitioner[] (shifokor, hamshira)
```

### Misol

To'liq FHIR hujjati misoli uchun [011-shakl gemodializ misoli](Bundle-example-form-011-hemodialysis.html)ga qarang.
