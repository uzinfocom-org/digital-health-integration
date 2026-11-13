ValueSet: BloodTransfusionAssessmentVS
Id: blood-transfusion-assessment-vs
Title: "Allowed blood transfusion assessment components"
Description: "Local component types recorded in a blood transfusion assessment."
* insert IntegrationsValueSet(blood-transfusion-assessment-vs)
* ^status = #draft
* ^experimental = true
* include codes from system BloodTransfusionAssessmentCS
