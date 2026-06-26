CodeSystem: DeathInjuryPlaceCS
Id: death-injury-place-cs
Title: "Death Injury Place CodeSystem"
Description: "Collection of codes representing places of injury related to death cases."

* insert OriginalCodeSystemDraft(death-injury-place-cs)

* #death0002_00001 "Maishiy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Бытовая"
  * ^designation[0].language = #en
  * ^designation[=].value = "Household"

* #death0002_00002 "Ko'chada (transportdan tashqari)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "На улице (кроме автотранспорта)"
  * ^designation[0].language = #en
  * ^designation[=].value = "On the street (except autotransport)"

* #death0002_00003 "Avtotransportdan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Из автотранспорта"
  * ^designation[0].language = #en
  * ^designation[=].value = "From transport"

* #death0002_00004 "Maktabda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В школе"
  * ^designation[0].language = #en
  * ^designation[=].value = "At school"

* #death0002_00005 "Sportdan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Из спорта"
  * ^designation[0].language = #en
  * ^designation[=].value = "From sports"

* #death0002_00006 "Boshqalar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[0].language = #en
  * ^designation[=].value = "Others"