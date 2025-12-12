Profile: EncounterDeath
Parent: UZCoreEncounter
Id: encounter-death
Title: "Encounter of Death"
Description: "An Encounter resource that represents a patient's encounter that resulted in death."
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/encounter-death"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* status MS
* status ^short = "Начальное или конечное состояние смерти. Например, начальная или Окончательное"
* status from EncounterStatusVS (required)

* class MS
* class ^short = "Encounter type (e.g., emergency, inpatient)"
* class from https://terminology.dhp.uz/fhir/core/ValueSet/encounter-class-vs (required)

* serviceType MS
* serviceType from EncounterDeathTypeVS (required)

* subject MS
* subject ^short = "Reference to the deceased"

* participant MS
* participant ^short = "Death certifying physician"

* participant.type MS
* participant.type from http://hl7.org/fhir/ValueSet/encounter-participant-type (required)

* participant.actor MS
* participant.actor ^short = "The individual, or service participating in the encounter"
* participant.actor only Reference(UZCorePractitionerRole)

* location MS
* location.location 1..1 MS
* location ^short = "Place of death (hospital, home, etc.)"

* serviceProvider MS
* serviceProvider ^short = "Health facility issuing certificate"

Extension: DeathPlaceType
Id: death-placeType
Title: "Place of Death Type"
Description: "Extension to indicate the type of place where the death occurred (e.g. home, hospital, other)."
* ^status = #active
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Encounter"

* value[x] only CodeableConcept
* valueCodeableConcept from DeathPlaceTypeVS (required)
* valueCodeableConcept ^short = "Type which is that death place type (home, street, hospital etc)"