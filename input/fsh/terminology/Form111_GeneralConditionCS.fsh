CodeSystem: Form111_GeneralConditionCS
Id: form111-general-condition-cs
Title: "Form 111 General Condition CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for general condition codes used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-general-condition-cs,
    $sct,
    2026.1.0
)

* #162669003 "Patient's condition satisfactory"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qoniqarli"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Удовлетворительное"

* #162667001 "Patient's condition poor"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qoniqarsiz"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неудовлетворительное"