CodeSystem: Form096MaternalDeathTimingCS
Id: maternal-death-timing-cs
Title: "Maternal Death Timing CodeSystem"
Description: "Governed local concepts for Form 096."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/maternal-death-timing-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #chr-0042-0001 "Tug‘ruqdan oldin"
  * ^designation[0].language = #en
  * ^designation[=].value = "Before childbirth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "До родов"

* #chr-0042-0002 "Tug‘ruq vaqtida"
  * ^designation[0].language = #en
  * ^designation[=].value = "During childbirth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Во время родов"

* #chr-0042-0003 "Tug‘ruqdan keyin"
  * ^designation[0].language = #en
  * ^designation[=].value = "After childbirth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "После родов"
