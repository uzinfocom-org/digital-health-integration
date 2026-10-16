CodeSystem: Form111_BirthTypeSnomedCS
Id: form111-birth-type-snomed-cs
Title: "Form111 Birth Type SNOMED CT CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for birth type codes used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-birth-type-snomed-cs,
    $sct,
    2026.1.0
)

* #289259007 "Vaginal delivery"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tabiiy tug'ruq yo'llari orqali tug'ruq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Роды через естественные родовые пути"