CodeSystem: EncounterStatusDeathCS
Id: encounter-status-death-cs
Title: "Encounter Status Death CodeSystem"
Description: "Collection of information on the status of an encounter related to death, used for medical documentation"

* insert OriginalCodeSystemDraft(encounter-status-death-cs)

* #death0001.00001 "Yakuniy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Окончательное"
  * ^designation[0].language = #en
  * ^designation[=].value = "Final"

* #death0001.00002 "Dastlabki"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Инициал"
  * ^designation[0].language = #en
  * ^designation[=].value = "Initial"

* #death0001.00003 "Dastlabki o'rniga"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вместо инициала"
  * ^designation[0].language = #en
  * ^designation[=].value = "Instead of initial"