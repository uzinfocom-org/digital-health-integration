CodeSystem: DeathEncounterStatusCS
Id: death-encounter-status-cs
Title: "Death Encounter Status CodeSystem"
Description: "Collection of information on the status of an encounter related to death, used for medical documentation"

* insert OriginalCodeSystemDraft(death-encounter-status-cs)

* #death0001_00001 "Yakuniy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Окончательное"
  * ^designation[0].language = #en
  * ^designation[=].value = "Final"

* #death0001_00002 "Dastlabki"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Инициал"
  * ^designation[0].language = #en
  * ^designation[=].value = "Initial"

* #death0001_00003 "Dastlabki o'rniga"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вместо инициала"
  * ^designation[0].language = #en
  * ^designation[=].value = "Instead of initial"