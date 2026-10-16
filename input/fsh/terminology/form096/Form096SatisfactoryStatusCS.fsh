CodeSystem: Form096SatisfactoryStatusCS
Id: satisfactory-status-cs
Title: "Satisfactory Status CodeSystem"
Description: "Governed local concepts for Form 096."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/satisfactory-status-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #chr-0040-0001 "Qoniqarli"
  * ^designation[0].language = #en
  * ^designation[=].value = "Satisfactory"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Удовлетворительное"

* #chr-0040-0002 "Qoniqarsiz"
  * ^designation[0].language = #en
  * ^designation[=].value = "Unsatisfactory"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неудовлетворительное"
