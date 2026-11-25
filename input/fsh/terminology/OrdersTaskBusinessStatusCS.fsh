CodeSystem: OrdersTaskBusinessStatusCS
Id: orders-task-business-status-cs
Title: "Orders task business status codes"
Description: "Business statuses specific to referral approval and hospitalization in Orders."
* insert OriginalCodeSystemDraft(orders-task-business-status-cs)

* #bstatus-0001-00001 "Qayta ishlash uchun qaytarildi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Возвращено на доработку"
  * ^designation[+].language = #en
  * ^designation[=].value = "Returned for revision"

* #bstatus-0001-00002 "So'rov viloyat komissiyasiga yuborildi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос направлен в обл. комиссию"
  * ^designation[+].language = #en
  * ^designation[=].value = "Request sent to the regional commission"

* #bstatus-0001-00003 "So'rov respublika komissiyasiga yuborildi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос направлен в респ. комиссию"
  * ^designation[+].language = #en
  * ^designation[=].value = "Request sent to the republican commission"

* #bstatus-0001-00004 "Tibbiyot muassasasini tanlash kutilmoqda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ожидание выбора мед. учреждения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Awaiting selection of a medical institution"

* #bstatus-0001-00005 "Tibbiyot muassasasidan tasdiq kutilmoqda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ожидание подтверждения медучреждения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Waiting for confirmation from the medical facility"

* #bstatus-0001-00006 "Gospitalizatsiya rejalashtirilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Госпитализация запланирована"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hospitalization scheduled"

* #bstatus-0001-00007 "Gospitalizatsiya qilingan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Госпитализирован"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hospitalized"

* #bstatus-0001-00008 "Davolanishdan bosh tortish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отказ от лечения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Refusal of treatment"

* #bstatus-0001-00009 "Kasalxonadan chiqarilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выписан"
  * ^designation[+].language = #en
  * ^designation[=].value = "Discharged"
