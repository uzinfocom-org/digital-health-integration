
Profile: Form111_PregnantWomanIndividualCardComposition
Parent: Composition
Id: form-111-pregnant-woman-individual-card-composition
Title: "Form 111 - Individual Card of a Pregnant and Postpartum Woman Composition"
Description: "Composition profile for Form 111 (Homilador va tuqqan ayolning individual kartasi). The document is a longitudinal antenatal/postpartum record maintained by a women's consultation (ayollar maslahatxonasi)."

* identifier 1..*
* identifier ^short = "Hujjat instansiyasi UUID va shakl raqami (111); qo'shimcha — individual karta raqami"

* status = #final
* status ^short = "Hujjat holati"

* type = $loinc#34133-9 "Summary of episode note"
* type ^short = "111 shakl hujjat turi (homiladorlik epizodi bo'yicha yig'ma hujjat)"

* category 1..1
* category = $document-category-cs#form-111
* category ^short = "111 shakl hujjat kategoriyasi"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Homilador / tuqqan ayol"

* encounter 0..1
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Ayollar maslahatxonasidagi kuzatuv epizodi"

* date 1..1
* date ^short = "Hujjat shakllantirilgan sana"

* author 1..*
* author only Reference(UZCorePractitionerRole or UZCorePractitioner or Organization)
* author ^short = "Kartani yurituvchi shifokor va bo'lim boshlig'i"

* title 1..1
* title ^short = "Hujjat sarlavhasi"

* custodian 0..1
* custodian only Reference(Organization)
* custodian ^short = "Kartani saqlovchi muassasa"

* attester 0..*
* attester ^short = "Shifokor va bo'lim boshlig'i imzosi"

// Bo'limlarni (section) slicing qilish
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    registrationAndPersonalInformation 1..1 and
    diagnosis 1..1 and
    pregnancyOutcome 0..1 and
    anamnesis 0..1 and
    previousPregnanciesOutcome 0..1 and
    firstPrenatalVisit 1..1 and
    externalObstetricExamination 0..1 and
    vaginalExamination 0..1 and
    recommendations 0..1 and
    pregnancyDelay 0..1 and
    birthPreparation 0..1 and
    patronageVisits 0..1 and
    sheetforAttachingtheMedicalRecordAndOtherDocuments 0..1 and
    perinatalRiskFactors 0..1 and
    specialistConclusions 0..1 and
    postpartumFollowUp 0..1

// 1. Ro'yxatga olish va shaxsiy ma'lumotlar
* section[registrationAndPersonalInformation].title 1..1
* section[registrationAndPersonalInformation].title ^short = "1. Registration and personal information"
* section[registrationAndPersonalInformation].code 1..1
* section[registrationAndPersonalInformation].code = $loinc#LP36348-8 "Patient Information"
* section[registrationAndPersonalInformation].code ^short = "Qon guruhi, homiladorning va turmush o'rtog'ining Rh mansubligi, ro'yxatga olingan kun, WR I, WR II, OIV, HBs Ag I, HBs Ag II, gonokokk, toksoplazmoz, boshqa tekshiruv, Med ID raqami, F.I.Sh, tug'ilgan sanasi, oilaviy sharoiti, yashash manzili, telefon raqami, ma'lumoti, ish joyi va uning telefon raqami, mutaxassisligi, lavozimi, ish sharoiti, turmush o'rtog'ining F.I.Sh, ish joyi va telefon raqami"
* section[registrationAndPersonalInformation].entry 1..*
* section[registrationAndPersonalInformation].entry only Reference(UZCorePatient or UZCoreRelatedPerson or Organization or UZCoreObservation or UZCoreEpisodeOfCare)
* section[registrationAndPersonalInformation].entry ^short = "Bemor, turmush o'rtog'i, muassasa, ish joyi, ijtimoiy-iqtisodiy kuzatuvlar va laboratoriya natijalari"

