// ============================================================
// Form 066 / 066-1 — Inpatient Medical Record
// Full example bundle covering all CSV-mapped fields
// ============================================================

// ── Bundle ───────────────────────────────────────────────────
Instance: example-form-066-inpatient
InstanceOf: Bundle
Usage: #example
Title: "Form 066 - Inpatient medical record"
Description: "Example of a Form 066 inpatient medical record (statsionar tibbiy kartasi) for a stroke patient"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:550e8400-e29b-41d4-a716-446655440066"
* type = #document
* timestamp = "2026-02-20T14:30:00+05:00"
// Composition
* entry[0].fullUrl = "urn:uuid:a1000000-0000-0066-0000-000000000001"
* entry[=].resource = comp-066-001
// Patient
* entry[+].fullUrl = "urn:uuid:a2000000-0000-0066-0000-000000000002"
* entry[=].resource = patient-066-001
// Organization (admitting)
* entry[+].fullUrl = "urn:uuid:a3000000-0000-0066-0000-000000000003"
* entry[=].resource = org-clinic-066-001
// Encounter
* entry[+].fullUrl = "urn:uuid:a4000000-0000-0066-0000-000000000004"
* entry[=].resource = encounter-066-001
// Location (discharge department)
* entry[+].fullUrl = "urn:uuid:a5000000-0000-0066-0000-000000000005"
* entry[=].resource = location-066-001
// Practitioners
* entry[+].fullUrl = "urn:uuid:a6000000-0000-0066-0000-000000000006"
* entry[=].resource = pract-066-doctor
* entry[+].fullUrl = "urn:uuid:a7000000-0000-0066-0000-000000000007"
* entry[=].resource = pract-066-head
* entry[+].fullUrl = "urn:uuid:a8000000-0000-0066-0000-000000000008"
* entry[=].resource = pract-066-nurse
// Social history observations
* entry[+].fullUrl = "urn:uuid:b1000000-0000-0066-0000-000000000001"
* entry[=].resource = obs-066-social-status
* entry[+].fullUrl = "urn:uuid:b2000000-0000-0066-0000-000000000002"
* entry[=].resource = obs-066-benefits
* entry[+].fullUrl = "urn:uuid:b3000000-0000-0066-0000-000000000003"
* entry[=].resource = obs-066-education
// Conditions (diagnoses)
* entry[+].fullUrl = "urn:uuid:c0000000-0000-0066-0000-000000000000"
* entry[=].resource = cond-066-referral
* entry[+].fullUrl = "urn:uuid:c1000000-0000-0066-0000-000000000001"
* entry[=].resource = cond-066-main
* entry[+].fullUrl = "urn:uuid:c2000000-0000-0066-0000-000000000002"
* entry[=].resource = cond-066-additional
* entry[+].fullUrl = "urn:uuid:c3000000-0000-0066-0000-000000000003"
* entry[=].resource = cond-066-competing
* entry[+].fullUrl = "urn:uuid:c4000000-0000-0066-0000-000000000004"
* entry[=].resource = cond-066-complication
* entry[+].fullUrl = "urn:uuid:c5000000-0000-0066-0000-000000000005"
* entry[=].resource = cond-066-background
// Lab results
* entry[+].fullUrl = "urn:uuid:d1000000-0000-0066-0000-000000000001"
* entry[=].resource = obs-066-hiv
* entry[+].fullUrl = "urn:uuid:d2000000-0000-0066-0000-000000000002"
* entry[=].resource = obs-066-hep-b
* entry[+].fullUrl = "urn:uuid:d3000000-0000-0066-0000-000000000003"
* entry[=].resource = obs-066-hep-c
* entry[+].fullUrl = "urn:uuid:d4000000-0000-0066-0000-000000000004"
* entry[=].resource = obs-066-rw
* entry[+].fullUrl = "urn:uuid:d5000000-0000-0066-0000-000000000005"
* entry[=].resource = obs-066-tb
// Procedure
* entry[+].fullUrl = "urn:uuid:f1000000-0000-0066-0000-000000000001"
* entry[=].resource = proc-066-001
// Coverage
* entry[+].fullUrl = "urn:uuid:e1000000-0000-0066-0000-000000000001"
* entry[=].resource = coverage-066-001
// ServiceRequest (yo'llanma)
* entry[+].fullUrl = "urn:uuid:s1000000-0000-0066-0000-000000000001"
* entry[=].resource = sr-066-referral
// Provenance
* entry[+].fullUrl = "urn:uuid:g1000000-0000-0066-0000-000000000001"
* entry[=].resource = provenance-066-001

