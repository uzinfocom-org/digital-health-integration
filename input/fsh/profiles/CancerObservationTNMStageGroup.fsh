Profile: CancerObservationTNMStageGroup
Parent: UZCoreObservation
Id: cancer-observation-tnm-stage-group
Title: "Cancer Observation TNM Stage Group"
Description: "Observation defining the TNM stage group of a patient's cancer."

* ^experimental = true
* ^status = #active
* ^date = "2026-09-15"
* ^publisher = "Uzinfocom"

* status = #final

* category = $observation-category#imaging

* code MS
* code from CancerStageGroupVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* focus 1..1 MS
* focus only Reference(CancerCondition)

* effective[x] MS
* effective[x] only dateTime

* performer MS
* performer only Reference(UZCorePractitionerRole)

* value[x] only CodeableConcept
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from CancerTNMStageVS (required)

* hasMember MS
* hasMember only Reference(CancerObservationTNMCategory)


Instance: cancer-observation-tnm-stage-group-example
InstanceOf: CancerObservationTNMStageGroup
Description: "Example of a cancer observation representing the overall TNM stage group for a patient. This observation records Stage I and references the corresponding TNM category observations for clinical tumor (cT), clinical node (cN), pathological node (pN), clinical metastasis (cM), and pathological metastasis (pM) assessments."
Usage: #example

* status = #final
* category = $observation-category#imaging
* code = $sct#399390009 "TNM stage grouping"
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-example)
* effectiveDateTime = "2026-09-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = $sct#1352927005 

* hasMember[0] = Reference(Observation/cancer-observation-tnm-category-ct)
* hasMember[+] = Reference(Observation/cancer-observation-tnm-category-cn)
* hasMember[+] = Reference(Observation/cancer-observation-tnm-category-pn)
* hasMember[+] = Reference(Observation/cancer-observation-tnm-category-cm)
* hasMember[+] = Reference(Observation/cancer-observation-tnm-category-pm)