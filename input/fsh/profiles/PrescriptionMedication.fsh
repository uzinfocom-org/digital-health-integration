Profile: PrescriptionMedication
Parent: UZCoreMedication
Id: prescription-medication
Title: "Prescription Medication"
Description: "Medication selected from the DMED medication dictionary for use in the Prescription integration."
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert PrescriptionMetaSource

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains dmedMedication 1..1 MS
* identifier[dmedMedication].use 1..1 MS
* identifier[dmedMedication].use = #official
* identifier[dmedMedication].system 1..1 MS
* identifier[dmedMedication].system = $dmed-medication-id
* identifier[dmedMedication].value 1..1 MS
* code 1..1 MS
* status 1..1 MS
* doseForm 1..1 MS
