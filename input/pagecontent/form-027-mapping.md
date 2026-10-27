<style>
/* Per-form mapping-table column widths (027: long UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 20%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 20%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 24%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 14%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 22%; }
</style>

### Form 027 - Patient Medical Record Extract

This page documents the mapping between Form 027 (Extract from the patient's medical card, outpatient or inpatient / Tibbiy muassasadagi bemorning tibbiy kartasidan ko'chirma (ambulator/statsionar)) fields and FHIR resources. The form is defined by Ministry of Health Order No. 399 dated 2025-12-26; the item numbers below (1-26b) are those of the official blank.

---

### Overview

Form 027 is the extract a treating physician issues at the end of an outpatient visit or an inpatient stay: patient identification, the referring institution, diagnoses, complaints and anamnesis, examination findings, diagnostics, treatment, prescriptions, recommendations, follow-up actions (observation, dispensary registration, hospitalization) and the responsible persons. Outpatient (`ambulator`) and inpatient (`statsionar`) extracts share one profile and are distinguished by `Encounter.class`. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 027 Composition](StructureDefinition-form-027-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

For a complete reference instance, see the [Form 027 example](Bundle-example-form-027.html).

Form 027-1 (extract from the medical card of a patient with a malignant neoplasm) is a separate form and is not covered by this profile.

---

### Field Mapping

### Registration Information

| UZ-027 (item) | RU-027 | FHIR Path | Code / Values | Example / Notes |
|--------|--------|-----------|---------------|-----------------|
| Muassasa nomi (header) | Наименование учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).name, referenced from Composition.custodian | - | 7-semeynaya poliklinika; Organization.identifier carries the institution code (`.../sid/uz/organization-code`) |
| Bemorning ro'yxatdan o'tish raqami (1) | Регистрационный номер пациента | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[healthCardId].value | HC | MED-000123. The DMED-generated form prints the same value for items 1 and 6 (`patient.number_med_card`); the mapping spreadsheet's `Encounter.identifier.value` is therefore not used - see Design decisions |
| Bemor turi (2) | Тип пациента | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).class | `AMB` ambulator / `IMP` statsionar | v3-ActCode, required binding of UZCoreEncounter |
| Chiqarilgan sana (3) | Дата выписки | Encounter.actualPeriod.end | - | 2026-07-14 |
| Murojaat sanasi (4) | Дата обращения | Encounter.actualPeriod.start | - | 2026-07-01 |

### Personal Information

| UZ-027 (item) | RU-027 | FHIR Path | Code / Values | Example / Notes |
|--------|--------|-----------|---------------|-----------------|
| Bemor JSHSHIR (5) | ПИНФЛ | Patient.identifier[nationalId].value | NI | 41234567890127 |
| Med ID raqami (6) | Медицинский идентификационный номер | Patient.identifier[healthCardId].value | HC | MED-000123 |
| Familiyasi (7) | Фамилия | Patient.name.family | - | Fozilova |
| Ismi (8) | Имя | Patient.name.given[0] | - | Xadicha |
| Otasining ismi (9) | Отчество | Patient.name.given[1] | - | Alisherovna; Patient.name.text holds the full name |
| Tug'ilgan sanasi (10) | Дата рождения | Patient.birthDate | - | 1999-04-20 |
| Jinsi (11) | Пол | Patient.gender | `male` Erkak / `female` Ayol | The gender-other extension is only used when the value is not male/female |
| Fuqaroligi (12, 11a) | Гражданство (код / наименование) | Patient.extension[citizenship] | ISO 3166-1 alpha-2 | `UZ`; the coding display carries the country name (11a). Omitted from the example only because ISO 3166 codes cannot be validated locally by the publisher |
| Pasport seriyasi va № (13) | Серия и № паспорта (если нет ПИНФЛ) | Patient.identifier[passportLocal] / [passportInternational] / [passportForeign] | PPN | Depends on the document type; only when there is no PINFL |

### Address and Contacts

| UZ-027 (item) | RU-027 | FHIR Path | Code / Values | Example / Notes |
|--------|--------|-----------|---------------|-----------------|
| Yashab kelayotgan manzili (14) | Адрес проживания (фактический) | Patient.address[uzAddress].text / .line | - | Kutakaul 228, Ulugnor tumani, Andijon viloyati; structured parts (state/district/city) when DMED provides them |
| Telefon (15) | Телефон | Patient.telecom (system `phone`).value | - | +998909875679 |
| Email (16) | Email | Patient.telecom (system `email`).value | - | khadicha.fozilova@example.uz |

### Referral and Diagnosis

| UZ-027 (item) | RU-027 | FHIR Path | Code / Values | Example / Notes |
|--------|--------|-----------|---------------|-----------------|
| Yo'llagan muassasa kodi (16) | Код направившего учреждения | Encounter.admission.origin -> Organization.identifier | `.../sid/uz/organization-code` | 70 |
| Yo'llagan muassasa nomi (17) | Наименование направившего учреждения | Encounter.admission.origin -> Organization.name | - | Semeynaya poliklinika No. 70 |
| Asosiy tashxis kodi (17) | Код основного диагноза | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code.coding.code, section[diagnosis].section[main] | ICD-10 | Z99.8; Condition.category = `diagnosis-role#main` |
| Asosiy tashxis nomi (17a) | Наименование основного диагноза | Condition.code.coding.display | ICD-10 display | Dependence on other enabling machines and devices |
| Asorati (18/18a, 19/19a) | Осложнение | Condition.code.coding.code / .display, section[diagnosis].section[complication] | ICD-10 | Condition.category = `diagnosis-role#complication`; modelled as a Condition, not `Procedure.complication` - see Design decisions |
| Yo'ldosh kasallik (18/18a, 19/19a) | Сопутствующее заболевание | Condition.code.coding.code / .display, section[diagnosis].section[concomitant] | ICD-10 | Z99.9; Condition.category = `diagnosis-role#concomitant` |
| (not on the blank) Fon kasallik, Raqobat tashxis | Фоновый, конкурирующий диагноз | section[diagnosis].section[background] / [competing] | ICD-10 | Captured by DMED's diagnosis widget; allowed for data fidelity, never printed |

### Clinical Information

| UZ-027 (item) | RU-027 | FHIR Path | Code / Values | Example / Notes |
|--------|--------|-----------|---------------|-----------------|
| Shikoyatlar (20) | Жалобы | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString, section[chiefComplaint] | LOINC `10154-3` | Bosh og'rig'i va umumiy holsizlik; the same Observation is referenced from Encounter.reason.value |
| Anamnez (20) | Анамнез | Observation.valueString, section[anamnesis] | LOINC `11329-0` | Kasallik 3 kun oldin boshlangan. DMED captures items "Shikoyatlar va anamnez" as one text field (`complaints_anamnesis`); when it is not split, the whole text goes to section[chiefComplaint] and section[anamnesis] is omitted |
| Ko'rik (21) | Осмотр | Observation.valueString, section[clinicalExamination] | LOINC `29545-1` | Umumiy holati qoniqarli, tana harorati 36.6 |
| Diagnostik tekshiruv (22) | Диагностическое обследование | DiagnosticReport.conclusion (or Observation.valueString), section[diagnostics] | LOINC code of the report/test | Umumiy qon tahlili me'yorda; optional section |

### Treatment and Recommendations

| UZ-027 (item) | RU-027 | FHIR Path | Code / Values | Example / Notes |
|--------|--------|-----------|---------------|-----------------|
| Davolash (23) | Лечение | CarePlan.activity.performedActivity.concept.text, section[treatmentPlan] | - | Dorivor davo. The spreadsheet path `activity.detail.code` is R4 and does not exist in R5 |
| Tavsiyalar (24) | Рекомендации | CarePlan.note.text | - | Kuzatuvda bo'lish, 1 hafta ichida qayta ko'rikka kelish tavsiya etiladi |
| Retsept (24) | Рецепт | MedicationRequest.medication.concept, .dosageInstruction (route, timing, dose), .dispenseRequest (quantity, validityPeriod), .note | SNOMED CT / ATC | Paracetamol 500 mg, 3 times a day for 5 days. Sourced from the separate DMED "Retseptlar" module, not from the visit screen - see Design decisions |

### Follow-up Actions

| UZ-027 (item) | RU-027 | FHIR Path | Code / Values | Example / Notes |
|--------|--------|-----------|---------------|-----------------|
| Kuzatuv (25) | Наблюдение | CarePlan.note.text | - | DMED's `follow_up_activities` is a single free-text field; its content is the observation plan |
| Dispanserizatsiya (25) | Диспансеризация | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episodeofcare.html).type[serviceType] | `episode-of-care-type-cs` | Dispensary registration is a separate DMED record ("D-uchet"), not parsed from text |
| Shifoxonaga yotqazish (25) | Госпитализация | ServiceRequest (code SNOMED CT `306206005` Referral to service), .reason.concept | [HospitalizationPurposeVS](ValueSet-hospitalization-purpose-vs.html) | Hospitalization is the referral itself; its purpose (Diagnostika / Konsultativ / Davolash / Ko'rik / D-nazorat / Tug'ruq / Boshqa) is a DMED referral field that is not printed on the blank |

### Responsible Persons

| UZ-027 (item) | RU-027 | FHIR Path | Code / Values | Example / Notes |
|--------|--------|-----------|---------------|-----------------|
| Davolovchi shifokor F.I.O. (26a) | Лечащий врач (Ф.И.О.) | Composition.author -> [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) -> [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html).name.text | `position-and-profession-cs` | Talipova Muhlisa, `2211.6` Medical specialist |
| Davolovchi shifokor imzosi (26a) | Лечащий врач (подпись) | Provenance.signature, agent.type `author` | ISO-ASTM `1.2.840.10065.1.12.1.1` | Provenance targets the document Bundle; agent.who / signature.who -> PractitionerRole |
| Mas'ul shaxs F.I.O. (26b) | Ответственное лицо (Ф.И.О.) | section[responsiblePersons].entry -> PractitionerRole -> Practitioner.name.text | `position-and-profession-cs` | Karimov Alisher, `1342.18` Head of department; printed as "Bo'lim mudiri" by DMED |
| Mas'ul shaxs imzosi (26b) | Ответственное лицо (подпись) | Provenance.signature, agent.type `attester` | ISO-ASTM `1.2.840.10065.1.12.1.5` | Second Provenance instance |

### Design decisions

- **Item 1 is a patient identifier, not an encounter identifier.** The mapping spreadsheet (versions 2026-08-17 and 2026-09-17) maps "Bemorning ro'yxatdan o'tish raqami" to `UZCoreEncounter.identifier.value`; the form content generated by DMED for a real referral prints the same value for item 1 and item 6 (`patient.number_med_card`), so both map to `Patient.identifier[healthCardId]`. `Encounter.identifier` still carries DMED's medical-record number of the visit (`.../sid/doc/uz/medical-record-number`).
- **Main diagnosis code/display.** The spreadsheet versions 2026-08-17 and 2026-09-17 map "Asosiy tashxis kodi" (code) to `Condition.code.coding.display` and "Asosiy tashxis nomi" (name) to `.code.coding.code` - reversed. The 2026-07-14 version and this profile map code to `.code` and name to `.display`, matching FHIR semantics.
- **Complication modelled as a Condition, not `Procedure.complication`.** The spreadsheet maps "Asorati" to `Procedure.complication`; the official blank presents items 18 and 19 as diagnosis-shaped fields (ICD-10 code + name, "complication or concomitant disease, underline which"), identical in shape to the main diagnosis. Form 066 already models complications as `UZCoreCondition` tagged with `diagnosis-role#complication`, and this profile reuses that pattern.
- **Diagnosis sub-sections cover all 5 DMED roles, not just the 3 printed slots.** The DMED hospitalization-referral diagnosis widget offers main / concomitant / background / complication / competing (verified live 2026-09-18). `section[diagnosis].section` allows all five, mirroring Form 066, with only `main` required.
- **Referring institution via `Encounter.admission.origin`.** `Encounter.serviceProvider` (the 2026-07-14 spreadsheet's path) is the organization of the current encounter; the institution that referred the patient (items 16-17) is `admission.origin`, which UZCoreEncounter restricts to UZCoreLocation or UZCoreOrganization.
- **One profile for outpatient and inpatient extracts.** The blank covers both (item 2), so the profile and its canonical URL are not scoped to outpatient visits, unlike the earlier `Form027OutpatientComposition` draft.
- **Document type LOINC `34133-9` "Summary of episode note".** An extract from the medical card summarises an episode of care; `34764-1` "General medicine Consult note" (an earlier draft) describes a consultant's reply to a referral.
- **Author and responsible person are `UZCorePractitionerRole`**, as in Form 066: the role carries the position (`position-and-profession-cs`) and the organization, and it is also what `Provenance.agent.who` must reference.
- **Prescription details come from the DMED "Retseptlar" module** (own API, own sign/cancel workflow), not from the visit screen. Its record carries the INN, dosage form, dose, frequency, route, duration, dispensing period and quantity, and notes, which populate `dosageInstruction` and `dispenseRequest`. The prescription business identifier is deliberately not modelled here: it belongs to the prescription integration and must not get a second identifier namespace from this form.
- **`CarePlan.activity.performedActivity.concept`** replaces the spreadsheet's `CarePlan.activity.detail.code`, which was removed in FHIR R5.

- **UZ Core 0.11.1.** Diagnostic reports and hospitalization referrals use `UZCoreDiagnosticReport` and `UZCoreServiceRequest`. The example report uses LOINC `58410-2` for its blood count; LOINC `30954-2` remains the Composition diagnostics section code.

### Open questions

- **Hospitalization purpose terminology.** [HospitalizationPurposeCS](CodeSystem-hospitalization-purpose-cs.html) reproduces the seven DMED checkbox values; no UZ Core code system covers the list (`encounter-type-cs` shares three concepts, `encounter-purpose-cs` one). The Uzbek displays follow existing repository terminology but have not been confirmed by DHP, so the code system is draft.
- **Signature capture.** The FHIR path exists (`Provenance.signature`), but the DMED print form shows empty signature placeholders; the actual mechanism (digital signature, biometric, scan) is not known, so the example uses the generic ISO-ASTM author/verification signature types.
- **Attached files.** The DMED referral card has a "Files" section; a `DocumentReference` linked to the ServiceRequest is the candidate representation, not implemented until agreed.
- **Physician contact phone.** The mandatory DMED referral field (`phone`) is not printed on the official Form 027 blank and is therefore outside this profile's scope.
- **Fields present in DMED but not on the blank** (`main_contingent`, workplace, vital signs, `medical_care_form`, `onset_disease_date`, `note`) are out of scope of this form by the agreed principle "only what the official blank prints"; `note` may be carried as `ServiceRequest.note`.

### Bundle structure

The Form 027 document is structured as a FHIR Bundle containing a [Form027Composition](StructureDefinition-form-027-composition.html) Composition:

```
Bundle (document)
├── Composition (Form027Composition)
│   ├── subject         → Patient
│   ├── encounter       → Encounter
│   ├── author          → PractitionerRole (davolovchi shifokor, 26a)
│   ├── custodian       → Organization (muassasa)
│   ├── section[chiefComplaint]        → Observation (shikoyatlar, 20)
│   ├── section[anamnesis]             → Observation (anamnez, 20)
│   ├── section[clinicalExamination]   → Observation (ko'rik, 21)
│   ├── section[diagnosis]             (17-19)
│   │   ├── section[main]              → Condition (asosiy tashxis)
│   │   ├── section[complication]      → Condition (asorati)
│   │   ├── section[concomitant]       → Condition (yo'ldosh kasallik)
│   │   ├── section[background]        → Condition (not printed)
│   │   └── section[competing]         → Condition (not printed)
│   ├── section[diagnostics]           → DiagnosticReport / Observation (22)
│   ├── section[treatmentPlan]         → CarePlan, MedicationRequest,
│   │                                     EpisodeOfCare, ServiceRequest (23-25)
│   └── section[responsiblePersons]    → PractitionerRole (mas'ul shaxs, 26b)
├── Patient            (UZCorePatient)
├── Encounter          (UZCoreEncounter, admission.origin → referring Organization)
├── Organization       (UZCoreOrganization - muassasa)
├── Organization       (UZCoreOrganization - yo'llagan muassasa)
├── Practitioner       (UZCorePractitioner - davolovchi shifokor)
├── Practitioner       (UZCorePractitioner - mas'ul shaxs)
├── PractitionerRole   (UZCorePractitionerRole x2)
├── Observation        (UZCoreObservation x3: shikoyatlar, anamnez, ko'rik)
├── Condition          (UZCoreCondition x2: asosiy tashxis, yo'ldosh kasallik)
├── DiagnosticReport   (diagnostik tekshiruv)
├── CarePlan           (davolash, tavsiyalar, kuzatuv)
├── MedicationRequest  (retsept)
├── EpisodeOfCare      (UZCoreEpisodeOfCare - dispanserizatsiya)
├── ServiceRequest     (shifoxonaga yotqazish)
└── Provenance         (x2: author and attester signatures)
```

### Example

See [Form 027 example](Bundle-example-form-027.html) for a complete FHIR document example.
