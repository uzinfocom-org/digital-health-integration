// ╔══════════════════════════════════════════════════════════════════════════════╗
// ║  Form 066-1 – Psychiatric Inpatient Discharge Statistics Card               ║
// ║  Example Bundle — all resources inline                                      ║
// ║  UUID prefix: c066xxxx-0000-0000-0000-xxxxxxxxxxxx                          ║
// ╚══════════════════════════════════════════════════════════════════════════════╝

// ── Bundle ────────────────────────────────────────────────────────────────────

Instance: example-form-066-discharge
InstanceOf: Bundle
Usage: #example
Title: "Form 066-1 – Psychiatric inpatient discharge"
Description: "Example of a psychiatric / narcological inpatient discharge statistics card (Form 066-1)"
* language = #uz
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:066e8400-e29b-41d4-a716-446655440066"
* type = #document
* timestamp = "2026-03-22T14:00:00+05:00"
* entry[0].fullUrl = "urn:uuid:c0660001-0000-0000-0000-000000000001"
* entry[=].resource = form-066-composition-example
* entry[+].fullUrl = "urn:uuid:c0660002-0000-0000-0000-000000000002"
* entry[=].resource = form-066-patient-example
* entry[+].fullUrl = "urn:uuid:c0660003-0000-0000-0000-000000000003"
* entry[=].resource = form-066-encounter-example
* entry[+].fullUrl = "urn:uuid:c0660004-0000-0000-0000-000000000004"
* entry[=].resource = form-066-org-treating-example
* entry[+].fullUrl = "urn:uuid:c0660005-0000-0000-0000-000000000005"
* entry[=].resource = form-066-org-referring-example
* entry[+].fullUrl = "urn:uuid:c0660006-0000-0000-0000-000000000006"
* entry[=].resource = form-066-doctor-example
* entry[+].fullUrl = "urn:uuid:c0660007-0000-0000-0000-000000000007"
* entry[=].resource = form-066-head-example
* entry[+].fullUrl = "urn:uuid:c0660008-0000-0000-0000-000000000008"
* entry[=].resource = form-066-nurse-example
* entry[+].fullUrl = "urn:uuid:c0660009-0000-0000-0000-000000000009"
* entry[=].resource = form-066-location-example
* entry[+].fullUrl = "urn:uuid:c066000a-0000-0000-0000-00000000000a"
* entry[=].resource = form-066-hcs-example
* entry[+].fullUrl = "urn:uuid:c066000b-0000-0000-0000-00000000000b"
* entry[=].resource = form-066-cond-referral-example
* entry[+].fullUrl = "urn:uuid:c066000c-0000-0000-0000-00000000000c"
* entry[=].resource = form-066-cond-admission-example
* entry[+].fullUrl = "urn:uuid:c066000d-0000-0000-0000-00000000000d"
* entry[=].resource = form-066-cond-main-example
* entry[+].fullUrl = "urn:uuid:c066000e-0000-0000-0000-00000000000e"
* entry[=].resource = form-066-cond-additional-example
* entry[+].fullUrl = "urn:uuid:c066000f-0000-0000-0000-00000000000f"
* entry[=].resource = form-066-cond-discharge-example
* entry[+].fullUrl = "urn:uuid:c0660010-0000-0000-0000-000000000010"
* entry[=].resource = form-066-obs-social-example
* entry[+].fullUrl = "urn:uuid:c0660011-0000-0000-0000-000000000011"
* entry[=].resource = form-066-obs-benefits-example
* entry[+].fullUrl = "urn:uuid:c0660012-0000-0000-0000-000000000012"
* entry[=].resource = form-066-obs-education-example
* entry[+].fullUrl = "urn:uuid:c0660013-0000-0000-0000-000000000013"
* entry[=].resource = form-066-obs-hiv-example
* entry[+].fullUrl = "urn:uuid:c0660014-0000-0000-0000-000000000014"
* entry[=].resource = form-066-obs-rw-example
* entry[+].fullUrl = "urn:uuid:c0660015-0000-0000-0000-000000000015"
* entry[=].resource = form-066-obs-hepb-example
* entry[+].fullUrl = "urn:uuid:c0660016-0000-0000-0000-000000000016"
* entry[=].resource = form-066-obs-hepc-example
* entry[+].fullUrl = "urn:uuid:c0660017-0000-0000-0000-000000000017"
* entry[=].resource = form-066-coverage-example
* entry[+].fullUrl = "urn:uuid:c0660018-0000-0000-0000-000000000018"
* entry[=].resource = form-066-obs-income-source-example
* entry[+].fullUrl = "urn:uuid:c0660019-0000-0000-0000-000000000019"
* entry[=].resource = form-066-obs-employment-example
* entry[+].fullUrl = "urn:uuid:c066001a-0000-0000-0000-00000000001a"
* entry[=].resource = form-066-obs-reg-date-example
* entry[+].fullUrl = "urn:uuid:c066001b-0000-0000-0000-00000000001b"
* entry[=].resource = form-066-servicerequest-example

