Profile: ObservationCauseOfDeath
Parent: Observation
Id: observation-cause-of-death
Title: "Observation Cause Of Death"
Description: "Observation profile representing the cause of death information."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* code 1..1
* code = http://loinc.org#79378-6
* code ^short = "Type of observation (LOINC 79378-6 Cause of death)"

* status 1..1
* status ^short = "registered | preliminary | final | amended"
* status from http://hl7.org/fhir/ValueSet/observation-status (required)

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Deceased person"

* performer 0..1
* performer only Reference(UZCorePractitionerRole)
* performer ^short = "Physician issuing the certificate"

* effectiveDateTime 0..1
* effectiveDateTime ^short = "Date and time of death"

* value[x] only CodeableConcept
* valueCodeableConcept from SNOMEDCauseOfDeathVS
* valueCodeableConcept ^short = "Death occurred due to"

* component 0..*
* component ^short = "Conditions leading to the immediate cause of death"

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    clinicalCause 0..* and
    accidentDetails 0..*

* component[clinicalCause].code 1..1
* component[clinicalCause].code from CauseOfDeathVS
* component[clinicalCause].code ^short = "Clinical cause of death"

* component[clinicalCause].value[x] only CodeableConcept
* component[clinicalCause].valueCodeableConcept from http://hl7.org/fhir/ValueSet/icd-10
* component[clinicalCause].valueCodeableConcept ^short = "ICD-10 coded disease"

* component[accidentDetails].code 1..1
* component[accidentDetails].code from EventOfAccidentVS
* component[accidentDetails].code ^short = "Type of accident or injury event"

* component[accidentDetails].value[x] only dateTime or CodeableConcept or string

* component[accidentDetails].valueDateTime
* component[accidentDetails].valueDateTime ^short = "Date of injury or poisoning"

* component[accidentDetails].valueCodeableConcept from EvidenceTypeVS
* component[accidentDetails].valueCodeableConcept ^short = "Type of injury"

* component[accidentDetails].valueString
* component[accidentDetails].valueString ^short = "Place and circumstances of the accident"