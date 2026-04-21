Profile: Form066DischargeComposition
Parent: Composition
Id: form-066-discharge-composition
Title: "Form 066 / 066-1 – Inpatient Discharge Statistics Composition"
Description: """FHIR R5 Composition profile for the Uzbekistan Ministry of Health
statistical discharge card.

**Form 066** is used by all general inpatient facilities.
**Form 066-1** extends Form 066 with additional fields required by
psychiatric and narcological inpatient facilities (education, employment
source, registration date, number of prior admissions, admission origin,
purpose of referral, re-hospitalization flag, disease duration at
admission, psychiatric disability at discharge, and ward vacation days).

The Composition.category code identifies which variant is in use:
`form-066` or `form-066-1` from the local DocumentCategoryCS.

All clinical content is organised into ten named sections linked through
`section.entry` references to the bundled FHIR resources. The Composition
acts as the single root document of a FHIR document Bundle."""
* ^experimental = true

* identifier 1..*
* identifier ^short = "Document registration number"
* status = #final
* type = $loinc#18842-5 "Discharge summary"
* type ^short = "LOINC 18842-5 Discharge summary"
* category 1..1
* category ^short = "form-066 or form-066-1 — distinguishes general vs psychiatric form variant"
* category from DocumentCategoryVS (required)
* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Patient (patient.* fields in DMED JSON)"
* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Hospitalization encounter (data.* fields in DMED JSON)"
* author only Reference(UZCorePractitioner)
* author ^short = "Attending physician (doctor.name) — primary responsible clinician"
* title ^short = "Human-readable document title"
* custodian 1..1
* custodian ^short = "Treating institution (clinic.GCEO / clinic.title)"
* event ^short = """Vaqtincha mehnatga layoqatsizlik varaqasi (temporary disability certificate):
event.period.start = open date (Composition.event.period.start in CSV);
event.period.end   = close date (Composition.event.period.end in CSV)."""

// Section slicing by code
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    personalData 1..1 MS and
    hospitalization 1..1 MS and
    stayInfo 1..1 MS and
    finalDiagnosis 1..1 MS and
    pathoanatomy 0..1 MS and
    procedures 0..1 MS and
    labResults 0..1 MS and
    payment 0..1 MS and
    newborn 0..1 MS and
    tbSensitivity 0..1 MS

// ── personalData ──────────────────────────────────────────────────────────────
* section[personalData].title 1..1
* section[personalData].title ^short = "Shaxsiy ma'lumotlar / Личные данные"
* section[personalData].code 1..1
* section[personalData].code = $loinc#29762-2 "Social history note"
* section[personalData].entry 1..*
* section[personalData].entry only Reference(UZCorePatient or Organization or Observation)
* section[personalData].entry ^short = """UZCorePatient — maps:
  identifier[healthCardId]   = patient.number_med_card  (tibbiy bayoni qayd raqami)
  identifier[nationalId]     = patient.pinfl             (JShShIR / ПИНФЛ)
  identifier[passportLocal|passportInternational|passportForeign] = patient.passport_serial_number
  name                       = patient.surname_name_patronymic    (F.I.SH)
  birthDate                  = patient.birthdate
  gender / extension[GenderOtherUZ] = patient.gender
  extension[citizenship]     = patient.citizenship       (Fuqaroligi)
  address[uzAddress]         = Yashash manzili           (+ postalCode)
  telecom[phone]             = patient.phone
  telecom[email]             = Email
  extension[managingOrganization.identifier] = data.clinic.GCEO
  extension[managingOrganization.display]    = patient.active_attached_clinic
Organization — managing/attached facility (data.clinic.GCEO / clinic.title)
UZCoreObservation (UZCoreSocioeconomicObservation) — one per socioeconomic concept:
  value[SocialStatusVS]  = Ijtimoiy holati (social status)
  value[BenefitsVS]      = patient.beneficiaries / data.is_beneficiary_direction (benefit category 1–20)
  value[EducationVS]     = Ma'lumoti [066-1 only]
  value[SocialStatusVS]  = Yashash manbayi – income source [066-1 only]
  value[Employment]      = Ish joyi, lavozimi [066-1 only]"""

