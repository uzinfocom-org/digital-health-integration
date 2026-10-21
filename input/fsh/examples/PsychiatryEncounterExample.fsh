Instance: example-psychiatry-encounter
InstanceOf: UZCoreEncounter
Title: "Psychiatry Encounter Profile Instance"
Description: "Example encounter representing a patient visit in the Psychiatry system."
Usage: #example

* status = #completed
* subject = Reference(Patient/example-patient-john)
* actualPeriod.start = "2026-08-15"
* type[0] = encounter-type-cs#mserv-0001-00004  "Treatment services"
* participant[0].type = $v3-ParticipationType#ATND "attender"
* participant[0].actor = Reference(PractitionerRole/example-commission-psychiatrist-role)
* diagnosis[0].condition.reference = Reference(Condition/example-psychiatry-condition)
* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"
