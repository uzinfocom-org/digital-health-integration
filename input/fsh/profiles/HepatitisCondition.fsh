Profile: HepatitisCondition
Parent: UZCoreCondition
Id: hepatitis-condition
Title: "Hepatitis Condition"
Description: "Profile for representing hepatitis conditions in the context of a digital health integration project. This profile extends the base Condition resource to include specific elements and extensions relevant to hepatitis diagnosis, clinical status, and treatment outcomes."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* subject MS
* subject only Reference(HepatitisPatient)

* encounter MS
* encounter only Reference(HepatitisEncounter)

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains hepatitisRegistry 1..1 MS
* identifier[hepatitisRegistry].system = "https://dhp.uz/fhir/core/sid/org/uz/hepatitis"
* identifier[hepatitisRegistry].value 1..1

* extension contains HepatitisConditionOutcome named outcome 0..1 MS



// Instance Example
Instance: example-hepatitis-condition
InstanceOf: HepatitisCondition
Description: "Example of a hepatitis condition"
Usage: #example

* identifier[hepatitisRegistry].system = "https://dhp.uz/fhir/core/sid/org/uz/hepatitis"
* identifier[hepatitisRegistry].value = "69dcdd0a-5a68-4cc6-8503-5ab15a41c63b"

* clinicalStatus = $condition-clinical#active "Active"
* extension[diagnosisType].valueCodeableConcept = $diagnosis-type#gencl-0001-00003 "Main diagnosis"
* code = $icd-10#B17.1 "Acute hepatitis C"

* subject = Reference(hepatitis-patient-example)
* encounter = Reference(hepatitis-encounter-example)
* recordedDate = "2026-09-18T10:45:00+05:00"
* participant.actor = Reference(PractitionerRole/example-hepatologist-role)

* extension[outcome].valueCodeableConcept = $sct#1137679005 "Good response to medication"
* note.text = "test"
