Profile: CancerObservationTNMCategory
Parent: UZCoreObservation
Id: cancer-observation-tnm-category
Title: "Cancer Observation TNM Category"
Description: "Examination to determine the patient's tumor classification and extent of involvement."

* ^experimental = true
* ^status = #active
* ^date = "2026-08-15"
* ^publisher = "Uzinfocom"

* code MS
* code from CancerTNMCategoryVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* focus 1..1 MS
* focus only Reference(UZCoreCondition)

* value[x] MS
* valueCodeableConcept 1..1
* valueCodeableConcept from CancerCCpNCategoryVS (required)


Instance: example-cancer-observation-tnm-category
InstanceOf: CancerObservationTNMCategory
Usage: #example
Title: "Example Cancer Observation TNM Category"
Description: "Example of an observation for TNM classification of a patient's tumor"

* status = #final
* category = $observation-category#imaging
* code = cancer-tnm-category-cs#cancer-0022-0003
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-primary-example)
* effectiveDateTime = "2026-08-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = cancer-cc-p-n-category-cs#cancer-0010-0004 



Instance: cancer-observation-tnm-category-ct
InstanceOf: CancerObservationTNMCategory
Usage: #example
Title: "Example Cancer Observation TNM Category cT"
Description: "Example of an observation for the clinical T category of a patient's tumor"

* status = #final
* category = $observation-category#imaging
* code = cancer-tnm-category-cs#cancer-0022-0003
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-primary-example)
* effectiveDateTime = "2026-08-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = cancer-cc-p-n-category-cs#cancer-0010-0001