CodeSystem: CarePlanStatusLocalCS
Id: care-plan-status-local-cs
Title: "Care Plan Status Local CodeSystem"
Description: "CodeSystem for local care plan statuses in Uzbekistan healthcare system"
* insert OriginalCodeSystemDraft(care-plan-status-local-cs)

* #emdoc-0002-0001 "Uzaytirilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Продлен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Extended"

* #emdoc-0002-0002 "TMEKga yuborilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Направлен во ВТЭК"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sent to MSEC"

* #emdoc-0002-0003 "TMEK ma'lumotlari bilan to'ldirilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дополнен данными ВТЭК"
  * ^designation[+].language = #en
  * ^designation[=].value = "Supplemented with MSEC data"

* #emdoc-0002-0004 "Tasdiqlashga yuborilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отправлен на утверждение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sent for approval"

* #emdoc-0002-0005 "Qaytarilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Возвращен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Returned"