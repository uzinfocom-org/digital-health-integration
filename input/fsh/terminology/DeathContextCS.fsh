CodeSystem: DeathContextCS
Id: death-context-cs
Title: "Death Context"
Description: "Local codes for the circumstance and timing of an in-hospital death that SNOMED CT does not cover, Form 003 inpatient medical record."

* insert OriginalCodeSystemDraft(death-context-cs)

* #chr-0030-0001 "Qabulxonada vafot etgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Умер(ла) в приёмном отделении"
  * ^designation[+].language = #en
  * ^designation[=].value = "Died in the admission department"

* #chr-0030-0002 "Homiladorlikning 28-haftasigacha vafot etgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Умер(ла) до 28-й недели беременности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Died before the 28th week of pregnancy"

* #chr-0030-0003 "Homiladorlikning 28-haftasidan keyin vafot etgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Умер(ла) после 28-й недели беременности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Died after the 28th week of pregnancy"
