CodeSystem: ScreeningPlanClosureReasonCS
Id: screening-plan-closure-reason-cs
Title: "Screening Plan Closure Reasons (Proposal)"
Description: "Draft administrative closure reasons for screening plans, pending agreement. These are not diagnoses or clinical service codes, and do not prescribe a status transition."
* insert OriginalCodeSystemDraft(screening-plan-closure-reason-cs)
* #questionnaire-saved "So'rovnoma saqlandi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опросник сохранён"
  * ^designation[+].language = #en
  * ^designation[=].value = "Questionnaire saved"
* #cohort-exit "Maqsadli guruhdan chiqish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выход из целевой когорты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Exit from the eligible cohort"
* #excluded "Dasturdan chiqarish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исключение из программы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Exclusion from the program"
* #definition-replaced "Dastur ta'rifi almashtirildi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Замена определения программы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Program definition replaced"
