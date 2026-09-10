Profile: Form096MaternityMedicalRecordComposition
Parent: Composition
Id: form-096-maternity-medical-record-composition
Title: "Form 096 - Maternity Medical Record Composition"
Description: "FHIR R5 Composition for Form 096 (Tug'ruq tibbiy kartasi), aligned with the approved Form 096 mapping and terminology workbook."

* identifier 1..*
* identifier ^short = "Form 096 maternity medical-record number"
* status = #final
* type = $loinc#34117-2 "History and physical note"
* type ^short = "Form 096 maternity medical record"
* category 1..1
* category = $document-category-cs#form-096 "Birth medical record"
* subject 1..1
* subject only Reference(UZCorePatient)
* encounter 1..1
* encounter only Reference(Form096Encounter)
* author 1..*
* author only Reference(UZCorePractitionerRole)
* custodian 1..1
* custodian only Reference(UZCoreOrganization)

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    admissionInformation 1..1 and
    medicalAndObstetricHistory 1..1 and
    epidemiologicalHistory 0..1 and
    currentPregnancy 1..1 and
    obstetricExamination 1..1 and
    laborCourse 1..1 and
    newbornDeliveryRecord 1..1 and
    postpartumPeriod 1..1 and
    medicationOrders 0..1 and
    diagnosticOrders 0..1 and
    procedureOrders 0..1 and
    usedMaterials 0..1 and
    sickLeaveCertificates 0..1 and
    responsiblePersons 1..1

// Document identifiers, demographics, admission/discharge, laboratory values,
// diagnoses, complications, operations, and disposition.
* section[admissionInformation].title 1..1
* section[admissionInformation].code 1..1
* section[admissionInformation].code = $loinc#46241-6 "Hospital admission diagnosis Narrative - Reported"
* section[admissionInformation].entry 1..*
* section[admissionInformation].entry only Reference(UZCorePatient or Form096Encounter or UZCoreOrganization or UZCoreObservation or UZCoreCondition or Procedure or AllergyIntolerance)

// General diseases, spouse health, menstrual/sexual/gynecological history, and
// previous pregnancies, births, abortions, operations, newborn weights and outcomes.
* section[medicalAndObstetricHistory].title 1..1
* section[medicalAndObstetricHistory].code 1..1
* section[medicalAndObstetricHistory].code = $loinc#11329-0 "History general Narrative - Reported"
* section[medicalAndObstetricHistory].entry 1..*
* section[medicalAndObstetricHistory].entry only Reference(UZCoreRelatedPerson or UZCoreObservation or UZCoreCondition or Procedure or UZCoreQuestionnaireResponse)

* section[epidemiologicalHistory].title 1..1
* section[epidemiologicalHistory].code 1..1
* section[epidemiologicalHistory].code = $loinc#LP269982-7
* section[epidemiologicalHistory].entry 1..*
* section[epidemiologicalHistory].entry only Reference(UZCoreObservation or UZCoreCondition or UZCoreQuestionnaireResponse)

// Course/complications of the current pregnancy and general physical examination.
* section[currentPregnancy].title 1..1
* section[currentPregnancy].code 1..1
* section[currentPregnancy].code = $loinc#65869-0 "Pregnancy complication"
* section[currentPregnancy].entry 1..*
* section[currentPregnancy].entry only Reference(UZCoreObservation or UZCoreCondition or UZCoreQuestionnaireResponse)

// Maternal measurements, pelvimetry, pregnancy counts and fetal assessment.
* section[obstetricExamination].title 1..1
* section[obstetricExamination].code 1..1
* section[obstetricExamination].code = $sct#171425002
* section[obstetricExamination].entry 1..*
* section[obstetricExamination].entry only Reference(UZCoreObservation or UZCorePractitionerRole)

// Labor onset, rupture of membranes, dilation, pushing, support and duration.
* section[laborCourse].title 1..1
* section[laborCourse].code 1..1
* section[laborCourse].code = $sct#289909005 "Labor"
* section[laborCourse].entry 1..*
* section[laborCourse].entry only Reference(UZCoreObservation or Procedure or MedicationAdministration or UZCorePractitionerRole)

// Each newborn, birth measurements, presentation, Apgar, placenta, membranes and cord.
* section[newbornDeliveryRecord].title 1..1
* section[newbornDeliveryRecord].code 1..1
* section[newbornDeliveryRecord].code = $loinc#57075-4 "Newborn delivery information"
* section[newbornDeliveryRecord].entry 1..*
* section[newbornDeliveryRecord].entry only Reference(UZCorePatient or UZCoreObservation or Procedure or Immunization or UZCorePractitionerRole)

// Repeating postpartum observation rows.
* section[postpartumPeriod].title 1..1
* section[postpartumPeriod].code 1..1
* section[postpartumPeriod].code = $sct#86569001 "Postpartum state"
* section[postpartumPeriod].entry 1..*
* section[postpartumPeriod].entry only Reference(UZCoreObservation)

* section[medicationOrders].title 1..1
* section[medicationOrders].code 1..1
* section[medicationOrders].code = $loinc#10160-0 "History of Medication use Narrative"
* section[medicationOrders].entry 1..*
* section[medicationOrders].entry only Reference(MedicationRequest or MedicationAdministration or UZCoreObservation)

* section[diagnosticOrders].title 1..1
* section[diagnosticOrders].code 1..1
* section[diagnosticOrders].code = $loinc#18776-5 "Plan of care note"
* section[diagnosticOrders].entry 1..*
* section[diagnosticOrders].entry only Reference(UZCoreServiceRequest or UZCoreObservation)

* section[procedureOrders].title 1..1
* section[procedureOrders].code 1..1
* section[procedureOrders].code = $loinc#29554-3 "Procedure Narrative"
* section[procedureOrders].entry 1..*
* section[procedureOrders].entry only Reference(UZCoreServiceRequest or Procedure)

* section[usedMaterials].title 1..1
* section[usedMaterials].code 1..1
* section[usedMaterials].code = $loinc#46264-8 "History of medical device use"
* section[usedMaterials].entry 1..*
* section[usedMaterials].entry only Reference(SupplyDelivery)

// Sick-leave certificates shown on the title sheet are represented by the
// existing SickLeaveCarePlan profile and may repeat for one hospitalization.
* section[sickLeaveCertificates].title 1..1
* section[sickLeaveCertificates].code 1..1
* section[sickLeaveCertificates].code = $sct#224459001 "On sick leave from work"
* section[sickLeaveCertificates].entry 1..*
* section[sickLeaveCertificates].entry only Reference(SickLeaveCarePlan)

* section[responsiblePersons].title 1..1
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#51899-3 "Details Document"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole or Provenance)
