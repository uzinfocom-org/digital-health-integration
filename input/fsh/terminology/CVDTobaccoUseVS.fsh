ValueSet: CVDTobaccoUseVS
Id: cvd-tobacco-use-vs
Title: "CVD Tobacco Use ValueSet"
Description: "Value set containing CVD Tobacco Use"
* insert IntegrationsValueSet(cvd-tobacco-use-vs)
* ^experimental = true

* ^compose.include[0].system = $sct
* ^compose.include[=].concept[0].code = #702979003
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Iste'mol qilmaydi"
* ^compose.include[=].concept[+].code = #110483000
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Iste'mol qiladi"
* ^compose.include[=].concept[+].code = #702975009
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Tashlagan"
