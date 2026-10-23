ValueSet: ScreeningObesityDegreeVS
Id: screening-obesity-degree-vs
Title: "Screening Obesity Degree ValueSet"
Description: "Defines Screening Obesity Degree"
* insert IntegrationsValueSet(screening-obesity-degree-vs)
* ^experimental = true
* ^language = #uz
* include $sct#443371000124107
* include $sct#443381000124105
* include $sct#819948005
* include codes from system screening-obesity-degree-cs

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
