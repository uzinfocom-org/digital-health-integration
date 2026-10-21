ValueSet: ScreeningHistologyOrderParameterVS
Id: screening-histology-order-parameter-vs
Title: "Screening Histology Order Parameter ValueSet"
Description: "Types of parameters specified in histology, cytology and biopsy ServiceRequest resources."
* insert IntegrationsValueSet(screening-histology-order-parameter-vs)
* ^status = #active
* ^experimental = true

* include codes from system ScreeningHistologyOrderParameterCS
