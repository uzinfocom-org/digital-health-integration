Profile: CompositionOfDeath
Parent: Composition
Id: composition-of-death
Title: "Composition of Death"
Description: "Composition profile for the medical death certificate document"
* ^experimental = true
* ^status = #draft
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Document form number identifier"
* identifier.system 1..1
* identifier.value 1..1
* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"

* status MS
* status from http://hl7.org/fhir/ValueSet/composition-status (required)

* type MS
* type = http://loinc.org#64297-5
* type ^short = "Death certificate"

* date MS
* title MS

* subject MS
* subject only Reference(DeceasedPatient)

* author MS
* author only Reference(UZCorePractitionerRole)

* custodian MS
* custodian only Reference(UZCoreOrganization)

* section 2..*
* section.title MS
* section.entry MS

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "title"
* section ^slicing.rules = #open

* section contains
    causeOfDeath 1..1 and
    deathEncounter 1..1

* section[causeOfDeath].title = "Cause of Death"
* section[causeOfDeath].entry 1..*
* section[causeOfDeath].entry only Reference(ObservationCauseOfDeath)

* section[deathEncounter].title = "Death Encounter"
* section[deathEncounter].entry 1..*
* section[deathEncounter].entry only Reference(EncounterOfDeath)

Instance: composition-of-death-example
InstanceOf: CompositionOfDeath
Usage: #example
Title: "Composition of Death Example"
Description: "Example instance of Composition Death profile"

* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier.value = "Death form №106"
* status = #preliminary
* type = http://loinc.org#64297-5 "Death certificate"
* date = "2024-03-15T08:30:00Z"
* title = "Death certificate"
* subject = Reference(deceased-patient-example)
* author[0] = Reference(practitionerrole-001)
* custodian = Reference(organization1-example)

* section[causeOfDeath].title = "Cause of Death"
* section[deathEncounter].title = "Death Encounter"

* section[causeOfDeath].entry[0] = Reference(observation-cause-of-death-example)
* section[deathEncounter].entry[0] = Reference(encounter-of-death-example)