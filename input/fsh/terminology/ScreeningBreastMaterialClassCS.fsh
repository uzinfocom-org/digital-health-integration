CodeSystem: ScreeningBreastMaterialClassCS
Id: screening-breast-material-class-cs
Title: "Screening Breast Material Class CodeSystem"
Description: "Types of material obtained for histological and cytological examination."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-breast-material-class-cs"
* ^status = #active
* ^experimental = true
* ^content = #complete
* ^caseSensitive = true

* #scrn-0072-00001 "Биопсия"
* #scrn-0072-00001 ^designation[0].language = #en
* #scrn-0072-00001 ^designation[=].value = "Biopsy"
* #scrn-0072-00001 ^designation[+].language = #uz
* #scrn-0072-00001 ^designation[=].value = "Biopsiya"

* #scrn-0072-00002 "Хирургический материал"
* #scrn-0072-00002 ^designation[0].language = #en
* #scrn-0072-00002 ^designation[=].value = "Surgical specimen"
* #scrn-0072-00002 ^designation[+].language = #uz
* #scrn-0072-00002 ^designation[=].value = "Jarrohlik materiali"

* #scrn-0072-00003 "Цитологический материал"
* #scrn-0072-00003 ^designation[0].language = #en
* #scrn-0072-00003 ^designation[=].value = "Cytological specimen"
* #scrn-0072-00003 ^designation[+].language = #uz
* #scrn-0072-00003 ^designation[=].value = "Sitologik material"