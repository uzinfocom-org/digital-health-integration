CodeSystem: Form096InterventionEffectivenessCS
Id: intervention-effectiveness-cs
Title: "Intervention Effectiveness CodeSystem"
Description: "Governed local concepts for Form 096."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/intervention-effectiveness-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #chr-0049-0001 "To‘liq samara"
  * ^designation[0].language = #en
  * ^designation[=].value = "Fully effective"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Полный эффект"

* #chr-0049-0002 "Qisman samara"
  * ^designation[0].language = #en
  * ^designation[=].value = "Partially effective"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Частичный эффект"

* #chr-0049-0003 "Samara yo‘q"
  * ^designation[0].language = #en
  * ^designation[=].value = "Ineffective"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отсутствие эффекта"
