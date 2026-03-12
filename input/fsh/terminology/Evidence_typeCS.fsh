CodeSystem: EvidenceTypeCS
Id: evidence-type-cs
Title: "Evidence Type CodeSystem"
Description: "Collection of information on the type of evidence used in the context of healthcare and medical documentation."

* insert OriginalCodeSystemDraft(evidence-type-cs)

* #death0002.00001 "Maishiy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Бытовая"
  * ^designation[0].language = #en
  * ^designation[=].value = "Household"

* #death0002.00002 "Ko'chada (transportdan tashqari)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "На улице (кроме автотранспорта)"
  * ^designation[0].language = #en
  * ^designation[=].value = "On the street (except autotransport)"

* #death0002.00003 "Avtotransportdan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Из автотранспорта"
  * ^designation[0].language = #en
  * ^designation[=].value = "From transport"

* #death0002.00004 "Maktabda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В школе"
  * ^designation[0].language = #en
  * ^designation[=].value = "At school"

* #death0002.00005 "Sportdan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Из спорта"
  * ^designation[0].language = #en
  * ^designation[=].value = "From sports"

* #death0002.00006 "Boshqalar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[0].language = #en
  * ^designation[=].value = "Others"