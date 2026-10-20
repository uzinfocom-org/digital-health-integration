CodeSystem: NursingIntentCS
Id: nursing-intent-cs
Title: "Nursing Intent CodeSystem"
Description: "Uzbek and Russian designations for NursingCarePlan intent"

* insert SupplementCodeSystemDraft(
    nursing-intent-cs,
    $request-intent,
    5.0.0
)

* #proposal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предложение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Taklif"

* #plan
  * ^designation[0].language = #ru
  * ^designation[=].value = "План"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Reja"

* #order
  * ^designation[0].language = #ru
  * ^designation[=].value = "Назначение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Buyruq"

* #option
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вариант"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Variant"

* #directive
  * ^designation[0].language = #ru
  * ^designation[=].value = "Распоряжение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'rsatma"

