ValueSet: ScreeningCervicalHistologicGradeVS
Id: screening-cervical-histologic-grade-vs
Title: "Screening Cervical Histologic Grade ValueSet"
Description: "Histologic grade values confirmed for cervical histology results in the Screening integration."
* insert IntegrationsValueSet(screening-cervical-histologic-grade-vs)
* ^status = #active
* ^experimental = true
* include codes from system ScreeningCervicalHistologicGradeCS
