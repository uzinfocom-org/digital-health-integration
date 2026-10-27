ValueSet: HospitalizationPurposeVS
Id: hospitalization-purpose-vs
Title: "Hospitalization Purpose ValueSet"
Description: "All purposes of a hospitalization referral from the [Hospitalization Purpose code system](CodeSystem-hospitalization-purpose-cs.html), as used in ServiceRequest.reason of the hospitalization referral referenced from [Form 027 - Patient Medical Record Extract](StructureDefinition-form-027-composition.html)."
* insert IntegrationsValueSet(hospitalization-purpose-vs)
* ^experimental = true
* include codes from system hospitalization-purpose-cs