// ── Composition ───────────────────────────────────────────────────────────────

Instance: form-066-composition-example
InstanceOf: Form066DischargeComposition
Usage: #inline
* language = #uz
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:c0660001-0000-0000-0000-000000000001"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "066-1"
* status = #final
* type = $loinc#18842-5 "Discharge summary"
* category = $document-category-cs#form-066-1 "Psixiatriya (narkologiya) statsionar bemorining chiqib ketish statistik talonchasi"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* date = "2026-03-22T14:00:00+05:00"
* author = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
* title = "Form 066-1 – Psixiatriya statsionar bemori chiqib ketish statistik talonchasi"
* custodian = Reference(urn:uuid:c0660004-0000-0000-0000-000000000004)
// Vaqtincha mehnatga layoqatsizlik varaqasi period
* event[0].period.start = "2026-03-01"
* event[=].period.end = "2026-03-22"
// ── Section: Shaxsiy ma'lumotlar ──
* section[personalData].title = "Shaxsiy ma'lumotlar"
* section[personalData].code = $loinc#29762-2 "Social history note"
* section[personalData].entry[0] = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* section[personalData].entry[+] = Reference(urn:uuid:c0660004-0000-0000-0000-000000000004)
* section[personalData].entry[+] = Reference(urn:uuid:c0660010-0000-0000-0000-000000000010)
* section[personalData].entry[+] = Reference(urn:uuid:c0660011-0000-0000-0000-000000000011)
* section[personalData].entry[+] = Reference(urn:uuid:c0660012-0000-0000-0000-000000000012)
* section[personalData].entry[+] = Reference(urn:uuid:c0660018-0000-0000-0000-000000000018)
* section[personalData].entry[+] = Reference(urn:uuid:c0660019-0000-0000-0000-000000000019)
* section[personalData].entry[+] = Reference(urn:uuid:c066001a-0000-0000-0000-00000000001a)
// ── Section: Shifoxonaga yotqizish ma'lumotlari ──
* section[hospitalization].title = "Shifoxonaga yotqizish ma'lumotlari"
* section[hospitalization].code = $loinc#46240-8 "History of Hospitalizations+Outpatient visits Narrative"
* section[hospitalization].entry[0] = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* section[hospitalization].entry[+] = Reference(urn:uuid:c0660005-0000-0000-0000-000000000005)
* section[hospitalization].entry[+] = Reference(urn:uuid:c066000b-0000-0000-0000-00000000000b)
* section[hospitalization].entry[+] = Reference(urn:uuid:c066000c-0000-0000-0000-00000000000c)
* section[hospitalization].entry[+] = Reference(urn:uuid:c066001b-0000-0000-0000-00000000001b)
// ── Section: Statsionardagi yotqizish ma'lumotlari ──
* section[stayInfo].title = "Statsionardagi yotqizish ma'lumotlari"
* section[stayInfo].code = $loinc#8648-8 "Hospital course note"
* section[stayInfo].entry[0] = Reference(urn:uuid:c066000a-0000-0000-0000-00000000000a)
* section[stayInfo].entry[+] = Reference(urn:uuid:c0660009-0000-0000-0000-000000000009)
* section[stayInfo].entry[+] = Reference(urn:uuid:c066000f-0000-0000-0000-00000000000f)
// ── Section: Yakuniy tashxis ──
* section[finalDiagnosis].title = "Yakuniy tashxis"
* section[finalDiagnosis].code = $loinc#29548-5 "Diagnosis Narrative"
* section[finalDiagnosis].entry[0] = Reference(urn:uuid:c066000d-0000-0000-0000-00000000000d)
* section[finalDiagnosis].entry[+] = Reference(urn:uuid:c066000e-0000-0000-0000-00000000000e)
// ── Section: Tahlil natijasi ──
* section[labResults].title = "Tahlil natijasi"
* section[labResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[labResults].entry[0] = Reference(urn:uuid:c0660013-0000-0000-0000-000000000013)
* section[labResults].entry[+] = Reference(urn:uuid:c0660014-0000-0000-0000-000000000014)
* section[labResults].entry[+] = Reference(urn:uuid:c0660015-0000-0000-0000-000000000015)
* section[labResults].entry[+] = Reference(urn:uuid:c0660016-0000-0000-0000-000000000016)
// ── Section: To'lov turi ──
* section[payment].title = "To'lov turi"
* section[payment].code = $loinc#48768-6 "Payment sources Document"
* section[payment].entry = Reference(urn:uuid:c0660017-0000-0000-0000-000000000017)

// ── Patient ───────────────────────────────────────────────────────────────────

Instance: form-066-patient-example
InstanceOf: UZCorePatient
Usage: #inline
* language = #uz
// JShShIR / ПИНФЛ
* identifier[nationalId].value = "14010518501231"
// Tibbiy bayoni (health card)
* identifier[healthCardId].value = "PSYCH-2026-00145"
// Pasport / ID
* identifier[passportLocal].value = "AA1234567"
* name.use = #official
* name.text = "Yusupov Sherzod Akbarovich"
* name.family = "Yusupov"
* name.given[0] = "Sherzod"
* name.given[+] = "Akbarovich"
* birthDate = "1985-01-05"
* gender = #male
// Fuqaroligi / Гражданство
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* extension[=].extension[0].url = "code"
* extension[=].extension[0].valueCodeableConcept = $iso-3166#UZ "Uzbekistan"
// Yashash manzili / Адрес проживания
* address[0].use = #home
* address[=].type = #physical
* address[=].text = "Toshkent shahar, Yunusobod tumani, Furqat ko'chasi 12"
* address[=].postalCode = "100093"
* address[=].country = "UZ"
// Telefon
* telecom[0].system = #phone
* telecom[=].value = "+998901234567"
* telecom[=].use = #mobile
// Email
* telecom[+].system = #email
* telecom[=].value = "yusupov.sherzod@mail.uz"
// Biriktirilgan muassasa / Прикреплённое учреждение
* managingOrganization = Reference(urn:uuid:c0660004-0000-0000-0000-000000000004)

// ── Encounter ─────────────────────────────────────────────────────────────────

Instance: form-066-encounter-example
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #uz
// Bemorning ro'yxatdan o'tish raqami [066-1] / Регистрационный номер
* identifier[0].system = "https://dhp.uz/fhir/core/sid/enc/uz/reg-number"
* identifier[=].value = "PSY-2026-001245"
* status = #completed
// Yotqizish turi: Statsionar (IMP)
* class[0] = $v3-ActCode#IMP
// Yotqizilgan sanasi va vaqti
* actualPeriod.start = "2026-03-01T08:30:00+05:00"
* actualPeriod.end = "2026-03-22T12:00:00+05:00"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
// Yotqizish ustuvorligi: Rejali (Routine)
// TODO: Replace $v3ActPriority#R with UZCore EncounterPriorityVS code
//       Check: input/fsh/terminology/ in digital-health-ig — EncounterPriorityCS
* priority = $v3ActPriority#R "routine"
// Kim tomonidan yo'llangan [066-1]: Psixiatriya dispanseri
// TODO: Replace with UZCore EncounterAdmitSourceCS code from encounter-admit-source-vs
//       Check: input/fsh/terminology/ in digital-health-ig — EncounterAdmitSourceCS
//       UZCore display is 'Ruhiy kasalliklar shifoxonasidan' for the psych admit source
* admission.admitSource = $encounter-admit-source#psych
// Shifoxonadan chiqarish holati: Chiqarildi (home)
* admission.dischargeDisposition = $encounter-discharge-disposition#home "Home"
// Qayerdan keldi [066-1] / Откуда прибыл
* admission.origin = Reference(urn:uuid:c0660005-0000-0000-0000-000000000005)
// Yo'llashdan maqsad [066-1]: Ixtiyoriy davolash
* reason[0].use[0].text = "Ixtiyoriy davolash"
// Jami o'rin kunlari: 21
* length = 21 'd' "days"
// Davolovchi shifokor (primary performer)
* participant[0].type = $v3-ParticipationType#PPRF "primary performer"
* participant[=].actor = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
// Bo'lim boshlig'i (secondary performer)
* participant[+].type = $v3-ParticipationType#SPRF "secondary performer"
* participant[=].actor = Reference(urn:uuid:c0660007-0000-0000-0000-000000000007)
// Katta hamshira
* participant[+].type = $v3-ParticipationType#PART "Participation"
* participant[=].actor = Reference(urn:uuid:c0660008-0000-0000-0000-000000000008)
// Chiqarilgan bo'lim joylashuvi
* location[0].location = Reference(urn:uuid:c0660009-0000-0000-0000-000000000009)
* location[=].period.start = "2026-03-01T08:30:00+05:00"
* location[=].period.end = "2026-03-22T12:00:00+05:00"
// Yo'llagan muassasa / Направившее учреждение
* serviceProvider = Reference(urn:uuid:c0660005-0000-0000-0000-000000000005)
// Yo'llanma mavjud [066-1]: Ha — basedOn ServiceRequest
* basedOn = Reference(urn:uuid:c066001b-0000-0000-0000-00000000001b)
// Birinchi marta / qayta yotqizildi [066-1]: Qayta; Avval necha marta davolangan: 2 marta
* admission.reAdmission = http://terminology.hl7.org/CodeSystem/v2-0092#R
* admission.reAdmission.text = "Qayta — joriy yilda 2-marta"
// Reanimatsiyadagi kunlari [066-1]: 3 kun (2026-03-01 dan 2026-03-04 gacha)
* location[+].location.display = "Reanimatsiya bo'limi"
* location[=].period.start = "2026-03-01T08:30:00+05:00"
* location[=].period.end = "2026-03-04T08:00:00+05:00"
// Shifoxona ichidagi ta'til kunlari [066-1]: 2 kun (2026-03-15 dan 2026-03-17 gacha)
* location[+].location.display = "Shifoxona ichidagi ta'til"
* location[=].period.start = "2026-03-15T00:00:00+05:00"
* location[=].period.end = "2026-03-17T00:00:00+05:00"

// ── Organizations ─────────────────────────────────────────────────────────────

Instance: form-066-org-treating-example
InstanceOf: Organization
Usage: #inline
* language = #uz
// clinic.GCEO — Muassasa kodi
* identifier[0].system = "https://nrgo.uz/identifier/gceo"
* identifier[=].value = "200935935"
* active = true
// clinic.title — Muassasa nomi
* name = "Toshkent Shahri Ruhiy Salomatlik Dispanseri"

Instance: form-066-org-referring-example
InstanceOf: Organization
Usage: #inline
* language = #uz
// data.sending_clinic.GCEO — Yo'llagan muassasa kodi
* identifier[0].system = "https://nrgo.uz/identifier/gceo"
* identifier[=].value = "200935936"
* active = true
// data.sending_clinic.title — Yo'llagan muassasa nomi
* name = "Toshkent Shahri 1-son Ruhiy Salomatlik Markazi"

// ── Practitioners ─────────────────────────────────────────────────────────────

Instance: form-066-doctor-example
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #uz
// doctor.name — Davolovchi shifokor
* identifier[nationalId].value = "12345678901201"
* name.use = #official
* name.text = "Rahimov Jamshid Xasanovich"
* name.family = "Rahimov"
* name.given[0] = "Jamshid"
* name.given[+] = "Xasanovich"

Instance: form-066-head-example
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #uz
// department_head_doctor.name — Bo'lim boshlig'i
* identifier[nationalId].value = "12345678901202"
* name.use = #official
* name.text = "Toshmatov Anvar Abdullayevich"
* name.family = "Toshmatov"
* name.given[0] = "Anvar"
* name.given[+] = "Abdullayevich"

Instance: form-066-nurse-example
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #uz
// nurse.role — Katta hamshira
* identifier[nationalId].value = "12345678901203"
* name.use = #official
* name.text = "Mirzayeva Dilnoza Karimovna"
* name.family = "Mirzayeva"
* name.given[0] = "Dilnoza"
* name.given[+] = "Karimovna"

// ── Location ──────────────────────────────────────────────────────────────────

Instance: form-066-location-example
InstanceOf: Location
Usage: #inline
* language = #uz
// data.department.id — Chiqarilgan bo'lim ko'di
* identifier[0].system = "https://dhp.uz/fhir/core/NamingSystem/location-unit"
* identifier[=].value = "PSYCH-DEPT-1"
* status = #active
// data.department.title — Chiqarilgan bo'lim nomi
* name = "Psixiatriya bo'limi 1"
* managingOrganization = Reference(urn:uuid:c0660004-0000-0000-0000-000000000004)

// ── HealthcareService ─────────────────────────────────────────────────────────

Instance: form-066-hcs-example
InstanceOf: HealthcareService
Usage: #inline
* language = #uz
* active = true
* name = "Psixiatriya bo'limi 1 xizmati"
// O'rin joy turi [066-1]: Psixiatriya
* type[0] = https://dhp.uz/fhir/core/CodeSystem/organizational-service-group#psychiatry "Psixiatriya"
* location = Reference(urn:uuid:c0660009-0000-0000-0000-000000000009)
* providedBy = Reference(urn:uuid:c0660004-0000-0000-0000-000000000004)

// ── Conditions ────────────────────────────────────────────────────────────────

// Referral institution diagnosis / Yo'llagan muassasa tashxisi
Instance: form-066-cond-referral-example
InstanceOf: Condition
Usage: #inline
* language = #uz
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#provisional "Provisional"
* category[0].text = "Yo'llagan muassasa tashxisi"
// Yo'llagan muassasa tashxis kodi + nomi (ICD-10)
* code = $icd-10#F20 "Schizophrenia"
* code.text = "Shizofreniya"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)

