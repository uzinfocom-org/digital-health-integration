ValueSet: ScreeningPathologicalTVS
Id: screening-pathological-t-vs
Title: "Screening Pathological T ValueSet"
Description: "Defines Screening Pathological T"
* insert IntegrationsValueSet(screening-pathological-t-vs)
* ^experimental = true
* ^language = #uz
* include $sct#1228957006
* include $sct#1229852009
* include $sct#1229859000
* include $sct#1229864001

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
