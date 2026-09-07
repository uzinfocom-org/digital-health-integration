// TODO: Uzbek designations are placeholders pending native-speaker review.
// no and unknown are NOT here: coded via v2-0532 N/UNK, both plain/generic with no distinguishing
// display text.
CodeSystem: CerebrovascularFamilyHistoryCS
Id: cerebrovascular-family-history-cs
Title: "Cerebrovascular screening: family/personal history answers"
Description: "Answer codes for personal or family history of stroke/heart attack in the cerebrovascular disease early-detection questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(cerebrovascular-family-history-cs)
* ^language = #uz

* #personal_stroke_tia "Menda insult yoki TIA bo'lgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "У меня был инсульт или ТИА"
  * ^designation[+].language = #en
  * ^designation[=].value = "I have had a stroke or TIA"
* #family_early_stroke_heart_attack "Qarindoshlarimda erta insult/infarkt"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ранний инсульт/инфаркт у родственников"
  * ^designation[+].language = #en
  * ^designation[=].value = "Early stroke/heart attack in relatives"