// Admission department diagnosis / Qabul bo'limi tashxisi
Instance: form-066-cond-admission-example
InstanceOf: Condition
Usage: #inline
* language = #uz
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#provisional "Provisional"
* category[0].text = "Qabul bo'limi tashxisi"
// Qabul bo'limi tashxisi kodi + nomi (ICD-10)
* code = $icd-10#F20.0 "Paranoid schizophrenia"
* code.text = "Paranoid shizofreniya"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* recordedDate = "2026-03-01"

// Main final diagnosis / Asosiy yakuniy tashxis (disease_codes.type == 'main')
Instance: form-066-cond-main-example
InstanceOf: Condition
Usage: #inline
* language = #uz
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category[0] = https://dhp.uz/fhir/core/CodeSystem/diagnosis-role#main "Asosiy tashxis"
// disease_codes.code + disease_codes.title (ICD-10)
* code = $icd-10#F20.0 "Paranoid schizophrenia"
* code.text = "Paranoid shizofreniya"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
// Kasallik davomiyligi [066-1 only] / Disease duration at admission
* onsetString = "3 yildan ortiq"
* recordedDate = "2026-03-22"

// Additional diagnosis / Yondosh tashxis (disease_codes.type == 'additional')
Instance: form-066-cond-additional-example
InstanceOf: Condition
Usage: #inline
* language = #uz
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category[0] = https://dhp.uz/fhir/core/CodeSystem/diagnosis-role#additional "Yondosh tashxis"
* code = $icd-10#F41.1 "Generalized anxiety disorder"
* code.text = "Umumlashgan tashvish buzilishi"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* recordedDate = "2026-03-22"

