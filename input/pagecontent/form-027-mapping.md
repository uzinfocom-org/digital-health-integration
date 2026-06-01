### Form 027 - Ambulatoriyadagi bemor taloni

This page documents the mapping between Form 027 (Outpatient Patient Visit Record / Талон амбулаторного пациента) fields and FHIR resources.

### Overview

Form 027 captures the complete data of an outpatient clinical visit, including patient demographics, diagnoses, clinical findings, diagnostics, treatment, and follow-up actions. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 027 Outpatient Composition](StructureDefinition-form-027-outpatient-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

### Field Mapping

| UZ-027 | RU-027 | FHIR Path | Input Values | Notes |
|--------|--------|-----------|--------------|-------|
| Muassasa nomi | Наименование учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).name | — | Composition.custodian → UZCoreOrganization |
| Bemorning ro'yxatdan o'tish raqami | Регистрационный номер пациента | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).identifier.value | — | e.g. `ENC-2026-00427` |
| Bemor turi | Тип пациента | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).class | `AMB` Ambulator / `IMP` Statsionar | FHIR v3-ActCode |
| Murojaat sanasi | Дата подачи заявления | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).actualPeriod.start | — | ISO 8601 datetime |
| Chiqarilgan sana | Дата выписки | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).actualPeriod.end | — | ISO 8601 datetime |
| Bemor JSHSHIR | ПИНФЛ | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[nationalId].value | — | 14-digit national ID |
| Med ID raqami | Медицинский идентификационный номер | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[healthCardId].value | — | Health card identifier |
| Bemor FISh | ФИО пациента | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).name.text | — | Full name as text |
| Bemor tug'ilgan sanasi | Дата рождения | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).birthDate | — | ISO 8601 date |
| Bemor jinsi | Пол пациента | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).gender | `male` Erkak / `female` Ayol | FHIR administrative-gender |
| Bemor fuqaroligi | Гражданство пациента | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).extension[citizenship] | — | ISO 3166-1 country code |
| Bemor Pasport seriyasi va № | Серия и № паспорта | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[passportLocal / passportInternational / passportForeign] | — | Depends on document type |
| Bemor yashab kelayotgan manzili | Адрес проживания (фактический) | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).address.text | — | Free-text address |
| Bemor telefoni | Телефон | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).telecom[phone].value | — | E.164 format |
| Bemor emaili | Email | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).telecom[email].value | — | |
| Yo'llagan muassasa kodi | Направившее учреждение код | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).serviceProvider.identifier.value | — | Facility code |
| Yo'llagan muassasa nomi | Направившее учреждение наименование | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).serviceProvider.display | — | Organization name |
| Asosiy tashxis kodi | Код основного диагноза | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code.coding.code | ICD-10 | Condition.note = "Asosiy tashxis" |
| Asosiy tashxis nomi | Наименование основного диагноза | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code.coding.display | ICD-10 display | |
| Asorati | Код осложнения | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code.coding.code | ICD-10 | Separate Condition; Condition.note = "Asorat". Alternatively via Procedure.complication |
| Yo'ldosh kasallik kodi | Код сопутствующего заболевания | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code.coding.code | ICD-10 | Separate Condition; Condition.note = "Yo'ldosh kasallik" |
| Shikoyatlar | Жалобы | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString | LOINC `10154-3` | Also captured in Encounter.reason.value |
| Anamnez | Анамнез | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString | LOINC `11329-0` | Free-text history |
| Klinik ko'rik | Клинический осмотр | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString | LOINC `29545-1` | Physical findings narrative |
| Diagnostik tekshiruv | Диагностическое обследование | DiagnosticReport.conclusion | LOINC code per test type | Laboratory and imaging results |
| Davolash | Лечение | CarePlan.activity.detail.code | — | Free-text or coded treatment activities |
| Tavsiyalar | Рекомендации | CarePlan.note.text | — | Free-text recommendations |
| Retsept | Рецепт | MedicationRequest.medication | ATC / SNOMED CT | Medication with dosage instructions |
| Keyingi tadbirlar | Последующее мероприятие | CarePlan.note.text | — | Captured as additional note on CarePlan |
| Kuzatuv | Наблюдение | CarePlan | — | Follow-up plan within CarePlan |
| Dispanserizatsiya | Диспансеризация | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episode-of-care.html) | — | UZCoreEpisodeOfCare.type |
| Shifoxonaga yotqazish | Госпитализация | ServiceRequest | — | Referral for inpatient admission |
| Davolovchi shifokor FISh | Лечащий врач (Ф.И.О.) | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html).name.text | — | Composition.author |
| Davolovchi shifokor imzosi | Лечащий врач (подпись) | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | — | Digital signature via myID |
| Mas'ul shaxs FISh | Ответственное лицо (Ф.И.О.) | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html).name.text | — | Second Provenance.agent |
| Mas'ul shaxs imzosi | Ответственное лицо (подпись) | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | — | Digital signature via myID |

### Bundle structure

The Form 027 document is structured as a FHIR Bundle containing a [Form027OutpatientComposition](StructureDefinition-form-027-outpatient-composition.html) Composition:

```
Bundle (document)
├── Composition (Form027OutpatientComposition)
│   ├── subject         → Patient
│   ├── encounter       → Encounter
│   ├── author          → Practitioner (davolovchi shifokor)
│   ├── custodian       → Organization (muassasa)
│   ├── section[chiefComplaint]      → Observation (shikoyatlar)
│   ├── section[anamnesis]           → Observation (anamnez)
│   ├── section[clinicalExamination] → Observation (klinik ko'rik)
│   ├── section[diagnosis]           → Condition[] (asosiy, asorat, yo'ldosh)
│   ├── section[diagnostics]         → DiagnosticReport[]
│   └── section[treatmentPlan]       → CarePlan, MedicationRequest,
│                                       EpisodeOfCare, ServiceRequest
├── Patient            (UZCorePatient)
├── Organization       (UZCoreOrganization – muassasa)
├── Encounter          (UZCoreEncounter)
├── Practitioner       (UZCorePractitioner – davolovchi shifokor)
├── Practitioner       (UZCorePractitioner – mas'ul shaxs)
├── Condition          (UZCoreCondition – asosiy tashxis)
├── Condition          (UZCoreCondition – yo'ldosh kasallik)
├── Condition          (UZCoreCondition – asorat)
├── Observation        (shikoyatlar)
├── Observation        (anamnez)
├── Observation        (klinik ko'rik)
├── DiagnosticReport   (diagnostik tekshiruv)
├── CarePlan           (davolash, tavsiyalar, kuzatuv)
├── MedicationRequest  (retsept)
├── EpisodeOfCare      (UZCoreEpisodeOfCare – dispanserizatsiya)
├── ServiceRequest     (shifoxonaga yotqazish)
└── Provenance         (UZCoreProvenance – imzolar)
```

### Example

See [Form 027 outpatient visit example](Bundle-example-form-027-outpatient.html) for a complete FHIR document example.
