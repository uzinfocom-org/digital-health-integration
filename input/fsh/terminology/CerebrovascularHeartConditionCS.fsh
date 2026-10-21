// TODO: Uzbek designations are placeholders pending native-speaker review.
// atrial_fibrillation is NOT here: coded via SNOMED CT (49436004, verified active on
// tx.fhir.org) directly in the Questionnaire's answerOption, not a local code. no and unknown are
// also NOT here: coded via v2-0532 N/UNK, both plain/generic with no distinguishing display text.
CodeSystem: CerebrovascularHeartConditionCS
Id: cerebrovascular-heart-condition-cs
Title: "Cerebrovascular screening: heart condition answers"
Description: "Answer codes for heart rhythm disorders / other heart disease in the cerebrovascular disease early-detection questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(cerebrovascular-heart-condition-cs)
* ^language = #uz

* #other_heart_disease "Boshqa yurak kasalliklari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие болезни сердца: ишемия, инфаркт, пороки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other heart disease: ischemia, infarction, defects"
