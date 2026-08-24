CodeSystem: CancerEncounterClassCS
Id: cancer-encounter-class-cs
Title: "Cancer encounter class translation in Russian and English"
Description: "Cancer encounter class code system for Uzbekistan healthcare system"
* insert OriginalCodeSystemDraft(cancer-encounter-class-cs)

* #cancer-0016-0001 "Ma'lumot yo'q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет сведений"
  * ^designation[+].language = #en
  * ^designation[=].value = "No information"

// * #IMP "Ambulator davolangan"
//   * ^designation[0].language = #ru
//   * ^designation[=].value = "Лечился амбулаторно"
//   * ^designation[+].language = #en
//   * ^designation[=].value = "Treated as an outpatient"

// * #AMB "Statsionar davolangan"
//   * ^designation[0].language = #ru
//   * ^designation[=].value = "Лечился стационарно"
//   * ^designation[+].language = #en
//   * ^designation[=].value = "Treated as an inpatient"