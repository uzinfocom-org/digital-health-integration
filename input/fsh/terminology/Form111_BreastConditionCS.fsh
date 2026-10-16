CodeSystem: Form111_BreastConditionCS
Id: form111-breast-condition-cs
Title: "Form 111 Breast Condition CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for breast condition codes used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-breast-condition-cs,
    $sct,
    2026.1.0
)

* #17621005 "Normal"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Patologiya yo'q"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Патология отсутствует"

* #263654008 "Abnormal"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Patologiya mavjud"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Имеется патология"