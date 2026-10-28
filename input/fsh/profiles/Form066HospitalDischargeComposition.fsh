Profile: Form066HospitalDischargeComposition
Parent: Composition
Id: form-066-hospital-discharge-composition
Title: "Form 066 - Hospital Discharge Statistical Card Composition"
Description: "Composition profile for Form 066 (Shifoxonadan chiqarilganlarning statistik kartasi): the statistical card completed when a patient leaves inpatient care, covering admission, the hospital stay, diagnoses, operations, laboratory results and discharge."


* identifier 1..*
* identifier ^short = "Document instance UUID and form number (066)"
* status = #final
* status ^short = "Document status: always final, the card is completed at discharge"
* type = $loinc#18842-5 "Discharge summary"
* type ^short = "Form 066 document type (discharge summary)"
* category 1..1
* category = $document-category-cs#form-066 "Hospital discharge statistical card"
* category ^short = "Form 066 document category"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Patient discharged from the hospital"

* encounter 1..1
* encounter only Reference(UZCoreEncounter066)
* encounter ^short = "Hospital stay, from admission to discharge"

* author 1..*
* author only Reference(UZCorePractitionerRole)
* author ^short = "Attending doctor, head of department and senior nurse"

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    personalInformation 1..1 and
    residenceInformation 1..1 and
    admissionInformation 1..1 and
    hospitalizationInformation 1..1 and
    finalDiagnosis 1..1 and
    pathologoanatomicDiagnosis 0..1 and
    surgicalProcedures 0..1 and
    laboratoryResults 0..1 and
    paymentInformation 0..1 and
    newbornInformation 0..1 and
    tuberculosisDrugSensitivity 0..1 and
    temporaryDisability 0..1 and
    responsiblePersons 1..1

* section[personalInformation].title 1..1
* section[personalInformation].title ^short = "1. Personal information"
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#LP36348-8 "Patient Information"
* section[personalInformation].code ^short = "Institution code and name, medical record number, PINFL, full name, date of birth, sex, citizenship, ID or passport, social status, benefit category, phone, e-mail, attached institution"
* section[personalInformation].entry 1..*
* section[personalInformation].entry only Reference(UZCorePatient or UZCoreObservation)
* section[personalInformation].entry ^short = "Patient and socioeconomic observations"

* section[residenceInformation].title 1..1
* section[residenceInformation].title ^short = "2. Residence information"
* section[residenceInformation].code 1..1
* section[residenceInformation].code = $loinc#56799-0 "Address"
* section[residenceInformation].code ^short = "Region, district or city, mahalla, street, house, apartment, postal code"
* section[residenceInformation].entry 1..*
* section[residenceInformation].entry only Reference(UZCorePatient or Organization)
* section[residenceInformation].entry ^short = "Patient and attached institution"

* section[admissionInformation].title 1..1
* section[admissionInformation].title ^short = "3. Admission information"
* section[admissionInformation].code 1..1
* section[admissionInformation].code = $loinc#LP74442-2 "Admission Information"
* section[admissionInformation].code ^short = "Emergency care provided, admission type, hours since onset of disease or injury, arrived by ambulance, referral available, referring institution and its diagnosis, readmission within 30 days"
* section[admissionInformation].entry 1..*
* section[admissionInformation].entry only Reference(UZCoreCondition or ServiceRequest or UZCoreObservation or Organization)
* section[admissionInformation].entry ^short = "Admission observations, referral diagnosis, referral and referring institution"

* section[hospitalizationInformation].title 1..1
* section[hospitalizationInformation].title ^short = "4. Hospitalization information"
* section[hospitalizationInformation].code 1..1
* section[hospitalizationInformation].code = $loinc#8648-8 "Hospital course note"
* section[hospitalizationInformation].code ^short = "Admission department diagnosis, admission and discharge date and time, bed type, total bed-days, of which in intensive care, discharge department, discharge outcome, patient condition"
* section[hospitalizationInformation].entry 1..*
* section[hospitalizationInformation].entry only Reference(UZCoreEncounter066 or UZCoreCondition or UZCoreObservation or Organization)
* section[hospitalizationInformation].entry ^short = "Hospital stay, admission diagnosis, bed-day observations and discharge department"

