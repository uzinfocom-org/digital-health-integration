Profile: ObservationCauseOfDeath
Parent: UZCoreObservation
Id: observation-cause-of-death
Title: "Observation Cause of Death"
Description: "Observation capturing the cause and circumstances of death in accordance with national requirements of Uzbekistan."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* status 1..1 MS


* category 1..* MS
* category ^short = "Category of the observation (Cause of Death certification)"


* code 1..1 MS
* code = http://loinc.org#79378-6 "Cause of death"

* subject 1..1 MS
* subject ^short = "Deceased person"
* subject only Reference(DeceasedPatient)

* performer 0..1 MS
* performer only Reference(UZCorePractitioner)

* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* effectiveDateTime ^short = "Date and time of death"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CauseOfDeathVS (required)
* valueCodeableConcept ^short = "Underlying cause of death"

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    occurredFrom 0..* and
    immediateCause 0..* and
    accidentPlaceType 0..1 and
    accidentDate 0..1 and
    accidentPlaceCircumstances 0..1

* component[occurredFrom] ^short = "Circumstances of the death"
* component[occurredFrom].code 1..1 MS
* component[occurredFrom].code = http://snomed.info/sct#184305005 "Cause of death"
* component[occurredFrom].value[x] only CodeableConcept
* component[occurredFrom].valueCodeableConcept 1..1 MS
* component[occurredFrom].valueCodeableConcept from DeathOccuredFromVS (required)

* component[immediateCause].code 1..1 MS
* component[immediateCause].code = CauseOfDeathCS#death0003-00002 "Pathological conditions that led to the specified cause"
* component[immediateCause].value[x] only CodeableConcept
* component[immediateCause].valueCodeableConcept 1..1 MS
* component[immediateCause].valueCodeableConcept from http://hl7.org/fhir/ValueSet/icd-10 (extensible)
* component[immediateCause].valueCodeableConcept ^short = "ICD-10 coded disease"

* component[accidentPlaceType].code 1..1 MS
* component[accidentPlaceType].code = DeathEventOfAccidentCS#death0004-00002 "Injury type"
* component[accidentPlaceType].value[x] only CodeableConcept
* component[accidentPlaceType].valueCodeableConcept 1..1 MS
* component[accidentPlaceType].valueCodeableConcept from DeathInjuryPlaceVS (required)
* component[accidentPlaceType].valueCodeableConcept ^short = "Type of injury"

* component[accidentDate].code 1..1 MS
* component[accidentDate].code = DeathEventOfAccidentCS#death0004-00001 "Injury date"
* component[accidentDate].value[x] only dateTime
* component[accidentDate].valueDateTime 0..1 MS
* component[accidentDate].valueDateTime ^short = "Date of injury or poisoning"

* component[accidentPlaceCircumstances].code 1..1 MS
* component[accidentPlaceCircumstances].code = DeathEventOfAccidentCS#death0004-00003 "Place circumstances"
* component[accidentPlaceCircumstances].value[x] only CodeableConcept
* component[accidentPlaceCircumstances].valueCodeableConcept 1..1 MS
* component[accidentPlaceCircumstances].valueCodeableConcept from DeathInjuryPlaceVS (required)
* component[accidentPlaceCircumstances].valueCodeableConcept ^short = "Place and circumstances of the accident"

Instance: observation-cause-of-death-example
InstanceOf: ObservationCauseOfDeath
Usage: #example
Title: "Observation Cause of Death Example"
Description: "Example of cause of death observation for death registration."

* status = #final
// In Excel, no category was selected, but here we can use the `exam` code — I asked from him and he confirmed to add it.
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#exam
* code = http://loinc.org#79378-6 "Cause of death"
* subject = Reference(deceased-patient-example)
* effectiveDateTime = "2026-04-10T14:30:00+05:00"
* performer = Reference(practitioner-003)

* valueCodeableConcept = CauseOfDeathCS#death0003-00003 "Underlying cause of death"

* component[occurredFrom].code = http://snomed.info/sct#184305005 "Cause of death"
* component[occurredFrom].valueCodeableConcept = $sct#7878000 "Accidental death"

* component[immediateCause].code = CauseOfDeathCS#death0003-00002 "Pathological conditions that led to the specified cause"
* component[immediateCause].valueCodeableConcept = $icd-10#I21.9 "Acute myocardial infarction, unspecified"

* component[accidentPlaceType].code = DeathEventOfAccidentCS#death0004-00002 "Injury type"
* component[accidentPlaceType].valueCodeableConcept = DeathInjuryPlaceCS#death0002_00003 "From transport"

* component[accidentDate].code = DeathEventOfAccidentCS#death0004-00001 "Injury date"
* component[accidentDate].valueDateTime = "2026-04-08T18:00:00+05:00"

* component[accidentPlaceCircumstances].code = DeathEventOfAccidentCS#death0004-00003 "Place circumstances"
* component[accidentPlaceCircumstances].valueCodeableConcept = DeathInjuryPlaceCS#death0002_00003 "From transport"