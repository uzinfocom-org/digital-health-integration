ValueSet: ScreeningDCISMalignancyGradeVS
Id: screening-dcis-malignancy-grade-vs
Title: "Screening DCIS Malignancy Grade ValueSet"
Description: "Defines Screening DCIS Malignancy Grade"
* insert IntegrationsValueSet(screening-dcis-malignancy-grade-vs)
* ^experimental = true
* ^language = #uz
* include $sct#258351006
* include $sct#258352004
* include $sct#258353009

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
