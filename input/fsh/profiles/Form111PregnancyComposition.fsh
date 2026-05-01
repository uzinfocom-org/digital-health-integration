Profile: Form111PregnancyComposition
Parent: Composition
Id: form-111-pregnancy-composition
Title: "Form 111 - Individual Pregnancy Card Composition"
Description: "Composition profile for Form 111 (Индивидуальная карта беременной и родильницы / Homilador va tug'ruqchi ayolning individual kartasi) documents."

* identifier 1..*
* status = #final
* type = $loinc#57055-6 "Antepartum summary note"
* category 1..1
* category = $document-category-cs#form-111 "Individual card of pregnant and parturient woman"
* subject 1..1
* subject only Reference(UZCorePatient)
* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* author only Reference(UZCorePractitioner)

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    labResults 1..1 and
    anamnesis 1..1 and
    obstetricsHistory 1..1 and
    menstrualHistory 1..1 and
    initialExamination 1..1 and
    visitRecord 0..* and
    diagnosis 1..1

// === Лабораторные исследования / Laboratory Results ===
* section[labResults].title 1..1
* section[labResults].code 1..1
* section[labResults].code = $loinc#26436-6 "Laboratory studies (set)"
* section[labResults].entry 1..*
* section[labResults].entry only Reference(UZCoreObservation)
* section[labResults].entry ^short = "Blood type (ABO), Rh factor (mother and husband via Observation.focus), RW I/II, HIV, HBsAg I/II, Gonorrhea, Toxoplasmosis, other lab tests"

// === Анамнез / General Anamnesis ===
* section[anamnesis].title 1..1
* section[anamnesis].code 1..1
* section[anamnesis].code = $loinc#11329-0 "History general Narrative - Reported"
* section[anamnesis].entry 0..*
* section[anamnesis].entry only Reference(UZCoreObservation or Condition or Procedure)
* section[anamnesis].entry ^short = "Past illnesses (Condition), gynecological diseases (Condition), surgeries (Procedure), sexual history, husband's health status (Observation)"

// === Акушерский анамнез / Obstetric History ===
* section[obstetricsHistory].title 1..1
* section[obstetricsHistory].code 1..1
* section[obstetricsHistory].code = $loinc#10162-6 "History of pregnancies Narrative"
* section[obstetricsHistory].entry 1..*
* section[obstetricsHistory].entry only Reference(UZCoreObservation or Condition)
* section[obstetricsHistory].entry ^short = "Total pregnancy count (LOINC#11996-6), parity (LOINC#11977-6), complications, extragenital diseases (Condition/ICD-10), previous pregnancy outcomes (LOINC#63893-2)"

// === Менструальный цикл / Menstrual and Reproductive History ===
// Uses LOINC 49033-4 "Menstrual History - Reported"
* section[menstrualHistory].title 1..1
* section[menstrualHistory].code 1..1
* section[menstrualHistory].code = $loinc#49033-4 "Menstrual History - Reported"
* section[menstrualHistory].entry 1..*
* section[menstrualHistory].entry only Reference(UZCoreObservation)
* section[menstrualHistory].entry ^short = "Menstrual cycle features (LOINC#42798-9 age at menarche), LMP (LOINC#8665-2), first fetal movement (LOINC#57088-7)"

// === Первичный осмотр беременной / Initial Obstetric Examination ===
* section[initialExamination].title 1..1
* section[initialExamination].code 1..1
* section[initialExamination].code = $loinc#57059-8 "Pregnancy visit summary note Narrative"
* section[initialExamination].entry 1..*
* section[initialExamination].entry only Reference(UZCoreObservation)
* section[initialExamination].entry ^short = "Height (SNOMED#50373000), weight (SNOMED#27113001), blood pressure (LOINC#85354-9), pelvic dimensions, uterine fundal height (LOINC#11881-0), waist circumference (LOINC#8280-0), fetal presentation (LOINC#11877-8), fetal heart rate (LOINC#55283-6), vaginal exam findings"

// === Повторные визиты / Prenatal Visit Records (repeating) ===
* section[visitRecord].title 1..1
* section[visitRecord].code 1..1
* section[visitRecord].code = $loinc#57073-9 "Prenatal records"
* section[visitRecord].entry 1..*
* section[visitRecord].entry only Reference(UZCoreObservation or Condition or Appointment or Immunization)
* section[visitRecord].entry ^short = "Per-visit: weight, blood pressure, pulse, waist circumference, fundal height, fetal position, FHR, fetal movement, urine protein, hemoglobin (LOINC#718-7), diagnosis, next appointment"

// === Диагноз / Diagnosis ===
* section[diagnosis].title 1..1
* section[diagnosis].code 1..1
* section[diagnosis].code = $loinc#29308-4 "Diagnosis"
* section[diagnosis].entry 1..*
* section[diagnosis].entry only Reference(Condition or UZCoreObservation)
* section[diagnosis].entry ^short = "Diagnosis (Condition/ICD-10), gestational age in weeks (LOINC#11884-4), estimated delivery date (LOINC#11778-8)"
