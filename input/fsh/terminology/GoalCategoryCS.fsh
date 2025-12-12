CodeSystem: GoalCategoryCS
Id: goal-category-cs
Title: "Goal Category CS translations"
Description: "Code System for Goal Category translations in Uzbek and Russian"
* ^url = "https://dhp.uz/fhir/integrations/CodeSystem/goal-category-cs"
* insert SupplementCodeSystemDraft(goal-category-cs, $goal-category, 0.1.0)

* #dietary
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диетический"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Parhezga oid"
* #safety
  * ^designation[0].language = #ru
  * ^designation[=].value = "Безопасность"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xavfsizlik"
* #behavioral
  * ^designation[0].language = #ru
  * ^designation[=].value = "Поведенческий"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xulq-atvor oid"
* #nursing
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сестринский уход"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hamshiralik parvarishi"
* #physicaltherapy
  * ^designation[0].language = #ru
  * ^designation[=].value = "Физиотерапия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Fizioterapiya"