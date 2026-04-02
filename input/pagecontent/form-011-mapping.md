### Form 011 - Hemodialysis session protocol

This page documents the mapping between Form 011 (Hemodialysis Session Protocol) fields and FHIR resources.

### Overview

Form 011 captures clinical data from hemodialysis sessions. The form data maps to multiple FHIR resources bundled together as a FHIR Document. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

### Field Mapping

# UZ-011 Hemodialysis Session Form - FHIR Mapping

| UZ-011 | RU-011 | FHIR Path | Code | Example Value |
|--------|--------|-----------|------|---------------|
| Bemor | Пациент | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).name | - | Aziz John |
| Sana | Дата | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).period.start | - | 2026-06-01 |
| Amb № | Амбулаторный № | Patient.identifier | - | 1245 |
| Seans № | № сеанса | Procedure.identifier | - | 128 |
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

### Bundle structure

The Form 011 document is structured as a FHIR Bundle containing:

```
Bundle (document)
├── Composition (first entry; sections referencing all resources below)
├── Patient (patient demographics)
├── Encounter (session encounter)
├── Procedure (hemodialysis procedure)
├── Observation[] (vital signs, measurements)
├── MedicationAdministration (medications given)
└── Practitioner[] (doctor, nurse)
```

### Example

See [Form 011 hemodialysis example](Bundle-example-form-011-hemodialysis.html) for a complete FHIR document example.
