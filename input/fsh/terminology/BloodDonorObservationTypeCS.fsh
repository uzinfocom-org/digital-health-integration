CodeSystem: BloodDonorObservationTypeCS
Id: blood-donor-observation-type-cs
Title: "Blood donor observation type codes"
Description: "Blood donor observation type codes for blood donor registration in Uzbekistan"
* insert OriginalCodeSystemDraft(blood-donor-observation-type-cs)

* #bdobs-0001-00001 "Donatsiya turi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вид донации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Donation type"

* #bdobs-0001-00002 "Qon guruhi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Группа крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood group"

* #bdobs-0001-00003 "Rezus-omil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Резус-фактор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rh factor"