* section[finalDiagnosis].title 1..1
* section[finalDiagnosis].title ^short = "5. Final diagnosis"
* section[finalDiagnosis].code 1..1
* section[finalDiagnosis].code = $loinc#LA32800-7 "Final diagnosis (discharge)"
* section[finalDiagnosis].code ^short = "Main, competing, concomitant and background diagnoses, complication"
// Diagnoses are carried in per-role sub-sections (coded with diagnosis-role) so the
// form can be reconstructed without relying on entry order. No diagnoses sit directly here.
* section[finalDiagnosis].entry 0..0
* section[finalDiagnosis].section ^slicing.discriminator.type = #value
* section[finalDiagnosis].section ^slicing.discriminator.path = "code"
* section[finalDiagnosis].section ^slicing.rules = #open
* section[finalDiagnosis].section contains
    main 1..1 and
    competing 0..1 and
    concomitant 0..1 and
    background 0..1 and
    complication 0..1
* section[finalDiagnosis].section[main].code = $diagnosis-role#main
* section[finalDiagnosis].section[main].code ^short = "Main diagnosis"
* section[finalDiagnosis].section[main].entry 1..*
* section[finalDiagnosis].section[main].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[competing].code = $diagnosis-role#competing
* section[finalDiagnosis].section[competing].code ^short = "Competing diagnosis"
* section[finalDiagnosis].section[competing].entry 1..*
* section[finalDiagnosis].section[competing].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[concomitant].code = $diagnosis-role#concomitant
* section[finalDiagnosis].section[concomitant].code ^short = "Concomitant diagnosis"
* section[finalDiagnosis].section[concomitant].entry 1..*
* section[finalDiagnosis].section[concomitant].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[background].code = $diagnosis-role#background
* section[finalDiagnosis].section[background].code ^short = "Background diagnosis"
* section[finalDiagnosis].section[background].entry 1..*
* section[finalDiagnosis].section[background].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[complication].code = $diagnosis-role#complication
* section[finalDiagnosis].section[complication].code ^short = "Complication"
* section[finalDiagnosis].section[complication].entry 1..*
* section[finalDiagnosis].section[complication].entry only Reference(UZCoreCondition)

* section[pathologoanatomicDiagnosis].title 1..1
* section[pathologoanatomicDiagnosis].title ^short = "6. Pathologoanatomical diagnosis"
* section[pathologoanatomicDiagnosis].code 1..1
* section[pathologoanatomicDiagnosis].code = $loinc#60567-5 "Comprehensive pathology report panel"
* section[pathologoanatomicDiagnosis].code ^short = "Immediate cause of death, the disease that caused it, main disease, other significant diseases"
* section[pathologoanatomicDiagnosis].entry 0..0
* section[pathologoanatomicDiagnosis].section ^slicing.discriminator.type = #value
* section[pathologoanatomicDiagnosis].section ^slicing.discriminator.path = "code"
* section[pathologoanatomicDiagnosis].section ^slicing.rules = #open
* section[pathologoanatomicDiagnosis].section contains
    immediateCauseOfDeath 0..1 and
    underlyingCauseOfDeath 0..1 and
    mainDiseaseDeath 0..1 and
    otherSignificantDeath 0..1
* section[pathologoanatomicDiagnosis].section[immediateCauseOfDeath].code = $diagnosis-role#immediate-cause-of-death
* section[pathologoanatomicDiagnosis].section[immediateCauseOfDeath].code ^short = "Immediate cause of death"
* section[pathologoanatomicDiagnosis].section[immediateCauseOfDeath].entry 1..*
* section[pathologoanatomicDiagnosis].section[immediateCauseOfDeath].entry only Reference(UZCoreCondition)
* section[pathologoanatomicDiagnosis].section[underlyingCauseOfDeath].code = $diagnosis-role#underlying-cause-of-death
* section[pathologoanatomicDiagnosis].section[underlyingCauseOfDeath].code ^short = "Underlying cause of death"
* section[pathologoanatomicDiagnosis].section[underlyingCauseOfDeath].entry 1..*
* section[pathologoanatomicDiagnosis].section[underlyingCauseOfDeath].entry only Reference(UZCoreCondition)
* section[pathologoanatomicDiagnosis].section[mainDiseaseDeath].code = $diagnosis-role#main-disease-death
* section[pathologoanatomicDiagnosis].section[mainDiseaseDeath].code ^short = "Main disease (cause of death)"
* section[pathologoanatomicDiagnosis].section[mainDiseaseDeath].entry 1..*
* section[pathologoanatomicDiagnosis].section[mainDiseaseDeath].entry only Reference(UZCoreCondition)
* section[pathologoanatomicDiagnosis].section[otherSignificantDeath].code = $diagnosis-role#other-significant-death
* section[pathologoanatomicDiagnosis].section[otherSignificantDeath].code ^short = "Other significant diseases"
* section[pathologoanatomicDiagnosis].section[otherSignificantDeath].entry 1..*
* section[pathologoanatomicDiagnosis].section[otherSignificantDeath].entry only Reference(UZCoreCondition)

