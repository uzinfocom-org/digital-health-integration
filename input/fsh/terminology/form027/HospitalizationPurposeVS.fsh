ValueSet: HospitalizationPurposeVS
Id: hospitalization-purpose-vs
Title: "Hospitalization Purposes"
Description: "Purposes of a hospitalization referral, sent in ServiceRequest.reason of the hospitalization request referenced from the Form 027 next steps section. A referral may carry several purposes; for `other` the free text goes in reason.concept.text."
* insert IntegrationsValueSet(hospitalization-purpose-vs)
* ^status = #draft
* ^experimental = true
* include codes from system hospitalization-purpose-cs
