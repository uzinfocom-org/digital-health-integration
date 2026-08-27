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

* subject only Reference(UZCorePatient) 

* author only Reference(UZCorePractitionerRole)

* source only Reference(UZCoreRelatedPerson)

* item.answer.value[x] only boolean or string 

// Instance Example 
Instance: example-hcv-response
InstanceOf: HepatitisQuestionnaireResponse
Description: "Example of anamnesis responses completed by the patient for hepatitis B and C treatment questionnaire"
Usage: #example

* status = #completed
* questionnaire = "https://dhp.uz/fhir/integrations/Questionnaire/hepatitis-questionnaire"
* subject = Reference(hepatitis-patient-example)
* authored = "2026-03-19T12:00:00Z"
* author = Reference(example-hepatologist-role)

* item[0].linkId = "grp-1"
* item[0].text = "MAIN INFORMATION"

* item[0].item[0].linkId = "hx-tx-hcv-hbv"
* item[0].item[0].text = "Has treatment for HCV/HBV been conducted in the past (in the patient's history)?"
* item[0].item[0].answer[0].valueBoolean = true

* item[0].item[1].linkId = "hx-tx-hcv-hbv-meds"
* item[0].item[1].text = "What medications were taken against HCV/HBV?"
* item[0].item[1].answer[0].valueString = "Sofosbuvir + Daclatasvir"

