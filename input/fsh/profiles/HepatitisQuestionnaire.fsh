Profile: HepatitisQuestionnaire
Parent: UZCoreQuestionnaire
Id: hepatitis-questionnaire
Title: "Hepatitis Questionnaire"
Description: "Structured questionnaire used for collecting clinical and epidemiological information related to viral hepatitis."
* ^status = #draft
* ^experimental = true
* ^date = "2026-08-27"
* ^publisher = "Uzinfocom"

* identifier 1..* MS
* identifier ^short = "Hepatitis questionnaire identifier"

* subjectType 1..* MS

* item MS
* item ^short = "Hepatitis questionnaire sections and questions"


* item.enableBehavior MS
* item.item MS

* item.item.enableWhen 0..* MS
* item.item.enableWhen.answer[x] only boolean

* item.item.answerOption 0..* MS
* item.item.answerOption.value[x] only string or Coding



Instance: example-hepatitis-questionnaire
InstanceOf: HepatitisQuestionnaire
Description: "Hepatitis B and C treatment questionnaire"
Usage: #example

* id = "hepatitis-questionnaire"
* url = "https://dhp.uz/fhir/integrations/Questionnaire/hepatitis-questionnaire"
* version = "1.0.0"

* status = #active
* title = "HEPATITIS QUESTIONNAIRE"
* subjectType = #Patient
* identifier.value = "HCV-HBV-QS-2026"
* description = "Clinical Structured Form"

* item[0]
  * linkId = "grp-1"
  * text = "MAIN INFORMATION"
  * type = #group 

  * item[0]
    * linkId = "hx-tx-hcv-hbv"
    * text = "Has treatment for HCV/HBV been conducted in the past (in the patient's history)?"
    * type = #boolean

  * item[1]
    * linkId = "hx-tx-hcv-hbv-meds"
    * text = "What medications were taken against HCV/HBV?"
    * type = #string
    * enableWhen[0]
      * question = "hx-tx-hcv-hbv"
      * operator = #=
      * answerBoolean = true

* item[1]
  * linkId = "grp-pregnancy"
  * text = "Gynecological treatment / Pregnancy"
  * type = #group

  * item[0]
    * linkId = "pregnancy-trimester"
    * text = "Pregnancy duration (Homiladorlik muddati)"
    * type = #coding
    * answerOption[0].valueCoding = $sct#255246003 "First trimester"
    * answerOption[1].valueCoding = $sct#255247007 "Second trimester"
    * answerOption[2].valueCoding = $sct#255248002 "Third trimester"