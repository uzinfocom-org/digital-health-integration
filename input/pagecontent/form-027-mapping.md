### Form 027 - Medical Record Extract

This page documents the mapping between Form 027 (Extract from Patient's Medical Record) fields and FHIR resources.

---

### Overview

Form 027 captures a summarized extract of a patient's medical record for referral or transfer purposes. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 027 Medical Record Extract Composition](StructureDefinition-form-027-medical-record-extract-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

For a complete reference instance, see the [Form 027 medical record extract example](Bundle-example-form-027-medical-record-extract.html).

---

### Field Mapping

# UZ-027 Medical Record Extract - FHIR Mapping

---

### Registration Information

| UZ-027 | RU-027 | FHIR Path | Code | Example Value |
|--------|--------|-----------|------|----------------|
| Muassasa kodi | Код учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).identifier | Local | 200015 |
| Muassasa nomi | Наименование учреждения | Organization.name | - | Chilonzor tuman poliklinikasi |
| Bemorning ro'yxatdan o'tish raqami | Регистрационный номер пациента | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).identifier.value | - | REG-027-2026-0124 |
| Bemor turi | Тип пациента | Encounter.class | v3-ActCode | Inpatient encounter |
| Murojaat sanasi | Дата подачи заявления | Encounter.actualPeriod.start | - | 2026-02-08T09:00:00+05:00 |
| Chiqarilgan sana | Дата выписки | Encounter.actualPeriod.end | - | 2026-02-10T09:00:00+05:00 |

---

### Personal Information

| UZ-027 | RU-027 | FHIR Path | Code | Example Value |
|--------|--------|-----------|------|----------------|
| Bemor JShShIR | ПИНФЛ | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[nationalId].value | NI | 31234567890124 |
| Med ID raqami | Медицинский идентификационный номер | Patient.identifier[healthCardId].value | HC | HC-2026-00027 |
| Bemor FISh | ФИО пациента | Patient.name.text | - | Yusupova Nilufar Rustamovna |
| Bemor tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1988-07-22 |
| Bemor jinsi | Пол пациента | Patient.gender | AdministrativeGender | female |
| Bemor fuqaroligi | Гражданство пациента | Patient.extension[citizenship] | ISO 3166-1 | Uzbekistan (UZ) |
| Bemor Pasport seriyasi va № | Серия и № паспорта | Patient.identifier[passportLocal or passportInternational or passportForeign] | PPN | AC7654321 |

---

### Residence Information

| UZ-027 | RU-027 | FHIR Path | Code | Example Value |
|--------|--------|-----------|------|----------------|
| Bemor yashab kelayotgan manzili | Адрес проживания (фактический) | Patient.address.text | - | Toshkent sh., Chilonzor tumani, 12-mavze, 5-uy, 10-xonadon |
| Bemor telefoni | Телефон | Patient.telecom[phone] | - | +998901112233 |
| Bemor emaili | Email | Patient.telecom[email] | - | nilufar.yusupova@mail.com |

---

### Referral and Diagnosis

Each diagnosis is tagged with `Condition.category` from the [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) code system and placed in a matching per-role sub-section of the Composition - Asosiy tashxis → `main`, Asorati → `complication`, Yo'ldosh kasallik → `concomitant`.

| UZ-027 | RU-027 | FHIR Path | Code | Example Value |
|--------|--------|-----------|------|----------------|
| Yo'llagan muassasa | Направившее учреждение | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).admission.origin | Organization | Yakkasaroy tuman oilaviy poliklinikasi |
| Asosiy tashxis kodi | Код основного диагноза | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code.coding.code | ICD-10 | J06.9 |
| Asosiy tashxis nomi | Наименование основного диагноза | Condition.code.coding.display | - | Acute upper respiratory infection, unspecified |
| Asorati | Код осложнения | [Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html).complication | ICD-10 | J96.0 |
| Yo'ldosh kasallik kodi | Код сопутствующего заболевания | Condition.code.coding.code | ICD-10 | E66.9 |

