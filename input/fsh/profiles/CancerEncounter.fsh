Profile: CancerEncounter
Parent: UZCoreEncounter
Id: cancer-encounter
Title: "Cancer Encounter"
Description: "Encounter profile for documenting a patient's visit during which the patient's condition and type of cancer treatment are determined."

* ^experimental = true
* ^status = #active
* ^date = "2026-08-15"
* ^publisher = "Uzinfocom"


* class MS
* class from CancerEncounterClassVS (required)

* episodeOfCare MS
* episodeOfCare only Reference(CancerEpisodeOfCare)

Instance: cancer-encounter-example
InstanceOf: CancerEncounter
Usage: #example
Title: "Cancer Encounter Example"
Description: "Example of a cancer-related patient encounter."

* status = #completed

* class = $v3-ActCode#IMP

* type = $encounter-type-cs#mserv-0001-00002

* subject = Reference(Patient/example-salim)

* episodeOfCare = Reference(cancer-episode-of-care-example)

* serviceProvider = Reference(Organization/example-organization)

* participant[0].type = $v3-ParticipationType#ATND "Attender"
* participant[0].actor = Reference(PractitionerRole/practitionerrole-001)

* actualPeriod.start = "2026-08-18T09:00:00+05:00"
* actualPeriod.end = "2026-08-18T10:30:00+05:00"

* diagnosis[0].condition = Reference(cancer-condition-primary-example)
* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"

* admission.dischargeDisposition = $discharge-disposition-home-cs#mserv-0004-00002
