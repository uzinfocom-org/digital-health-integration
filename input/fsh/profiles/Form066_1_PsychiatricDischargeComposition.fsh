Profile: Form066_1_PsychiatricDischargeComposition
Parent: Composition
Id: form-066-1-psychiatric-discharge-composition
Title: "Form 066-1 - Psychiatric/Narcological Discharge Statistical Card Composition"
Description: "Composition profile for Form 066-1."

* identifier 1..*
* identifier ^short = "Hujjat instansiyasi UUID va shakl raqami; 0.2 bemorning ro'yxatdan o'tish raqami"

* status = #final
* status ^short = "Hujjat holati (chiqarilgan yakuniy hujjat)"

* type = $loinc#18842-5 "Discharge summary"
* type ^short = "066-1 shakl hujjat turi"

* category 1..1
* category = $document-category-cs#form-066-1 "Psychiatric/narcological discharge statistical card"
* category ^short = "066-1 shakl hujjat kategoriyasi"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "1. Bemor"

* encounter 1..1
* encounter only Reference(UZCoreEncounter066)
* encounter ^short = "2–3. Shifoxonaga yotqizish va chiqarish ma'lumotlari"

* author 1..*
* author only Reference(UZCorePractitionerRole)
* author ^short = "9.1–9.3 Mas'ul shaxslar"

* custodian 0..1
* custodian only Reference(Organization)
* custodian ^short = "1.19 Bemor biriktirilgan muassasa"

// Section slicing
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
    laboratoryResults 1..1 and
    paymentInformation 1..1 and
    tuberculosisDrugSensitivity 1..1 and
    temporaryDisability 0..1 and
    responsiblePersons 1..1

// 1. Shaxsiy ma'lumot / Personal Information
* section[personalInformation].title 1..1
* section[personalInformation].title ^short = "1. Personal Information"
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#11329-0 "History general Narrative - Reported"
* section[personalInformation].code ^short = "1.1–1.22: Personal Identification Number (PIN), surname, first name, patronymic, date of birth, gender, citizenship, ID or passport, social status, benefit category, residential address, phone number, email, assigned institution, education, source of livelihood, workplace, position."
* section[personalInformation].entry 1..*
* section[personalInformation].entry only Reference(UZCorePatient or RelatedPerson or Organization or UZCoreSocioeconomicObservation)
* section[personalInformation].entry ^short = "1.1–1.22: Personal Identification Number (PIN), surname, first name, patronymic, date of birth, gender, citizenship, ID or passport, social status, benefit category, residential address, phone number, email, assigned institution, education, source of livelihood, workplace, position."


* section[residenceInformation].title 1..1
* section[residenceInformation].code 1..1
* section[residenceInformation].code = $loinc#56799-0 "Address"
* section[residenceInformation].entry 1..*
* section[residenceInformation].entry only Reference(UZCorePatient or Organization)

// 2. Shifoxonaga yotqizish ma'lumotlari
* section[admissionInformation].title 1..1
* section[admissionInformation].title ^short = "2. Hospital admission information"
* section[admissionInformation].code 1..1
* section[admissionInformation].code = $loinc#46241-6 "Hospital admission diagnosis Narrative - Reported"
* section[admissionInformation].code ^short = "2.01–2.10 Date of registration in psychoneurological (narcological) institution, number of previous hospitalizations, emergency care provided, type of admission, arrival by ambulance, referral availability, referred by whom, referring organization, referring organization diagnosis, purpose of referral, admitted to hospital, source of admission, duration of illness"
* section[admissionInformation].entry 1..*
* section[admissionInformation].entry only Reference(Condition or UZCoreObservation or ServiceRequest or Organization)
* section[admissionInformation].entry ^short =  "2.01–2.10 Admission, referral, and initial diagnosis information"

// 3. Shifoxonada yotqizish ma'lumotlari / Hospitalization information
* section[hospitalizationInformation].title 1..1
* section[hospitalizationInformation].title ^short = "3. Hospitalization information"
* section[hospitalizationInformation].code 1..1
* section[hospitalizationInformation].code = $loinc#8648-8 "Hospital course note"
* section[hospitalizationInformation].code ^short = "3.1–3.9 Admission department diagnosis, date and time of hospitalization, bed type, discharge date and time, ICU stay, number of bed-days, discharge department, discharge disposition, patient condition, disability status, number of sick leave days"
* section[hospitalizationInformation].entry 1..*
* section[hospitalizationInformation].entry only Reference(Encounter or Condition or UZCoreObservation or Organization)
* section[hospitalizationInformation].entry ^short = "3.1–3.9 Treatment and discharge information"

