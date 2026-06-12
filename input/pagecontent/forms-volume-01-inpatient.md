Volume 1 holds the core records of an inpatient (stationary) hospital stay, including the obstetric and neonatal records, because birth happens in hospital. It is the most document-heavy part of a patient's clinical history and the natural home of discharge summaries and birth and death registration.

This is a [core clinical](forms-overview.html#scope-for-integration) volume, home to the discharge statistical card (066) and the birth and death registers. The [hemodialysis record (011)](form-011-mapping.html) modelled in this IG sits in volume 3 but follows the same record-keeping pattern.

### How this volume maps to FHIR

An inpatient stay is one `Encounter` (often grouped under an `EpisodeOfCare`), with the discrete clinical facts hung off it and a finalised document assembled at discharge.

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Admission and bed movement | 001, 007 | `Encounter` (admission); the journals are a query/`List`, not documents |
| Inpatient record | 003, 003-1 | A longitudinal record: `Encounter` + `Condition` + `Observation`, summarised in a `Composition` |
| Anaesthesia and surgery | 004, 005, 008 | `Procedure` (+ anaesthesia `Procedure`/`Observation`) referencing the `Encounter` |
| Intensive care | 006 | Time-series `Observation` under the `Encounter` |
| Transfusion at the bedside | 009, 009-1..009-4 | `Procedure` (transfusion) + `Observation`; products come from [volume 8](forms-volume-08-blood-service.html) |
| Obstetrics and newborn | 010, 096, 097 | `Encounter` for the birth; newborn is its own `Patient`; Apgar and birth details as `Observation` |
| Discharge | 027, 066 | Discharge-summary `Composition`; 066 is the statistical card |
| Registration of vital events | 103, 106, 106-2 | Birth / death as signed `Composition`; the journals are registries |

The discrete-resources-versus-document rule applies throughout: keep ongoing facts (diagnoses, results, procedures) as discrete resources, and assemble a `Composition` only for the finalised, signable artifacts - the discharge summary and the birth and death certificates.

### Form relationships

The admission journal opens the inpatient card, which gathers the procedure, anaesthesia, transfusion and ICU sub-records and resolves into a discharge or death record. The obstetric forms form a parallel track. Colours show the FHIR shape each form takes.

<div>{% include forms-vol01-structure.svg %}</div><br clear="all"/>

The transfusion family (009 and its sub-forms 009-1 to 009-4) is the bedside, recipient end of the blood chain; the donor and production end is [volume 8](forms-volume-08-blood-service.html). The 009 sub-forms cover the transfusion commission conclusion, the transfusion protocol, and disposal of leftover and unsuitable components.

### Sample flow

A surgical episode that pulls in diagnostics and the blood bank:

<div>{% include forms-journey-inpatient.svg %}</div><br clear="all"/>

### Forms in this volume

| Form | Title | Archetype |
|------|-------|-----------|
| 001 | Registration of patients admitted or refused | Register |
| 002 | Newborn department (room) journal | Register |
| 003 | Inpatient medical card | Card |
| 003-1 | Medical card for early termination of pregnancy | Card |
| 004 | Anaesthesia registration | Register |
| 005 | Anaesthesia record sheet | Sheet |
| 006 | Dynamic observation in ICU | Sheet |
| 007 | Patient movement and bed-capacity ledger | Register |
| 008 | Hospital surgical procedures record | Report |
| 009 | Blood components and products transfusion registration | Report |
| 009-1 | Blood transfusion commission conclusion | Conclusion |
| 009-2 | Haemo (plasma) transfusion protocol | Report |
| 009-3 | Disposal of remaining blood and components | Register |
| 009-4 | Disposal of unsuitable blood components | Register |
| 010 | Birth registration in maternity departments | Register |
| 096 | Maternity (birth) medical card | Card |
| 097 | Newborn development medical card | Card |
| 103 | Birth-certificate registration | Certificate |
| 106 | Death-certificate registration | Certificate |
| 106-2 | Perinatal-death-certificate registration | Certificate |
