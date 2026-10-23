CodeSystem: CarePlanStatusLocalCS
Id: care-plan-status-local-cs
Title: "Care Plan Status Local CodeSystem"
Description: "Sick leave statuses of the DHP sick leave API"
* insert SickLeaveContact
* insert OriginalCodeSystemDraft(care-plan-status-local-cs)

* #opened "Ochiq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Открыт"
  * ^designation[+].language = #en
  * ^designation[=].value = "Opened"

* #extended "Uzaytirilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Продлён"
  * ^designation[+].language = #en
  * ^designation[=].value = "Extended"

* #closed "Yopiq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Закрыт"
  * ^designation[+].language = #en
  * ^designation[=].value = "Closed"

* #cancelled "Bekor qilingan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отменён"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cancelled"
