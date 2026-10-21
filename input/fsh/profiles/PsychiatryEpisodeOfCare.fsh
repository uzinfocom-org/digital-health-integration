Profile: PsychiatryEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: psychiatry-episode-of-care
Title: "Psychiatry Episode of Care Profile"
Description: "Episode of care profile for the Psychiatry system."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* type contains group 1..1 MS
* type[group] from NarcologyPsychiatryEpisodeOfCareTypeGroupVS (required)
* type[group].coding.system = Canonical(NarcologyPsychiatryEpisodeOfCareTypeGroupCS)



Instance: example-psychiatry-episode-of-care
InstanceOf: PsychiatryEpisodeOfCare
Title: "Psychiatry Episode of Care Profile Instance"
Description: "Example episode of care representing a patient's compulsory inpatient treatment episode in the Psychiatry system."
Usage: #example

* status = $episode-of-care-status#active "Active"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/reg/uz/psychiatry"
* identifier[0].value = "7b4e2f91-8c63-4a27-b5d9-2e7f31c84a06"
* type[serviceType] = $episode-of-care-type#mserv-0001-00004 "Treatment services"
* type[group] = narcology-psychiatry-episode-of-care-type-group-cs#psycr0001-00001 "Compulsory inpatient treatment"
* diagnosis[0].condition = Reference(Condition/example-psychiatry-condition)
* diagnosis[0].use = $encounter-diagnosis-use-cs#working "Working"
* patient = Reference(Patient/example-patient-john)
* managingOrganization = Reference(example-psychiatry-center)
* period.start = "2026-08-15"
* careManager = Reference(example-commission-psychiatrist-role)