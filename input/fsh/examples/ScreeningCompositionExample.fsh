Instance: ScreeningCompositionExample
InstanceOf: ScreeningComposition
Usage: #example
Title: "Screening Composition Example"
Description: "Screening summary for a completed cycle: questionnaire answers, results of every step and the final ICD-10 diagnosis."
* id = "screening-composition-example"
* language = #en
* identifier[0].system = $screening-local-id
* identifier[0].value = "128"
* status = #final
* type = $loinc#34133-9 "Summary of episode note"
* subject = Reference(Patient/lola-oripova)
* encounter = Reference(Encounter/Encounter-general)
* date = "2025-12-17T12:00:00Z"
* title = "Cervical and breast cancer screening summary"
* author[0] = Reference(PractitionerRole/practitioner-role-gynecologist)
* custodian = Reference(Organization/xonobod-medical-association)

* event[0].detail[0].reference = Reference(ServiceRequest/screening-pathology-request-example)
* event[=].detail[+].reference = Reference(Encounter/Encounter-general)

* section[questionnaire].title = "Questionnaires"
* section[questionnaire].code = $loinc#74465-6 "Questionnaire response Document"
* section[questionnaire].entry[0] = Reference(QuestionnaireResponse/screening-breast-risk-response-example)
* section[questionnaire].entry[+] = Reference(QuestionnaireResponse/screening-cervical-risk-response-example)
* section[questionnaire].entry[+] = Reference(QuestionnaireResponse/screening-woman-exam-response-128)

* section[results].title = "Results"
* section[results].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[results].entry[0] = Reference(Observation/cytology-result)
* section[results].entry[+] = Reference(Observation/screening-mammography-observation-example)
* section[results].entry[+] = Reference(Observation/screening-breast-ultrasound-observation-example)
* section[results].entry[+] = Reference(Observation/screening-cervical-histology-observation-example)

* section[diagnosis].title = "Final diagnosis"
* section[diagnosis].code = $loinc#29308-4 "Diagnosis"
* section[diagnosis].entry[0] = Reference(Condition/final-diagnosis)


Instance: ScreeningCompositionDocumentExample
InstanceOf: Bundle
Usage: #example
Title: "Screening Summary Document"
Description: "The screening summary as an immutable FHIR document: the Composition is the first entry and every resource it references travels in the same Bundle."
* id = "screening-composition-document-example"
// Validation of a bundle entry follows the Bundle's language, not the entry's own,
// and the questionnaire responses carry Russian answer displays.
* language = #ru
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9f1b6c30-5f4e-4d2a-9a1e-2f7c8d3b4a10"
* type = #document
* timestamp = "2025-12-17T12:00:00Z"

// The Composition must come first in a document Bundle.
* entry[0].fullUrl = "https://dhp.uz/fhir/integrations/Composition/screening-composition-example"
* entry[=].resource = ScreeningCompositionExample
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/Patient/lola-oripova"
* entry[=].resource = lola-oripova
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/Encounter/Encounter-general"
* entry[=].resource = Encounter-general
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/PractitionerRole/practitioner-role-gynecologist"
* entry[=].resource = practitioner-role-gynecologist
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/Organization/xonobod-medical-association"
* entry[=].resource = xonobod-medical-association
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/Condition/final-diagnosis"
* entry[=].resource = final-diagnosis
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/ServiceRequest/screening-pathology-request-example"
* entry[=].resource = ScreeningPathologyRequestExample
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/QuestionnaireResponse/screening-breast-risk-response-example"
* entry[=].resource = ScreeningBreastRiskResponseExample
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/QuestionnaireResponse/screening-cervical-risk-response-example"
* entry[=].resource = ScreeningCervicalRiskResponseExample
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/QuestionnaireResponse/screening-woman-exam-response-128"
* entry[=].resource = ScreeningWomanExamResponse128
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/Observation/cytology-result"
* entry[=].resource = cytology-result
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/Observation/screening-mammography-observation-example"
* entry[=].resource = ScreeningMammographyObservationExample
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/Observation/screening-breast-ultrasound-observation-example"
* entry[=].resource = ScreeningBreastUltrasoundObservationExample
* entry[+].fullUrl = "https://dhp.uz/fhir/integrations/Observation/screening-cervical-histology-observation-example"
* entry[=].resource = ScreeningCervicalHistologyObservationExample
