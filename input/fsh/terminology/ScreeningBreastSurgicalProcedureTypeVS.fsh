ValueSet: ScreeningBreastSurgicalProcedureTypeVS
Id: screening-breast-surgical-procedure-type-vs
Title: "Screening Breast Surgical Procedure Type ValueSet"
Description: "Breast surgical procedure types accepted in pathology requests."
* insert IntegrationsValueSet(screening-breast-surgical-procedure-type-vs)
* ^experimental = true

* include $sct#64368001
* include $sct#384723003
* include $sct#172049005
* include $sct#428564008
* include $sct#172043006

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
