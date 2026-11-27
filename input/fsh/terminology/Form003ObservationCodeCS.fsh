CodeSystem: Form003ObservationCodeCS
Id: form-003-observation-code-cs
Title: "Form 003 observation code"
Description: "Local Observation.code identifiers for observations that have no suitable LOINC or SNOMED CT code, Form 003 inpatient medical record."

* insert OriginalCodeSystemDraft(form-003-observation-code-cs)

* #patient-transport-mobility "Bemorni tashish usuli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Способ транспортировки пациента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Patient transport mobility"

* #work-capacity-status "Mehnat qobiliyati holati"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Состояние трудоспособности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Work capacity status"


* #day-of-illness "Kasallik kuni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "День болезни"
  * ^designation[+].language = #en
  * ^designation[=].value = "Day of illness"



* #children-institution "Bolalar muassasasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Детское учреждение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Children's institution"
* #other-diseases "Mavhum kasalliklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие заболевания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other diseases"
* #death-context "Vafot etish holati"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контекст смерти"
  * ^designation[+].language = #en
  * ^designation[=].value = "Death context"

* #hospitalization-reason "Kasalxonaga yotqizish sababi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Причина госпитализации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hospitalization reason"
* #same-condition-hospitalizations-this-year "Mazkur yilda shu kasallik bo'yicha jami gospitalizatsiyalar, joriy gospitalizatsiya bilan"
  * ^definition = "Number of hospitalizations for the same condition in the current calendar year, including the current hospitalization."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество госпитализаций по тому же заболеванию в текущем году, включая текущую"
  * ^designation[+].language = #en
  * ^designation[=].value = "Same-condition hospitalizations this year, including current"
