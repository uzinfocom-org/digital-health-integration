ValueSet: ScreeningDiabetesVS
Id: screening-diabetes-vs
Title: "Screening Diabetes ValueSet"
Description: "Value set containing Screening Diabetes Codes"
* insert IntegrationsValueSet(screening-diabetes-vs)
* ^experimental = true

* include codes from system screening-diabetes-cs
* include $sct#416855002
* include $sct#726054005
* include $sct#703768009

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
