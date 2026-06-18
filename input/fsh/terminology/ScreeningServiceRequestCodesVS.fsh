ValueSet: ScreeningServiceRequestCodesVS
Id: screening-service-request-codes-vs
Title: "Screening Service Request Codes ValueSet"
Description: "Combined code set for screening service requests (LOINC laboratory tests and SNOMED diagnostic procedures)"
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/screening-service-request-codes-vs"
* ^status = #active
* ^experimental = false

* include $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"
* include $loinc#82675-0 "HPV I/H Risk 4 DNA Cvx Ql NAA+probe"
* include codes from valueset ScreeningDiagnosticProcedureVS
