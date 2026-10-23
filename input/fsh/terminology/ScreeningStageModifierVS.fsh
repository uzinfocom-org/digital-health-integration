ValueSet: ScreeningStageModifierVS
Id: screening-stage-modifier-vs
Title: "Screening Stage Modifier ValueSet"
Description: "Defines Screening Stage Modifier"
* insert IntegrationsValueSet(screening-stage-modifier-vs)
* ^experimental = true
* ^language = #uz
* include codes from system screening-stage-modifier-cs
* include $sct#1222589003
* include $sct#373847000
* include $sct#25173007

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
