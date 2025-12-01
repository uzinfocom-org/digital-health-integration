CodeSystem: DeathPlaceTypeCS
Id: death-place-type-cs
Title: "Death place Type CodeSystem"
Description: "Collection of information on the place of death of citizens in the territory of the Republic of Uzbekistan"
* ^url = "https://terminology.dhp.uz/CodeSystem/death-place-type-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #en

* #death0003.00001 "Hospital"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Больница"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifoxona"

* #death0003.00002 "Home"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дома"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Uyda"

* #death0003.00003 "On the road"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В пути"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yo'lda"

* #death0003.00004 "Other"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqa"
