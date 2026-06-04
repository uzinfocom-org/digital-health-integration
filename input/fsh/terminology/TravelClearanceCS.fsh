CodeSystem: TravelClearanceCS
Id: travel-clearance-cs
Title: "Travel Clearance Code System"
Description: "Codes for medical fitness assessment outcomes and travel-related clinical concepts used in Form 044 (Medical certificate for persons travelling abroad)."
* ^experimental = true
* ^caseSensitive = true
* ^language = #uz

* #travel-fitness-assessment "Chet elga safar uchun tibbiy xulosasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Medical fitness assessment for foreign travel"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Медицинское заключение о годности для выезда за рубеж"

* #allowed "Ruxsat berilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Travel allowed — no medical contraindications"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Выезд разрешён — медицинских противопоказаний нет"

* #denied "Ruxsat berilmagan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Travel not allowed — medical contraindications present"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Выезд не разрешён — имеются медицинские противопоказания"

* #destination-country "Borish mamlakati"
  * ^designation[0].language = #en
  * ^designation[=].value = "Destination country"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Страна назначения"

* #travel-duration "Safarning muddati"
  * ^designation[0].language = #en
  * ^designation[=].value = "Duration of travel"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Срок поездки"
