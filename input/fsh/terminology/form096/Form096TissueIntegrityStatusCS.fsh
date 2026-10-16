CodeSystem: Form096TissueIntegrityStatusCS
Id: tissue-integrity-status-cs
Title: "Tissue Integrity Status CodeSystem"
Description: "Governed local concepts for Form 096."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/tissue-integrity-status-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #chr-0048-0001 "Butun"
  * ^designation[0].language = #en
  * ^designation[=].value = "Intact"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Целостный"

* #chr-0048-0002 "Butunligi buzilgan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Integrity compromised"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Целостность нарушена"