// Discharge state / Bemor holati chiqarilishda + nogironlik [066-1]
Instance: form-066-cond-discharge-example
InstanceOf: Condition
Usage: #inline
* language = #uz
* clinicalStatus = $condition-clinical#remission "Remission"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category[0] = https://dhp.uz/fhir/core/CodeSystem/diagnosis-role#discharge-state "Chiqishidagi holat"
// Bemor holati: Ijobiy o'zgarish bilan
* code.text = "Ijobiy o'zgarish bilan (With positive change)"
// Chiqarilishdagi ruhiy nogironlik [066-1 only]: II guruh nogironi
* severity = https://dhp.uz/fhir/core/CodeSystem/psychiatric-disability#group-ii "II guruh nogironi"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* recordedDate = "2026-03-22"

// ── Socioeconomic Observations ────────────────────────────────────────────────

// Ijtimoiy holati / Социальный статус
Instance: form-066-obs-social-example
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category[0] = $observation-category#social-history "Social History"
* code = $sct#82996008 "Social status"
* code.text = "Ijtimoiy holati / Социальный статус"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* effectiveDateTime = "2026-03-01"
* performer = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
// Ishlamaydi / Не работает
* valueCodeableConcept.text = "Ishlamaydi"

// Imtiyoz toifasi / Наличие льготной категории
Instance: form-066-obs-benefits-example
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category[0] = $observation-category#social-history "Social History"
* code = $sct#1303306008 "Eligible for benefit"
* code.text = "Imtiyoz toifasi / Наличие льготной категории"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* effectiveDateTime = "2026-03-01"
* performer = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
// Category 3: I va II guruh nogironligi bo'lgan shaxslar
* valueCodeableConcept = https://dhp.uz/fhir/core/CodeSystem/benefits#category-3 "I va II guruh nogironligi bo'lgan shaxslar"

