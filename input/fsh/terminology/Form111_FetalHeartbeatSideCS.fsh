CodeSystem: Form111_FetalHeartbeatSideCS
Id: form111-fetal-heartbeat-side-cs
Title: "Form 111 Fetal Heartbeat Side CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for fetal heartbeat side codes used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-fetal-heartbeat-side-cs,
    $sct,
    2026.1.0
)

* #7771000 "Left"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Chapda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Слева"

* #24028007 "Right"
  * ^designation[0].language = #uz
  * ^designation[=].value = "O'ngda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Справа"