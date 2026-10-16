CodeSystem: Form096PlacentaDeliveryMethodCS
Id: placenta-delivery-method-cs
Title: "Placenta Delivery Method CodeSystem"
Description: "Governed local concepts for Form 096."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/placenta-delivery-method-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #chr-0086-0001 "Tushdi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Expelled"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отпала"

* #chr-0086-0002 "O‘z-o‘zidan ajraldi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Separated spontaneously"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отделилась самостоятельно"

* #chr-0086-0003 "Qo‘lda ajratib olindi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Removed manually"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Удалена вручную"

* #chr-0086-0004 "Instrumental usulda ajratib olindi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Removed instrumentally"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Удалена инструментально"
