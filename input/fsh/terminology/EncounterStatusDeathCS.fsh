CodeSystem: EncounterStatusCS
Id: encounter-status-cs
Title: "Encounter Status CS"
Description: "Collection of information on the status of encounters"
* ^url = "https://terminology.dhp.uz/CodeSystem/encounter-status-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #death0004-00001 "Yakuniy"
  * ^designation[0].language = #en
  * ^designation[=].value = "Final"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Окончательное"

* #death0004-00002 "Dastlabki"
  * ^designation[0].language = #en
  * ^designation[=].value = "Initial"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Инициал"

* #death0004-00003 "Dastlabki o'rniga"
  * ^designation[0].language = #en
  * ^designation[=].value = "Instead of initial"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вместо инициала"