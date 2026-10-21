CodeSystem: CancerTreatmentIntentSnomedCS
Id: cancer-treatment-intent-snomed-cs
Title: "Cancer Treatment Intent SNOMED CT Supplement"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for treatment intent concepts used in the Uzbekistan healthcare system."

* insert SupplementCodeSystemDraft(
    cancer-treatment-intent-snomed-cs,
    $sct,
    2026.1.0
)

* #129428001 "Preventive intent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Профилактическое лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Profilaktik davolash"

* #262008008 "Not performed"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не выполнено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bajarilmagan"

* #373808002 "Curative - procedure intent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Радикальное лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Radikal davolash"

* #363676003 "Palliative intent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Паллиативное лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Palliativ davolash"

* #264931009 "Symptomatic"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Симптоматическое лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Simptomatik davolash"

* #399707004 "Supportive - procedure intent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Поддерживающее лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo‘llab-quvvatlovchi davolash"

* #261004008 "Diagnostic intent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обследование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tekshiruv"