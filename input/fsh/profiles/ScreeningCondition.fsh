Profile: ScreeningCondition
Parent: UZCoreCondition
Id: screening-condition
Title: "Screening Condition"
Description: "Profile for documenting a confirmed diagnosis identified during cervical and breast cancer screening."
* ^experimental = true
* ^status = #active
* ^publisher = "DHP Integration"

* clinicalStatus MS
* category MS
* code MS
* subject MS
* encounter MS
* recordedDate MS
* participant MS
* note MS


Instance: final-diagnosis
InstanceOf: ScreeningCondition
Usage: #example
Description: "Final diagnosis of the patient."

* identifier[0].system = $screening-local-id
* identifier[0].value = "33"
* identifier[0].use = #usual
* clinicalStatus = $condition-clinical#active
* category[0].text = "Primary diagnosis"
* code.coding[0] = $icd-10#N87.1 "Moderate cervical dysplasia"
* subject = Reference(Patient/lola-oripova)
* encounter = Reference(Encounter/Encounter-general)
* recordedDate = "2025-12-17T11:50:00Z"
* participant[0].actor = Reference(PractitionerRole/practitioner-role-gynecologist)
* note.text = "Moderate cervical dysplasia (CIN II) confirmed on colposcopic biopsy; referred for treatment."