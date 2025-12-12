CodeSystem: GoalStatusCS
Id: goal-status-cs
Title: "Goal Lifecycle Status CS translations"
Description: "Code System for Goal Lifecycle Status translations in Uzbek and Russian"
* ^url = "https://dhp.uz/fhir/integrations/CodeSystem/goal-status-cs"
* insert SupplementCodeSystemDraft(goal-status-cs, $goal-status, 5.0.0)

* #proposed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предложена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Taklif etilgan"
* #planned
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запланирована"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rejalashtirilgan"
* #accepted
  * ^designation[0].language = #ru
  * ^designation[=].value = "Принята"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qabul qilingan"
* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активна"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"
* #on-hold
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приостановлена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To‘xtatilgan"
* #completed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Завершена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tugatildi"
* #cancelled
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отменена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"
* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введена по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato tufayli kiritilgan"
* #rejected
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отклонена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rad etilgan"