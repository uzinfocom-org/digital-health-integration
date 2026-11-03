
Profile: Form111_PregnantWomanIndividualCardComposition
Parent: Composition
Id: form-111-pregnant-woman-individual-card-composition
Title: "Form 111 - Individual Card of a Pregnant and Postpartum Woman Composition"
Description: "Composition profile for Form 111 (Homilador va tuqqan ayolning individual kartasi). The document is a longitudinal antenatal/postpartum record maintained by a women's consultation (ayollar maslahatxonasi)."

* identifier 1..*
* identifier ^short = "Document instance UUID and form number (111)"

* status ^short = "Document status: preliminary while the card is kept, final once closed"

* type = $loinc#34133-9 "Summary of episode note"
* type ^short = "Form 111 document type (summary document for the pregnancy episode)"

* category 1..1
* category = $document-category-cs#form-111
* category ^short = "Form 111 document category"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Pregnant or postpartum woman"

* encounter 0..1
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Visit the document was created in (optional); the follow-up episode is given by EpisodeOfCare"

* date 1..1
* date ^short = "Date the document was generated"

* author 1..*
* author only Reference(UZCorePractitionerRole)
* author ^short = "Doctor keeping the card and head of department"

* title 1..1
* title ^short = "Document title"

* custodian 0..1
* custodian only Reference(Organization)
* custodian ^short = "Organization keeping the card"

* attester 0..*
* attester ^short = "Signatures of the doctor and head of department"

// Bo'limlarni (section) slicing qilish
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    registrationAndPersonalInformation 1..1 and
    registrationLaboratoryTests 0..1 and
    diagnosis 1..1 and
    pregnancyOutcome 0..1 and
    anamnesis 0..1 and
    previousPregnanciesOutcome 0..1 and
    firstPrenatalVisit 1..1 and
    externalObstetricExamination 0..1 and
    vaginalExamination 0..1 and
    recommendations 0..1 and
    courseOfPregnancy 0..1 and
    birthPreparation 0..1 and
    patronageVisits 0..1 and
    attachmentsSheet 0..1 and
    perinatalRiskFactors 0..1 and
    specialistConclusions 0..1 and
    postpartumFollowUp 0..1

// 1. Ro'yxatga olish va shaxsiy ma'lumotlar
* section[registrationAndPersonalInformation].title 1..1
* section[registrationAndPersonalInformation].title ^short = "1. Registration and personal information"
* section[registrationAndPersonalInformation].code 1..1
* section[registrationAndPersonalInformation].code = $loinc#45970-1 "Demographic information section"
* section[registrationAndPersonalInformation].code ^short = "Registration date, Med ID number, full name, date of birth, family status, address, phone, education, workplace and its phone, specialty, position, working conditions, spouse's full name, workplace and phone"
* section[registrationAndPersonalInformation].entry 1..*
* section[registrationAndPersonalInformation].entry only Reference(UZCorePatient or UZCoreRelatedPerson or Organization or UZCoreObservation or UZCoreSocioeconomicObservation or UZCoreEpisodeOfCare)
* section[registrationAndPersonalInformation].entry ^short = "Patient, spouse, organization, workplace, follow-up episode and socioeconomic observations"

// 1b. Ro'yxatga olishdagi laboratoriya tekshiruvlari (shakl sarlavhasidagi qon guruhi, Rh va serologiya)
* section[registrationLaboratoryTests].title 1..1
* section[registrationLaboratoryTests].title ^short = "1b. Laboratory tests at registration"
* section[registrationLaboratoryTests].code 1..1
* section[registrationLaboratoryTests].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[registrationLaboratoryTests].code ^short = "Blood group, Rh factor of the woman and her spouse, WR I, WR II, HIV, HBsAg I, HBsAg II, gonococcus, toxoplasmosis, other tests"
* section[registrationLaboratoryTests].entry 1..*
* section[registrationLaboratoryTests].entry only Reference(UZCoreObservation)
* section[registrationLaboratoryTests].entry ^short = "Blood group, Rh and serology results"

// 2. Tashxis
* section[diagnosis].title 1..1
* section[diagnosis].title ^short = "2. Diagnosis"
* section[diagnosis].code 1..1
* section[diagnosis].code = $loinc#29308-4  "Diagnosis"
* section[diagnosis].code ^short = "Gravidity, parity, complications of this pregnancy, extragenital diseases (diagnosis)"
* section[diagnosis].entry 1..*
* section[diagnosis].entry only Reference(UZCoreObservation or UZCoreCondition)

