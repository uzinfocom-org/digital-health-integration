ValueSet: BloodTransfusionHistoryVS
Id: blood-transfusion-history-vs
Title: "Allowed blood transfusion history categories"
Description: "Local categories describing a recipient's previous blood transfusions."
* insert IntegrationsValueSet(blood-transfusion-history-vs)
* ^status = #draft
* ^experimental = true
* include codes from system BloodTransfusionHistoryCS