// ── Composition ──────────────────────────────────────────────
Instance: comp-066-001
InstanceOf: Form066InpatientComposition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:a1000000-0000-0066-0000-000000000001"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "066"
* status = #final
* type = $loinc#11490-0 "Physician Discharge summary"
* category = $document-category-cs#form-066 "Inpatient medical record"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* date = "2026-02-20T14:30:00+05:00"
* author = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* custodian = Reference(urn:uuid:a3000000-0000-0066-0000-000000000003)
* title = "Form 066 - Statsionar tibbiy kartasi"
* attester[+].mode = http://hl7.org/fhir/composition-attestation-mode#professional "Professional"
* attester[=].party = Reference(urn:uuid:a7000000-0000-0066-0000-000000000007)
// Sick leave certificate open/close dates
* event.period.start = "2026-02-10"
* event.period.end = "2026-02-20"
// Personal data section (required)
* section[personalData].title = "Bemor ma'lumotlari"
* section[personalData].code = $loinc#34133-9 "Summary of episode note"
* section[personalData].entry[0] = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* section[personalData].entry[+] = Reference(urn:uuid:a3000000-0000-0066-0000-000000000003)
* section[personalData].entry[+] = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
// Social history section
* section[socialHistory].title = "Ijtimoiy holat"
* section[socialHistory].code = $loinc#29762-2 "Social history note"
* section[socialHistory].entry[0] = Reference(urn:uuid:b1000000-0000-0066-0000-000000000001)
* section[socialHistory].entry[+] = Reference(urn:uuid:b2000000-0000-0066-0000-000000000002)
* section[socialHistory].entry[+] = Reference(urn:uuid:b3000000-0000-0066-0000-000000000003)
// Hospitalization section (required)
* section[hospitalization].title = "Yotqizish ma'lumotlari"
* section[hospitalization].code = $loinc#8648-8 "Hospital course note"
* section[hospitalization].entry[0] = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* section[hospitalization].entry[+] = Reference(urn:uuid:c0000000-0000-0066-0000-000000000000)
// Diagnoses section (required)
* section[diagnoses].title = "Yakuniy tashxis"
* section[diagnoses].code = $loinc#29548-5 "Diagnosis Narrative"
* section[diagnoses].entry[0] = Reference(urn:uuid:c1000000-0000-0066-0000-000000000001)
* section[diagnoses].entry[+] = Reference(urn:uuid:c2000000-0000-0066-0000-000000000002)
* section[diagnoses].entry[+] = Reference(urn:uuid:c3000000-0000-0066-0000-000000000003)
* section[diagnoses].entry[+] = Reference(urn:uuid:c4000000-0000-0066-0000-000000000004)
* section[diagnoses].entry[+] = Reference(urn:uuid:c5000000-0000-0066-0000-000000000005)
// Procedures section
* section[procedures].title = "Jarrohlik amaliyotlari"
* section[procedures].code = $loinc#47519-4 "History of Procedures Document"
* section[procedures].entry = Reference(urn:uuid:f1000000-0000-0066-0000-000000000001)
// Lab results section
* section[labResults].title = "Tahlil natijalari"
* section[labResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[labResults].entry[0] = Reference(urn:uuid:d1000000-0000-0066-0000-000000000001)
* section[labResults].entry[+] = Reference(urn:uuid:d2000000-0000-0066-0000-000000000002)
* section[labResults].entry[+] = Reference(urn:uuid:d3000000-0000-0066-0000-000000000003)
* section[labResults].entry[+] = Reference(urn:uuid:d4000000-0000-0066-0000-000000000004)
* section[labResults].entry[+] = Reference(urn:uuid:d5000000-0000-0066-0000-000000000005)
// Coverage / payment section
* section[coverage].title = "To'lov turi"
* section[coverage].code = $loinc#48768-6 "Payment sources Document"
* section[coverage].entry = Reference(urn:uuid:e1000000-0000-0066-0000-000000000001)
// Responsible persons section
* section[responsiblePersons].title = "Mas'ul shaxslar"
* section[responsiblePersons].code = $loinc#85847-2 "Patient care team information"
* section[responsiblePersons].entry[0] = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* section[responsiblePersons].entry[+] = Reference(urn:uuid:a7000000-0000-0066-0000-000000000007)
* section[responsiblePersons].entry[+] = Reference(urn:uuid:a8000000-0000-0066-0000-000000000008)

// ── Patient ───────────────────────────────────────────────────
Instance: patient-066-001
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
// JShShIR (national ID)
* identifier[nationalId].system = "https://dhp.uz/fhir/core/sid/pid/uz/ni"
* identifier[nationalId].value = "14523678901234"
// Tibbiy karta raqami
* identifier[healthCardId].system = "https://dhp.uz/fhir/core/sid/pid/uz/hc"
* identifier[healthCardId].value = "2026-00123"
// Pasport
* identifier[passportLocal].system = "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local"
* identifier[passportLocal].value = "AA1234567"
* identifier[passportLocal].type = $v2-0203#PPN "Passport number"
* name.use = #official
* name.text = "Toshmatov Alisher Baxtiyorovich"
* name.family = "Toshmatov"
* name.given[0] = "Alisher"
* name.given[+] = "Baxtiyorovich"
* birthDate = "1975-08-20"
* gender = #male
// Fuqaroligi — ISO 3166 country code
* extension[http://hl7.org/fhir/StructureDefinition/patient-nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#UZ "Uzbekistan"
// Telefon raqami
* telecom[0].system = #phone
* telecom[=].value = "+998901234567"
// Email
* telecom[+].system = #email
* telecom[=].value = "a.toshmatov@email.uz"
// Yashash manzili
* address.use = #home
* address.type = #physical
* address.text = "Toshkent sh., Yunusobod tumani, Amir Temur ko'chasi, 108-uy"
* address.line[0] = "Amir Temur ko'chasi, 108-uy"
* address.city = "Toshkent"
* address.district = "Yunusobod tumani"
* address.postalCode = "100084"
* address.country = "UZ"
// Biriktirilgan muassasa (managingOrganization)
* managingOrganization.identifier.system = "https://dhp.uz/fhir/core/sid/org/uz/argos"
* managingOrganization.identifier.value = "1001"
* managingOrganization.display = "Yunusobod tumani 10-son DPP"
// Biriktirilgan sana (managing-organization-attachment extension)
* extension[https://dhp.uz/fhir/core/StructureDefinition/managing-organization-attachment].valueDate = "2020-01-15"

// ── Organization ─────────────────────────────────────────────
Instance: org-clinic-066-001
InstanceOf: UZCoreOrganization
Usage: #inline
* language = #en
// Soliq identifikatori (GCEO o'rniga DHP-da soliq raqami ishlatiladi)
* identifier[taxId].system = "https://dhp.uz/fhir/core/sid/org/uz/soliq"
* identifier[taxId].value = "200123456"
* identifier[taxId].type = $v2-0203#TAX "Tax ID number"
* name = "1-sonli Shahar Klinik Kasalxonasi"

// ── Encounter ────────────────────────────────────────────────
Instance: encounter-066-001
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
// Ro'yxat raqami (data.number)
* identifier[0].system = "https://1shkb.uz/fhir/enc"
* identifier[=].value = "2026-066-0048"
* status = #completed
* class = $v3-ActCode#IMP "inpatient encounter"
// Yotqizish turi: Tezkor
* priority = $v3ActPriority#EM "Emergency"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* serviceProvider = Reference(urn:uuid:a3000000-0000-0066-0000-000000000003)
// Davolovchi shifokor va hamshira
* participant[0].type = $v3-ParticipationType#PPRF "primary performer"
* participant[=].actor = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006) "Xolmatov N.A."
* participant[+].type = $v3-ParticipationType#SPRF "secondary performer"
* participant[=].actor = Reference(urn:uuid:a8000000-0000-0066-0000-000000000008) "Yunusova M.H."
// Yotqizilgan sana va vaqti
* actualPeriod.start = "2026-02-10T08:30:00+05:00"
* actualPeriod.end = "2026-02-20T14:00:00+05:00"
// Jami o'rin kunlari
* length = 10 'd'
// Yo'llanma asosida yotqizildi (basedOn ServiceRequest)
* basedOn = Reference(urn:uuid:s1000000-0000-0066-0000-000000000001)
// Qabul manbai (yo'llanma bilan keldi — other)
* admission.admitSource = $encounter-admit-source#other "Other"
// Chiqarish holati
* admission.dischargeDisposition = $encounter-discharge-disposition#home "Home"
// Yo'llash sababi (kasallik)
* reason[+].use = https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-cs#mserv-0002-00001 "Disease"
* reason[=].value.reference = Reference(urn:uuid:c1000000-0000-0066-0000-000000000001)
// Tashxis (qabul bo'limi) — asosiy kasallik
* diagnosis[0].condition = Reference(urn:uuid:c1000000-0000-0066-0000-000000000001)
* diagnosis[=].use.coding.system = "http://terminology.hl7.org/CodeSystem/diagnosis-role"
* diagnosis[=].use.coding.code = #DD
* diagnosis[=].use.coding.display = "Discharge diagnosis"
// Bo'lim joylashuvi
* location[0].location = Reference(urn:uuid:a5000000-0000-0066-0000-000000000005)
* location[=].period.start = "2026-02-10T08:30:00+05:00"
* location[=].period.end = "2026-02-20T14:00:00+05:00"

// ── Location ─────────────────────────────────────────────────
Instance: location-066-001
InstanceOf: UZCoreLocation
Usage: #inline
* language = #en
// Bo'lim identifikatori
* identifier.type = https://terminology.dhp.uz/fhir/core/CodeSystem/location-kinds-cs#Branch "Branch"
* identifier.system = $location-unit
* identifier.value = "dept-neuro-001"
* name = "Nevrologiya bo'limi"
* managingOrganization = Reference(urn:uuid:a3000000-0000-0066-0000-000000000003)

// ── Practitioners ────────────────────────────────────────────
Instance: pract-066-doctor
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678901234"
* name.use = #official
* name.text = "Xolmatov N.A."
* name.family = "Xolmatov"
* name.given[0] = "N."
* name.given[+] = "A."

Instance: pract-066-head
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "23456789012345"
* name.use = #official
* name.text = "Raximov Sh.U."
* name.family = "Raximov"
* name.given[0] = "Sh."
* name.given[+] = "U."

Instance: pract-066-nurse
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "34567890123456"
* name.use = #official
* name.text = "Yunusova M.H."
* name.family = "Yunusova"
* name.given[0] = "M."
* name.given[+] = "H."

// ── Social history observations ───────────────────────────────
Instance: obs-066-social-status
InstanceOf: UZCoreSocioeconomicObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
// socioeconomicType slice (required by profile)
* code.coding[socioeconomicType] = $sct#82996008 "Social status"
* code.text = "Ijtimoiy holati"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* performer = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* effectiveDateTime = "2026-02-10"
// Ijtimoiy holat: Ishlaydi (social-status-cs)
* valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/social-status-cs#regis0010.00003 "Employed"

Instance: obs-066-benefits
InstanceOf: UZCoreSocioeconomicObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[socioeconomicType] = $sct#1303306008 "Eligible for benefit"
* code.text = "Imtiyoz toifasi"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* performer = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* effectiveDateTime = "2026-02-10"
// Imtiyoz toifasi: I va II guruh nogironligi (benefits-cs)
* valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/benefits-cs#regis0004.00003 "Disabled I and II groups"

Instance: obs-066-education
InstanceOf: UZCoreSocioeconomicObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
* code.coding[socioeconomicType] = $sct#105421008 "Educational achievement"
* code.text = "Ma'lumoti"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* performer = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* effectiveDateTime = "2026-02-10"
// Ma'lumot darajasi: Oliy (education-cs)
* valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs#regis0005.00008 "Higher education"

// ── Conditions (diagnoses) ────────────────────────────────────

// Yo'naltiruvchi muassasa tashxisi (gencl-0001-00001)
Instance: cond-066-referral
InstanceOf: UZCoreClinicalCondition
Usage: #inline
* language = #en
* extension[https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs#gencl-0001-00001 "Diagnosis of the referring institution"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#unconfirmed "Unconfirmed"
* code = $icd-10#I63.5 "Cerebral infarction due to unspecified occlusion or stenosis of cerebral arteries"
* code.text = "Yo'llagan muassasa tashxisi: Miya insult (I63.5)"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* onsetDateTime = "2026-02-10"

// Asosiy tashxis (gencl-0001-00003)
Instance: cond-066-main
InstanceOf: UZCoreClinicalCondition
Usage: #inline
* language = #en
* extension[https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs#gencl-0001-00003 "Main diagnosis"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#I63.5 "Cerebral infarction due to unspecified occlusion or stenosis of cerebral arteries"
* code.text = "Miya qon aylanishining o'tkir buzilishi (infarkt)"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* onsetDateTime = "2026-02-10"

// Yondosh tashxis (gencl-0001-00004)
Instance: cond-066-additional
InstanceOf: UZCoreClinicalCondition
Usage: #inline
* language = #en
* extension[https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs#gencl-0001-00004 "Concomitant diagnosis"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#I10 "Essential (primary) hypertension"
* code.text = "Gipertoniya kasalligi"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)

// Raqobatdosh tashxis (gencl-0001-00006)
Instance: cond-066-competing
InstanceOf: UZCoreClinicalCondition
Usage: #inline
* language = #en
* extension[https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs#gencl-0001-00006 "Diagnosis of a competing disease"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#differential "Differential"
* code = $icd-10#G45.9 "Transient cerebral ischaemic attack, unspecified"
* code.text = "O'tkinchi miya qon aylanishi buzilishi (TIA)"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* onsetDateTime = "2026-02-10"

// Fon kasalligi tashxisi (gencl-0001-00007)
Instance: cond-066-background
InstanceOf: UZCoreClinicalCondition
Usage: #inline
* language = #en
* extension[https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs#gencl-0001-00007 "Diagnosis of a background disease"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#E11 "Type 2 diabetes mellitus"
* code.text = "Qandli diabet 2-tur"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)

// Asorat tashxisi (gencl-0001-00005)
Instance: cond-066-complication
InstanceOf: UZCoreClinicalCondition
Usage: #inline
* language = #en
* extension[https://dhp.uz/fhir/core/StructureDefinition/diagnosis-type].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs#gencl-0001-00005 "Diagnosis of complications of the underlying disease"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#I69.3 "Sequelae of cerebral infarction"
* code.text = "Miya infarktining asoratlari"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)

// ── Lab results ───────────────────────────────────────────────

// OITS (HIV)
Instance: obs-066-hiv
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#75622-1 "HIV 1 and 2 tests - Meaningful Use set"
* code.text = "OITS (HIV)"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* performer = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* effectiveDateTime = "2026-02-11"
* valueCodeableConcept = $sct#260385009 "Negative"
* valueCodeableConcept.text = "Manfiy"

// Gepatit B
Instance: obs-066-hep-b
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#5195-3 "Hepatitis B virus surface Ag [Presence] in Serum"
* code.text = "Gepatit B"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* performer = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* effectiveDateTime = "2026-02-11"
* valueCodeableConcept = $sct#260385009 "Negative"
* valueCodeableConcept.text = "Manfiy"

// Gepatit C
Instance: obs-066-hep-c
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#16128-1 "Hepatitis C virus Ab [Presence] in Serum"
* code.text = "Gepatit C"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* performer = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* effectiveDateTime = "2026-02-11"
* valueCodeableConcept = $sct#260385009 "Negative"
* valueCodeableConcept.text = "Manfiy"

// RW (Vassermann reaksiyasi — sifilisga)
Instance: obs-066-rw
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#22461-8 "Syphilis Ab [Presence] in Serum"
* code.text = "RW (Vassermann reaksiyasi)"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* performer = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* effectiveDateTime = "2026-02-11"
* valueCodeableConcept = $sct#260385009 "Negative"
* valueCodeableConcept.text = "Manfiy"

// O'pka sili doriga sezgirlik
Instance: obs-066-tb
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#29313-5 "Mycobacterium tuberculosis drug susceptibility panel"
* code.text = "O'pka silida doriga sezgirlik"
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* performer = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* effectiveDateTime = "2026-02-11"
* valueCodeableConcept.text = "Sezgir"

// ── Procedure ────────────────────────────────────────────────
Instance: proc-066-001
InstanceOf: Procedure
Usage: #inline
* language = #en
* status = #completed
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
// Asosiy amaliyot belgisi
* category.text = "Asosiy"
// ICHI kodi yo'q standart FHIR terminologiyasida — code.text ishlatiladi
* code.text = "Kranial kompyuter tomografiya (KT-skanerlash)"
* occurrenceDateTime = "2026-02-11T10:00:00+05:00"
* performer[0].actor = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006) "Xolmatov N.A."

// ── Coverage ──────────────────────────────────────────────────
Instance: coverage-066-001
InstanceOf: Coverage
Usage: #inline
* language = #en
* status = #active
* kind = #insurance
* subscriber = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* beneficiary = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* period.start = "2026-02-10"
* period.end = "2026-02-20"
// To'lov turi (14 ta variantdan biri)
* type.text = "DTSJ Davolangan holat (PQ-311-son)"

// ── ServiceRequest (yo'llanma) ────────────────────────────────
Instance: sr-066-referral
InstanceOf: ServiceRequest
Usage: #inline
* language = #en
* status = #completed
* intent = #order
* subject = Reference(urn:uuid:a2000000-0000-0066-0000-000000000002)
* encounter = Reference(urn:uuid:a4000000-0000-0066-0000-000000000004)
* code.concept.text = "Nevrologiya bo'limiga yo'llash"
* requester = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006)
* reason.reference = Reference(urn:uuid:c0000000-0000-0066-0000-000000000000)

// ── Provenance ────────────────────────────────────────────────
Instance: provenance-066-001
InstanceOf: Provenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-066-inpatient)
* recorded = "2026-02-20T15:00:00+05:00"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#attester "Attester"
* agent.who = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006) "Xolmatov N.A."
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2026-02-20T15:00:00+05:00"
* signature.who = Reference(urn:uuid:a6000000-0000-0066-0000-000000000006) "Xolmatov N.A."
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2JqCjIgMCBvYmoKPDwKL1R5cGUgL1BhZ2VzCi9LaWRzIFszIDAgUl0KL0NvdW50IDEKL01lZGlhQm94IFswIDAgNjEyIDc5Ml0KPj4KZW5kb2JqCjMgMCBvYmoKPDwKL1R5cGUgL1BhZ2UKL1BhcmVudCAyIDAgUgovQ29udGVudHMgNCAwIFIKPj4KZW5kb2JqCjQgMCBvYmoKPDwKL0xlbmd0aCA0NAo+PgpzdHJlYW0KQlQKL0YxIDEyIFRmCjEwMCA3MDAgVGQKKFNhbXBsZSBTaWduZWQgRG9jdW1lbnQpIFRqCkVUCmVuZHN0cmVhbQplbmRvYmoKeHJlZgowIDUKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDAwMDA5IDAwMDAwIG4gCjAwMDAwMDAwNTggMDAwMDAgbiAKMDAwMDAwMDE0OCAwMDAwMCBuIAowMDAwMDAwMjE3IDAwMDAwIG4gCnRyYWlsZXIKPDwKL1NpemUgNQovUm9vdCAxIDAgUgo+PgpzdGFydHhyZWYKMzEyCiUlRU9G"