// 3. Homiladorlikning yakuni
* section[pregnancyOutcome].title 1..1
* section[pregnancyOutcome].title ^short = "3. Pregnancy outcome"
* section[pregnancyOutcome].code 1..1
* section[pregnancyOutcome].code = $loinc#57074-7 "Labor and delivery process Narrative"
* section[pregnancyOutcome].code ^short = "Pregnancy outcome, gestational week and date, special features of delivery, child, weight, length, mother and child condition at discharge from the maternity hospital, diagnosis"
* section[pregnancyOutcome].entry 1..*
* section[pregnancyOutcome].entry only Reference(UZCoreObservation or UZCoreEncounter or UZCoreCondition or UZCoreProcedure)

// 4. Anamnez
* section[anamnesis].title 1..1
* section[anamnesis].title ^short = "4. Anamnesis"
* section[anamnesis].code 1..1
* section[anamnesis].code = $loinc#11348-0  "History of Past illness note"
* section[anamnesis].code ^short = "Past diseases, gynecological diseases, operations, sexual life, husband's health, menstruation and its features, last menstrual period dates, date of first fetal movement"
* section[anamnesis].entry 1..*
* section[anamnesis].entry only Reference(UZCoreCondition or UZCoreProcedure or UZCoreObservation)

// 5. Avvalgi homiladorliklarning yakuni
* section[previousPregnanciesOutcome].title 1..1
* section[previousPregnanciesOutcome].title ^short = "5. Outcomes of previous pregnancies"
* section[previousPregnanciesOutcome].code 1..1
* section[previousPregnanciesOutcome].code = $loinc#10162-6  "History of pregnancies Narrative"
* section[previousPregnanciesOutcome].code ^short = "Year, when and how the pregnancy ended, abortion type, delivery type, live or stillborn, weight, whether the child is alive, age at death, features of previous pregnancies"
* section[previousPregnanciesOutcome].entry 1..*
* section[previousPregnanciesOutcome].entry only Reference(UZCoreEncounter or UZCoreProcedure or UZCoreObservation or UZCoreQuestionnaireResponse)

// 6. Homiladorni birinchi ko'rigi
* section[firstPrenatalVisit].title 1..1
* section[firstPrenatalVisit].title ^short = "6. First examination of the pregnant woman"
* section[firstPrenatalVisit].code 1..1
* section[firstPrenatalVisit].code = $loinc#29545-1  "Physical findings note"
* section[firstPrenatalVisit].code ^short = "Height, body weight, body build, breast condition, vascular system, blood pressure (right/left arm), other organs, pelvic measurements (D.sp, D.Cr, D.troch, C.ext, C.diag, C.vera)"
* section[firstPrenatalVisit].entry 1..*
* section[firstPrenatalVisit].entry only Reference(UZCoreObservation)

// 7. Tashqi akusherlik tekshiruvi
* section[externalObstetricExamination].title 1..1
* section[externalObstetricExamination].title ^short = "7. External obstetric examination"
* section[externalObstetricExamination].code 1..1
* section[externalObstetricExamination].code = $loinc#10191-5 "Physical findings of Abdomen Narrative"
* section[externalObstetricExamination].code ^short = "Fundal height, abdominal circumference, fetal position, presenting part, fetal heart rate"
* section[externalObstetricExamination].entry 1..*
* section[externalObstetricExamination].entry only Reference(UZCoreObservation)

// 8. Qin orqali tekshiruv
* section[vaginalExamination].title 1..1
* section[vaginalExamination].title ^short = "8. Vaginal examination"
* section[vaginalExamination].code 1..1
* section[vaginalExamination].code = $loinc#11400-9 "Physical findings of Genitalia Narrative"
* section[vaginalExamination].code ^short = "External genitalia, vagina, cervix, uterine body, ovaries and tubes, special features, gestational age (weeks), estimated delivery date"
* section[vaginalExamination].entry 1..*
* section[vaginalExamination].entry only Reference(UZCoreObservation)

// 9. Ko'rsatmalar
* section[recommendations].title 1..1
* section[recommendations].title ^short = "9. Recommendations"
* section[recommendations].code 1..1
* section[recommendations].code = $loinc#18776-5  "Plan of care note"
* section[recommendations].code ^short = "Instructions and advice"
* section[recommendations].entry 1..*
* section[recommendations].entry only Reference(CarePlan or UZCoreObservation or Provenance)

