Profile: Form096MaternityMedicalRecordComposition
Parent: UZCoreComposition
Id: form-096-maternity-medical-record-composition
Title: "Form 096 - Maternity Medical Record Composition"
Description: "Composition profile for Form 096 (Tug'ruq tibbiy kartasi): the record of a woman's stay in a maternity hospital, from admission through labor, each newborn and the postpartum period, to discharge."
* ^experimental = true

* identifier 1..*
* identifier ^short = "Document instance UUID and form number (096)"

* status ^short = "Document status: preliminary while the woman is in the maternity hospital, final once the record is closed at discharge"

* type = $composition-type-cs#emdoc-0010-0016 "Maternity (delivery) medical record"
* type ^short = "Form 096 document type (maternity medical record); LOINC 57057-2 \"Labor and Delivery Summary Note\" may be sent as an additional coding"

* category 1..*
* category ^short = "Document category: medical record, and the Form 096 category"
* category[dhpCategory] 1..1
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category contains formCategory 1..1
* category[formCategory] = $document-category-cs#form-096
* category[formCategory] ^short = "Form 096 document category"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Woman admitted to the maternity hospital"

* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Maternity hospital stay, from admission to discharge"

* date ^short = "Date the document was generated"

* author 1..*
* author only Reference(UZCorePractitionerRole or UZCorePractitioner)
* author ^short = "Attending doctor and head of department"

* title 1..1
* title ^short = "Document title"

* custodian only Reference(UZCoreOrganization)
* custodian ^short = "Maternity hospital keeping the record"

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
// Optional clinical sections: do not synthesize absent DMED data.
* section contains
    admissionInformation 0..1 and
    medicalAndObstetricHistory 0..1 and
    currentPregnancy 0..1 and
    obstetricExamination 0..1 and
    laborCourse 0..1 and
    newbornDeliveryRecord 0..1 and
    postpartumPeriod 0..1 and
    medicationOrders 0..1 and
    diagnosticOrders 0..1 and
    procedureOrders 0..1 and
    usedMaterials 0..1 and
    sickLeaveCertificates 0..1 and
    responsiblePersons 0..1

// 1. Qabul qilish ma'lumotlari
* section[admissionInformation].title 1..1
* section[admissionInformation].title ^short = "1. Document details, admission and discharge"
* section[admissionInformation].code 1..1
* section[admissionInformation].code = $loinc#LP74442-2 "Admission Information"
* section[admissionInformation].code ^short = "Medical-card number, full name, age, address, workplace, admission date and time, referring organization, ward, blood group, Rh factor, laboratory tests, allergies, diagnoses on admission and discharge, complications, operations, discharge date and outcome"
* section[admissionInformation].entry only Reference(UZCorePatient or UZCoreEncounter or UZCoreOrganization or UZCoreObservation or UZCoreCondition or UZCoreProcedure or UZCoreAllergyIntolerance)
* section[admissionInformation].entry ^short = "Patient, stay, organizations, laboratory results, allergies, diagnoses and operations"

// 2. Anamnez
* section[medicalAndObstetricHistory].title 1..1
* section[medicalAndObstetricHistory].title ^short = "2. Medical and obstetric history"
* section[medicalAndObstetricHistory].code 1..1
* section[medicalAndObstetricHistory].code = $loinc#11329-0 "History general Narrative - Reported"
* section[medicalAndObstetricHistory].code ^short = "Occupation, general diseases, spouse's health, menstrual, sexual and gynecological history, previous pregnancies, deliveries and abortions, epidemiological history"
* section[medicalAndObstetricHistory].entry only Reference(UZCoreRelatedPerson or UZCoreObservation or UZCoreCondition or UZCoreProcedure or UZCoreQuestionnaireResponse)
* section[medicalAndObstetricHistory].entry ^short = "Spouse, history observations, occupation, past diseases and operations, history questionnaire"

// 3. Ushbu homiladorlikning kechishi
* section[currentPregnancy].title 1..1
* section[currentPregnancy].title ^short = "3. Course of this pregnancy and general examination"
* section[currentPregnancy].code 1..1
* section[currentPregnancy].code = $loinc#65869-0 "Pregnancy complication"
* section[currentPregnancy].code ^short = "Prenatal visits, complications of this pregnancy, general condition, height, weight, blood pressure, pulse, temperature, organ systems"
* section[currentPregnancy].entry only Reference(UZCoreObservation or UZCoreCondition or UZCoreQuestionnaireResponse)
* section[currentPregnancy].entry ^short = "Pregnancy course and general examination findings"

// 4. Akusherlik tekshiruvi
* section[obstetricExamination].title 1..1
* section[obstetricExamination].title ^short = "4. Obstetric examination and fetal assessment"
* section[obstetricExamination].code 1..1
* section[obstetricExamination].code = $sct#163497009 "Obstetric examination"
* section[obstetricExamination].code ^short = "Fundal height, abdominal circumference, pelvimetry, gravidity and parity, and for each fetus: lie, position, presentation, heart sounds, heart rate, estimated weight"
* section[obstetricExamination].entry only Reference(UZCoreObservation)
* section[obstetricExamination].entry ^short = "Maternal measurements and one set of fetal observations per fetus"

