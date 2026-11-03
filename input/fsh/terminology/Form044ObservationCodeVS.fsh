ValueSet: Form044ObservationCodeVS
Id: form-044-observation-code-vs
Title: "Form 044 Observation Codes ValueSet"
Description: "Local codes for Form 044 observations that have no suitable LOINC or SNOMED CT code."
* insert IntegrationsValueSet(form-044-observation-code-vs)
* ^experimental = true

* include codes from system form-044-observation-code-cs