---

### Clinical Information

| UZ-027 | RU-027 | FHIR Path | Code | Example Value |
|--------|--------|-----------|------|----------------|
| Shikoyatlar | Жалобы | Encounter.reason.value.concept.text | - | Yuqori nafas yo'llari infeksiyasiga xos shikoyatlar |
| Anamnez | Анамнез | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString | LOINC `10164-2` "History of present illness Narrative" | 3 kundan beri tana harorati ko'tarilishi, quruq yo'tal, bosh og'rig'i |
| Klinik ko'rik | Клинический осмотр | Observation.valueString | LOINC `10210-3` "Physical findings of General status Narrative" | Umumiy holati qoniqarli, teri qoplamlari toza |
| Diagnostik tekshiruv | Диагностическое обследование | [DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html).code | LOINC | CBC panel - Blood by Automated count |

---

### Treatment and Recommendations

| UZ-027 | RU-027 | FHIR Path | Code | Example Value |
|--------|--------|-----------|------|----------------|
| Davolash | Лечение | CarePlan.activity.performedActivity.concept.text | Local | Ko'p suyuqlik ichish, dam olish |
| Tavsiyalar | Рекомендации | CarePlan.note.text | - | Ko'p suyuqlik ichish, dam olish tavsiya etiladi, 3 kundan keyin qayta ko'rikka kelish |
| Retsept | Рецепт | MedicationRequest.medication | Local | Paracetamol 500 mg tablet |

*Note: CarePlan and MedicationRequest do not yet have dedicated UZ Core profiles; base FHIR resources are used.*

---

### Next Steps

| UZ-027 | RU-027 | FHIR Path | Code | Example Value |
|--------|--------|-----------|------|----------------|
| Kuzatuv | Наблюдение | CarePlan.note.text | - | 1 hafta davomida kuzatuvda saqlash |
| Dispanserizatsiya | Диспансеризация | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episode-of-care.html).type.text | Local | Treatment services |
| Shifoxonaga yotqazish | Госпитализация | ServiceRequest.code | Local | CBC panel |

*Note: ServiceRequest currently uses the UZCoreServiceRequestLaboratory profile as a temporary reference until a general UZCoreServiceRequest profile is published.*

---

### Responsible Persons

| UZ-027 | RU-027 | FHIR Path | Code | Example Value |
|--------|--------|-----------|------|----------------|
| Davolovchi shifokor FIShi | Лечащий врач (Ф.И.О.) | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html).name.text | - | Ismoilova M.T. |
| Davolovchi shifokor imzosi | Лечащий врач (подпись) | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | - | Digital signature (PDF) |
| Mas'ul shaxs FIShi | Ответственное лицо (Ф.И.О.) | Practitioner.name.text | - | Nazarov S.K. |
| Mas'ul shaxs imzosi | Ответственное лицо (подпись) | Provenance.signature | - | Digital signature (PDF) |

---

### Bundle structure

The Form 027 document is structured as a FHIR Bundle containing a [Form027MedicalRecordExtractComposition](StructureDefinition-form-027-medical-record-extract-composition.html) Composition:

```
Bundle (document)
├── Composition (Form027MedicalRecordExtractComposition)
├── Patient (patient demographics)
├── Encounter (visit/admission)
├── Organization[] (registering and referring facility)
├── Practitioner[] (treating doctor, responsible person)
├── PractitionerRole[] (doctor and responsible person roles)
├── Condition[] (main and concomitant diagnoses)
├── Procedure (complication)
├── Observation[] (complaints, anamnesis, clinical examination)
├── DiagnosticReport (diagnostic test results)
├── CarePlan[] (treatment, recommendations, follow-up)
├── MedicationRequest / Medication (prescription)
├── EpisodeOfCare (dispensary observation)
├── ServiceRequest (hospitalization request)
└── Provenance[] (signatures of doctor and responsible person)
```

### Example

See [Form 027 medical record extract example](Bundle-example-form-027-medical-record-extract.html) for a complete FHIR document example.