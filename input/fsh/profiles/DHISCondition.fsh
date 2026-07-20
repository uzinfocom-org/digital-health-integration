Profile: DHISCondition
Parent: UZCoreCondition
Id: dhis-condition  
Title: "DHIS Condition Profile"
Description: "Profile for recording a tuberculosis diagnosis or related condition in the DHIS information system."
* ^experimental = true
* ^status = #active

* identifier 0..* MS
* identifier ^short = "External identifiers for this condition."
* clinicalStatus 1..1 MS
* verificationStatus 0..1 MS
* category 0..* MS
* code 0..1 MS 
* code from DHISConditionCodeVS
* code ^short = "Identification of a condition, problem, or diagnosis."
* subject 1..1 MS
* subject only Reference(UZCorePatient)
* bodySite 0..1 MS
* bodySite from DHISBodySiteVS (example)
* onset[x] MS
* onset[x] ^short = "Estimated or actual date, date-time, or age."
* onsetDateTime 0..1 MS
* recordedDate 0..1 MS

// Instance Example
Instance: example-tbc-diagnosis
InstanceOf: DHISCondition
Description: "Example condition representing a bacteriologically confirmed case of pulmonary tuberculosis."
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = $sct#88356006 "Primary tuberculous complex"
* subject = Reference(example-patient-john)
* onsetDateTime = "2025-06-03"
* recordedDate = "2025-08-22"

* participant[0]
  * function = http://terminology.hl7.org/CodeSystem/provenance-participant-type#performer "Performer"
  * actor.reference = "Practitioner/example-practitioner"
