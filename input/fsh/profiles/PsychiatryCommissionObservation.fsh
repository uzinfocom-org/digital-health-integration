Profile: PsychiatryCommissionObservation
Parent: UZCoreObservation
Id: psychiatry-commission-observation
Title: "Psychiatry Commission Observation Profile"
Description: "Observation profile representing the medical-consultation commission's decision notes for the Psychiatry system."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* code MS
* code = type-resource-cs#type-res-0002-0001 "The commission's decision"

* subject MS
* subject only Reference(UZCorePatient)

* effective[x] MS
* effective[x] only dateTime

* value[x] MS
* value[x] only string

* performer MS
* performer only Reference(UZCorePractitionerRole)

* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains protocolNumber 0..1 MS
* component[protocolNumber].code 1..1 MS
* component[protocolNumber].code = type-resource-cs#type-res-0002-0002 "Protocol number/court name"
* component[protocolNumber].value[x] 0..1 MS
* component[protocolNumber].value[x] only string


Instance: example-psychiatry-commission-observation
InstanceOf: PsychiatryCommissionObservation
Title: "Psychiatry Commission Observation Profile Instance"
Description: "Example observation representing a medical-consultation commission's decision regarding compulsory inpatient treatment in the Psychiatry system."
Usage: #example

* status = #final
* identifier[0].system = "https://dhp.uz/fhir/core/sid/reg/uz/psychiatry"
* identifier[0].value = "a91c5d73-2b48-4e16-9f30-6d82c7a541be"
* code = type-resource-cs#type-res-0002-0001 "The commission's decision"
* subject = Reference(Patient/example-patient-john)
* encounter = Reference(Encounter/example-psychiatry-encounter)
* effectiveDateTime = "2026-08-15"
* valueString = "Commission concluded compulsory inpatient treatment is required"
* performer[0] = Reference(PractitionerRole/example-commission-psychiatrist-role)
* note[0].text = "Patient with F15.1 stimulant use disorder; compulsory inpatient treatment recommended by the commission"
* component[protocolNumber].code = type-resource-cs#type-res-0002-0002 "Protocol number/court name"
* component[protocolNumber].valueString = "Protocol No. 123, Tashkent City Civil Court"
