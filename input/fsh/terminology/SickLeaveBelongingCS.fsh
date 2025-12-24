CodeSystem: CarePlanBelongingCS
Id: care-plan-belonging-cs
Title: "Care plan belonging translation in Russian and English"  
Description: "Care plan belonging code system for Uzbekistan healthcare system"
* insert OriginalCodeSystemDraft(care-plan-belonging-cs)

* #emdoc-0003-0001 "shahar aholisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "городская принадлежность"
  * ^designation[+].language = #en
  * ^designation[=].value = "urban population"

* #emdoc-0003-0002 "qishloq aholisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "население кишлака"
  * ^designation[+].language = #en
  * ^designation[=].value = "rural population"