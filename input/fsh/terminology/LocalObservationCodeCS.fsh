CodeSystem: LocalObservationCodeCS
Id: local-observation-code
Title: "Local Observation Code System"
Description: "Observation.code identifiers used across MoH forms where LOINC or SNOMED CT have no suitable code (uz/ru/en). Used in Form 003, Form 066 and Form 066-1."
* insert OriginalCodeSystemDraft(local-observation-code)

* #num-previous-hospitalizations "Avval necha marta shifoxonada davolangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество предыдущих госпитализаций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Number of previous hospitalizations"

* #onset-to-admission-delay "Kasallik yoki jarohatdan keyin yotqizilgunga qadar o'tgan vaqt"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Время от начала заболевания/травмы до госпитализации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Time from onset of disease or injury to admission"

* #referral-available "Yo'llanma mavjud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наличие направления"
  * ^designation[+].language = #en
  * ^designation[=].value = "Referral available"
