Profile: Form027OutpatientComposition
Parent: Composition
Id: form-027-outpatient-composition
Title: "Form 027 - Outpatient Visit Composition"
Description: "Composition profile for Form 027 (Outpatient Patient Visit Record / Талон амбулаторного пациента) documents."

* identifier 1..*
* status = #final
* type = $loinc#34764-1 "General medicine Consult note"
* category 1..1
* category = $document-category-cs#form-027 "Outpatient patient visit record"
* subject 1..1
* subject only Reference(UZCorePatient)
* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* author 1..*
* author only Reference(UZCorePractitioner)
* custodian 1..1
* custodian only Reference(UZCoreOrganization)

// Section slicing by code
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    chiefComplaint 1..1 and
    anamnesis 1..1 and
    clinicalExamination 1..1 and
    diagnosis 1..1 and
    diagnostics 0..1 and
    treatmentPlan 0..1

// Shikoyatlar / Жалобы
* section[chiefComplaint].title 1..1
* section[chiefComplaint].code 1..1
* section[chiefComplaint].code = $loinc#10154-3 "Chief complaint Narrative - Reported"
* section[chiefComplaint].entry 1..*
* section[chiefComplaint].entry only Reference(UZCoreObservation)
* section[chiefComplaint].entry ^short = "Chief complaint as free-text Observation"

// Anamnez / Анамнез
* section[anamnesis].title 1..1
* section[anamnesis].code 1..1
* section[anamnesis].code = $loinc#11329-0 "History general Narrative - Reported"
* section[anamnesis].entry 1..*
* section[anamnesis].entry only Reference(UZCoreObservation)
* section[anamnesis].entry ^short = "Anamnesis as free-text Observation"

// Klinik ko'rik / Клинический осмотр
* section[clinicalExamination].title 1..1
* section[clinicalExamination].code 1..1
* section[clinicalExamination].code = $loinc#29545-1
* section[clinicalExamination].entry 1..*
* section[clinicalExamination].entry only Reference(UZCoreObservation)
* section[clinicalExamination].entry ^short = "Clinical examination findings as free-text Observation"

// Tashxislar (asosiy, asorat, yo'ldosh) / Диагнозы
* section[diagnosis].title 1..1
* section[diagnosis].code 1..1
* section[diagnosis].code = $loinc#29308-4 "Diagnosis"
* section[diagnosis].entry 1..*
* section[diagnosis].entry only Reference(UZCoreCondition)
* section[diagnosis].entry ^short = "Main diagnosis, complications, and comorbidities as Condition resources"

// Diagnostik tekshiruv / Диагностическое обследование
* section[diagnostics].title 1..1
* section[diagnostics].code 1..1
* section[diagnostics].code = $loinc#30954-2
* section[diagnostics].entry 0..*
* section[diagnostics].entry only Reference(DiagnosticReport)
* section[diagnostics].entry ^short = "Diagnostic examination results"

// Davolash, retsept, tavsiyalar, kuzatuv / Лечение, рецепт, рекомендации, наблюдение
* section[treatmentPlan].title 1..1
* section[treatmentPlan].code 1..1
* section[treatmentPlan].code = $loinc#18776-5 "Plan of care note"
* section[treatmentPlan].entry 0..*
* section[treatmentPlan].entry only Reference(CarePlan or MedicationRequest or EpisodeOfCare or ServiceRequest)
* section[treatmentPlan].entry ^short = "Treatment, prescriptions, recommendations, follow-up, dispensary and hospitalization referral"
