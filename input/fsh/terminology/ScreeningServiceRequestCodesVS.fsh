ValueSet: ScreeningServiceRequestCodesVS
Id: screening-service-request-codes-vs
Title: "Screening Service Request Codes ValueSet"
Description: "Combined code set for screening service requests (LOINC laboratory tests and SNOMED diagnostic procedures)"
* insert IntegrationsValueSet(screening-service-request-codes-vs)
* ^status = #active
* ^experimental = false

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningDiagnosticProcedureCS)

* include codes from system $sct
* include $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"
* include $loinc#82675-0 "HPV I/H Risk 4 DNA Cvx Ql NAA+probe"
// * include codes from valueset ScreeningDiagnosticProcedureVS

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningLaboratoryCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningLoincTranslationsCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = "https://terminology.dhp.uz/fhir/core/CodeSystem/group-characteristic-kind-cs"
