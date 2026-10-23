ValueSet: ScreeningPostPregnancyComplicationVS
Id: screening-post-pregnancy-complication-vs
Title: "Screening Post Pregnancy Complication ValueSet"
Description: "Defines Screening Post Pregnancy Complication"
* insert IntegrationsValueSet(screening-post-pregnancy-complication-vs)
* ^experimental = true
* ^language = #uz
* include $sct#255410009
* include $sct#285409006
* include $sct#17369002

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
