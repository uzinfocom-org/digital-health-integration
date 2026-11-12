CodeSystem: BloodServiceObservationTypeCS
Id: blood-service-observation-type-cs
Title: "Blood service observation type"
Description: "Blood service registration observation and component codes in Uzbekistan"
* insert OriginalCodeSystemDraft(blood-service-observation-type-cs)

* #bsobs-0001-00001 "Donor sifatida ro'yxatga olish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Регистрация донора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood donor registration"

* #bsobs-0001-00002 "Retsipiyent sifatida ro'yxatga olish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Регистрация реципиента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood recipient registration"

* #bsobs-0002-00001 "Donor toifasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Категория донора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Donor category"

* #bsobs-0002-00002 "Donatsiya to'lovi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оплата донации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Donation compensation"

* #bsobs-0002-00003 "Donatsiya turi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вид донации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Donation type"