* section[surgicalProcedures].title 1..1
* section[surgicalProcedures].title ^short = "7. Surgical procedures"
* section[surgicalProcedures].code 1..1
* section[surgicalProcedures].code = $loinc#29554-3 "Procedure Narrative"
* section[surgicalProcedures].code ^short = "Date and time, ICHI code, main operation, name and surgeon of each operation"
* section[surgicalProcedures].entry 1..*
* section[surgicalProcedures].entry only Reference(Form066SurgicalProcedure)
* section[surgicalProcedures].entry ^short = "Operations"

* section[laboratoryResults].title 1..1
* section[laboratoryResults].title ^short = "8. Laboratory results"
* section[laboratoryResults].code 1..1
* section[laboratoryResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[laboratoryResults].code ^short = "HIV, RW (syphilis), hepatitis B, hepatitis C"
* section[laboratoryResults].entry 1..*
* section[laboratoryResults].entry only Reference(UZCoreObservation)
* section[laboratoryResults].entry ^short = "Laboratory test results"

* section[paymentInformation].title 1..1
* section[paymentInformation].title ^short = "9. Payment information"
* section[paymentInformation].code 1..1
* section[paymentInformation].code = $loinc#48768-6 "Payment sources Document"
* section[paymentInformation].code ^short = "Payment type"
* section[paymentInformation].entry 1..*
* section[paymentInformation].entry only Reference(Coverage)
* section[paymentInformation].entry ^short = "Payment type"

* section[newbornInformation].title 1..1
* section[newbornInformation].title ^short = "10. Newborn information"
* section[newbornInformation].code 1..1
* section[newbornInformation].code = $loinc#57075-4 "Newborn delivery information"
* section[newbornInformation].code ^short = "Weight, length, mother's PINFL"
* section[newbornInformation].entry 1..*
* section[newbornInformation].entry only Reference(UZCoreObservation or UZCoreRelatedPerson)
* section[newbornInformation].entry ^short = "Newborn weight and length, and the mother"

* section[tuberculosisDrugSensitivity].title 1..1
* section[tuberculosisDrugSensitivity].title ^short = "11. Tuberculosis drug sensitivity"
* section[tuberculosisDrugSensitivity].code 1..1
* section[tuberculosisDrugSensitivity].code = $loinc#18769-0 "Microbial susceptibility tests Set"
* section[tuberculosisDrugSensitivity].code ^short = "Tuberculosis drug sensitivity"
* section[tuberculosisDrugSensitivity].entry 1..*
* section[tuberculosisDrugSensitivity].entry only Reference(UZCoreObservation)
* section[tuberculosisDrugSensitivity].entry ^short = "Drug sensitivity result"

* section[temporaryDisability].title 1..1
* section[temporaryDisability].title ^short = "12. Temporary disability"
* section[temporaryDisability].code 1..1
* section[temporaryDisability].code = $loinc#34109-9 "Note"
* section[temporaryDisability].code ^short = "Sick leave opening and closing dates"
* section[temporaryDisability].entry 1..*
* section[temporaryDisability].entry only Reference(UZCoreObservation)
* section[temporaryDisability].entry ^short = "Sick leave period"

* section[responsiblePersons].title 1..1
* section[responsiblePersons].title ^short = "13. Responsible persons"
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#LP35157-4 "Responsible party"
* section[responsiblePersons].code ^short = "Attending doctor, head of department, senior nurse"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole)
* section[responsiblePersons].entry ^short = "Responsible persons"