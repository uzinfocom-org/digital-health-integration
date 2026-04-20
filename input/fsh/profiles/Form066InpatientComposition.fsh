Profile: Form066InpatientComposition
Parent: Composition
Id: form-066-inpatient-composition
Title: "Form 066/066-1 - Inpatient Medical Record Composition"
Description: "Composition profile for Form 066 (Statsionar tibbiy kartasi) and Form 066-1 (Psychoneurological/narcological inpatient medical record). Set category to $document-category-cs#form-066 for general inpatient records or $document-category-cs#form-066-1 for psychiatric/narcological facility records."

* identifier 1..*
* status = #final
* type = $loinc#11490-0 "Physician Discharge summary"
* category 1..1
* subject 1..1
* subject only Reference(UZCorePatient)
* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* author 1..*
* author only Reference(UZCorePractitioner)
* custodian 1..1
* custodian only Reference(UZCoreOrganization)

// Sick leave certificate open/close dates (Composition.event.period)
* event 0..1
* event.period 0..1
* event.period ^short = "Vaqtincha mehnatga layoqatsizlik varaqasi: ochilgan / berkitilgan sana"

// Section slicing by code
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    personalData 1..1 and
    socialHistory 0..1 and
    hospitalization 1..1 and
    diagnoses 1..1 and
    procedures 0..1 and
    labResults 0..1 and
    medications 0..1 and
    devices 0..1 and
    coverage 0..1 and
    responsiblePersons 0..1

// Personal data: patient demographics, organization, encounter identifiers
* section[personalData].title 1..1
* section[personalData].code = $loinc#34133-9 "Summary of episode note"
* section[personalData].entry 1..*
* section[personalData].entry only Reference(UZCorePatient or UZCoreOrganization or UZCoreEncounter)
* section[personalData].entry ^short = "Patient demographics, admitting organization, encounter"

// Social history: social status, benefits category, education level, employment
* section[socialHistory].title 1..1
* section[socialHistory].code = $loinc#29762-2 "Social history note"
* section[socialHistory].entry 1..*
* section[socialHistory].entry only Reference(UZCoreSocioeconomicObservation)
* section[socialHistory].entry ^short = "Social status, benefits category, education, employment"

// Hospitalization: admission/discharge details, referral source, bed type
* section[hospitalization].title 1..1
* section[hospitalization].code = $loinc#8648-8 "Hospital course note"
* section[hospitalization].entry 1..*
* section[hospitalization].entry only Reference(UZCoreEncounter or UZCoreClinicalCondition)
* section[hospitalization].entry ^short = "Admission encounter and admission diagnosis"

// Diagnoses: main, competing, additional, background, complications; pathological diagnosis for deceased
* section[diagnoses].title 1..1
* section[diagnoses].code = $loinc#29548-5 "Diagnosis Narrative"
* section[diagnoses].entry 1..*
* section[diagnoses].entry only Reference(UZCoreClinicalCondition)
* section[diagnoses].entry ^short = "ICD-10 coded diagnoses: main (Asosiy), competing (Raqobat), additional (Yondosh), background (Fon), complication (Asorat)"

// Surgical interventions
* section[procedures].title 1..1
* section[procedures].code = $loinc#47519-4 "History of Procedures Document"
* section[procedures].entry 1..*
* section[procedures].entry only Reference(Procedure)
* section[procedures].entry ^short = "Surgical procedures with ICHI code, date/time, and primary/secondary flag"

// Laboratory results: HIV, RW (Wassermann), Hepatitis B, Hepatitis C, TB drug sensitivity
* section[labResults].title 1..1
* section[labResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[labResults].entry 1..*
* section[labResults].entry only Reference(UZCoreObservation)
* section[labResults].entry ^short = "HIV, RW, Hepatitis B, Hepatitis C, TB drug sensitivity results (positive/negative)"

// Medications administered during inpatient stay
* section[medications].title 1..1
* section[medications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[medications].entry 1..*
* section[medications].entry only Reference(MedicationAdministration)

// Medical devices used (prosthetics, implants, assistive devices)
* section[devices].title 1..1
* section[devices].code = $loinc#46264-8 "History of medical device use"
* section[devices].entry 1..*
* section[devices].entry only Reference(DeviceUsage)

// Coverage / payment type (DTSJ, insurance, etc.)
* section[coverage].title 1..1
* section[coverage].code = $loinc#48768-6 "Payment sources Document"
* section[coverage].entry 1..*
* section[coverage].entry only Reference(Coverage)

// Responsible persons: treating doctor, department head, nurse
* section[responsiblePersons].title 1..1
* section[responsiblePersons].code = $loinc#85847-2 "Patient care team information"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitioner or UZCorePractitionerRole)

