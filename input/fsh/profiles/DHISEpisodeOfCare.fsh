Profile: DHISEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: dhis-episode-of-care
Title: "DHIS Episode of Care Profile"
Description: "Profile for an episode of care that groups a patient's tuberculosis diagnosis, treatment, and follow-up in the DHIS information system."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* period 0..1 MS
* period ^short = "Duration of the care process"

* period.start 0..1 MS
* period.start ^short = "Start date of the episode of care"

* period.end 0..1 MS
* period.end ^short = "End date of the episode of care"


Instance: example-dhis-episode-of-care
InstanceOf: DHISEpisodeOfCare
Usage: #example
Description: "Example DHIS episode of care covering a patient's tuberculosis treatment course."

* identifier[0].system = "http://dhp.uz/ids/episode-of-care"
* identifier[0].value = "EOC-2026-0001"

* status = #active

* type[0].coding[0].system = $episode-of-care-type
* type[0].coding[0].code = #mserv-0001-00004
* type[0].text = "Treatment services"

* patient = Reference(example-patient-john)

* managingOrganization = Reference(example-organization)

* period.start = "2025-03-12"
* period.end = "2025-09-12"

* careManager = Reference(practitionerrole-001)

* diagnosis[0].condition = Reference(example-tbc-diagnosis)

* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"