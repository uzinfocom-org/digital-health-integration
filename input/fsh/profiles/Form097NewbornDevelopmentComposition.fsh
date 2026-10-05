Profile: Form097NewbornDevelopmentComposition
Parent: Composition
Id: form-097-newborn-development-composition
Title: "Form 097 - Newborn Development Medical Record Composition"
Description: "Composition profile for Form 097 newborn development medical record."

* identifier 1..*
* status = #final
* category 1..1
* category = $document-category-cs#form-097 "Newborn development medical record"
* subject 1..1
* subject only Reference(UZCorePatient)
* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* author only Reference(UZCorePractitionerRole)

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    motherInformation 0..1 and
    birthEvent 1..1 and
    firstNewbornExam 1..1 and
    feeding 0..1 and
    dailyObservation 0..1 and
    dailyReview 0..1 and
    weightDynamics 0..1 and
    prophylaxisImmunization 0..1 and
    screening 0..1 and
    dischargeTransfer 0..1 and
    responsiblePersons 1..1

* section[motherInformation].code = $form-097-section-cs#mother-information "Mother information"
* section[motherInformation].code 1..1
* section[birthEvent].code = $loinc#57075-4 "Newborn delivery information"
* section[birthEvent].code 1..1
* section[firstNewbornExam].code = $form-097-section-cs#first-newborn-exam "First newborn examination"
* section[firstNewbornExam].code 1..1
* section[feeding].code = $form-097-section-cs#feeding "Feeding"
* section[feeding].code 1..1
* section[dailyObservation].code = $newborn-daily-observation-component-cs#daily-observation-panel "Daily newborn observation panel"
* section[dailyObservation].code 1..1
* section[dailyReview].code = $form-097-section-cs#daily-review "Daily review"
* section[dailyReview].code 1..1
* section[weightDynamics].code = $form-097-section-cs#weight-dynamics "Weight dynamics"
* section[weightDynamics].code 1..1
* section[prophylaxisImmunization].code = $form-097-section-cs#prophylaxis-immunization "Prophylaxis / immunization"
* section[prophylaxisImmunization].code 1..1
* section[screening].code = $form-097-section-cs#screening "Screening"
* section[screening].code 1..1
* section[dischargeTransfer].code = $form-097-section-cs#discharge-transfer "Discharge / transfer"
* section[dischargeTransfer].code 1..1
* section[responsiblePersons].code = $loinc#LP35157-4 "Responsible party"
* section[responsiblePersons].code 1..1

* section[firstNewbornExam].entry only Reference(UZCoreObservation or UZCoreCondition or UZCoreProcedure)
* section[birthEvent].entry only Reference(UZCoreObservation or UZCoreProcedure or UZCoreCondition or MedicationAdministration or Medication)
* section[dischargeTransfer].entry only Reference(UZCoreObservation or UZCoreCondition or Provenance or MedicationAdministration)
