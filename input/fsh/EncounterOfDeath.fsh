Profile: EncounterOfDeath
Parent: UZCoreEncounter
Id: encounter-of-death
Title: "Encounter of Death"
Description: "Encounter profile representing a death encounter, used to capture information about the circumstances of a patient's death."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* status MS
* status = #completed
* status ^short = "Completed death encounter"

* class MS
* class ^short = "Classification of patient encounters"


* serviceType MS
* serviceType from DeathEncounterTypeVS

* subject MS
* subject only Reference(UZCorePatient)
* subject ^short = "Patient whose death is being documented"

* participant MS
* participant ^short = "Death certifying physician"

* participant.actor MS
* participant.actor ^short = "The individual, or service participating in the encounter"
* participant.actor only Reference(UZCorePractitionerRole)

* participant.period MS
* participant.period ^short = "Time period of encounter"

* participant.type MS
* participant.type ^short = "Role of participant in encounter"

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


Instance: encounter-of-death-example
InstanceOf: EncounterOfDeath
Title: "Encounter of Death Example"
Description: "Example instance of EncounterOfDeath profile"
Usage: #example

* status = #completed 
* class = $v3-ActCode#EMER
* serviceType = DeathEncounterTypeCS#mserv-0001-00006 "Forensic medical examination"
* subject = Reference(deceased-patient-example)

* participant[0].type = $v3-ParticipationType#ATND
* participant[0].actor = Reference(practitionerrole-001)
* participant[0].period.start = "2024-03-15T08:00:00Z"
* participant[0].period.end = "2024-03-15T10:00:00Z"

* serviceProvider = Reference(organization1-example)
* location[0].location = Reference(location-death-example)

* extension[deathPlaceType].valueCodeableConcept = http://snomed.info/sct#183676005 "Died in hospital (finding)"