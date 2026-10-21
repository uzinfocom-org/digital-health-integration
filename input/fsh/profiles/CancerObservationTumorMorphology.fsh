Profile: CancerObservationTumorMorphology
Parent: UZCoreObservation
Id: cancer-observation-tumor-morphology
Title: "Cancer Observation Tumor Morphology"
Description: "Observation describing the morphological classification of a patient's tumor and its histological characteristics."

* ^experimental = true
* ^status = #active
* ^date = "2026-09-15"
* ^publisher = "Uzinfocom"

* status = #final

* code from CancerTumorMorphologyPanelVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* focus 1..1
* focus only Reference(CancerCondition)

* effective[x] MS
* effective[x] only dateTime

* performer MS
* performer only Reference(UZCorePractitionerRole)

* hasMember MS
* hasMember only Reference(CancerObservationBehavior or CancerObservationHistologicGrade)


Instance: cancer-observation-tumor-morphology-example
InstanceOf: CancerObservationTumorMorphology
Description: "Example of a cancer observation describing the morphology of a tumor."
Title: "Cancer Tumor Morphology Observation Example"
Usage: #example

* status = #final
* category = $observation-category#laboratory
* code = $loinc#77753-2 "Tumor morphology panel Cancer"
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-example)
* effectiveDateTime = "2026-09-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* hasMember[0] = Reference(Observation/cancer-observation-behavior-example)
* hasMember[+] = Reference(Observation/cancer-observation-histologic-grade-example)
