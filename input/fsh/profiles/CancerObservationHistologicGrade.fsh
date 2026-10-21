Profile: CancerObservationHistologicGrade
Parent: UZCoreObservation
Id: cancer-observation-histologic-grade
Title: "Cancer Observation Histologic Grade"
Description: "Observation describing the histologic classification of a patient's tumor and the degree of tumor differentiation."

* ^experimental = true
* ^status = #active
* ^date = "2026-09-15"
* ^publisher = "Uzinfocom"


* status = #final

* code from CancerTumorMorphologyPanelVS (required)

* method 0..1 MS
* method from CancerConfirmationMethodVS (required)

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
* valueCodeableConcept from CancerDegreeDifferentiationVS (required)




Instance: cancer-observation-histologic-grade-example
InstanceOf: CancerObservationHistologicGrade
Description: "Example of a cancer observation indicating the histologic grade of a tumor."
Title: "Cancer Histologic Grade Observation Example"
Usage: #example

* status = #final
* category = $observation-category#laboratory
* code = $loinc#21858-6 "Grade Cancer"
* method = cancer-confirmation-method-cs#cancer-0002-0003 "Histology"
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-example)
* effectiveDateTime = "2026-09-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = $sct#1155701009 "G1 (Well differentiated)"
