CodeSystem: EncounterStatusCS
Id: encounter-status-cs
Title: "Encounter Status CS"
Description: "Collection of information on the status of encounters"
* ^url = "https://terminology.dhp.uz/CodeSystem/encounter-status-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #en

* #death0004-00001 "Final"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Окончательное"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yakuniy"

* #death0004-00002 "Initial"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инициал"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dastlabki"

* #death0004-00003 "Instead of initial"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вместо инициала"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dastlabki o'rniga"