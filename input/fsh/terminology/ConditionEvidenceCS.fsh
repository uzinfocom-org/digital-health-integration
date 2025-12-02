CodeSystem: ConditionEvidenceCS
Id: condition-evidence-cs
Title: "Condition Evidence CS"
Description: "Collection of information on the types of evidence for conditions related to death"
* ^url = "https://terminology.dhp.uz/CodeSystem/condition-evidence-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #en

* #death0002.00001 "Household"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бытовая"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Maishiy"

* #death0002.00002 "On the street (except autotransport)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "На улице (кроме автотранспорта)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'chada(Avtotransportdan tashqari)"

* #death0002.00003 "From autotransport"
  * ^designation[0].language = #ru
  * ^designation[=].value = "От автотранспорта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Avtotransportdan"

* #death0002.00004 "At school"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В школе"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Maktabda"

* #death0002.00005 "From sports"
  * ^designation[0].language = #ru
  * ^designation[=].value = "От спорта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Sportdan"

* #death0002.00006 "Others"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqalar"
