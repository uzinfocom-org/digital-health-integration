ValueSet: ScreeningBreastCytologyMaterialTypeVS
Id: screening-breast-cytology-material-type-vs
Title: "Screening Breast Cytology Material Type ValueSet"
Description: "Breast cytology material types accepted in pathology requests."
* insert IntegrationsValueSet(screening-breast-cytology-material-type-vs)
* ^experimental = true

* include $sct#764445001
* include $sct#257759008
* include $sct#277667006
* include $sct#1220572004
* include $sct#786883001
* include $sct#258433009

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations1CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslations3CS)
