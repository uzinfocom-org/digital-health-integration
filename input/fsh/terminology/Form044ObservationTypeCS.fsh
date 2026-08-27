CodeSystem: Form044ObservationTypeCS
Id: form-044-observation-type-cs
Title: "Form 044 Observation Type"
Description: "Local codes for observation types used in Form 044 travel clearance certificate."
* insert OriginalCodeSystemDraft(form-044-observation-type-cs)

* #obtype-0044-0001 "Mamlakat nomi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Destination country"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Страна назначения"

* #obtype-0044-0002 "Xizmat safarining muddati"
  * ^designation[0].language = #en
  * ^designation[=].value = "Business trip period"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Срок командировки"

* #obtype-0044-0003 "Tashxis va chet elga borish uchun qarshiliklar yoʻqligi borasida tibbiy yakun"
  * ^designation[0].language = #en
  * ^designation[=].value = "Travel clearance"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Разрешение на выезд"