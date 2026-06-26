CodeSystem: BirthPlaceCS
Id: birth-place-cs
Title: "Birth Place CodeSystem"
Description: "Collection of information on the place of birth of citizens born in the territory of the Republic of Uzbekistan"

* insert OriginalCodeSystemDraft(birth-place-cs)

* #birth0004_00001 "Uyda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дома"
  * ^designation[0].language = #en
  * ^designation[=].value = "Home"

* #birth0004_00002 "Yo'lda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В дороге"
  * ^designation[0].language = #en
  * ^designation[=].value = "On the Road"

* #birth0004_00003 "Shifoxona"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Больница"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hospital"
  
* #birth0004_00004 "Boshqa"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other"