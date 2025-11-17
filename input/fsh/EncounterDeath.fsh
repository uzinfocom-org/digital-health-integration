Profile: EncounterDeath
Parent: UZCoreEncounter
Id: encounter-death
Title: "Encounter of Death"
Description: "An Encounter resource that represents a patient's encounter that resulted in death."
* ^url = "https://dhp.uz/fhir/core/StructureDefinition/encounter-death"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* status MS
* status ^short = "Начальное или конечное состояние смерти. Например, начальная или Окончательное"
* status from https://dhp.uz.terminology.uz/ValuSet/death_status (required)

* class MS
* class ^short = "Encounter type (e.g., emergency, inpatient)"
* class from EncounterClassVS (required)

* serviceType MS
* serviceType from https://terminology.medcore.uz/ValueSet/type-of-service (required)

* subject MS
* subject ^short = "Reference to the deceased"

* participant MS
* participant ^short = "Death certifying physician"
* participant.type MS
* participant.actor MS
* participant.actor ^short = "The individual, or service participating in the encounter"
* participant.actor only Reference(PractitionerRole)

// * extension contains DeathPlaceType 1..1 MS

* location MS
* location.location 1..1 MS
* location ^short = "Place of death (hospital, home, etc.)"

* serviceProvider MS
* serviceProvider ^short = "Health facility issuing certificate"