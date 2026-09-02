Profile: Form027MedicalRecordExtractComposition
Parent: Composition
Id: form-027-medical-record-extract-composition
Title: "Form 027 - Medical Record Extract Composition"
Description: "Composition profile for Form 027 extract from outpatient/inpatient medical record."


* identifier 1..*
* status = #final
* type = $loinc#34133-9 "Summary of episode note"

* category 1..1
* category = $document-category-cs#form-027 "Extract from patient's medical record"

* subject 1..1
* subject only Reference(UZCorePatient)

* encounter 1..1
* encounter only Reference(UZCoreEncounter)

* author only Reference(UZCorePractitioner)

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    registrationInformation 1..1 and
    personalInformation 1..1 and
    residenceInformation 1..1 and
    referralAndDiagnosis 1..1 and
    clinicalInformation 1..1 and
    treatmentAndRecommendations 1..1 and
    nextSteps 0..1 and
    responsiblePersons 1..1

* section[registrationInformation].title 1..1
* section[registrationInformation].code 1..1
* section[registrationInformation].code = $loinc#46240-8 "History of Hospitalizations+Outpatient visits Narrative"
* section[registrationInformation].entry 1..*
* section[registrationInformation].entry only Reference(UZCoreOrganization or UZCoreEncounter)

* section[personalInformation].title 1..1
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#45970-1 "Demographic information section"
* section[personalInformation].entry 1..*
* section[personalInformation].entry only Reference(UZCorePatient)

* section[residenceInformation].title 1..1
* section[residenceInformation].code 1..1
* section[residenceInformation].code = $loinc#56799-0 "Address"
* section[residenceInformation].entry 1..*
* section[residenceInformation].entry only Reference(UZCorePatient)

* section[referralAndDiagnosis].title 1..1
* section[referralAndDiagnosis].code 1..1
* section[referralAndDiagnosis].code = $loinc#42349-1 "Reason for referral (narrative)"
* section[referralAndDiagnosis].entry 1..*
* section[referralAndDiagnosis].entry only Reference(UZCoreEncounter)

* section[referralAndDiagnosis].section ^slicing.discriminator.type = #value
* section[referralAndDiagnosis].section ^slicing.discriminator.path = "code"
* section[referralAndDiagnosis].section ^slicing.rules = #open
* section[referralAndDiagnosis].section contains
    main 1..1 and
    complication 0..1 and
    concomitant 0..1

* section[referralAndDiagnosis].section[main].code = $diagnosis-role#main
* section[referralAndDiagnosis].section[main].entry 1..*
* section[referralAndDiagnosis].section[main].entry only Reference(UZCoreCondition)

* section[referralAndDiagnosis].section[complication].code = $diagnosis-role#complication
* section[referralAndDiagnosis].section[complication].entry 0..*
* section[referralAndDiagnosis].section[complication].entry only Reference(UZCoreProcedure)

* section[referralAndDiagnosis].section[concomitant].code = $diagnosis-role#concomitant
* section[referralAndDiagnosis].section[concomitant].entry 1..*
* section[referralAndDiagnosis].section[concomitant].entry only Reference(UZCoreCondition)

* section[clinicalInformation].title 1..1
* section[clinicalInformation].code 1..1
* section[clinicalInformation].code = $loinc#34117-2 "History and physical note"
* section[clinicalInformation].entry 1..*
* section[clinicalInformation].entry only Reference(UZCoreEncounter or UZCoreObservation or UZCoreDiagnosticReport)

* section[treatmentAndRecommendations].title 1..1
* section[treatmentAndRecommendations].code 1..1
* section[treatmentAndRecommendations].code = $loinc#18776-5 "Plan of care note"
* section[treatmentAndRecommendations].entry 1..*
* section[treatmentAndRecommendations].entry only Reference(CarePlan or MedicationRequest)
// Для CarePlan, MedicationRequest национальных профилей нет 

* section[nextSteps].title 1..1
* section[nextSteps].code 1..1
* section[nextSteps].code = $loinc#74213-0 "Discharge instructions"
* section[nextSteps].entry 0..*
* section[nextSteps].entry only Reference(CarePlan or UZCoreEpisodeOfCare or UZCoreServiceRequest)
// The reference will be changed to UZCoreMedicationRequest after UZCoreMedicationRequest is published in the IG
* section[responsiblePersons].title 1..1
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#LP35157-4 "Responsible party"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitioner or UZCoreProvenance)

