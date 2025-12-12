CodeSystem: BirthPlaceCS
Id: birth-place-cs
Title: "Birth place CodeSystem"
Description: "Collection of information on the place of birth of citizens born in the territory of the Republic of Uzbekistan"
* ^url = "https://dhp.uz/fhir/integrations/CodeSystem/birth-place-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #birth0004.00001 "Uyda"
  * ^designation[0].language = #en
  * ^designation[=].value = "Home"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дома"

* #birth0004.00002 "Yo'lda"
  * ^designation[0].language = #en
  * ^designation[=].value = "On the Road"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В дороге"

* #birth0004.00003 "Shifoxona"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hospital"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Больница"
  
* #birth0004.00004 "Boshqa"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"