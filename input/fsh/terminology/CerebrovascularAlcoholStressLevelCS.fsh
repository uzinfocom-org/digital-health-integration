// TODO: Uzbek designations are placeholders pending native-speaker review.
// regular_alcohol, high_stress and none are NOT here: coded via SNOMED CT (86933000 Heavy drinker,
// 1193534004 High perceived stress, 373067005 No, all verified active on tx.fhir.org) directly in
// the Questionnaire's answerOption, not local codes.
CodeSystem: CerebrovascularAlcoholStressLevelCS
Id: cerebrovascular-alcohol-stress-level-cs
Title: "Cerebrovascular screening: alcohol/stress level answers"
Description: "Answer codes for the combined alcohol-and-stress finding in the cerebrovascular disease early-detection questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(cerebrovascular-alcohol-stress-level-cs)
* ^language = #uz

* #both "Ikkalasi ham"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оба фактора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Both factors"
