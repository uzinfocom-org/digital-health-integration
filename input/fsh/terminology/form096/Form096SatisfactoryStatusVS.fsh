ValueSet: Form096SatisfactoryStatusVS
Id: satisfactory-status-vs
Title: "Satisfactory Status"
Description: "Form 096 terminology binding for Observation.valueCodeableConcept / QuestionnaireResponse.item.answer.valueCoding."
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/satisfactory-status-vs"
* ^status = #active
* ^experimental = true
* include $form096-satisfactory-status-cs#chr-0040-0001 "Satisfactory"
* include $form096-satisfactory-status-cs#chr-0040-0002 "Unsatisfactory"
