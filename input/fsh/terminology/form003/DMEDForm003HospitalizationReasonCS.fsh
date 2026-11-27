CodeSystem: DMEDForm003HospitalizationReasonCS
Id: dmed-form-003-hospitalization-reason-cs
Title: "DMED Form 003 hospitalization reason"
Description: "Source selections of title-page.hospitalization_reason. These mixed disease, injury, accident and planned-admission selections are preserved separately from Encounter priority."
* insert OriginalCodeSystemDraft(dmed-form-003-hospitalization-reason-cs)

* #disease "Kasallik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заболевание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Disease"
* #injury "Jarohat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Травма"
  * ^designation[+].language = #en
  * ^designation[=].value = "Injury"
* #car_accident "Yo'l-transport hodisasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ДТП"
  * ^designation[+].language = #en
  * ^designation[=].value = "Road traffic accident"
* #planned "Rejali gospitalizatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плановая госпитализация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Planned hospitalization"
