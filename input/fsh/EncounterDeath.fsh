Profile: EncounterDeath
Parent: Encounter
Id: encounter-death
Title: "Encounter Death"
Description: "Encounter profile representing a death encounter, used to capture information about the circumstances of a patient's death."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* status 1..1
* status ^short = "The initial or final state of death. For example, initial or final"
* status from http://hl7.org/fhir/ValueSet/encounter-status (required)

* class 1..1
* class ^short = "Classification of patient encounters"
* class from https://terminology.dhp.uz/fhir/core/ValueSet/encounter-class-vs

* serviceType 0..*
* serviceType from EncounterTypeDeathVS

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Classification of patient encounters"

* participant 0..*
* participant ^short = "Death certifying physician"

* participant.actor 0..1
* participant.actor ^short = "The individual, or service participating in the encounter"
* participant.actor only Reference(UZCorePractitionerRole)

* participant.period 0..1
* participant.period ^short = "Time period of encounter"

* participant.type 0..*
* participant.type ^short = "Role of participant in encounter"
* participant.type from http://hl7.org/fhir/ValueSet/encounter-participant-type

* serviceProvider 0..1
* serviceProvider ^short = "Health facility issuing certificate"
* serviceProvider only Reference(UZCoreOrganization)

* extension contains EncounterDeathPlaceType named deathPlaceType 0..1