// 10. Homiladorlikning kechishi (takroriy kuzatuv tashriflari)
* section[courseOfPregnancy].title 1..1
* section[courseOfPregnancy].title ^short = "10. Course of pregnancy (follow-up visits)"
* section[courseOfPregnancy].code 1..1
* section[courseOfPregnancy].code = $loinc#57059-8 "Pregnancy visit summary note Narrative"
* section[courseOfPregnancy].code ^short = "Date, complaints, general condition, weight, blood pressure, pulse, abdominal circumference, fundal height, presenting part, fetal lie and position, heart rate, movements, urine protein, blood Hb, diagnosis (gestational week), pathological changes, instructions and advice, hospitalized, staphylococcal toxoid given, next visit date, signature"
* section[courseOfPregnancy].entry 1..*
* section[courseOfPregnancy].entry only Reference(UZCoreEncounter or UZCoreObservation or UZCoreCondition or CarePlan or UZCoreImmunization or Appointment or Provenance)

// 11. Tug'ishga tayyorlash
* section[birthPreparation].title 1..1
* section[birthPreparation].title ^short = "11. Preparation for childbirth"
* section[birthPreparation].code 1..1
* section[birthPreparation].code = $sct#386235000 "Childbirth preparation"
* section[birthPreparation].code ^short = "Physical exercise, ultraviolet irradiation, school for mothers, psychoprophylactic preparation - dates and gestational age at the time"
* section[birthPreparation].entry 1..*
* section[birthPreparation].entry only Reference(UZCoreProcedure or UZCoreEncounter or UZCoreObservation)

// 12. Patronaj - tashriflar
* section[patronageVisits].title 1..1
* section[patronageVisits].title ^short = "12. Patronage visits"
* section[patronageVisits].code 1..1
* section[patronageVisits].code = $sct#439708006 "Home visit"
* section[patronageVisits].code ^short = "Date, gestational age, complaints, general condition (edema), blood pressure, fetal condition, fetal heart rate, recommendations, full name and signature"
* section[patronageVisits].entry 1..*
* section[patronageVisits].entry only Reference(UZCoreEncounter or UZCoreObservation or CarePlan or Provenance)

// 13. Aylanma karta va boshqa hujjatlarni yopishtirish uchun varoq
* section[attachmentsSheet].title 1..1
* section[attachmentsSheet].title ^short = "13. Sheet for attaching the exchange card and other documents"
* section[attachmentsSheet].code 1..1
* section[attachmentsSheet].code = $form111-cs#chr-0034-00007
* section[attachmentsSheet].code ^short = "Prenatal leave start and end dates, sick leave certificate number, delivery date, delivery condition, difference from term (days), maternity hospital name, postpartum leave duration, start and end dates, sick leave certificate number"
* section[attachmentsSheet].entry 1..*
* section[attachmentsSheet].entry only Reference(UZCoreObservation or UZCoreProcedure or UZCoreEncounter or Organization or SickLeaveCarePlan)

// 14. Perinatal xavf omillari
* section[perinatalRiskFactors].title 1..1
* section[perinatalRiskFactors].title ^short = "14. Perinatal risk factors"
* section[perinatalRiskFactors].code 1..1
* section[perinatalRiskFactors].code = $loinc#92016-5 "Maternal pregnancy risk factors Document"
* section[perinatalRiskFactors].code ^short = "Group, factors: socio-biological, obstetric and gynecological history, extragenital diseases, pregnancy complications, fetal condition assessment, total score, risk level"
* section[perinatalRiskFactors].entry 1..*
* section[perinatalRiskFactors].entry only Reference(UZCoreObservation or RiskAssessment)

// 15. Terapevt, venerolog va boshqa mutaxassislarning xulosalari
* section[specialistConclusions].title 1..1
* section[specialistConclusions].title ^short = "15. Conclusions of the therapist, venereologist and other specialists"
* section[specialistConclusions].code 1..1
* section[specialistConclusions].code = $loinc#11488-4  "Consult note"
* section[specialistConclusions].code ^short = "Specialist conclusion, date, course of pregnancy and patronage follow-up data, advice"
* section[specialistConclusions].entry 1..*
* section[specialistConclusions].entry only Reference(UZCoreObservation or CarePlan)

// 16. Tug'ruqdan keyingi davrdagi kuzatuv
* section[postpartumFollowUp].title 1..1
* section[postpartumFollowUp].title ^short = "16. Postpartum period follow-up"
* section[postpartumFollowUp].code 1..1
* section[postpartumFollowUp].code = $sct#133906008 "Postpartum care"
* section[postpartumFollowUp].code ^short = "Day 7-8 and day 35-40 check-ups - date, complaints, examinations and procedures, advice and instructions, signatures of the doctor and head of department, contraception type"
* section[postpartumFollowUp].entry 1..*
* section[postpartumFollowUp].entry only Reference(UZCoreEncounter or UZCoreObservation or UZCoreProcedure or CarePlan or Provenance)