// 2. Tashxis
* section[diagnosis].title 1..1
* section[diagnosis].title ^short = "2. Diagnosis"
* section[diagnosis].code 1..1
* section[diagnosis].code = $loinc#29308-4  "Diagnosis"
* section[diagnosis].code ^short = "Homiladorlik soni, tug'ruq soni, ushbu homiladorlik vaqtidagi asoratlar, ekstragenital kasalliklari (diagnoz)"
* section[diagnosis].entry 1..*
* section[diagnosis].entry only Reference(UZCoreObservation or UZCoreCondition)

// 3. Homiladorlikning yakuni
* section[pregnancyOutcome].title 1..1
* section[pregnancyOutcome].title ^short = "3. Pregnancy outcome"
* section[pregnancyOutcome].code 1..1
* section[pregnancyOutcome].code = $form111-cs#chr-0034-00001
* section[pregnancyOutcome].code ^short = "Homiladorlikni yakuni, necha haftada yakunlangani, sanasi, tug'ruqning alohida xususiyatlari, bola, og'irligi, bo'yi, tug'ruqxonadan chiqarilganda ona/bola holati va bola holati (alohida), diagnoz"
* section[pregnancyOutcome].entry 1..*
* section[pregnancyOutcome].entry only Reference(UZCoreObservation or UZCoreEncounter or UZCoreCondition or UZCoreProcedure)

// 4. Anamnez
* section[anamnesis].title 1..1
* section[anamnesis].title ^short = "4. Anamnesis"
* section[anamnesis].code 1..1
* section[anamnesis].code = $loinc#11348-0  "History of Past illness note"
* section[anamnesis].code ^short = "Boshdan o'tkazgan kasalliklari, ginekologik kasalliklari, operatsiyalar, jinsiy hayoti, erining sog'ligi, xayz ko'rish va uning xususiyatlari, oxirgi xayz ko'rish sanalari, homilaning birinchi qimirlagan sanasi"
* section[anamnesis].entry 1..*
* section[anamnesis].entry only Reference(UZCoreCondition or UZCoreProcedure or UZCoreObservation)

// 5. Avvalgi homiladorliklarning yakuni
* section[previousPregnanciesOutcome].title 1..1
* section[previousPregnanciesOutcome].title ^short = "5. Outcomes of previous pregnancies"
* section[previousPregnanciesOutcome].code 1..1
* section[previousPregnanciesOutcome].code = $loinc#10162-6  "History of pregnancies Narrative"
* section[previousPregnanciesOutcome].code ^short = "Yil, homiladorlik qachon va qanday yakunlangani, abort turi, tug'ruq turi, bola tirik/o'lik tug'ilgani, vazni, bola tirikligi, qaysi yoshda o'lgani, avvalgi homiladorliklarning o'ziga xosligi"
* section[previousPregnanciesOutcome].entry 1..*
* section[previousPregnanciesOutcome].entry only Reference(UZCoreEncounter or UZCoreProcedure or UZCoreObservation or UZCoreQuestionnaireResponse)

// 6. Homiladorni birinchi ko'rigi
* section[firstPrenatalVisit].title 1..1
* section[firstPrenatalVisit].title ^short = "6. First examination of the pregnant woman"
* section[firstPrenatalVisit].code 1..1
* section[firstPrenatalVisit].code = $loinc#29545-1  "Physical findings note"
* section[firstPrenatalVisit].code ^short = "Bo'yining uzunligi, tana vazni, tana tuzilishining o'ziga xosligi, ko'krak bezi holati, qon tomir tizimi, arterial qon bosimi (o'ng/chap qo'l), boshqa a'zolari, chanoq o'lchovlari (D.sp, D.Cr, D.troch, C.ext, C.diag, C.vera)"
* section[firstPrenatalVisit].entry 1..*
* section[firstPrenatalVisit].entry only Reference(UZCoreObservation)

