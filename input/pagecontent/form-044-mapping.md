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

### Form 044 - Certificate of Absence of Medical Contraindications for Travel Abroad

This page documents the mapping between Form 044 (Certificate of Absence of Medical Contraindications for Travel Abroad) fields and FHIR resources.

---

### Overview

Form 044 is a standalone certificate issued by a medical commission confirming a patient has no medical contraindications to travel abroad on a business trip. Unlike Form 066, it is not tied to an inpatient or outpatient encounter — `Composition.encounter` is fixed to `0..0`. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 044 Travel Clearance Certificate Composition](StructureDefinition-form-044-travel-clearance-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

For a complete reference instance, see the [Form 044 travel clearance example](Bundle-example-form-044-travel-clearance.html).

---

### Field Mapping

# UZ-044 Travel Clearance Certificate - FHIR Mapping

---

### Personal Information

| UZ-044 | RU-044 | FHIR Path | Code | Example Value |
|--------|--------|-----------|------|---------------|
| Muassasa nomi | Наименование учреждения (шапка бланка) | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).name | - | Toshkent shahar 5-son poliklinikasi |
| Malumotnoma raqami | Номер справки | Composition.identifier | - | 044-2026-001 |
| Med ID raqami | Номер мед карты | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[healthCardId] | HC | HC-2026-00044 |
| JShShR | ПИНФЛ | Patient.identifier[nationalId] | NI | 31234567890044 |
| FISH | ФИО | Patient.name (text/family/given) | - | Yusupova Nodira Sharifovna |
| Yoshi (tug'ilgan sanasi) | Возраст (лет) | Patient.birthDate | - | 1988-07-22 |
| Malumotnoma berilgan sana | Дата выдачи справки | Composition.date | - | 2026-02-10T09:15:00+05:00 |

---

### Residence Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Yo'llanayotganning yashash joyi | Адрес пациента | Patient.address | - | 8-mavze, 22-uy |

---

### History of Infectious Diseases

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Kechirgan yuqumli kasalliklar | Перенесённые инфекционные заболевания | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | B05 (Measles), A38 (Scarlet fever), A37 (Whooping cough) |

---

### Travel Authorization

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Tashxis va chet elga borish uchun qarshiliklar yoʻqligi borasida tibbiy yakun | Медицинское заключение об отсутствии противопоказаний к выезду | Observation.code / Observation.valueCodeableConcept | [Form Sections](CodeSystem-form-sections-cs.html) `travel-clearance` → `allowed` \| `denied` | Allowed |
| Mamlakat nomi | Наименование страны назначения | Observation.code / Observation.valueCodeableConcept | [Form Sections](CodeSystem-form-sections-cs.html) `destination-country`; value: ISO-3166-1 | Germany |
| Xizmat safarining muddati | На срок (период) | Observation.code / Observation.effectivePeriod | [Form Sections](CodeSystem-form-sections-cs.html) `trip-period` | 2026-02-20 – 2026-03-05 |

---

### Responsible Persons

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Komissiya raisi F.I.SH | Председатель комиссии (ФИО/подпись) | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html).practitioner / [Provenance](https://hl7.org/fhir/R5/provenance.html).signature | Occupation `1342.18` "Head of department (health institution)" | Nazarov T.T. |

---

### Bundle structure

The Form 044 document is structured as a FHIR Bundle containing a [Form044TravelClearanceCertificateComposition](StructureDefinition-form-044-travel-clearance-composition.html) Composition:

```
Bundle (document)
├── Composition (Form044TravelClearanceCertificateComposition)
├── Patient (patient demographics)
├── Organization (issuing institution)
├── Practitioner (commission chair)
├── PractitionerRole (commission chair role)
├── Condition[] (prior infectious diseases)
├── Observation[] (travel clearance, destination country, trip period)
└── Provenance (commission chair signature)
```


### Example

See [Form 044 travel clearance example](Bundle-example-form-044-travel-clearance.html) for a complete FHIR document example.