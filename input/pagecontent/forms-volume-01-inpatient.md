Volume 1 is the paper trail of a stay in hospital - from the moment a patient is admitted to the moment they are discharged or die. Because childbirth also happens in hospital, the maternity and newborn records sit in this volume too. It is the most document-heavy part of a person's clinical history.

### What an inpatient stay involves

When someone is admitted to a hospital, the staff open a record that travels with them for the whole stay. Along the way, depending on what the patient needs, several specific things may happen, and each one has its own form:

- They are admitted (or turned away if there is no place or no need). A clerk logs this in a journal.
- A medical card is opened. This is the heart of the stay - diagnoses, treatment, daily notes - and everything else attaches to it.
- If they need an operation, they are put to sleep (anaesthesia) and operated on. The anaesthesia and the surgery are each recorded.
- If they are seriously ill, they are watched closely in intensive care, with vital signs noted around the clock.
- If they lose blood, they may be given a transfusion, which is recorded carefully because blood carries risk.
- The stay ends one of two ways: the patient is discharged (with a summary of what happened) or they die (and a death certificate is issued).

Running alongside all of this is the maternity track: a woman in labour is admitted, the birth is recorded, the newborn gets its own record and birth certificate, and if things go wrong there are forms for early termination or for a death around the time of birth.

So the volume is not a random pile of forms - it is the sequence of events of a hospital stay, each event captured as it happens.

### How the forms relate

The admission journal (001) is the front door: a simple running list of who came in. For anyone actually admitted, a medical card (003) is opened, and this card is the spine of the stay. The anaesthesia (004, 005), surgery (008), intensive-care (006) and transfusion (009) records are only created if those events occur, and each one refers back to the card. The bed-movement ledger (007) is a separate housekeeping list that tracks how many beds are occupied. The stay closes with either a discharge - written up on the extract and statistical card (027, 066), which Order 399 files under [volume 3](forms-volume-03-diagnostics-laboratory.html) - or a death certificate (106).

The obstetric forms are a parallel spine. The maternity card (096) plays the same role for a birth that the inpatient card plays for an ordinary stay: the birth register (010), the newborn's development card (097) and the birth certificate (103) all branch off it, with the early-termination card (003-1) and perinatal-death certificate (106-2) as the unhappy alternatives.

The diagram below shows these two spines. An arrow means "leads to" or "is opened from"; the colours are a hint about the FHIR shape each form takes (explained in the mapping section).

<div>{% include forms-vol01-structure.svg %}</div><br clear="all"/>

One relationship reaches outside the volume: the transfusion forms (009 and its sub-forms) are the bedside, receiving end of blood that is produced and supplied by the blood service in [volume 8](forms-volume-08-blood-service.html).

### A sample stay

Imagine a patient who arrives at hospital with appendicitis. At the desk, the clerk records the admission (001) and opens the inpatient medical card (003). The surgical team orders blood tests and an ultrasound from [diagnostics](forms-volume-03-diagnostics-laboratory.html) to confirm the diagnosis. The patient is taken to theatre: the anaesthetist records putting them under (004, 005) and the surgeon records the operation (008). Recovery is uneventful, so after a few days the patient is discharged, written up on the medical-record extract and discharge statistical card (027, 066, both filed under [volume 3](forms-volume-03-diagnostics-laboratory.html)). Had they bled heavily, the ward would have requested blood from the bank and recorded the transfusion (009); had they deteriorated, they would have gone to intensive care (006); and in the worst case the stay would have ended with a death certificate (106) instead of a discharge.

The sequence below traces that same stay, including the branches:

<div>{% include forms-journey-inpatient.svg %}</div><br clear="all"/>

### How this volume maps to FHIR

For implementers: an inpatient stay is one `Encounter` (often grouped under an `EpisodeOfCare`), with the discrete clinical facts hung off it and a finalised document assembled at discharge.

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Admission and bed movement | 001, 007 | `Encounter` (admission); the journals are a query/`List`, not documents |
| Inpatient record | 003, 003-1 | A longitudinal record: `Encounter` + `Condition` + `Observation`, summarised in a `Composition` |
| Anaesthesia and surgery | 004, 005, 008 | `Procedure` (+ anaesthesia `Procedure`/`Observation`) referencing the `Encounter` |
| Intensive care | 006 | Time-series `Observation` under the `Encounter` |
| Transfusion at the bedside | 009, 009-1..009-4 | `Procedure` (transfusion) + `Observation`; products come from [volume 8](forms-volume-08-blood-service.html) |
| Obstetrics and newborn | 010, 096, 097 | `Encounter` for the birth; newborn is its own `Patient`; Apgar and birth details as `Observation` |
| Discharge (forms filed under volume 3) | 027, 066 | Discharge-summary `Composition`; 066 is the statistical card |
| Registration of vital events | 103, 106, 106-2 | Birth / death as signed `Composition`; the journals are registries |

The discrete-resources-versus-document rule applies throughout: keep ongoing facts (diagnoses, results, procedures) as discrete resources, and assemble a `Composition` only for the finalised, signable artifacts - the discharge summary and the birth and death certificates.

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
