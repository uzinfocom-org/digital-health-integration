CodeSystem: BirthPlaceCS
Id: birth-place-cs
Title: "Birth place CodeSystem"
Description: "Collection of information on the place of birth of citizens born in the territory of the Republic of Uzbekistan"
* ^url = "https://terminology.dhp.uz/CodeSystem/birth-place-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #en

* #birth0004.00001 "Home"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дома"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Uyda"

* #birth0004.00002 "On the road"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В дороге"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yo'lda"

* #birth0004.00003 "Hospital"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Больница"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifoxona"

* #birth0004.00004 "Other"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqa"