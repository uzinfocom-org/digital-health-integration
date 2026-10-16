CodeSystem: Form111_FetalPresentationCS
Id: form111-fetal-presentation-cs
Title: "Form 111 Fetal Presentation CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for fetal presentation codes used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-fetal-presentation-cs,
    $sct,
    2026.1.0
)

* #6096002 "Breech presentation"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Chanoq bilan kelish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тазовое предлежание"

* #1209182005 "Cephalic fetal presentation"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bosh bilan kelish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Головное предлежание"

* #373068000 "Undetermined"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Aniqlanmagan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не определено"