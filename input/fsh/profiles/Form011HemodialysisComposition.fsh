Profile: Form011HemodialysisComposition
Parent: Composition
Id: form-011-hemodialysis-composition
Title: "Form 011 - Hemodialysis Session Composition"
Description: "Composition profile for Form 011 (Hemodialysis Session Record) documents."

* identifier 1..*
* status = #final
* type = $loinc#29749-9 "Dialysis records"
* category 1..1
* category = $document-category-cs#form-011 "Hemodialysis session record"
* subject 1..1
* subject only Reference(UZCorePatient)
* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* author only Reference(UZCorePractitioner)

// Section slicing by code pattern
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    vitalSigns 1..1 and
    dialysisParameters 1..1 and
    medications 1..1

* section[vitalSigns].title 1..1
* section[vitalSigns].code 1..1
* section[vitalSigns].code = $loinc#8716-3 "Vital signs note"
* section[vitalSigns].entry 1..*
* section[vitalSigns].entry only Reference(UZCoreObservation)
* section[vitalSigns].entry ^short = "Vital signs panel (BP, heart rate, temperature, SpO2)"

* section[dialysisParameters].title 1..1
* section[dialysisParameters].code 1..1
* section[dialysisParameters].code = $loinc#29554-3 "Procedure Narrative"
* section[dialysisParameters].entry 1..*
* section[dialysisParameters].entry only Reference(Procedure or UZCoreObservation)

* section[medications].title 1..1
* section[medications].code 1..1
* section[medications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[medications].entry 1..*
* section[medications].entry only Reference(MedicationAdministration)
