CodeSystem: HepatitisConditionOutcomeCodesCS
Id: hepatitis-condition-outcome-codes-cs
Title: "Hepatitis Condition Outcome Codes CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for hepatitis treatment outcome codes."

* insert SupplementCodeSystemDraft(
    hepatitis-condition-outcome-codes-cs,
    $sct,
    2026.1.0
)

* #1137679005 "Good response to medication"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хороший ответ на лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori-darmonlar yaxshi ta'sir etdi"

* #405786003 "Poor response to treatment"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плохой ответ на лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori-darmonlar ta'sir etmadi"