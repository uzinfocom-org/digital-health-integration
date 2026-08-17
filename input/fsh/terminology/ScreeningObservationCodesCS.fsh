CodeSystem: ScreeningObservationCodesCS
Id: screening-observation-codes-cs
Title: "Screening Observation Codes Supplement CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for screening observation codes used in Uzbekistan."

* insert SupplementCodeSystemDraft(
    screening-observation-codes-cs,
    $sct,
    2026.1.0
)

* #5880005 "Physical examination"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Физикальное обследование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jismoniy ko'rik"

* #1269489004 "Chief complaint"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Основная жалоба"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Asosiy shikoyat"

* #281036007 "Follow-up consultation"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Повторная консультация"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Takroriy konsultatsiya"

* #224406003 "Details relating to place of work and employer"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сведения о месте работы и работодателе"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ish joyi va ish beruvchi to'g'risidagi ma'lumotlar"