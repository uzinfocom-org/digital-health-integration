Profile: EncounterOfDeath
Parent: Encounter
Id: encounter-of-death
Title: "Encounter of Death"
Description: "Encounter profile representing a death encounter, used to capture information about the circumstances of a patient's death."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* status MS
* status ^short = "The initial or final state of death. For example, initial or final"
* status from http://hl7.org/fhir/ValueSet/encounter-status (required)

* class MS
* class ^short = "Classification of patient encounters"
* class from http://terminology.hl7.org/ValueSet/encounter-class (required)

* serviceType MS
* serviceType from DeathEncounterTypeVS

* subject MS
* subject only Reference(UZCorePatient)
* subject ^short = "Classification of patient encounters"

* participant MS
* participant ^short = "Death certifying physician"

* participant.actor MS
* participant.actor ^short = "The individual, or service participating in the encounter"
* participant.actor only Reference(UZCorePractitionerRole)

* participant.period MS
* participant.period ^short = "Time period of encounter"

* participant.type MS
* participant.type ^short = "Role of participant in encounter"
* participant.type from http://hl7.org/fhir/ValueSet/encounter-participant-type

* serviceProvider MS
* serviceProvider ^short = "Health facility issuing certificate"
* serviceProvider only Reference(UZCoreOrganization)

* location MS
* location ^short = "Location of the encounter"
* location.location only Reference(UZCoreLocation)

* extension contains
    DeathPlaceType named deathPlaceType 0..1 MS

* extension[deathPlaceType] ^short = "Death place type"
* extension[deathPlaceType] ^isModifier = false

Extension: DeathPlaceType
Id: death-place-type
Title: "Death Place Type"
Description: "Where patient died (e.g., hospital, home, public place, etc.)"
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* value[x] only CodeableConcept
* valueCodeableConcept from https://terminology.dhp.uz/ValueSet/death-place-type-vs

Instance: EncounterOfDeathExample
InstanceOf: EncounterOfDeath
Title: "Encounter of Death Example"
Description: "Example instance of EncounterOfDeath profile"
Usage: #example

* status = #planned
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* serviceType = DeathEncounterTypeCS#mserv.0001.00002
* subject = Reference(patient-death-example)
* participant[0].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ATND
* participant[0].period.start = "2024-03-15T08:00:00Z"
* participant[0].period.end = "2024-03-15T10:00:00Z"
