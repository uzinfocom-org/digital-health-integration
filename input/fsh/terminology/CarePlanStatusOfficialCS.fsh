CodeSystem: CarePlanStatusOfficialCS
Id: care-plan-status-official-cs
Title: "Care Plan Status Official CodeSystem"
Description: "CodeSystem for official care plan statuses in Uzbekistan healthcare system"
* insert SupplementCodeSystemDraft(care-plan-status-official-cs, $request-status, 5.0.0)

* #draft
  * ^designation[0].language = #ru
  * ^designation[=].value = "Черновик"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qoralama"

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Открыт"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"

* #revoked
  * ^designation[0].language = #ru
  * ^designation[=].value = "Деактивирован"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faolsizlantirilgan"

* #completed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Закрыт"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yopiq"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"