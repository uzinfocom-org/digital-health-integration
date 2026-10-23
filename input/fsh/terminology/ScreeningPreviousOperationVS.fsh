ValueSet: ScreeningPreviousOperationVS
Id: screening-previous-operation-vs
Title: "Screening Previous Operation ValueSet"
Description: "Defines Screening Previous Operation"
* insert IntegrationsValueSet(screening-previous-operation-vs)
* ^experimental = true
* ^language = #uz
* include $sct#80146002
* include $sct#173422009

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
