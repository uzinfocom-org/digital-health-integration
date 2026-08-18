Instance: example-narcology-encounter
InstanceOf: UZCoreEncounter
Title: "Narcology Encounter Example"
Description: "Narcology visit at which Salim's harmful stimulant use was confirmed."
Usage: #example

* status = #completed "Completed"
* subject = Reference(example-salim)
* participant.type = $v3-ParticipationType#ATND "attender"
* type[nationalType] = encounter-type-cs#mserv-0001-00004 "Treatment services"
* participant.actor = Reference(PractitionerRole/example-narcologist-role)
* actualPeriod
  * start = "2026-03-10T10:00:00Z"
  * end = "2026-03-10T11:00:00Z"
* diagnosis[0].condition = Reference(Condition/example-narcology-condition)
* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"
