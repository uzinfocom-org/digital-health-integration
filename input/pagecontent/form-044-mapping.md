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

### Form 044 - Medical Certificate for Travelers Abroad

This page documents the mapping between [Form 044](forms-volume-02-ambulatory.html) (Xorijga ketayotganlar uchun tibbiy ma'lumotnoma) fields and FHIR resources.

---

### Overview

Form 044 is a standalone certificate issued by a polyclinic medical commission confirming that a person has no medical contraindications to travel abroad on a business trip. `Composition.encounter` is optional: send the commission examination visit when it is recorded. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 044 Travel Clearance Certificate Composition](StructureDefinition-form-044-travel-clearance-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

For a complete reference instance, see the [Form 044 travel clearance example](Bundle-example-form-044-travel-clearance.html).

---

### Field Mapping

### Form 044 Medical Certificate for Travelers Abroad - FHIR Mapping

---

### Document Information

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:044e8400-e29b-41d4-a716-446655440044 |
| Hujjat instansiyasi UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:944f9511-f30c-52e5-b827-557766550044 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 044 |
| Ma'lumotnoma raqami | Номер справки | Composition.identifier[certificateNumber] | `https://dhp.uz/fhir/core/sid/doc/uz/medical-certificate-number` | 044-2026-001 |
| Hujjat holati | Статус документа | Composition.status | [Document statuses](document-statuses.html): `final` once the commission issues the certificate, `amended` for subsequent corrections, `entered-in-error` if the certificate is withdrawn as erroneous | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0042` "Medical certificate for travelers abroad", plus LOINC `104988-1` "Medical Fitness Certificate" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record", and [Document Category](ValueSet-document-category-vs.html) `form-044` "Medical certificate for travelers abroad" | - |
| Chet elga ketayotgan shaxs | Лицо, выезжающее за границу | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Yusupova Nodira Sharifovna |
| Ma'lumotnoma berilgan sana | Дата выдачи справки | Composition.date | - | 2026-02-10T09:15:00+05:00 |
| Komissiya raisi | Председатель комиссии | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html), or [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) when the role is not known | Nazarov T.T. |
| Muassasa nomi | Наименование учреждения | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Toshkent shahar 5-son poliklinikasi |
| Muassasa kodi | Код учреждения | Organization.identifier[taxId] | `system` `https://dhp.uz/fhir/core/sid/org/uz/soliq`<br>`type` `TAX` | 200017044 |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 044 - Medical Certificate for Travelers Abroad |
| Komissiya raisi imzosi | Подпись председателя комиссии | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | `signature.type[nationalType]` [UZ Core Signature Type](https://dhp.uz/fhir/core/en/CodeSystem-signature-type-cs.html) `soliqAuth` | soliqAuth |
| Komissiya a'zolari imzolari | Подписи членов комиссии | Provenance.signature, one per member, with `Provenance.agent.type` `attester` | `soliqAuth`; optional | soliqAuth |

---

### 1. Personal information

Section code: LOINC `LP36348-8` "Patient information".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Med ID raqami | Номер Med ID | Patient.identifier[healthCardId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/hc`<br>`type` `HC` | HC-2026-00044 |
| JShShIR | ПИНФЛ | Patient.identifier[nationalId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 31234567890044 |
| Familiya, ismi, otasining ismi | ФИО | Patient.name (text/family/given) | - | Yusupova Nodira Sharifovna |
| Yoshi | Возраст | Patient.birthDate | - | 1988-07-22 |

---

### 2. History of infectious diseases

Section code: LOINC `11348-0` "History of Past illness note".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Kechirgan yuqumli kasalliklar | Перенесённые инфекционные заболевания | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | B05 "Measles", A38 "Scarlet fever", A37 "Whooping cough" |

---

### 3. Travel authorization

Section code: LOINC `104988-1` "Medical Fitness Certificate".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Tashxis va chet elga borish uchun qarshiliklar yo'qligi borasida tibbiy yakun | Медицинское заключение об отсутствии противопоказаний к выезду | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueBoolean | `code` [Form 044 Observation Codes](ValueSet-form-044-observation-code-vs.html) `travel-clearance` "Travel clearance" | true |
| Mamlakat nomi | Наименование страны | Observation.valueCodeableConcept | `code` LOINC `94651-7` "Country of travel [Location]"; value from [ISO 3166 part 1 2-letter codes, sans Uzbekistan](https://terminology.dhp.uz/fhir/core/ValueSet/iso-3166-2-vs-sans-uz) | DE "Germany" |
| Xizmat safarining muddati | Срок командировки | Observation.valuePeriod | `code` [Form 044 Observation Codes](ValueSet-form-044-observation-code-vs.html) `trip-period` "Business trip period" | 2026-02-20 - 2026-03-05 |

---

### 4. Residence information

Section code: LOINC `56799-0` "Address".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Yo'llanayotganning yashash joyi | Место жительства выезжающего | Patient.address | - | 8-mavze, 22-uy |

---

### 5. Responsible persons

Section code: LOINC `LP35157-4` "Responsible party".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Komissiya raisi F.I.Sh. | ФИО председателя комиссии | PractitionerRole.practitioner | `code` [Position and profession](https://terminology.dhp.uz/fhir/core/ValueSet/position-and-profession-vs) `1342.18` "Head of department (health institution)" | Nazarov T.T. |
| Komissiya a'zolari F.I.Sh. | ФИО членов комиссии | PractitionerRole.practitioner, one per member; optional | `code` Position and profession `2212.113` "Physician" | Karimova D.A. |

---

### Required fields

FHIR requires these elements, but the paper form has no field for them. Set them as follows:

| Resource | Element | Code | Value |
|---|---|---|---|
| Condition | clinicalStatus | [Clinical Status](https://dhp.uz/fhir/core/en/ValueSet-clinical-status-vs.html) | `resolved` for a past infectious disease |
| Observation | status | [Observation Status](https://dhp.uz/fhir/core/en/ValueSet-observation-status-vs.html) | `final` once the commission has issued its conclusion |

---

### Bundle structure

The Form 044 document is structured as a FHIR Bundle containing a [Form044TravelClearanceCertificateComposition](StructureDefinition-form-044-travel-clearance-composition.html) Composition:

```
Bundle (document)
├── Composition (Form044TravelClearanceCertificateComposition)
├── Patient (person travelling abroad)
├── Organization (issuing polyclinic)
├── Practitioner[] (commission chair and members)
├── PractitionerRole[] (commission chair and member roles)
├── Condition[] (prior infectious diseases)
├── Observation[] (travel clearance, destination country, trip period)
└── Provenance (commission signatures)
```

### Example

See [Form 044 travel clearance example](Bundle-example-form-044-travel-clearance.html) for a complete FHIR document example.
