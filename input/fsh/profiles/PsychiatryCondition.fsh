Profile: PsychiatryCondition
Parent: UZCoreCondition
Id: psychiatry-condition
Title: "Psychiatry Condition Profile"
Description: "Condition profile for the Psychiatry system."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier MS

* onsetDateTime  MS

* participant MS
* participant.actor only Reference(UZCoreOrganization)

Instance: example-psychiatry-condition
InstanceOf: PsychiatryCondition
Title: "Psychiatry Condition example"
Description: "Example condition representing a diagnosis of harmful use of substance (F15.1) in the Psychiatry system."
Usage: #example

* identifier[0].system = "https://dhp.uz/fhir/core/sid/reg/uz/psychiatry"
* identifier[0].value = "53dcdd0a-5a68-4cc6-8503-5ab15a41c62d"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#F15.1 "Mental and behavioural disorders due to use of other stimulants, including caffeine : Harmful use"
* subject = Reference(Patient/example-patient-john)
* encounter = Reference(Encounter/example-psychiatry-encounter)
* onsetDateTime = "2026-08-15"
* recordedDate = "2026-08-15"
* participant[0].actor = Reference(Organization/example-psychiatry-center)