// 5. Tug'ruqning kechishi
* section[laborCourse].title 1..1
* section[laborCourse].title ^short = "5. Course of labor"
* section[laborCourse].code 1..1
* section[laborCourse].code = $loinc#57074-7 "Labor and delivery process Narrative"
* section[laborCourse].code ^short = "Onset of labor, rupture of membranes, amniotic fluid, cervical dilation, pain relief and its effect, delivery, episiotomy, blood loss, durations of labor and its stages"
* section[laborCourse].entry only Reference(UZCoreObservation or UZCoreProcedure or MedicationAdministration)
* section[laborCourse].entry ^short = "Labor observations, delivery procedures and administered medication"

// 6. Yangi tug'ilgan chaqaloq
* section[newbornDeliveryRecord].title 1..1
* section[newbornDeliveryRecord].title ^short = "6. Newborn delivery record"
* section[newbornDeliveryRecord].code 1..1
* section[newbornDeliveryRecord].code = $loinc#57075-4 "Newborn delivery information"
* section[newbornDeliveryRecord].code ^short = "For each newborn: time of birth, sex, born alive or dead, weight, length, head and chest circumference, condition, Apgar scores, eye prophylaxis; placenta, membranes and cord"
* section[newbornDeliveryRecord].entry only Reference(UZCorePatient or UZCoreObservation or UZCoreCondition or UZCoreProcedure or UZCoreImmunization)
* section[newbornDeliveryRecord].entry ^short = "Each newborn and their birth observations and procedures"
* section[newbornDeliveryRecord].entry ^definition = "Include a separate UZCorePatient for each newborn. When PINFL is absent, use the newborn's DMED medical-card number in Patient.identifier[healthCardId], using the UZ Core HC identifier system. Individual measurements and Apgar assessments reference that newborn as Observation.subject; delivery-wide counts reference the mother. Reuse the same patient identity in Form 097 and add PINFL to that identity when available."

// 7. Tug'ruqdan keyingi davr
* section[postpartumPeriod].title 1..1
* section[postpartumPeriod].title ^short = "7. Postpartum period"
* section[postpartumPeriod].code 1..1
* section[postpartumPeriod].code = $sct#133906008 "Postpartum care"
* section[postpartumPeriod].code ^short = "Daily postpartum rows: general condition, temperature, pulse, blood pressure, breasts, uterus, lochia, bladder and bowel function"
* section[postpartumPeriod].entry only Reference(UZCoreObservation)
* section[postpartumPeriod].entry ^short = "Postpartum observations"

// 8. Dori vositalari
* section[medicationOrders].title 1..1
* section[medicationOrders].title ^short = "8. Medication orders and administrations"
* section[medicationOrders].code 1..1
* section[medicationOrders].code = $loinc#29549-3 "Medication administered Narrative"
* section[medicationOrders].code ^short = "Medication, dose, route, frequency, start and end"
* section[medicationOrders].entry only Reference(UZCoreMedicationRequest or MedicationAdministration or UZCoreObservation)
* section[medicationOrders].entry ^short = "Medication orders and administrations"

// 9. Tekshiruvlar
* section[diagnosticOrders].title 1..1
* section[diagnosticOrders].title ^short = "9. Ordered examinations"
* section[diagnosticOrders].code 1..1
* section[diagnosticOrders].code = $loinc#18776-5 "Plan of care note"
* section[diagnosticOrders].code ^short = "Laboratory and instrumental examinations ordered, and recommendations"
* section[diagnosticOrders].entry only Reference(UZCoreServiceRequest or UZCoreObservation)
* section[diagnosticOrders].entry ^short = "Examination orders"

// 10. Muolajalar
* section[procedureOrders].title 1..1
* section[procedureOrders].title ^short = "10. Ordered procedures"
* section[procedureOrders].code 1..1
* section[procedureOrders].code = $loinc#29554-3 "Procedure Narrative"
* section[procedureOrders].code ^short = "Procedures ordered and performed"
* section[procedureOrders].entry only Reference(UZCoreServiceRequest or UZCoreProcedure)
* section[procedureOrders].entry ^short = "Procedure orders and procedures"

// 11. Ishlatilgan materiallar
* section[usedMaterials].title 1..1
* section[usedMaterials].title ^short = "11. Used materials"
* section[usedMaterials].code 1..1
* section[usedMaterials].code = $loinc#46264-8 "History of medical device use"
* section[usedMaterials].code ^short = "Medical materials used, quantity"
* section[usedMaterials].entry only Reference(UZCoreSupplyDelivery)
* section[usedMaterials].entry ^short = "Supplied materials"

// 12. Mehnatga layoqatsizlik varaqalari
// Sick-leave certificates shown on the title sheet are represented by the
// existing SickLeaveCarePlan profile and may repeat for one hospitalization.
* section[sickLeaveCertificates].title 1..1
* section[sickLeaveCertificates].title ^short = "12. Sick-leave certificates"
* section[sickLeaveCertificates].code 1..1
* section[sickLeaveCertificates].code = $loinc#34109-9 "Note"
* section[sickLeaveCertificates].code ^short = "Sick-leave certificate number, issue date, period"
* section[sickLeaveCertificates].entry only Reference(SickLeaveCarePlan)
* section[sickLeaveCertificates].entry ^short = "Sick-leave certificates"

// 13. Mas'ul shaxslar
* section[responsiblePersons].title 1..1
* section[responsiblePersons].title ^short = "13. Responsible persons and signatures"
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#51899-3 "Details Document"
* section[responsiblePersons].code ^short = "Attending doctor, head of department, signatures"
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole or UZCoreProvenance)
* section[responsiblePersons].entry ^short = "Responsible staff and signature provenance"