// Ma'lumoti [066-1 only] / Образование
Instance: form-066-obs-education-example
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category[0] = $observation-category#social-history "Social History"
* code = $sct#105421008 "Educational achievement"
* code.text = "Ma'lumoti / Образование [066-1 only]"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* effectiveDateTime = "2026-03-01"
* performer = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
// Oliy / Высшее
* valueCodeableConcept.text = "Oliy"

// ── Laboratory Observations ───────────────────────────────────────────────────

// OITS / ВИЧ (HIV)
Instance: form-066-obs-hiv-example
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category[0] = $observation-category#laboratory "Laboratory"
// LOINC 75622-1 – HIV 1 and 2 tests
* code = $loinc#75622-1
* code.text = "OITS (VICh / HIV)"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* effectiveDateTime = "2026-03-02"
* performer = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
// Manfiy / Отрицательный
* valueCodeableConcept = $sct#260385009 "Negative"
* valueCodeableConcept.text = "Manfiy"

// RW (Vaserman reaktsiyasi) / Реакция Вассермана
Instance: form-066-obs-rw-example
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category[0] = $observation-category#laboratory "Laboratory"
// LOINC 5292-8 – Reagin Ab [Titer] in Serum by RPR
* code = $loinc#5292-8
* code.text = "RW (Vaserman reaktsiyasi)"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* effectiveDateTime = "2026-03-02"
* performer = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
* valueCodeableConcept = $sct#260385009 "Negative"
* valueCodeableConcept.text = "Manfiy"

