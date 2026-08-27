Profile: CancerConditionSecondary
Parent: UZCoreCondition
Id: condition-cancer-secondary
Title: "Cancer Condition Secondary"
Description: "Determination of metastatic processes and the anatomical area of involvement."

* ^experimental = true
* ^status = #active
* ^date = "2026-08-15"
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier.system 1..1
* identifier.system = "https://dhp.uz/fhir/core/sid/reg/uz/cancer"


* extension contains
    CancerRelatedCondition named relatedCondition 0..1 MS

* code MS
* code from CancerEmergingProcessVS (required)

* bodySite MS
* bodySite from CancerDamageAreaVS (required)

* onsetDateTime MS 
* onset[x] only dateTime


Instance: cancer-condition-secondary-example
InstanceOf: CancerConditionSecondary
Usage: #example
Title: "Cancer Condition Secondary Example"
Description: "Example of a secondary cancer condition describing recurrence and the anatomical area of bone involvement."

* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-verification-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item
* extension[relatedCondition].valueReference = Reference(cancer-condition-primary-example)
* code = cancer-emerging-process-cs#cancer-0015-0001
* bodySite = cancer-damage-area-cs#cancer-0014-0002
* subject = Reference(Patient/example-salim)
* encounter = Reference(cancer-encounter-example)
* onsetDateTime = "2026-08-15"