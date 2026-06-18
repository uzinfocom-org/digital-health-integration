ValueSet: ScreeningObservationCodesVS
Id: screening-observation-codes-vs
Title: "Screening Observation Codes Composite ValueSet"
Description: "Combined value set of codes for the Observation.code field (Laboratory, Diagnostics, Observations, Findings)."
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/screening-observation-codes-vs"
* ^experimental = true

// Объединяем ваши четыре valueset
* include $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"  
* include $loinc#82675-0 "HPV I/H Risk 4 DNA Cvx Ql NAA+probe" 
* include codes from system screening-diagnostic-procedure-cs
* include codes from system screening-observation-type-cs
* include codes from system screening-breast-finding-cs