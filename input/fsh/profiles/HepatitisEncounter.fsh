Profile: HepatitisEncounter
Parent: UZCoreEncounter
Id: hepatitis-encounter
Title: "Hepatitis Encounter"
Description: "Encounter profile for hepatitis-related clinical encounters"
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* subject 1..1 MS
* subject only Reference(HepatitisPatient)

* episodeOfCare MS
* episodeOfCare only Reference(HepatitisEpisodeOfCare)

Instance: hepatitis-encounter-example
InstanceOf: HepatitisEncounter
Title: "Hepatitis Encounter Example"
Description: "Example of a hepatitis-related clinical encounter"
Usage: #example

* status = #completed
* type[0] = $encounter-type-cs#mserv-0001-00004  "Treatment services"
* class = $v3-ActCode#AMB "Ambulatory"
* subject = Reference(hepatitis-patient-example)
* serviceProvider = Reference(samarkand-infectious-hospital)
* participant.type = $v3-ParticipationType#ATND "attender"
* participant.actor = Reference(PractitionerRole/example-hepatologist-role)
* actualPeriod
  * start = "2026-09-18T09:45:00+05:00"
  * end = "2026-09-18T11:00:00+05:00"
* plannedStartDate = "2026-09-18T09:30:00+05:00"
