<style>
/* Per-form mapping-table column widths (130: long UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 23%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 23%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 18%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 19%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 17%; }
</style>

### Form 130 - Laboratory Test Results

This page documents the mapping between **Form 130 (Laboratory Test Results)** fields and FHIR resources.

---

### Overview

Form 130 captures laboratory test results and related administrative information. The form data maps to multiple FHIR resources bundled together as a **FHIR Document**, conforming to the **Form130LaboratoryTestResultsComposition** profile. Where available, resources conform to **UZ Core** profiles.

For a complete reference instance, see the **Form 130 laboratory test results example**.

---

### Field Mapping

# UZ-130 Laboratory Test Results - FHIR Mapping

---

### Patient Information

| UZ-130 | RU-130 | FHIR Path | Code | Example Value |
|--------|---------|-----------|------|---------------|
| JShShIR | ПИНФЛ | Patient.identifier[nationalId].value | NI | 31234567890123 |
| Familiyasi | Фамилия | Patient.name.family | - | Tursunov |
| Ismi | Имя | Patient.name.given | - | Alisher |
| Tug'ilgan sana | Дата рождения | Patient.birthDate | - | 1990-04-12 |
| Jinsi | Пол | Patient.gender | AdministrativeGender | male |

---

### Laboratory Order Information

| UZ-130 | RU-130 | FHIR Path | Code | Example |
|--------|---------|-----------|------|---------|
| Laboratoriya tekshiruvi | Лабораторное исследование | ServiceRequest.code | Local laboratory panel | CBC panel |
| Buyurtma beruvchi shifokor | Направивший врач | ServiceRequest.requester | PractitionerRole | Karimov J. |
| Buyurtma bergan muassasa | Направившее учреждение | Organization.name | Organization | Yunusobod Family Polyclinic |

---

### Specimen Information

| UZ-130 | RU-130 | FHIR Path | Code | Example |
|--------|---------|-----------|------|---------|
| Namuna turi | Тип образца | Specimen.type | HL7 v2-0487 | Whole blood |
| Namuna olingan sana | Дата забора образца | Specimen.collection.collectedDateTime | - | 2026-01-20T09:00:00+05:00 |
| Namuna qabul qilingan sana | Дата получения образца | Specimen.receivedTime | - | 2026-01-20T09:05:00+05:00 |

---

### Complete Blood Count (CBC) Results

| UZ-130 | RU-130 | FHIR Path | Code | Example |
|--------|---------|-----------|------|---------|
| Oq qon hujayralari (WBC) | Лейкоциты | Observation.valueQuantity | Local laboratory code | 7.2 ×10⁹/L |
| Neytrofillar (abs.) | Нейтрофилы (абс.) | Observation.valueQuantity | Local laboratory code | 4.2 ×10⁹/L |
| Eozinofillar (abs.) | Эозинофилы (абс.) | Observation.valueQuantity | Local laboratory code | 0.2 ×10⁹/L |
| Yetilmagan granulotsitlar (abs.) | Незрелые гранулоциты (абс.) | Observation.valueQuantity | Local laboratory code | 0.03 ×10⁹/L |
| Neytrofillar (%) | Нейтрофилы (%) | Observation.valueQuantity | Local laboratory code | 60 % |
| Limfotsitlar (%) | Лимфоциты (%) | Observation.valueQuantity | Local laboratory code | 30 % |
| Monotsitlar (%) | Моноциты (%) | Observation.valueQuantity | Local laboratory code | 7 % |
| Eozinofillar (%) | Эозинофилы (%) | Observation.valueQuantity | Local laboratory code | 2 % |
| Bazofillar (%) | Базофилы (%) | Observation.valueQuantity | Local laboratory code | 0.5 % |
| Yetilmagan granulotsitlar (%) | Незрелые гранулоциты (%) | Observation.valueQuantity | Local laboratory code | 0.5 % |
| Eritrotsitlar (RBC) | Эритроциты | Observation.valueQuantity | Local laboratory code | 4.5 ×10¹²/L |
| Gemoglobin | Гемоглобин | Observation.valueQuantity | Local laboratory code | 130 g/L |
| Rang ko'rsatkichi | Цветовой показатель | Observation.valueQuantity | Local laboratory code | 0.95 |
| Gematokrit | Гематокрит | Observation.valueQuantity | Local laboratory code | 40 % |
| MCV | MCV | Observation.valueQuantity | Local laboratory code | 90 fL |
| MCH | MCH | Observation.valueQuantity | Local laboratory code | 32 pg |
| MCHC | MCHC | Observation.valueQuantity | Local laboratory code | 340 g/L |
| RDW-CV | RDW-CV | Observation.valueQuantity | Local laboratory code | 13 % |
| RDW-SD | RDW-SD | Observation.valueQuantity | Local laboratory code | 42 fL |
| Trombotsitlar (PLT) | Тромбоциты | Observation.valueQuantity | Local laboratory code | 250 ×10⁹/L |
| MPV | MPV | Observation.valueQuantity | Local laboratory code | 7 fL |
| PDW | PDW | Observation.valueQuantity | Local laboratory code | 10 % |
| PCT | PCT | Observation.valueQuantity | Local laboratory code | 0.30 % |
| P-LCC | P-LCC | Observation.valueQuantity | Local laboratory code | 80 ×10⁹/L |
| P-LCR | P-LCR | Observation.valueQuantity | Local laboratory code | 25 % |
| NRBC (abs.) | NRBC (абс.) | Observation.valueQuantity | Local laboratory code | 0.01 ×10⁹/L |
| NRBC (%) | NRBC (%) | Observation.valueQuantity | Local laboratory code | 0.5 |
| Miyelotsitlar | Миелоциты | Observation.valueQuantity | Local laboratory code | 0 % |
| Metamiyelotsitlar | Метамиелоциты | Observation.valueQuantity | Local laboratory code | 0 % |
| Tayoqcha yadroli neytrofillar | Палочкоядерные нейтрофилы | Observation.valueQuantity | Local laboratory code | 0 % |
| Plazma hujayralari | Плазматические клетки | Observation.valueQuantity | Local laboratory code | 0 % |

---

### Responsible Persons

| UZ-130 | RU-130 | FHIR Path | Code | Example |
|--------|---------|-----------|------|---------|
| Yo'llagan shifokor | Направивший врач | PractitionerRole.practitioner | Practitioner | Karimov J. |
| Laboratoriya mutaxassisi | Лаборант | PractitionerRole.practitioner | Practitioner | Rasulova M. |

---

### Bundle Structure

The Form 130 document is structured as a FHIR Bundle containing a **Form130LaboratoryTestResultsComposition** Composition:

```text
Bundle (document)
├── Composition (Form130LaboratoryTestResultsComposition)
├── Patient
├── Encounter
├── Organization[] (requesting organization, laboratory)
├── Practitioner[]
├── PractitionerRole[] (referring physician, laboratory specialist)
├── ServiceRequest (laboratory order)
├── Specimen
├── DiagnosticReport
├── Observation[] (CBC laboratory results)
└── Provenance (record authorship and provenance)
```

### Example

See [Form 130 laboratory test results example](Bundle-example-form-130-laboratory-test-results.html) for a complete FHIR document example.