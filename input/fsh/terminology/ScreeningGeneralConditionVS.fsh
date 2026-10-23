ValueSet: ScreeningGeneralConditionVS
Id: screening-general-condition-vs
Title: "Screening General Condition ValueSet"
Description: "Defines Screening General Condition"
* insert IntegrationsValueSet(screening-general-condition-vs)
* ^experimental = true
* ^language = #uz
* include $sct#162669003
* include $sct#6736007
* include codes from system screening-general-condition-cs

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