// ── hospitalization ───────────────────────────────────────────────────────────
* section[hospitalization].title 1..1
* section[hospitalization].title ^short = "Shifoxonaga yotqizish ma'lumotlari / Сведения о госпитализации"
* section[hospitalization].code 1..1
* section[hospitalization].code = $loinc#46240-8 "History of Hospitalizations+Outpatient visits Narrative"
* section[hospitalization].entry 1..*
* section[hospitalization].entry only Reference(UZCoreEncounter or Organization or Condition or ServiceRequest)
* section[hospitalization].entry ^short = """UZCoreEncounter — maps:
  identifier.value           = data.number [066-1 only] (registration number)
  priority                   = Tezkor yordam ko'rsatildi (emergency: Ha/Yo'q)
  class                      = data.medical_care_form (admission type: Tezkor/Shoshilinch/Rejali/Ko'chirilgan;
                                 [066-1 only] + Majburiy davolash / G'ayriixtiyoriy gospitalizatsiya)
  onset[x]                   = hours after illness onset (Dastlabki 6 soat / 7-24 soat / 24 soatdan so'ng)
  admission.admitSource      = data.arrival_type (ambulance Ha/Yo'q; [066-1 only] who referred)
  basedOn                    = Yo'llanma mavjud (referral present Ha/Yo'q)
  serviceProvider            = data.sending_clinic.GCEO / data.sending_clinic.title
  admission.reAdmission      = readmission within last 30 days (Ha/Yo'q);
                                 [066-1 only] first time / repeat in current year
  actualPeriod.start         = Yotqizilgan sanasi va vaqti;
                                 [066-1 only] also registration date in psycho-neurological facility
  reason.use                 = [066-1 only] Yo'llashdan maqsad (Diagnostika/Majburiy/Ixtiyoriy/Ekspertiza)
  admission.reAdmission count= [066-1 only] Avval necha marta shifoxonada davolangan
  admission.origin           = [066-1 only] Qayerdan keldi (Uydan/Dispanserdan/Shifoxonadan/IIV/Boshqalar)
  onset[x] duration          = [066-1 only] Kasallik davomiyligi (kelish paytigacha)
Organization — sending/referring facility (data.sending_clinic.GCEO / data.sending_clinic.title)
Condition — referral institution diagnosis (ICD-10 code + display);
            admission department diagnosis (ICD-10 code + display)"""

// ── stayInfo ──────────────────────────────────────────────────────────────────
* section[stayInfo].title 1..1
* section[stayInfo].title ^short = "Statsionardagi yotqizish ma'lumotlari / Сведения о пребывании в стационаре"
* section[stayInfo].code 1..1
* section[stayInfo].code = $loinc#8648-8 "Hospital course note"
* section[stayInfo].entry 1..*
* section[stayInfo].entry only Reference(HealthcareService or Location or Condition)
* section[stayInfo].entry ^short = """HealthcareService — O'rin joy turi (bed/ward type):
  Form 066: Terapevtik / Pediatrik / Jarrohlik / Akusherlik va Ginekologik /
            Reanimatsiya (intensiv terapiya) / Yuqumli kasalliklar / Geriatriya /
            Narkologiya-Psixiatriya / Boshqalar
  Form 066-1: Psixiatriya / Narkologiya
Location — discharging department:
  identifier[unit].value = data.department.id  (Chiqarilgan bo'lim ko'di)
  name                   = data.department.title (Chiqarilgan bo'lim nomi)
  Also encodes: Encounter.length (Jami o'rin kunlari) and
                Encounter.location.period (reanimatsiyadagi kunlari;
                [066-1 only] shifoxona ichidagi ta'til kunlari)
Condition — Bemor holati at discharge (clinicalStatus):
  Tuzaldi / Ijobiy o'zgarish bilan / O'zgarishsiz / Og'irlashdi
  [066-1 only] Condition.severity — psychiatric disability:
  I guruh nogironi / II guruh nogironi / III guruh nogironi / Nogironlik belgilanmagan
Also: Encounter.admission.dischargeDisposition encodes:
  Chiqarildi / Vafot etdi / O'zi chiqib ketdi / Boshqa shifoxonaga o'tkazildi;
  [066-1 only] + IIV muassasasiga / Muruvvat uyiga o'tkazildi"""

// ── finalDiagnosis ────────────────────────────────────────────────────────────
* section[finalDiagnosis].title 1..1
* section[finalDiagnosis].title ^short = "Yakuniy tashxis / Окончательный диагноз"
* section[finalDiagnosis].code 1..1
* section[finalDiagnosis].code = $loinc#29548-5 "Diagnosis Narrative"
* section[finalDiagnosis].entry 1..*
* section[finalDiagnosis].entry only Reference(Condition)
* section[finalDiagnosis].entry ^short = """One Condition resource per diagnosis role (use Condition.category to distinguish):
● main       (asosiy tashxis*)     disease_codes.type == 'main'        — REQUIRED
● competing  (raqobat tashxis)     disease_codes.type == 'competing'
● additional (yondosh tashxis)     disease_codes.type == 'additional'
● background (fon tashxis)         disease_codes.type == 'background'
● complication (asorat)            disease_codes.type == 'critical'
Each Condition: code.coding[ICD-10] = disease_codes.code + disease_codes.title"""

