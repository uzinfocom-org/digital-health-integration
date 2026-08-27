Profile: CancerObservationTNMStageGroup
Parent: UZCoreObservation
Id: cancer-observation-tnm-stage-group
Title: "Cancer Observation TNM Stage Group"
Description: "Observation profile for documenting the TNM stage group and stage clarification of a patient's primary cancer."

* ^experimental = true
* ^status = #active
* ^date = "2026-08-15"
* ^publisher = "Uzinfocom"

* code 1..1 MS
* code from CancerStageGroupVS (required)

* subject 1..1 MS

* focus 1..1 MS
* focus only Reference(UZCoreCondition)

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    stage 0..1 MS and
    stageClarification 0..1 MS

* component[stage].code 1..1
* component[stage].code = cancer-stage-group-cs#cancer-0021-0004
* component[stage].value[x] 0..1
* component[stage].valueCodeableConcept 0..1 MS
* component[stage].valueCodeableConcept from CancerStageVS (required)

* component[stageClarification].code 1..1
* component[stageClarification].code = cancer-stage-group-cs#cancer-0021-0005
* component[stageClarification].value[x] 0..1
* component[stageClarification].valueCodeableConcept 0..1 MS
* component[stageClarification].valueCodeableConcept from CancerSubStageVS (required)


Instance: cancer-observation-tnm-stage-group-example
InstanceOf: CancerObservationTNMStageGroup
Usage: #example
Title: "Cancer Observation TNM Stage Group Example"
Description: "Example of an observation documenting the TNM stage group and stage clarification for a patient's primary cancer."

* status = #final
* category = $observation-category#imaging
* code = cancer-stage-group-cs#cancer-0021-0001 "TNM stage grouping"
* subject = Reference(Patient/example-salim)
* focus = Reference(cancer-condition-primary-example)
* effectiveDateTime = "2025-08-15T10:30:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)

* component[stage].code = cancer-stage-group-cs#cancer-0021-0004 
* component[stage].valueCodeableConcept = cancer-stage-cs#cancer-0012-0002

* component[stageClarification].code = cancer-stage-group-cs#cancer-0021-0005
* component[stageClarification].valueCodeableConcept = cancer-sub-stage-cs#cancer-0013-0007

* hasMember = Reference(cancer-observation-tnm-category-ct)
