Profile: PrescriptionMedicationDispense
Parent: UZCoreMedicationDispense
Id: prescription-medication-dispense
Title: "Prescription Medication Dispense"
Description: "Medication actually supplied by a pharmacy against a DMED electronic prescription."
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert PrescriptionMetaSource

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains dmedDispense 1..1 MS
* identifier[dmedDispense].use 1..1 MS
* identifier[dmedDispense].use = #official
* identifier[dmedDispense].system 1..1 MS
* identifier[dmedDispense].system = $dmed-dispense-id
* identifier[dmedDispense].value 1..1 MS
* status MS
* medication only CodeableReference(PrescriptionMedication)
* subject MS
* performer 1..* MS
* authorizingPrescription 1..1 MS
* authorizingPrescription only Reference(PrescriptionMedicationRequest)
* quantity 1..1 MS
* quantity.value 1..1 MS
* quantity.unit 1..1 MS
* quantity.system 1..1 MS
* quantity.code 1..1 MS
* recorded 1..1 MS
* whenHandedOver 1..1 MS
* receiver 1..1 MS
