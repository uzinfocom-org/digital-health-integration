CodeSystem: FlagStatusCS
Id: flag-status-cs
Title: "Flag Status"
Description: "Flag Status supplement with translations in uzbek and russian"
* insert SupplementCodeSystem(flag-status-cs, $flag-status-cs, 5.0.0)

* #active 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"

* #inactive 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неактивный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol emas"

* #entered-in-error 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено ошибочно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"