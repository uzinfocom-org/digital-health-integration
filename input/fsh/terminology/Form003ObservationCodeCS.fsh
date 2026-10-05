CodeSystem: Form003ObservationCodeCS
Id: form-003-observation-code-cs
Title: "Form003 Observation Code"
Description: "Local Observation.code identifiers for observations that have no suitable LOINC or SNOMED CT code, Form003 inpatient medical record."

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

* #clinical-course "Dinamikadagi ahvoli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Состояние в динамике"
  * ^designation[+].language = #en
  * ^designation[=].value = "Clinical course"

* #day-of-illness "Kasallik kuni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "День болезни"
  * ^designation[+].language = #en
  * ^designation[=].value = "Day of illness"

* #fluid-intake-part-of-day "Kun qismida qabul qilingan suyuqlik miqdori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество жидкости, выпитой за часть суток"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fluid intake for part of the day"

* #hospital-diet-table "Parhez stoli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диетический стол"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hospital diet table"
