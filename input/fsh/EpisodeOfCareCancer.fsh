Profile: EpisodeOfCareCancer
Parent: EpisodeOfCare
Id: episode-of-care-cancer
Title: "Episode of care of Cancer"
Description: "Defines the case of service for a given disease"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier  (EpisodeOfCareCancer)"

* diagnosis.condition MS
* diagnosis.condition ^short = "Link to ConditionCancerDiagnosis ICD10"

* diagnosis.use MS
* diagnosis.use from https://terminology.medcore.uz/ValueSet/TypeTreatment (required)
* diagnosis.use ^short = "Defines the code for the type of treatment (outpatient, inpatient, etc.)"

* patient MS
* patient ^short = "Identifies the oncology patient registered"

* managingOrganization MS
* managingOrganization ^short = "Determines the organization that registered the patient"

* period MS
* period ^short = "Defines the start date and end date of observation"