// Gepatit B / Гепатит B
Instance: form-066-obs-hepb-example
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category[0] = $observation-category#laboratory "Laboratory"
// LOINC 22322-2 – Hepatitis B virus surface Ag [Presence] in Serum or Plasma
* code = $loinc#22322-2
* code.text = "Gepatit B"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* effectiveDateTime = "2026-03-02"
* performer = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
* valueCodeableConcept = $sct#260385009 "Negative"
* valueCodeableConcept.text = "Manfiy"

// Gepatit C / Гепатит C
Instance: form-066-obs-hepc-example
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category[0] = $observation-category#laboratory "Laboratory"
// LOINC 13955-0 – Hepatitis C virus Ab [Presence] in Serum
* code = $loinc#13955-0
* code.text = "Gepatit C"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* effectiveDateTime = "2026-03-02"
* performer = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
* valueCodeableConcept = $sct#260385009 "Negative"
* valueCodeableConcept.text = "Manfiy"

// ── Coverage ──────────────────────────────────────────────────────────────────

// Yashash manbayi [066-1 only] / Источник средств существования
Instance: form-066-obs-income-source-example
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category[0] = $observation-category#social-history "Social History"
// TODO: Replace SCT#82996008 + system URL with UZCore SocialStatusCS canonical if different
//       Check: input/fsh/terminology/ in digital-health-ig — look for SocialStatusCS or IncomeSourceCS
//       Code for "Nogironlik nafaqasi" (disability pension) is likely regis0010.00007 or similar
* code = $sct#82996008 "Social status"
* code.text = "Yashash manbayi / Источник средств существования [066-1 only]"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* effectiveDateTime = "2026-03-01"
* performer = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
// Nogironlik nafaqasi (disability pension)
// TODO: Replace with UZCore SocialStatusCS coded value once system URL is confirmed
* valueCodeableConcept.text = "Nogironlik nafaqasi"

