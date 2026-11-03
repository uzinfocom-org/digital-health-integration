Profile: Form097NewbornDevelopmentComposition
Parent: UZCoreComposition
Id: form-097-newborn-development-composition
Title: "Form 097 - Newborn Development Medical Record Composition"
Description: "Composition profile for Form 097 (Yangi tug'ilgan chaqaloq rivojlanishining tibbiy kartasi). The document records a newborn's stay in the maternity hospital from birth to discharge, transfer or death."
* ^experimental = true

* identifier 1..*
* identifier ^short = "Document instance UUID and form number (097)"

* status ^short = "Document status: preliminary while the newborn is in the maternity hospital, final at discharge, transfer or death"

* type = $composition-type-cs#emdoc-0010-0017 "Newborn development medical record"
* type ^short = "Form 097 document type (newborn development medical record); LOINC 18842-5 \"Discharge summary\" may be sent as an additional coding"

* category 1..*
* category ^short = "Document category: medical record, and the Form 097 category"
* category[dhpCategory] 1..1
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category contains formCategory 1..1
* category[formCategory] = $document-category-cs#form-097
* category[formCategory] ^short = "Form 097 document category"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Newborn"

* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Newborn's hospital stay"

* date 1..1
* date ^short = "Date the document was generated"

* author only Reference(UZCorePractitionerRole or UZCorePractitioner)
* author ^short = "User who saved this revision of the document"

* title 1..1
* title ^short = "Document title"

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

// Every clinical section is optional: a section is sent only when DMED has facts for it
* section contains
    motherInformation 0..1 and
    birthEvent 0..1 and
    firstNewbornExam 0..1 and
    feeding 0..1 and
    dailyObservation 0..1 and
    dailyReview 0..1 and
    weightDynamics 0..1 and
    prophylaxisImmunization 0..1 and
    screening 0..1 and
    dischargeTransfer 0..1 and
    responsiblePersons 0..1

// 1. Ona haqida ma'lumot
* section[motherInformation].title 1..1
* section[motherInformation].title ^short = "1. Mother information and antenatal history"
* section[motherInformation].code 1..1
* section[motherInformation].code = $loinc#57073-9 "Prenatal records"
* section[motherInformation].code ^short = "Mother's PINFL, full name, date of birth, marital status, address, nationality, occupation, blood group and Rh of mother and father, gravidity, parity, gestational age, pregnancy complications, amniotic fluid, family history"
* section[motherInformation].entry 1..*
* section[motherInformation].entry only Reference(UZCorePatient or UZCoreRelatedPerson or UZCoreLocation or UZCoreObservation or UZCoreCondition or UZCoreProcedure or FamilyMemberHistory)
* section[motherInformation].entry ^short = "Mother, father, maternal observations, pregnancy complications and family history"

// 2. Tug'ruq haqida ma'lumot
* section[birthEvent].title 1..1
* section[birthEvent].title ^short = "2. Birth event"
* section[birthEvent].code 1..1
* section[birthEvent].code = $loinc#57075-4 "Newborn delivery information"
* section[birthEvent].code ^short = "Birth length, timeliness of delivery, term status, birth outcome, blood group and Rh, head and chest circumference, signs of life, skin-to-skin contact, first breastfeeding, eye prophylaxis, Apgar score, Ballard maturity"
* section[birthEvent].entry 1..*
* section[birthEvent].entry only Reference(UZCoreObservation or UZCoreCondition or UZCoreProcedure)
* section[birthEvent].entry ^short = "Birth observations and eye prophylaxis"

// 3. Yangi tug'ilgan chaqaloqning birlamchi ko'rigi
* section[firstNewbornExam].title 1..1
* section[firstNewbornExam].title ^short = "3. First newborn examination"
* section[firstNewbornExam].code 1..1
* section[firstNewbornExam].code = $loinc#29545-1 "Physical findings note"
* section[firstNewbornExam].code ^short = "Skin colour, cyanosis, umbilical stump, neurological status, fontanelles, eyes, respiratory and heart rate, Silverman score, heart, abdomen, liver and spleen, external genitalia, hip joints, conclusion, preliminary diagnosis"
* section[firstNewbornExam].entry 1..*
* section[firstNewbornExam].entry only Reference(UZCoreObservation or UZCoreCondition or UZCoreProcedure)
* section[firstNewbornExam].entry ^short = "Examination findings and preliminary diagnosis"

