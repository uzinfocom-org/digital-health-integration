CodeSystem: DeathEventOfAccidentCS
Id: death-event-of-accident-cs
Title: "Death Event of Accident CodeSystem"
Description: "Collection of information on the circumstances of an accident that led to an injury or health condition, used for medical documentation and reporting purposes."

* insert OriginalCodeSystemDraft(death-event-of-accident-cs)

* #death0004-00001 "Jarohat sanasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дата травмы"
  * ^designation[0].language = #en
  * ^designation[=].value = "Injury date"

* #death0004-00002 "Jarohat turi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тип травмы"
  * ^designation[0].language = #en
  * ^designation[=].value = "Injury type"

* #death0004-00003 "Joy sharoitlari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Место и обстоятельства"
  * ^designation[0].language = #en
  * ^designation[=].value = "Place circumstances"