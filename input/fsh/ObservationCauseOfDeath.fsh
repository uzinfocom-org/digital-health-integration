Profile: ObservationCauseOfDeath
Parent: Observation
Id: observation-cause-of-death
Title: "Observation Cause Of Death"
Description: "Observation profile representing the cause of death information."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* code 1..1 MS
* code = http://loinc.org#79378-6
* code ^short = "Type of observation (LOINC 79378-6 Cause of death)"

* status 1..1 MS
* status ^short = "registered | preliminary | final | amended"
* status from http://hl7.org/fhir/ValueSet/observation-status (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)
* subject ^short = "Deceased person"

* performer 0..1 MS
* performer only Reference(UZCorePractitionerRole)
* performer ^short = "Physician issuing the certificate"

* effective[x] only dateTime
* effective[x] 0..1 MS
* effective[x] ^short = "Date and time of death"

* value[x] only CodeableConcept
* value[x] 0..1 MS
* value[x] ^short = "Actual result"
* value[x] from SNOMEDCauseOfDeathVS (required)

* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "Occurred due to"
* valueCodeableConcept from SNOMEDCauseOfDeathVS (required)


* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    conditionsLeadingToDeath 0..* MS and
    causeOfDeath             0..* MS and
    accidentOrPoisoning      0..*

* component[conditionsLeadingToDeath] ^short = "Circumstances leading to the immediate cause of death"
* component[conditionsLeadingToDeath] MS

* component[conditionsLeadingToDeath].code 1..1 MS
* component[conditionsLeadingToDeath].code ^short = "The circumstances of the death"
* component[conditionsLeadingToDeath].code from SNOMEDCauseOfDeathVS (required)


* component[causeOfDeath] ^short = "Clinical cause of death"
* component[causeOfDeath] MS

* component[causeOfDeath].code 1..1 MS
* component[causeOfDeath].code ^short = "Cause of death"
* component[causeOfDeath].code from SNOMEDCauseOfDeathVS (required)

* component[causeOfDeath].value[x] only CodeableConcept
* component[causeOfDeath].value[x] 0..1 MS
* component[causeOfDeath].value[x] ^short = "ICD-10 coded disease"
* component[causeOfDeath].valueCodeableConcept from http://hl7.org/fhir/ValueSet/icd-10 (required)


* component[accidentOrPoisoning].code 1..1 MS
* component[accidentOrPoisoning].code ^short = "In the case of non-work-related accidents, the nature of the injury"
* component[accidentOrPoisoning].code from EventOfAccidentVS (required)


* component[accidentOrPoisoning].value[x] only dateTime or CodeableConcept or string
* component[accidentOrPoisoning].value[x] 0..1

* component[accidentOrPoisoning].valueDateTime ^short = "Date of injury (poisoning)"

* component[accidentOrPoisoning].valueCodeableConcept ^short = "Type of injury"
* component[accidentOrPoisoning].valueCodeableConcept from EvidenceTypeVS (required)

* component[accidentOrPoisoning].valueString ^short = "Place and circumstances"

Instance: example-observation-cause-of-death
InstanceOf: ObservationCauseOfDeath
Title: "Example Observation Cause Of Death"
Description: "Example instance of Observation Cause Of Death profile"
Usage: #example

* status = #final
* code = http://loinc.org#79378-6
* subject = Reference(PatientDeath/patient-death-example)

* effectiveDateTime = "2024-01-01T12:00:00Z"
* valueCodeableConcept = SNOMEDCauseOfDeathSupplementCS#44169009 "Myocardial infarction (disorder)"

* effectiveDateTime = "2024-01-01T12:00:00Z"
* valueCodeableConcept = SNOMEDCauseOfDeathSupplementCS#44169009 "Myocardial infarction (disorder)"

* component[conditionsLeadingToDeath].code = CauseOfDeathCS#death0003.00001
