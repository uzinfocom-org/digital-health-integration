ValueSet: Form096HospitalizationOutcomeVS
Id: form-096-hospitalization-outcome-vs
Title: "Form 096 Hospitalization Outcome"
Description: "Encounter.admission.dischargeDisposition for the Form 096 hospitalization outcome field: discharged, transferred or died."
* insert IntegrationsValueSet(form-096-hospitalization-outcome-vs)
* ^status = #draft
* ^experimental = true

* $discharge-disposition-home-cs#mserv-0004-00004 "Discharged"
* $encounter-discharge-disposition#other-hcf "Other healthcare facility"
* $encounter-discharge-disposition#exp "Expired"
