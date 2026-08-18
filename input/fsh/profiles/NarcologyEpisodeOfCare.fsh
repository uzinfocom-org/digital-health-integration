Profile: NarcologyEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: narcology-episode-of-care
Title: "Narcology Episode Of Care"
Description: "Narcology registration of a patient, carrying the dynamic observation group the patient is placed in."
* ^experimental = true
* ^status = #active
* ^date = "2026-07-27"
* ^publisher = "Uzinfocom"

* type contains group 1..1 MS
* type[group] from NarcologyPsychiatryEpisodeOfCareTypeGroupVS (required)
* type[group].coding.system = Canonical(NarcologyPsychiatryEpisodeOfCareTypeGroupCS)

Instance: example-narcology-episode-of-care
InstanceOf: NarcologyEpisodeOfCare
Title: "Narcology EpisodeOfCare Example"
Description: "Narcology registration of Salim in the preventive dynamic observation group."
Usage: #example

* identifier[0].system = "https://dhp.uz/fhir/core/sid/reg/uz/narco"
* identifier[0].value = "EOC-2026-002"

* status = #active

* type[serviceType] = $episode-of-care-type#mserv-0001-00004 "Treatment services"
* type[group] = narcology-psychiatry-episode-of-care-type-group-cs#narcr0001-00001 "Preventive group"

* diagnosis[0].condition = Reference(Condition/example-narcology-condition)
* diagnosis[0].use = $encounter-diagnosis-use-cs#working "Working"

* patient = Reference(example-salim)

* managingOrganization = Reference(example-narcology-center)

* period.start = "2026-03-10"

* careManager = Reference(example-narcologist-role)
