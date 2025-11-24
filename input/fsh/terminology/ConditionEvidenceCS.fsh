CodeSystem: ConditionEvidenceCS
Id: condition-evidence-cs
Title: "Condition Evidence CS"
Description: "Collection of information on the types of evidence for conditions related to death"
* ^url = "https://terminology.dhp.uz/CodeSystem/condition-evidence-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #death0002.00001 "Maishiy"
  * ^designation[0].language = #en
  * ^designation[=].value = "Household"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Бытовая"

* #death0002.00002 "Ko'chada(Avtotransportdan tashqari)"
  * ^designation[0].language = #en
  * ^designation[=].value = "On the street (except autotranssort)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "На улице (кроме автотранспорта)"

* #death0002.00003 "Avtotransportdan"
  * ^designation[0].language = #en
  * ^designation[=].value = "From autotransport"
  * ^designation[+].language = #ru
  * ^designation[=].value = "От автотранспорта"

* #death0002.00004 "Maktabda"
  * ^designation[0].language = #en
  * ^designation[=].value = "At school"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В школе"

* #death0002.00005 "Sportdan"
  * ^designation[0].language = #en
  * ^designation[=].value = "From sports"
  * ^designation[+].language = #ru
  * ^designation[=].value = "От спорта"

* #death0002.00006 "Boshqalar"
  * ^designation[0].language = #en
  * ^designation[=].value = "Others"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"