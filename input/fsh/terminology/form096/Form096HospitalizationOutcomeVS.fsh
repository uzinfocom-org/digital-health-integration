ValueSet: Form096HospitalizationOutcomeVS
Id: form-096-hospitalization-outcome-vs
Title: "Form 096 Hospitalization Outcome"
Description: "Discharge disposition values corresponding to the DMED Form 096 hospitalization_outcome values discharged, transferred and died."
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/form-096-hospitalization-outcome-vs"
* ^status = #active
* ^experimental = true
* include $discharge-disposition-home-cs#mserv-0004-00004 "Discharged"
* include $encounter-discharge-disposition#other-hcf "Other healthcare facility"
* include $encounter-discharge-disposition#exp "Expired"
