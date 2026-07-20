Instance: final-diagnosis
InstanceOf: UZCoreCondition
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