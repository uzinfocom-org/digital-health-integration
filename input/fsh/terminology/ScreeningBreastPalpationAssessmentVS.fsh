ValueSet: ScreeningBreastPalpationAssessmentVS
Id: screening-breast-palpation-assessment-vs
Title: "Screening Breast Palpation Assessment ValueSet"
Description: "Defines Screening Breast Palpation Assessment"
* insert IntegrationsValueSet(screening-breast-palpation-assessment-vs)
* ^experimental = true
* ^language = #uz
* include $sct#53430007
* include $sct#299976000
* include $sct#290061004

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
