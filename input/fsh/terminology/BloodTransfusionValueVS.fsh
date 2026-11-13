ValueSet: BloodTransfusionValueVS
Id: blood-transfusion-value-vs
Title: "Allowed blood transfusion compatibility results"
Description: "Local compatibility results used for ABO and Rh-Hr checks."
* insert IntegrationsValueSet(blood-transfusion-value-vs)
* ^status = #draft
* ^experimental = true
* include codes from system BloodTransfusionValueCS
