Profile: ObservationCauseOfDeath
Parent: Observation
Id: observation-cause-of-death
Title: "Observation Cause Of Death"
Description: "Observation profile representing the cause of death information."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* code MS
* code = http://loinc.org#79378-6
* code ^short = "Type of observation (LOINC 79378-6 Cause of death)"

* status MS
* status from http://hl7.org/fhir/ValueSet/observation-status (required)

* subject MS
* subject only Reference(UZCorePatient)

* performer MS
* performer only Reference(UZCorePractitionerRole)

* effectiveDateTime MS

* value[x] only CodeableConcept
* valueCodeableConcept from DeathOccuredFromVS

* component 0..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    directCause 0..* and
    clinicalCause 0..* and
    accidentDate 0..1 and
    accidentType 0..1 and
    accidentPlace 0..1

* component[directCause].code 1..1 MS
* component[directCause].code = https://dhp.uz/fhir/integrations/CodeSystem/cause-of-death-cs#38605008
* component[directCause].value[x] 0..1

* component[clinicalCause].code 1..1 MS
* component[clinicalCause].code = https://terminology.dhp.uz/CodeSystem/cause-of-death-cs#death0003.00001
* component[clinicalCause].valueCodeableConcept from http://hl7.org/fhir/ValueSet/icd-10 (required)

* component[accidentDate].code 1..1 MS
* component[accidentDate].code = https://terminology.dhp.uz/CodeSystem/death-event-of-accident-cs#death0004.00001
* component[accidentDate].valueDateTime 1..1

* component[accidentType].code 1..1 MS
* component[accidentType].code = https://terminology.dhp.uz/CodeSystem/death-event-of-accident-cs#death0004.00002
* component[accidentType].valueCodeableConcept 1..1
* component[accidentType].valueCodeableConcept from DeathEvidenceTypeVS (required)

* component[accidentPlace].code 1..1 MS
* component[accidentPlace].code = https://terminology.dhp.uz/CodeSystem/death-event-of-accident-cs#death0004.00003
* component[accidentPlace].valueString 1..1

