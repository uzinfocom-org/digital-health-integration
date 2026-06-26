Profile: CompositionOfBirth
Parent: Composition
Id: composition-of-birth
Title: "Composition of Birth"
Description: "Composition profile for the medical birth document"
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
* type = http://loinc.org#57075-4 "Newborn delivery information"
* type ^short = "Newborn delivery information"

* date MS
* title MS

* subject MS
* subject only Reference(NewbornPatient)

* author MS
* author only Reference(UZCorePractitionerRole)

* custodian MS
* custodian only Reference(UZCoreOrganization)

* section 3..*
* section.title MS
* section.entry MS

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "title"
* section ^slicing.rules = #open

* section contains
    birthEncounter 1..1 MS and
    apgarScore 1..1 MS and
    birthMeasurements 1..1 MS

* section[birthEncounter].title = "Birth Encounter"
* section[birthEncounter].entry 1..*
* section[birthEncounter].entry only Reference(EncounterOfBirth)

* section[apgarScore].title = "APGAR Score"
* section[apgarScore].entry 1..*
* section[apgarScore].entry only Reference(ObservationOfAPGAR)

* section[birthMeasurements].title = "Birth Measurements"
* section[birthMeasurements].entry 1..*
* section[birthMeasurements].entry only Reference(ObservationOfBirth)


Instance: composition-of-birth-example
InstanceOf: CompositionOfBirth
Usage: #example
Title: "Composition of Birth Example"
Description: "Example instance of Composition Birth profile"

* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier.value = "Birth form №103"
* status = #preliminary
* type = http://loinc.org#57075-4 "Newborn delivery information"
* date = "2026-04-01T11:00:00+05:00"
* title = "Birth Record Document"

* subject = Reference(newborn-patient-example)
* author[0] = Reference(practitionerrole-001)
* custodian = Reference(organization1-example)

* section[birthEncounter].title = "Birth Encounter"
* section[birthEncounter].entry[0] = Reference(encounter-of-birth-example)

* section[apgarScore].title = "APGAR Score"
* section[apgarScore].entry[0] = Reference(observation-of-apgar-example)

* section[birthMeasurements].title = "Birth Measurements"
* section[birthMeasurements].entry[0] = Reference(observation-of-birth-example)