// 4. Yakuniy tashxis / Final diagnosis
* section[finalDiagnosis].title 1..1
* section[finalDiagnosis].title ^short = "4. Final diagnosis"
* section[finalDiagnosis].code 1..1
* section[finalDiagnosis].code = $loinc#11535-2 "Hospital discharge diagnosis note"
* section[finalDiagnosis].code ^short = "4.1–4.9 Primary diagnosis, competing diagnosis, comorbid diagnosis, background diagnosis, complications, pathological diagnosis, immediate cause of death, underlying cause of death, primary disease, other significant conditions"
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
* section[finalDiagnosis].section[main].entry 1..*
* section[finalDiagnosis].section[main].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[competing].code = $diagnosis-role#competing
* section[finalDiagnosis].section[competing].entry 1..*
* section[finalDiagnosis].section[competing].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[concomitant].code = $diagnosis-role#concomitant
* section[finalDiagnosis].section[concomitant].entry 1..*
* section[finalDiagnosis].section[concomitant].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[background].code = $diagnosis-role#background
* section[finalDiagnosis].section[background].entry 1..*
* section[finalDiagnosis].section[background].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[complication].code = $diagnosis-role#complication
* section[finalDiagnosis].section[complication].entry 1..*
* section[finalDiagnosis].section[complication].entry only Reference(UZCoreCondition)

* section[pathologoanatomicDiagnosis].title 1..1
* section[pathologoanatomicDiagnosis].code 1..1
* section[pathologoanatomicDiagnosis].code = $loinc#60567-5 "Comprehensive pathology report panel"
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
* section[pathologoanatomicDiagnosis].section[immediateCauseOfDeath].entry 1..*
* section[pathologoanatomicDiagnosis].section[immediateCauseOfDeath].entry only Reference(UZCoreCondition)
* section[pathologoanatomicDiagnosis].section[underlyingCauseOfDeath].code = $diagnosis-role#underlying-cause-of-death
* section[pathologoanatomicDiagnosis].section[underlyingCauseOfDeath].entry 1..*
* section[pathologoanatomicDiagnosis].section[underlyingCauseOfDeath].entry only Reference(UZCoreCondition)
* section[pathologoanatomicDiagnosis].section[mainDiseaseDeath].code = $diagnosis-role#main-disease-death
* section[pathologoanatomicDiagnosis].section[mainDiseaseDeath].entry 1..*
* section[pathologoanatomicDiagnosis].section[mainDiseaseDeath].entry only Reference(UZCoreCondition)
* section[pathologoanatomicDiagnosis].section[otherSignificantDeath].code = $diagnosis-role#other-significant-death
* section[pathologoanatomicDiagnosis].section[otherSignificantDeath].entry 1..*
* section[pathologoanatomicDiagnosis].section[otherSignificantDeath].entry only Reference(UZCoreCondition)

// 5. Tahlil natijasi
* section[laboratoryResults].title 1..1
* section[laboratoryResults].title ^short = "5. Laboratory results"
* section[laboratoryResults].code 1..1
* section[laboratoryResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[laboratoryResults].code ^short = "5.1–5.4 HIV/AIDS, RW (syphilis), Hepatitis B, Hepatitis C – dates and results; 7. Tuberculosis drug susceptibility"
* section[laboratoryResults].entry 1..*
* section[laboratoryResults].entry only Reference(UZCoreObservation)
* section[laboratoryResults].entry ^short = "5.1–5.4 Laboratory results and section 7 data"

// 6. To'lov turi / Payment type
* section[paymentInformation].title 1..1
* section[paymentInformation].title ^short = "6. Payment information"
* section[paymentInformation].code 1..1
* section[paymentInformation].code = $loinc#48768-6 "Payment sources Document"
* section[paymentInformation].code ^short = "6. Payment type"
* section[paymentInformation].entry 1..*
* section[paymentInformation].entry only Reference(Coverage or Basic)
* section[paymentInformation].entry ^short = "6. Payment type (e.g., Ministry of Health budget)"

// 7. O'pka silida doriga sezgirlik / Tuberculosis drug susceptibility
* section[tuberculosisDrugSensitivity].title 1..1
* section[tuberculosisDrugSensitivity].title ^short = "7. Tuberculosis drug susceptibility"
* section[tuberculosisDrugSensitivity].code 1..1
* section[tuberculosisDrugSensitivity].code = $loinc#18769-0 "Microbial susceptibility tests Set"
* section[tuberculosisDrugSensitivity].code ^short = "7. Tuberculosis drug susceptibility"
* section[tuberculosisDrugSensitivity].entry 1..*
* section[tuberculosisDrugSensitivity].entry only Reference(UZCoreObservation)
* section[tuberculosisDrugSensitivity].entry ^short = "7. Tuberculosis drug susceptibility"

// 8. Vaqtincha mehnatga layoqatsizlik varaqasi / Temporary disability certificate
* section[temporaryDisability].title 1..1
* section[temporaryDisability].title ^short = "8. Temporary disability certificate"
* section[temporaryDisability].code 1..1
* section[temporaryDisability].code = $loinc#34109-9 "Note"
* section[temporaryDisability].code ^short = "8.1 Opening date; 8.2 Closing date"
* section[temporaryDisability].entry 1..*
* section[temporaryDisability].entry only Reference(Basic or UZCoreObservation)
* section[temporaryDisability].entry ^short = "8.1–8.2 Disability certificate dates"

// 9. Mas'ul shaxslar / Responsible persons
* section[responsiblePersons].title 1..1
* section[responsiblePersons].title ^short = "9. Responsible persons"
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#51899-3 "Details Document"
* section[responsiblePersons].code ^short = "9.1 Attending physician; 9.2 Head of department; 9.3 Senior nurse"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitioner or PractitionerRole)
* section[responsiblePersons].entry ^short = "9.1–9.3 Responsible healthcare professionals"