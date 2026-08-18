Instance: example-narcology-condition
InstanceOf: UZCoreCondition
Title: "Narcology Condition Example"
Description: "Harmful stimulant use recorded for Salim during his narcology encounter."
Usage: #example

* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#F15.1 "Mental and behavioural disorders due to use of other stimulants, including caffeine : Harmful use"
* subject = Reference(example-salim)
* encounter = Reference(example-narcology-encounter)
* recordedDate = "2026-03-10"
* participant.actor = Reference(Organization/example-narcology-center)
