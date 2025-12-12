CodeSystem: GoalPriorityCS
Id: goal-priority-cs
Title: "Goal Priority CS translations"
Description: "Code System for Goal Priority translations in Uzbek and Russian"
* ^url = "https://dhp.uz/fhir/integrations/CodeSystem/goal-priority-cs"
* insert SupplementCodeSystemDraft(goal-priority-cs, $goal-Priority, 0.1.0)

* #high-priority
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокий приоритет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yuqori ustuvorlik"
* #medium-priority
  * ^designation[0].language = #ru
  * ^designation[=].value = "Средний приоритет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'rta ustuvorlik"
* #low-priority
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкий приоритет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Past ustuvorlik"