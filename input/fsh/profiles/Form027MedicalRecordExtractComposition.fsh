Profile: Form027MedicalRecordExtractComposition
Parent: UZCoreComposition
Id: form-027-medical-record-extract-composition
Title: "Form 027 - Medical Record Extract Composition"
Description: "Composition profile for Form 027 (Tibbiy muassasadagi bemorning tibbiy kartasidan ko'chirma): an extract from an outpatient or inpatient medical record, sent when the patient is referred or transferred."
* ^experimental = true

* identifier 1..*
* identifier ^short = "Document instance UUID and form number (027)"

* status ^short = "Document status: final once the extract is signed, amended for later corrections"

* type = $composition-type-cs#emdoc-0010-0106 "Extract from inpatient medical record"
* type ^short = "Form 027 document type (extract from medical record); LOINC 34133-9 \"Summary of episode note\" may be sent as an additional coding"

* category 1..*
* category ^short = "Document category: medical record, and the Form 027 category"
* category[dhpCategory] 1..1
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category contains formCategory 1..1
* category[formCategory] = $document-category-cs#form-027
* category[formCategory] ^short = "Form 027 document category"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Patient"

* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Outpatient visit or inpatient stay the extract summarises"

* date ^short = "Date the document was generated"

* author 1..*
* author only Reference(UZCorePractitionerRole or UZCorePractitioner)
* author ^short = "Attending doctor"

* custodian only Reference(UZCoreOrganization)
* custodian ^short = "Institution keeping the medical record"

* title 1..1
* title ^short = "Document title"

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    registrationInformation 0..1 and
    personalInformation 0..1 and
    residenceInformation 0..1 and
    referralAndDiagnosis 0..1 and
    clinicalInformation 0..1 and
    treatmentAndRecommendations 0..1 and
    nextSteps 0..1 and
    responsiblePersons 0..1

* section[registrationInformation].title 1..1
* section[registrationInformation].title ^short = "1. Registration information"
* section[registrationInformation].code 1..1
* section[registrationInformation].code = $loinc#LP74442-2 "Admission Information"
* section[registrationInformation].code ^short = "Institution code and name, registration number, patient type, admission and discharge dates"
* section[registrationInformation].entry 1..*
* section[registrationInformation].entry only Reference(UZCoreOrganization or UZCoreEncounter)
* section[registrationInformation].entry ^short = "Institution and the visit or stay"

* section[personalInformation].title 1..1
* section[personalInformation].title ^short = "2. Personal information"
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#45970-1 "Demographic information section"
* section[personalInformation].code ^short = "PINFL, Med ID, full name, date of birth, sex, citizenship, passport"
* section[personalInformation].entry 1..*
* section[personalInformation].entry only Reference(UZCorePatient)
* section[personalInformation].entry ^short = "Patient"

* section[residenceInformation].title 1..1
* section[residenceInformation].title ^short = "3. Residence and contacts"
* section[residenceInformation].code 1..1
* section[residenceInformation].code = $loinc#56799-0 "Address"
* section[residenceInformation].code ^short = "Actual address, phone, email"
* section[residenceInformation].entry 1..*
* section[residenceInformation].entry only Reference(UZCorePatient)
* section[residenceInformation].entry ^short = "Patient"

* section[referralAndDiagnosis].title 1..1
* section[referralAndDiagnosis].title ^short = "4. Referral and diagnosis"
* section[referralAndDiagnosis].code 1..1
* section[referralAndDiagnosis].code = $loinc#42349-1 "Reason for referral (narrative)"
* section[referralAndDiagnosis].code ^short = "Referring institution, main diagnosis, complication, concomitant disease"
* section[referralAndDiagnosis].entry 1..*
* section[referralAndDiagnosis].entry only Reference(UZCoreEncounter)
* section[referralAndDiagnosis].entry ^short = "Visit or stay carrying the referring institution"

* section[referralAndDiagnosis].section ^slicing.discriminator.type = #value
* section[referralAndDiagnosis].section ^slicing.discriminator.path = "code"
* section[referralAndDiagnosis].section ^slicing.rules = #open
* section[referralAndDiagnosis].section contains
    main 1..1 and
    complication 0..1 and
    concomitant 0..1

* section[referralAndDiagnosis].section[main].title ^short = "Main diagnosis"
* section[referralAndDiagnosis].section[main].code = $diagnosis-role#main
* section[referralAndDiagnosis].section[main].entry 1..*
* section[referralAndDiagnosis].section[main].entry only Reference(UZCoreCondition)

* section[referralAndDiagnosis].section[complication].title ^short = "Complication"
* section[referralAndDiagnosis].section[complication].code = $diagnosis-role#complication
* section[referralAndDiagnosis].section[complication].entry 0..*
* section[referralAndDiagnosis].section[complication].entry only Reference(UZCoreCondition)

* section[referralAndDiagnosis].section[concomitant].title ^short = "Concomitant disease"
* section[referralAndDiagnosis].section[concomitant].code = $diagnosis-role#concomitant
* section[referralAndDiagnosis].section[concomitant].entry 1..*
* section[referralAndDiagnosis].section[concomitant].entry only Reference(UZCoreCondition)

* section[clinicalInformation].title 1..1
* section[clinicalInformation].title ^short = "5. Clinical information"
* section[clinicalInformation].code 1..1
* section[clinicalInformation].code = $loinc#34117-2 "History and physical note"
* section[clinicalInformation].code ^short = "Complaints, anamnesis, clinical examination, diagnostic tests"
* section[clinicalInformation].entry 1..*
* section[clinicalInformation].entry only Reference(UZCoreEncounter or UZCoreObservation or UZCoreDiagnosticReport)
* section[clinicalInformation].entry ^short = "Visit or stay with the complaints, observations and diagnostic reports"

* section[treatmentAndRecommendations].title 1..1
* section[treatmentAndRecommendations].title ^short = "6. Treatment and recommendations"
* section[treatmentAndRecommendations].code 1..1
* section[treatmentAndRecommendations].code = $loinc#18776-5 "Plan of care note"
* section[treatmentAndRecommendations].code ^short = "Treatment, recommendations, prescription"
* section[treatmentAndRecommendations].entry 1..*
* section[treatmentAndRecommendations].entry only Reference(CarePlan or UZCoreMedicationRequest)
* section[treatmentAndRecommendations].entry ^short = "Care plan and medication requests"

* section[nextSteps].title 1..1
* section[nextSteps].title ^short = "7. Next steps"
* section[nextSteps].code 1..1
* section[nextSteps].code = $loinc#74213-0 "Discharge instructions"
* section[nextSteps].code ^short = "Follow-up, dispensary observation, hospitalization"
* section[nextSteps].entry 0..*
* section[nextSteps].entry only Reference(CarePlan or UZCoreEpisodeOfCare or UZCoreServiceRequest)
* section[nextSteps].entry ^short = "Follow-up plan, dispensary episode and hospitalization request"

* section[responsiblePersons].title 1..1
* section[responsiblePersons].title ^short = "8. Responsible persons"
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#LP35157-4 "Responsible party"
* section[responsiblePersons].code ^short = "Attending doctor and responsible person, with their signatures"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole or UZCoreProvenance)
* section[responsiblePersons].entry ^short = "Attending doctor, responsible person and their signatures"
