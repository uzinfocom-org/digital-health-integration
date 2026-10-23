ValueSet: ScreeningMenstruationAbundanceVS
Id: screening-menstruation-abundance-vs
Title: "Screening Menstruation Abundance ValueSet"
Description: "Defines Screening Menstruation Abundance"
* insert IntegrationsValueSet(screening-menstruation-abundance-vs)
* ^experimental = true
* ^language = #uz
* include $sct#64206003
* include $sct#308550003
* include $sct#386692008

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
