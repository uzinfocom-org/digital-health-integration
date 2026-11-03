ValueSet: ScreeningCervicalHistologicGradeVS
Id: screening-cervical-histologic-grade-vs
Title: "Screening Cervical Histologic Grade ValueSet"
Description: "Histologic grade values confirmed for cervical histology results in the Screening integration."
* insert IntegrationsValueSet(screening-cervical-histologic-grade-vs)
* ^status = #active
* ^experimental = true
* include $sct#258351006
* include $sct#258352004
* include $sct#258353009

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslationsCS)
