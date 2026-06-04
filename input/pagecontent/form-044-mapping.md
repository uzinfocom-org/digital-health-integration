### Form 044 - Medical certificate for foreign travel

This page documents the mapping between Form 044 (Medical certificate for persons travelling abroad / Медицинская справка для выезжающих за границу) fields and FHIR resources.

### Overview

Form 044 captures administrative and clinical data required to issue a medical clearance certificate for Uzbek citizens travelling abroad. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 044 Medical Certificate Composition](StructureDefinition-form-044-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

The document is issued by the healthcare institution (Organization) acting as `Composition.author`. The commission chairman's signature is captured in a Provenance resource.

### Field Mapping

| UZ-044 | RU-044 | FHIR Path | Code / System | Example Value |
|--------|--------|-----------|---------------|---------------|
| Muassasa nomi | Наименование учреждения (шапка бланка) | Organization.name | — | Toshkent shahar 1-sonli ko'p tarmoqli tibbiyot markazi |
| Malumotnoma raqami | — | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 044 |
| Med ID raqami | Номер мед карты | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier (HC) | `https://gov.uz/ssv/identifier/healthcard` | MED-2024-98765 |
| JShShR | ПИНФЛ | Patient.identifier (nationalId) | `NI` | 30012001234567 |
| FISH | ФИО | Patient.name (text / family / given) | — | Yusupov Jasur Aliyevich |
| Yoshi (tug'ilgan sanasi) | Возраст (лет) | Patient.birthDate | — | 1990-05-15 |
| Yo'llanayotganning yashash joyi | Адрес пациента | Patient.address | — | Toshkent sh., Yunusobod tumani, 17-uy |
| Kechirgan yuqumli kasalliklar | История инфекционных заболеваний | Condition.code | SNOMED CT (e.g. `14189004` "Measles", `56717001` "Tuberculosis") | Qizamiq (Measles) |
| Tashxis va chet elga borish uchun qarshiliklar yo'qligi borasida tibbiy yakun | Медицинское заключение о противопоказаниях для выезда за рубеж | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).code + Observation.valueCodeableConcept | `travel-clearance-cs#travel-fitness-assessment` / `#allowed` / `#denied` | mumkin (allowed) |
| Mamlakat nomi | Наименование страны назначения | Observation.valueCodeableConcept | ISO 3166-1 alpha-2 (`urn:iso:std:iso:3166`) | `RU` — Rossiya Federatsiyasi |
| Xizmat safarining muddati | На срок (период) | Observation.effectivePeriod | — | 2026-05-01 / 2026-07-01 |
| Komissiya raisi F.I.SH | Председатель комиссии (ФИО / подпись) | Provenance.agent.who + Provenance.signature.data | `provenance-participant-type#attester` | Kamolov B.B. |
| Malumotnoma berilgan sana | — | Composition.date | — | 2026-04-23 |

### Profile Structure

The main profile is [Form044Composition](StructureDefinition-form-044-composition.html), based on the FHIR R5 Composition resource.

| Element | Constraint | Description |
|---------|-----------|-------------|
| `identifier` | 1..* | Certificate number (Malumotnoma raqami) and form number identifier |
| `status` | fixed: `#final` | Completed, signed certificate |
| `type` | LOINC `11488-4` "Consultation note" | Document type |
| `category` | `document-category-cs#form-044` | Medical certificate for foreign travel |
| `subject` | `Reference(UZCorePatient)` | Patient — FISH, JShShR, Med ID, yosh, manzil |
| `author` | `Reference(Organization)` | Issuing healthcare institution (Muassasa nomi) |
| `section[infectiousHistory]` | 1..1 | Past infectious diseases history |
| `section[travelClearance]` | 1..1 | Medical fitness assessment and travel details |

#### Section: infectiousHistory (LOINC `11348-0` "History of past illness Narrative")

- Entry type: `Reference(Condition)` — 0..*
- Contains one Condition resource per reported past infectious disease
- `clinicalStatus`: typically `#resolved`
- `code`: SNOMED CT code for the specific disease (e.g. Measles, Scarlet fever, Whooping cough)

#### Section: travelClearance (LOINC `51848-0` "Assessment note")

- Entry type: `Reference(UZCoreObservation)` — 1..*
- Must contain at minimum:

| Observation | `code` | `value[x]` |
|-------------|--------|------------|
| Travel fitness assessment | `travel-clearance-cs#travel-fitness-assessment` | `valueCodeableConcept`: `#allowed` or `#denied` |
| Destination country | `travel-clearance-cs#destination-country` | `valueCodeableConcept`: ISO 3166-1 alpha-2 code |
| Travel duration | `travel-clearance-cs#travel-duration` | `effectivePeriod` (start / end) + `valueString` summary |

### Travel Clearance CodeSystem

A local CodeSystem `travel-clearance-cs` (canonical: `https://dhp.uz/fhir/integrations/CodeSystem/travel-clearance-cs`) provides the codes for this form:

| Code | UZ | EN | RU |
|------|----|----|----|
| `travel-fitness-assessment` | Chet elga safar uchun tibbiy xulosasi | Medical fitness assessment for foreign travel | Медицинское заключение о годности для выезда за рубеж |
| `allowed` | Ruxsat berilgan | Travel allowed — no medical contraindications | Выезд разрешён — медицинских противопоказаний нет |
| `denied` | Ruxsat berilmagan | Travel not allowed — medical contraindications present | Выезд не разрешён — имеются медицинские противопоказания |
| `destination-country` | Borish mamlakati | Destination country | Страна назначения |
| `travel-duration` | Safarning muddati | Duration of travel | Срок поездки |

### Bundle Structure

The Form 044 document is structured as a FHIR Bundle containing a [Form044Composition](StructureDefinition-form-044-composition.html) Composition:

```
Bundle (document)
└── Composition (Form044Composition)
     ├── subject → Patient (UZCorePatient)
     │    ├── identifier[nationalId]   — JShShR / ПИНФЛ
     │    ├── identifier[HC]           — Med ID raqami
     │    ├── name                     — FISH / ФИО
     │    ├── birthDate                — Yoshi / Возраст
     │    └── address                  — Yo'llanayotganning yashash joyi
     ├── author → Organization
     │    └── name                     — Muassasa nomi
     ├── section[infectiousHistory] → Condition[]
     │    └── Condition                — Kechirgan yuqumli kasalliklar
     ├── section[travelClearance] → UZCoreObservation[]
     │    ├── Observation (clearance)  — mumkin / mumkin emas (allowed / denied)
     │    ├── Observation (country)    — Mamlakat nomi (ISO 3166-1)
     │    └── Observation (period)     — Xizmat safarining muddati (effectivePeriod)
     └── Provenance
          └── agent + signature        — Komissiya raisi F.I.SH
```

Resource roles in the document Bundle:

| Resource | Purpose |
|----------|---------|
| Composition | Document root; links all sections; holds Malumotnoma raqami and date |
| Patient (UZCorePatient) | Patient demographics: FISH, JShShR, Med ID, birthDate, address |
| Organization | Issuing institution — Muassasa nomi |
| Condition | Past infectious diseases — Kechirgan yuqumli kasalliklar |
| Observation (clearance) | Medical conclusion: mumkin / mumkin emas |
| Observation (country) | Destination country — Mamlakat nomi (ISO 3166-1 alpha-2) |
| Observation (period) | Travel duration — Xizmat safarining muddati (effectivePeriod) |
| Provenance | Commission chairman signature — Komissiya raisi F.I.SH |

### Example

See [Form 044 foreign travel example](Bundle-example-form-044-foreign-travel.html) for a complete FHIR document example.
