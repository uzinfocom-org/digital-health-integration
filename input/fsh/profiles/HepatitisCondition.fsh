Profile: HepatitisCondition
Parent: UZCoreCondition
Id: hepatitis-condition
Title: "Hepatitis Condition"
Description: "Profile for representing hepatitis conditions in the context of a digital health integration project. This profile extends the base Condition resource to include specific elements and extensions relevant to hepatitis diagnosis, clinical status, and treatment outcomes."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier 0..* MS
  * system = $hep-id-sys
  * system ^short = "Hepatitis condition identifier system"

* extension contains HepatitisConditionOutcome named outcome 0..1 MS



// Instance Example
Instance: example-hepatitis-condition
InstanceOf: HepatitisCondition
Description: "Example of a hepatitis condition"
Usage: #example
* identifier 
  * system = $hep-id-sys
  * value = "COND-2026-5541"
  * type.coding
    * system = $v2-0203
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official

* clinicalStatus = $condition-clinical#active "Active"
* extension[diagnosisType].valueCodeableConcept = $diagnosis-type#gencl-0001-00003 "Main diagnosis"
* code = $icd-10#B17.1 "Acute hepatitis C"

* subject = Reference(hepatitis-patient-example)
* encounter = Reference(hepatitis-encounter-example)
* recordedDate = "2025-11-09T13:31:00Z"
* participant.actor = Reference(PractitionerRole/example-hepatologist-role)

* extension[outcome].valueCodeableConcept = $sct#1137679005 "Good response to medication"
* note.text = "test"