// 4. Oziqlantirish
* section[feeding].title 1..1
* section[feeding].title ^short = "4. Feeding and skin-to-skin contact"
* section[feeding].code 1..1
* section[feeding].code = $loinc#61144-2 "Diet and nutrition Narrative"
* section[feeding].code ^short = "Feeding type, breastfeeding information, rooming-in"
* section[feeding].entry 1..*
* section[feeding].entry only Reference(UZCoreObservation)
* section[feeding].entry ^short = "Feeding observations"

// 5. Kundalik kuzatuv
* section[dailyObservation].title 1..1
* section[dailyObservation].title ^short = "5. Daily newborn observation (days 0-6)"
* section[dailyObservation].code 1..1
* section[dailyObservation].code = $loinc#8716-3 "Vital signs note"
* section[dailyObservation].code ^short = "Skin, eyes and mucosa, respiratory distress, body weight, body temperature, feeding type and tolerance, diarrhoea, urination frequency, umbilical cord separation, umbilical wound"
* section[dailyObservation].entry 1..*
* section[dailyObservation].entry only Reference(UZCoreObservation)
* section[dailyObservation].entry ^short = "One daily observation panel per day"

// 6. Kundalik ko'rik
* section[dailyReview].title 1..1
* section[dailyReview].title ^short = "6. Physician's daily review (days 0-6)"
* section[dailyReview].code 1..1
* section[dailyReview].code = $loinc#8648-8 "Hospital course note"
* section[dailyReview].code ^short = "Activity level, reflexes, muscle tone, skin colour, breathing, cardiovascular system, abdominal organs, urine and stool, laboratory studies"
* section[dailyReview].entry 1..*
* section[dailyReview].entry only Reference(UZCoreObservation)
* section[dailyReview].entry ^short = "One physician review per day"

// 7. Tana vazni dinamikasi
* section[weightDynamics].title 1..1
* section[weightDynamics].title ^short = "7. Weight dynamics"
* section[weightDynamics].code 1..1
* section[weightDynamics].code = $form-097-section-cs#weight-dynamics "Weight dynamics"
* section[weightDynamics].code ^short = "Birth weight and daily weight (days 1-10)"
* section[weightDynamics].entry 1..*
* section[weightDynamics].entry only Reference(UZCoreObservation)
* section[weightDynamics].entry ^short = "Weight measurements"

// 8. Profilaktika / immunizatsiya
* section[prophylaxisImmunization].title 1..1
* section[prophylaxisImmunization].title ^short = "8. Prophylaxis and immunization"
* section[prophylaxisImmunization].code 1..1
* section[prophylaxisImmunization].code = $loinc#11369-6 "History of Immunization note"
* section[prophylaxisImmunization].code ^short = "Haemorrhagic disease prophylaxis, hepatitis B vaccination, BCG vaccination"
* section[prophylaxisImmunization].entry 1..*
* section[prophylaxisImmunization].entry only Reference(UZCoreImmunization or MedicationAdministration)
* section[prophylaxisImmunization].entry ^short = "Vaccinations and vitamin K administration"

// 9. Skrining
* section[screening].title 1..1
* section[screening].title ^short = "9. Screening"
* section[screening].code 1..1
* section[screening].code = $form-097-section-cs#screening "Screening"
* section[screening].code ^short = "Audiological screening, congenital hypothyroidism screening"
* section[screening].entry 1..*
* section[screening].entry only Reference(UZCoreObservation)
* section[screening].entry ^short = "Screening results"

// 10. Chiqarish / o'tkazish
* section[dischargeTransfer].title 1..1
* section[dischargeTransfer].title ^short = "10. Discharge, transfer or death"
* section[dischargeTransfer].code 1..1
* section[dischargeTransfer].code = $loinc#8650-4 "Hospital discharge disposition note"
* section[dischargeTransfer].code ^short = "General condition at discharge, discharge diagnosis, recommendations, handover to the mother, physician's signature, transfer between facilities"
* section[dischargeTransfer].entry 1..*
* section[dischargeTransfer].entry only Reference(UZCoreObservation or UZCoreCondition or Provenance or MedicationAdministration)
* section[dischargeTransfer].entry ^short = "Discharge observations, diagnosis, handover and transfer"

// 11. Mas'ul shaxslar
* section[responsiblePersons].title 1..1
* section[responsiblePersons].title ^short = "11. Responsible persons"
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $form-097-section-cs#responsible-persons "Responsible persons"
* section[responsiblePersons].code ^short = "Attending physician and nurse"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole)
* section[responsiblePersons].entry ^short = "Responsible clinicians"
