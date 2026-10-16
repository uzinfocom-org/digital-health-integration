CodeSystem: Form096FetalPresentationCS
Id: fetal-presentation-cs
Title: "Fetal Presentation CodeSystem"
Description: "Governed local concepts for Form 096."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/fetal-presentation-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #chr-0044-0001 "Bosh bilan kelish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Cephalic"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Головное предлежание"

* #chr-0044-0002 "Dumba bilan kelish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Breech"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ягодичное предлежание"

* #chr-0044-0003 "Oyoq bilan kelish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Footling"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ножное предлежание"
