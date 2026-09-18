Profile: HepatitisQuestionnaireResponse
Parent: UZCoreQuestionnaireResponse
Id: hepatitis-questionnaire-response
Title: "Hepatitis Questionnaire Response"
Description: "Profile for representing responses to a hepatitis-related questionnaire in the context of a digital health integration project. This profile extends the base QuestionnaireResponse resource to include specific elements and extensions relevant to hepatitis patient assessments, such as treatment history, clinical status, and pregnancy-related information."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier MS 
  * system = $hep-id-sys
  * system ^short = "Hepatitis QuestionnaireResponse identifier system"

* partOf only Reference(UZCoreSocioeconomicObservation) 

* subject only Reference(HepatitisPatient) 

* author only Reference(UZCorePractitionerRole)

* source only Reference(UZCoreRelatedPerson)

* item.answer.value[x] only boolean or string 

// Instance Example 
Instance: example-hcv-response
InstanceOf: HepatitisQuestionnaireResponse
Description: "Example of anamnesis responses completed by the patient for hepatitis B and C treatment questionnaire"
Usage: #example

* identifier
  * system = "https://dhp.uz/fhir/core/sid/org/uz/hepatitis"
  * value = "6f9b9d8e-3b7d-4d87-8f6e-123456789abc"

* status = #completed
* questionnaire = "https://dhp.uz/fhir/integrations/Questionnaire/hepatitis-questionnaire"
* subject = Reference(example-hepatitis-patient)
* authored = "2026-03-19T12:00:00Z"
* author = Reference(muratova-gulshoda-role)

* item[0]
  * linkId = "grp-1"
  * text = "MAIN INFORMATION"

  * item[0]
    * linkId = "hx-tx-hcv-hbv"
    * text = "Has treatment for HCV/HBV been conducted in the past (in the patient's history)?"
    * answer[0].valueBoolean = true

  * item[1]
    * linkId = "hx-tx-hcv-hbv-meds"
    * text = "What medications were taken against HCV/HBV?"
    * answer[0].valueString = "Sofosbuvir + Declatasvir"

* item[1]
  * linkId = "grp-pregnancy"
  * text = "Gynecological treatment / Pregnancy"

  * item[0]
    * linkId = "pregnancy-trimester"
    * text = "Pregnancy duration (Homiladorlik muddati)"
    * answer[0]
      * valueCoding = $sct#255246003 "First trimester"