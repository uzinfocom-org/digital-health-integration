CodeSystem: Form044ObservationCodeCS
Id: form-044-observation-code-cs
Title: "Form 044 Observation Codes"
Description: "Local codes for Form 044 observations that have no suitable LOINC or SNOMED CT code. LOINC has no concept for a planned trip period (only separate travel start and past-travel departure dates), and neither LOINC nor SNOMED CT has a finding for fitness to travel."

* insert OriginalCodeSystemDraft(form-044-observation-code-cs)

* #travel-clearance "Chet elga borish uchun qarshiliklar yo'qligi borasida tibbiy yakun"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинское заключение об отсутствии противопоказаний к выезду"
  * ^designation[+].language = #en
  * ^designation[=].value = "Travel clearance"

* #trip-period "Xizmat safarining muddati"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Срок командировки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Business trip period"