// 7. Tashqi akusherlik tekshiruvi
* section[externalObstetricExamination].title 1..1
* section[externalObstetricExamination].title ^short = "7. External obstetric examination"
* section[externalObstetricExamination].code 1..1
* section[externalObstetricExamination].code = $form111-cs#chr-0034-00002
* section[externalObstetricExamination].code ^short = "Bachadon tubi balandligi, qorin aylanasi, homilaning joylanish holati, oldin keluvchi qismi, homilaning yurak urishi"
* section[externalObstetricExamination].entry 1..*
* section[externalObstetricExamination].entry only Reference(UZCoreObservation)

// 8. Qin orqali tekshiruv
* section[vaginalExamination].title 1..1
* section[vaginalExamination].title ^short = "8. Vaginal examination"
* section[vaginalExamination].code 1..1
* section[vaginalExamination].code = $form111-cs#chr-0034-00003
* section[vaginalExamination].code ^short = "Tashqi jinsiy a'zolari, qin, bachadon bo'yinchasi, bachadon tanasi, tuxumdon va naychalar, alohida xususiyatlari, homiladorlik muddati (hafta), taxminiy tug'ish vaqti"
* section[vaginalExamination].entry 1..*
* section[vaginalExamination].entry only Reference(UZCoreObservation)

// 9. Ko'rsatmalar
* section[recommendations].title 1..1
* section[recommendations].title ^short = "9. Recommendations"
* section[recommendations].code 1..1
* section[recommendations].code = $loinc#18776-5  "Plan of care note"
* section[recommendations].code ^short = "Ko'rsatmalar, maslahatlar"
* section[recommendations].entry 1..*
* section[recommendations].entry only Reference(CarePlan or UZCoreObservation or Provenance)

// 10. Homiladorlikning kechishi (takroriy kuzatuv tashriflari)
* section[pregnancyDelay].title 1..1
* section[pregnancyDelay].title ^short = "10. Course of pregnancy (follow-up visits)"
* section[pregnancyDelay].code 1..1
* section[pregnancyDelay].code = $form111-cs#chr-0034-00004
* section[pregnancyDelay].code ^short = "Sana, shikoyati, umumiy ahvoli, vazni, arterial qon bosimi, puls, qorin aylanasi, bachadon tubi balandligi, homilaning oldin kelayotgan qismi, joylashishi va holati, yurak urishi, qimirlashi, siydikdagi oqsil miqdori, qondagi Hb miqdori, tashxis (homiladorlik haftasi), patologik o'zgarishlar, ko'rsatmalar va maslahatlar, shifoxonaga yotqizildi, stafilokokk anatoksini yuborildi, navbatdagi tashrif sanasi, imzo"
* section[pregnancyDelay].entry 1..*
* section[pregnancyDelay].entry only Reference(UZCoreEncounter or UZCoreObservation or UZCoreCondition or CarePlan or UZCoreImmunization or Appointment or Provenance)

// 11. Tug'ishga tayyorlash
* section[birthPreparation].title 1..1
* section[birthPreparation].title ^short = "11. Preparation for childbirth"
* section[birthPreparation].code 1..1
* section[birthPreparation].code = $form111-cs#chr-0034-00005
* section[birthPreparation].code ^short = "Jismoniy tarbiya, ultrabinafsha nurlari bilan nurlanish, onalar maktabi, psixoprofilaktik tayyorlov — sanalari va o'sha vaqtdagi homiladorlik muddati"
* section[birthPreparation].entry 1..*
* section[birthPreparation].entry only Reference(UZCoreProcedure or UZCoreEncounter or UZCoreObservation)

