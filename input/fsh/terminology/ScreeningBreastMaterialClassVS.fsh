ValueSet: ScreeningBreastMaterialClassVS
Id: screening-breast-material-class-vs
Title: "Screening Material Class ValueSet"
Description: "Types of material obtained for histological and cytological examination."
* insert IntegrationsValueSet(screening-breast-material-class-vs)
* ^status = #active
* ^experimental = true

* include $sct#258415003
* include $sct#373826004
* include $sct#764445001

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
