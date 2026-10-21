// TODO: Uzbek designations are placeholders pending native-speaker review.
// yes and no are NOT here: coded via v2-0532 Y/N directly in the Questionnaire's answerOption, not
// local codes. unknown stays local: its display ("Don't know / measure irregularly") is more
// specific than the generic v2-0532 UNK, so the meaning would differ.
CodeSystem: CerebrovascularBloodPressureStatusCS
Id: cerebrovascular-blood-pressure-status-cs
Title: "Cerebrovascular screening: blood pressure status answers"
Description: "Answer codes for blood pressure status in the cerebrovascular disease early-detection questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(cerebrovascular-blood-pressure-status-cs)
* ^language = #uz

* #unknown "Bilmayman / muntazam o'lchamayman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не знаю / измеряю нерегулярно"
  * ^designation[+].language = #en
  * ^designation[=].value = "Don't know / measure irregularly"