// 12. Patronaj - tashriflar
* section[patronageVisits].title 1..1
* section[patronageVisits].title ^short = "12. Patronage visits"
* section[patronageVisits].code 1..1
* section[patronageVisits].code = $form111-cs#chr-0034-00006
* section[patronageVisits].code ^short = "Sana, homiladorlik muddati, shikoyatlari, umumiy holati (shishlar), arterial qon bosimi, homilaning holati, homilaning yurak urishi, tavsiyalar, F.I.Sh va imzo"
* section[patronageVisits].entry 1..*
* section[patronageVisits].entry only Reference(UZCoreEncounter or UZCoreObservation or CarePlan or Provenance)

// 13. Aylanma karta va boshqa hujjatlarni yopishtirish uchun varoq
* section[sheetforAttachingtheMedicalRecordAndOtherDocuments].title 1..1
* section[sheetforAttachingtheMedicalRecordAndOtherDocuments].title ^short = "13. Sheet for attaching the exchange card and other documents"
* section[sheetforAttachingtheMedicalRecordAndOtherDocuments].code 1..1
* section[sheetforAttachingtheMedicalRecordAndOtherDocuments].code = $form111-cs#chr-0034-00007
* section[sheetforAttachingtheMedicalRecordAndOtherDocuments].code ^short = "Homiladorlik bo'yicha ta'til boshlanish va tugash sanasi, mehnatga layoqatsizlik varog'i raqami, tug'ruq sanasi, tug'ruq holati, muddatdan farq (kun), tug'ruq bo'lib o'tgan tug'ruqxona nomi, tug'ruqdan keyingi ta'til muddati, boshlanish va tugash sanasi, mehnatga layoqatsizlik varog'i raqami"
* section[sheetforAttachingtheMedicalRecordAndOtherDocuments].entry 1..*
* section[sheetforAttachingtheMedicalRecordAndOtherDocuments].entry only Reference(UZCoreObservation or UZCoreProcedure or UZCoreEncounter or Organization or DocumentReference)

// 14. Perinatal xavf omillari
* section[perinatalRiskFactors].title 1..1
* section[perinatalRiskFactors].title ^short = "14. Perinatal risk factors"
* section[perinatalRiskFactors].code 1..1
* section[perinatalRiskFactors].code = $form111-cs#chr-0034-00008
* section[perinatalRiskFactors].code ^short = "Guruh, omillar, ijtimoiy-biologik, akusher-ginekologik anamnez, ekstragenital kasalliklari, homiladorlik asorati, homila holatiga baho berish, ballar yig'indisi, xavf darajasi"
* section[perinatalRiskFactors].entry 1..*
* section[perinatalRiskFactors].entry only Reference(UZCoreObservation or RiskAssessment)

// 15. Terapevt, venerolog va boshqa mutaxassislarning xulosalari
* section[specialistConclusions].title 1..1
* section[specialistConclusions].title ^short = "15. Conclusions of the therapist, venereologist and other specialists"
* section[specialistConclusions].code 1..1
* section[specialistConclusions].code = $loinc#11488-4  "Consult note"
* section[specialistConclusions].code ^short = "Mutaxassis xulosasi, kun, homiladorlikning kechishi va patronaj kuzatuv ma'lumotlari, maslahat"
* section[specialistConclusions].entry 1..*
* section[specialistConclusions].entry only Reference(UZCoreObservation or CarePlan)

// 16. Tug'ruqdan keyingi davrdagi kuzatuv
* section[postpartumFollowUp].title 1..1
* section[postpartumFollowUp].title ^short = "16. Postpartum period follow-up"
* section[postpartumFollowUp].code 1..1
* section[postpartumFollowUp].code = $form111-cs#chr-0034-00009
* section[postpartumFollowUp].code ^short = "7-8 va 35-40 kunlik ko'riklar — sana, shikoyati, tekshiruv-muolajalari, maslahat/ko'rsatmalar, shifokor va bo'lim boshlig'i imzosi, kontratsepsiya turi"
* section[postpartumFollowUp].entry 1..*
* section[postpartumFollowUp].entry only Reference(UZCoreEncounter or UZCoreObservation or UZCoreProcedure or CarePlan or Provenance)
