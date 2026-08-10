Profile: ScreeningComposition
Parent: Composition
Id: screening-composition
Title: "Screening Composition"
Description: "Downloadable summary of a cervical or breast cancer screening episode. It aggregates the results recorded so far, the final diagnosis and the surrounding clinical context."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier 1..* MS
* status MS
* type = $loinc#34133-9 "Summary of episode note"

* subject 1..1 MS
* subject only Reference(ScreeningPatient)
* encounter 0..1 MS
* encounter only Reference(ScreeningEncounter)
* date 1..1 MS

* author 1..* MS
* author only Reference(UZCorePractitionerRole)
* custodian 1..1 MS
* custodian only Reference(UZCoreOrganization)

// The referrals, procedures and visits this document reports on.
* event 0..* MS
* event.detail only CodeableReference(ScreeningServiceRequest or UZCoreProcedure or ScreeningEncounter)

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

// All three sections are optional: the document can be produced at any point in
// the screening episode and simply omits what has not been recorded yet.
* section contains
    results 0..1 MS and
    diagnosis 0..1 MS and
    questionnaire 0..1 MS

* section[results] ^short = "Results of every completed screening step"
* section[results].title 1..1
* section[results].code 1..1
* section[results].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[results].entry 1..*
* section[results].entry only Reference(ScreeningObservation)

* section[diagnosis] ^short = "Final ICD-10 diagnosis closing the screening cycle"
* section[diagnosis].title 1..1
* section[diagnosis].code 1..1
* section[diagnosis].code = $loinc#29308-4 "Diagnosis"
* section[diagnosis].entry 1..1
* section[diagnosis].entry only Reference(UZCoreCondition)

* section[questionnaire] ^short = "Completed screening questionnaires"
* section[questionnaire].title 1..1
* section[questionnaire].code 1..1
* section[questionnaire].code = $loinc#74465-6 "Questionnaire response Document"
* section[questionnaire].entry 1..*
* section[questionnaire].entry only Reference(UZCoreQuestionnaireResponse)
