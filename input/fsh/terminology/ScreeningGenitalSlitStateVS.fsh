ValueSet: ScreeningGenitalSlitStateVS
Id: screening-genital-slit-state-vs
Title: "Screening Genital Slit State ValueSet"
Description: "Defines Screening Genital Slit State"
* insert IntegrationsValueSet(screening-genital-slit-state-vs)
* ^experimental = true
* ^language = #uz
* include $sct#29179001
* include $sct#434851000124108

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
