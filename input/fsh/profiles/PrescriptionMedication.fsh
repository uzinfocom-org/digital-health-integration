Profile: PrescriptionMedication
Parent: UZCoreMedication
Id: prescription-medication
Title: "Prescription Medication"
Description: "Medication prescribed, dispensed or administered in the Prescription integration, such as a Pharmaceutical Committee registry product or a dispensed batch."
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains dmedMedication 0..1 MS
* identifier[dmedMedication].use 1..1 MS
* identifier[dmedMedication].use = #official
* identifier[dmedMedication].system 1..1 MS
* identifier[dmedMedication].system = $dmed-medication-id
* identifier[dmedMedication].value 1..1 MS
* code 1..1 MS
* status 1..1 MS
* doseForm 1..1 MS
