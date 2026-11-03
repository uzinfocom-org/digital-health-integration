ValueSet: Form097ObservationCodeVS
Id: form-097-observation-code-vs
Title: "Form 097 Observation Codes ValueSet"
Description: "Local codes for Form 097 observations that have no suitable LOINC or SNOMED CT code."
* insert IntegrationsValueSet(form-097-observation-code-vs)
* ^experimental = true

* include codes from system form-097-observation-code-cs