// ── pathoanatomy ──────────────────────────────────────────────────────────────
* section[pathoanatomy].title 1..1
* section[pathoanatomy].title ^short = "Patologoanatomik tashxis / Патологоанатомический диагноз"
* section[pathoanatomy].code 1..1
* section[pathoanatomy].code = $loinc#59776-5 "Procedure findings Narrative"
* section[pathoanatomy].entry only Reference(Condition)
* section[pathoanatomy].entry ^short = """Condition instances (populated only when patient died in hospital):
● immediate cause of death        (O'limga olib kelgan bevosita sabab)
● disease causing immediate death (O'lim sababini bevosita chaqiruvchi kasallik)
● underlying main disease         (Asosiy kasallik)
● other significant diseases not causing death (Boshqa muhim kasalliklar)
Each Condition: code.coding[ICD-10] = ICD-10 code + display"""

// ── procedures ───────────────────────────────────────────────────────────────
* section[procedures].title 1..1
* section[procedures].title ^short = "Jarrohlik amaliyotlari / Хирургические вмешательства"
* section[procedures].code 1..1
* section[procedures].code = $loinc#47519-4 "History of Procedures Document"
* section[procedures].entry only Reference(Procedure)
* section[procedures].entry ^short = """Procedure per surgical intervention:
  occurrenceDateTime = Sana va vaqti
  code.coding        = ICHI code (Procedure.code.coding)
  category           = Asosiy flag (primary = Ha/Yo'q)
  code.text          = procedure name (Nomi)"""

// ── labResults ────────────────────────────────────────────────────────────────
* section[labResults].title 1..1
* section[labResults].title ^short = "Tahlil natijasi / Результат анализа"
* section[labResults].code 1..1
* section[labResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[labResults].entry only Reference(Observation)
* section[labResults].entry ^short = """UZCoreObservation per test (effectiveDateTime = Sana, valueCodeableConcept = Ijobiy/Manfiy):
  LOINC 75622-1  HIV (OITS)
  LOINC 5292-8   RW – Wassermann reaction (Vaserman reaktsiyasi)
  LOINC 22322-2  Hepatitis B surface antigen (Gepatit B)
  LOINC 13955-0  Hepatitis C antibody (Gepatit C)"""

// ── payment ───────────────────────────────────────────────────────────────────
* section[payment].title 1..1
* section[payment].title ^short = "To'lov turi / Оплата"
* section[payment].code 1..1
* section[payment].code = $loinc#48768-6 "Payment sources Document"
* section[payment].entry only Reference(Coverage)
* section[payment].entry ^short = """Coverage.type = price_list.title (14 local payment categories):
  DTSJ Davolangan holat (PQ-311-son)
  DTSJ Imtiyozli toifaga kiruvchi bemorlar (PQ-5199-son)
  Saxovat va ko'mak jamg'armasi DTSJ orqali (PF-17-son, VMQ 462-son)
  Ayollar daftari / Yoshlar daftari jamg'armasi DTSJ orqali
  Ijtimoiy himoya davlat jamg'armasi DTSJ orqali (VMQ 294-son)
  DTSJ Global byudjet | SSV byudjet
  Bemor o'z hisobidan | Mahalliy byudjet
  Homiylik | Davlat va nodavlat grantlari | Boshqalar
NOTE: payment type values require a UZCore local CodeSystem (currently TBD — marked red in source CSV)"""

// ── newborn ───────────────────────────────────────────────────────────────────
* section[newborn].title 1..1
* section[newborn].title ^short = "Yangi tug'ilgan chaqaloqlar uchun / Для новорождённого"
* section[newborn].code 1..1
* section[newborn].code = $loinc#57075-4 "Newborn delivery information"
* section[newborn].entry only Reference(UZCoreObservation or RelatedPerson)
* section[newborn].entry ^short = """UZCoreObservation:
  LOINC 8339-4  Newborn weight (vital_signs.height in DMED JSON — note field name swap)
  LOINC 8306-3  Newborn body height/length (vital_signs.weight in DMED JSON — note field name swap)
RelatedPerson (mother):
  identifier[nationalId] = mother PINFL (UZCoreRelatedPerson.identifier[nationalId])
  relationship = MTH (mother)"""

// ── tbSensitivity ─────────────────────────────────────────────────────────────
* section[tbSensitivity].title 1..1
* section[tbSensitivity].title ^short = "O'pka silida doriga sezgirlik / Лекарственная чувствительность при туберкулёзе лёгких"
* section[tbSensitivity].code 1..1
* section[tbSensitivity].code = $loinc#18769-0 "Microbial susceptibility tests Set"
* section[tbSensitivity].entry only Reference(UZCoreObservation)
* section[tbSensitivity].entry ^short = """UZCoreObservation.valueCodeableConcept from local TB sensitivity VS (values TBD in UZCore):
  Sezgir           (Sensitive)
  Monorezistentlik (Mono-resistant)
  Polirezistentlik (Poly-resistant)
  Multirezistentlik – MLU (MDR)
  O'ta rezistentlik – ShLU (XDR)"""
