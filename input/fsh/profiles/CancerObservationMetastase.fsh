Profile: CancerObservationMetastase
Parent: UZCoreObservation
Id: cancer-observation-metastase
Title: "Cancer Observation Metastase"
Description: "Observation describing cancer disease progression, its stage, and affected body site."

* ^experimental = true
* ^status = #active
* ^date = "2026-09-15"
* ^publisher = "Uzinfocom"


* status = #final

* code = $loinc#97509-4 "Cancer disease progression"

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* focus 1..1
* focus only Reference(CancerCondition)

* effective[x] MS
* effective[x] only dateTime

* performer MS
* performer only Reference(UZCorePractitionerRole)

* value[x] only CodeableConcept
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from CancerEmergingProcessVS (required)

* bodySite  MS
* bodySite from CancerBodyLocationVS


Instance: cancer-observation-metastase-example
InstanceOf: CancerObservationMetastase
Description: "Example of a cancer disease progression observation indicating the presence of distant metastases in the lung."
Title: "Cancer Metastasis Observation Example"
Usage: #example

* status = #final
* category = $observation-category#social-history
* code = $loinc#97509-4 "Cancer disease progression"
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-example)
* effectiveDateTime = "2026-09-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = cancer-emerging-process-cs#cancer-0015-0003 "Distant metastases"
* bodySite = $sct#110549009 "Lung and pleura, CS"