// Ish joyi / Lavozim [066-1 only] / Место работы / Должность
Instance: form-066-obs-employment-example
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category[0] = $observation-category#social-history "Social History"
// TODO: Replace SCT#14679004 + system URL with UZCore PositionAndProfessionVS if applicable
//       Check: input/fsh/terminology/ in digital-health-ig — PositionAndProfessionVS (KODP-2020)
//       System URL is likely: https://terminology.dhp.uz/fhir/core/ValueSet/position-and-profession-vs
* code = $sct#14679004 "Occupation"
* code.text = "Ish joyi / Lavozim [066-1 only]"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* effectiveDateTime = "2026-03-01"
* performer = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
// Ishlamaydi (nogironlik bo'yicha)
// TODO: Replace with UZCore PositionAndProfessionVS coded value
* valueCodeableConcept.text = "Ishlamaydi (nogironlik bo'yicha)"

// Psixonevrologik dispanserda ro'yxatda turish sanasi [066-1 only]
Instance: form-066-obs-reg-date-example
InstanceOf: Observation
Usage: #inline
* language = #uz
* status = #final
* category[0] = $observation-category#social-history "Social History"
// SNOMED CT "Date of registration" — no perfect standard code; using SCT#371528001 (referral date)
// TODO: Confirm best LOINC or SCT code for "registration date in psychiatric facility"
* code = $sct#371528001
* code.text = "Psixonevrologik dispanserda ro'yxatda turish sanasi [066-1 only]"
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
* performer = Reference(urn:uuid:c0660006-0000-0000-0000-000000000006)
// Ro'yxatga olingan sana / Date of registration in dispensary
* effectiveDateTime = "2023-05-15"
* valueDateTime = "2023-05-15"

// ── ServiceRequest (Yo'llanma) ────────────────────────────────────────────────

// Yo'llanma mavjud [066-1]: Ha — referral document
Instance: form-066-servicerequest-example
InstanceOf: ServiceRequest
Usage: #inline
* language = #uz
* status = #completed
* intent = #order
* subject = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:c0660003-0000-0000-0000-000000000003)
// Yo'llagan muassasa
* requester = Reference(urn:uuid:c0660005-0000-0000-0000-000000000005)
// Psixiatriya dispanseri tomonidan yo'llangan
* code.concept.text = "Statsionar davolash uchun yo'llanma"
* authoredOn = "2026-02-28"

// ── Coverage ──────────────────────────────────────────────────────────────────

// To'lov turi / Тип оплаты
Instance: form-066-coverage-example
InstanceOf: Coverage
Usage: #inline
* language = #uz
* status = #active
* kind = #insurance
* subscriber = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
* beneficiary = Reference(urn:uuid:c0660002-0000-0000-0000-000000000002)
// price_list.title — DTSJ Imtiyozli toifaga kiruvchi bemorlarni davolash (PQ-5199-son)
* type = https://dhp.uz/fhir/core/CodeSystem/payment-type#dtsj-privileged "DTSJ Imtiyozli toifaga kiruvchi bemorlarni davolash (PQ-5199-son)"
* type.text = "DTSJ Imtiyozli toifaga kiruvchi bemorlarni davolash (PQ-5199-son)"
* paymentBy[0].party = Reference(urn:uuid:c0660004-0000-0000-0000-000000000004)
