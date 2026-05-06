// ─── Bundle ───────────────────────────────────────────────────────────────────
Instance: example-form-027-outpatient
InstanceOf: Bundle
Usage: #example
Title: "Form 027 - Outpatient visit"
Description: "Example of an outpatient patient visit record (ambulatory)"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f0270000-0000-0000-0000-000000000000"
* type = #document
* timestamp = "2026-01-10T11:30:00+05:00"

* entry[0].fullUrl = "urn:uuid:c0270001-0000-0000-0000-000000000001"
* entry[=].resource = composition-027
* entry[+].fullUrl = "urn:uuid:c0270002-0000-0000-0000-000000000001"
* entry[=].resource = patient-027
* entry[+].fullUrl = "urn:uuid:c0270003-0000-0000-0000-000000000001"
* entry[=].resource = organization-027
* entry[+].fullUrl = "urn:uuid:c0270004-0000-0000-0000-000000000001"
* entry[=].resource = encounter-027
* entry[+].fullUrl = "urn:uuid:c0270005-0000-0000-0000-000000000001"
* entry[=].resource = practitioner-027-doctor
* entry[+].fullUrl = "urn:uuid:c0270005-0000-0000-0000-000000000002"
* entry[=].resource = practitioner-027-resp
* entry[+].fullUrl = "urn:uuid:c0270006-0000-0000-0000-000000000001"
* entry[=].resource = condition-027-main
* entry[+].fullUrl = "urn:uuid:c0270006-0000-0000-0000-000000000002"
* entry[=].resource = condition-027-comorbidity
* entry[+].fullUrl = "urn:uuid:c0270006-0000-0000-0000-000000000003"
* entry[=].resource = condition-027-complication
* entry[+].fullUrl = "urn:uuid:c0270008-0000-0000-0000-000000000001"
* entry[=].resource = obs-027-complaint
* entry[+].fullUrl = "urn:uuid:c0270008-0000-0000-0000-000000000002"
* entry[=].resource = obs-027-anamnesis
* entry[+].fullUrl = "urn:uuid:c0270008-0000-0000-0000-000000000003"
* entry[=].resource = obs-027-exam
* entry[+].fullUrl = "urn:uuid:c0270009-0000-0000-0000-000000000001"
* entry[=].resource = diagreport-027
* entry[+].fullUrl = "urn:uuid:c0270010-0000-0000-0000-000000000001"
* entry[=].resource = careplan-027
* entry[+].fullUrl = "urn:uuid:c0270011-0000-0000-0000-000000000001"
* entry[=].resource = medrx-027
* entry[+].fullUrl = "urn:uuid:c0270012-0000-0000-0000-000000000001"
* entry[=].resource = eoc-027
* entry[+].fullUrl = "urn:uuid:c0270013-0000-0000-0000-000000000001"
* entry[=].resource = svcreq-027
* entry[+].fullUrl = "urn:uuid:c0270014-0000-0000-0000-000000000001"
* entry[=].resource = provenance-027

// ─── Composition ──────────────────────────────────────────────────────────────
Instance: composition-027
InstanceOf: Form027OutpatientComposition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:c0270001-0000-0000-0000-000000000001"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "027"
* status = #final
* type = $loinc#34764-1 "General medicine Consult note"
* category = $document-category-cs#form-027 "Outpatient patient visit record"
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* date = "2026-01-10T11:30:00+05:00"
* author = Reference(urn:uuid:c0270005-0000-0000-0000-000000000001)
* custodian = Reference(urn:uuid:c0270003-0000-0000-0000-000000000001)
* title = "Form 027 - Ambulatoriyadagi bemor taloni"

* section[chiefComplaint].title = "Shikoyatlar"
* section[chiefComplaint].code = $loinc#10154-3 "Chief complaint Narrative - Reported"
* section[chiefComplaint].entry = Reference(urn:uuid:c0270008-0000-0000-0000-000000000001)

* section[anamnesis].title = "Anamnez"
* section[anamnesis].code = $loinc#11329-0 "History general Narrative - Reported"
* section[anamnesis].entry = Reference(urn:uuid:c0270008-0000-0000-0000-000000000002)

* section[clinicalExamination].title = "Klinik ko'rik"
* section[clinicalExamination].code = $loinc#29545-1
* section[clinicalExamination].entry = Reference(urn:uuid:c0270008-0000-0000-0000-000000000003)

* section[diagnosis].title = "Tashxislar"
* section[diagnosis].code = $loinc#29308-4 "Diagnosis"
* section[diagnosis].entry[0] = Reference(urn:uuid:c0270006-0000-0000-0000-000000000001)
* section[diagnosis].entry[+] = Reference(urn:uuid:c0270006-0000-0000-0000-000000000002)
* section[diagnosis].entry[+] = Reference(urn:uuid:c0270006-0000-0000-0000-000000000003)

* section[diagnostics].title = "Diagnostik tekshiruv"
* section[diagnostics].code = $loinc#30954-2
* section[diagnostics].entry = Reference(urn:uuid:c0270009-0000-0000-0000-000000000001)

* section[treatmentPlan].title = "Davolash va tavsiyalar"
* section[treatmentPlan].code = $loinc#18776-5 "Plan of care note"
* section[treatmentPlan].entry[0] = Reference(urn:uuid:c0270010-0000-0000-0000-000000000001)
* section[treatmentPlan].entry[+] = Reference(urn:uuid:c0270011-0000-0000-0000-000000000001)
* section[treatmentPlan].entry[+] = Reference(urn:uuid:c0270012-0000-0000-0000-000000000001)
* section[treatmentPlan].entry[+] = Reference(urn:uuid:c0270013-0000-0000-0000-000000000001)

// ─── Patient ──────────────────────────────────────────────────────────────────
Instance: patient-027
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
* identifier[nationalId].value = "15056738291234"
* identifier[healthCardId].value = "MED-2026-00427"
* identifier[passportLocal].value = "AA1234567"
* name.use = #official
* name.text = "Kamolov Sardor Baxtiyorovich"
* name.family = "Kamolov"
* name.given[0] = "Sardor"
* name.given[+] = "Baxtiyorovich"
* birthDate = "1980-05-15"
* gender = #male
* address.use = #home
* address.text = "Toshkent sh., Yunusobod t., Amir Temur ko'ch., 42-uy"
* telecom[0].system = #phone
* telecom[=].value = "+998901234567"
* telecom[+].system = #email
* telecom[=].value = "kamolov.sardor@example.uz"

// ─── Organization (main facility) ─────────────────────────────────────────────
Instance: organization-027
InstanceOf: UZCoreOrganization
Usage: #inline
* language = #en
* name = "Toshkent shahar 3-son shahar poliklinikasi"

// ─── Encounter ────────────────────────────────────────────────────────────────
Instance: encounter-027
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
* identifier[0].system = "https://dhp.uz/fhir/core/sid/pid/uz/prn/200935935/encounter"
* identifier[=].value = "ENC-2026-00427"
* status = #completed
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* serviceProvider.identifier.system = "https://dhp.uz/fhir/core/sid/org/uz/facility-code"
* serviceProvider.identifier.value = "15-OPL"
* serviceProvider.display = "15-son oilaviy poliklinika"
* actualPeriod.start = "2026-01-10T09:00:00+05:00"
* actualPeriod.end = "2026-01-10T11:30:00+05:00"
* reason[0].value[0] = Reference(urn:uuid:c0270008-0000-0000-0000-000000000001)

// ─── Practitioner – treating doctor ───────────────────────────────────────────
Instance: practitioner-027-doctor
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678901234"
* name.use = #official
* name.text = "Yusupova Nodira Hamidovna"
* name.family = "Yusupova"
* name.given[0] = "Nodira"
* name.given[+] = "Hamidovna"

// ─── Practitioner – responsible person ────────────────────────────────────────
Instance: practitioner-027-resp
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678901299"
* name.use = #official
* name.text = "Rahimov Jasur Abdullayevich"
* name.family = "Rahimov"
* name.given[0] = "Jasur"
* name.given[+] = "Abdullayevich"

// ─── Condition – main diagnosis ───────────────────────────────────────────────
Instance: condition-027-main
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $observation-category#exam "Exam"
* code = $icd-10#J06.9 "O'tkir yuqori nafas yo'llari infektsiyasi"
* code.coding[0].display = "Acute upper respiratory infection, unspecified"
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* onsetDateTime = "2026-01-07"
* recordedDate = "2026-01-10"
* note.text = "Asosiy tashxis"

// ─── Condition – comorbidity ──────────────────────────────────────────────────
Instance: condition-027-comorbidity
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $observation-category#exam "Exam"
* code = $icd-10#I10 "Arterial gipertenziya"
* code.coding[0].display = "Essential (primary) hypertension"
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* recordedDate = "2026-01-10"
* note.text = "Yo'ldosh kasallik"

// ─── Condition – complication ─────────────────────────────────────────────────
Instance: condition-027-complication
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $observation-category#exam "Exam"
* code = $icd-10#J22 "O'tkir quyi nafas yo'llari infektsiyasi"
* code.coding[0].display = "Unspecified acute lower respiratory infection"
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* recordedDate = "2026-01-10"
* note.text = "Asorat"

// ─── Observation – chief complaint ────────────────────────────────────────────
Instance: obs-027-complaint
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#10154-3 "Chief complaint Narrative - Reported"
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* effectiveDateTime = "2026-01-10T09:00:00+05:00"
* performer = Reference(urn:uuid:c0270005-0000-0000-0000-000000000001)
* valueString = "Yo'tal (quruq), burun oqishi, bosh og'rig'i, harorat 38.2°C, umumiy holsizlik. 3 kundan beri shikoyatlar mavjud."

// ─── Observation – anamnesis ──────────────────────────────────────────────────
Instance: obs-027-anamnesis
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#11329-0 "History general Narrative - Reported"
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* effectiveDateTime = "2026-01-10T09:10:00+05:00"
* performer = Reference(urn:uuid:c0270005-0000-0000-0000-000000000001)
* valueString = "2026-yil 7-yanvarda sovqotganidan keyin kasallik boshlangan. Birinchi kunlari o'z-o'zini davolagan (issiq choy, paracetamol). Holat yaxshilanmagani uchun shifokorga murojaat qilgan. Arterial gipertenziya bo'yicha dispanser hisobida turadi."

// ─── Observation – clinical examination ───────────────────────────────────────
Instance: obs-027-exam
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#29545-1
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* effectiveDateTime = "2026-01-10T09:20:00+05:00"
* performer = Reference(urn:uuid:c0270005-0000-0000-0000-000000000001)
* valueString = "Umumiy ahvoli o'rtacha og'irlikda. Tana harorati 38.2°C. Arterial bosim 140/90 mmHg. Puls 88 ur/min. Nafas olish 20/min. O'pkada auskultatsiyada qo'pol pufakli xirillash eshitiladi. Tomoq shilliq qavati qizargan."

// ─── DiagnosticReport ─────────────────────────────────────────────────────────
Instance: diagreport-027
InstanceOf: DiagnosticReport
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code.text = "Umumiy qon tahlili va ko'krak qafasi rentgenografiyasi"
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* effectiveDateTime = "2026-01-10T10:00:00+05:00"
* conclusion = "Leykositoz (12.5 × 10⁹/L), EChT 28 mm/soat. Ko'krak qafasi rentgenogrammasida o'pkaning pastki qismlarida infiltratsiya belgilari mavjud."

// ─── CarePlan – treatment, recommendations, follow-up ─────────────────────────
Instance: careplan-027
InstanceOf: CarePlan
Usage: #inline
* language = #en
* status = #active
* intent = #plan
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* activity[0].performedActivity[0].concept.text = "Amoksitsillin 500mg × 3 mahal/kun, 7 kun"
* activity[+].performedActivity[0].concept.text = "Paracetamol 500mg harorat 38.5°C dan yuqori bo'lsa"
* note[0].text = "Ko'p suyuqlik ichish (≥2L/kun). 7 kun uy rejimida dam olish. Qabul kunidan 3 kun o'tgach nazorat qabuli."
* note[+].text = "Keyingi tadbir: 3 kundan keyin nazorat qabuli."

// ─── MedicationRequest – prescription ─────────────────────────────────────────
Instance: medrx-027
InstanceOf: MedicationRequest
Usage: #inline
* language = #en
* status = #active
* intent = #order
* medication.concept.text = "Amoksitsillin 500mg kapsulalar"
* medication.concept = $sct#372687004 "Amoxicillin"
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* requester = Reference(urn:uuid:c0270005-0000-0000-0000-000000000001)
* dosageInstruction[0].text = "1 kapsula (500mg) kuniga 3 mahal, 7 kun davomida"
* dosageInstruction[=].timing.repeat.frequency = 3
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].doseAndRate[0].doseQuantity = 500 'mg' "mg"

// ─── EpisodeOfCare – dispensary registration ──────────────────────────────────
Instance: eoc-027
InstanceOf: UZCoreEpisodeOfCare
Usage: #inline
* language = #en
* status = #active
* type[0].coding[0].system = "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-type-cs"
* type[0].coding[0].code = #mserv-0001-00001
* type[0].coding[0].display = "Preventive services"
* type[0].text = "Dispanser hisobi - Arterial gipertenziya"
* patient = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* managingOrganization = Reference(urn:uuid:c0270003-0000-0000-0000-000000000001)

// ─── ServiceRequest – hospitalization referral ────────────────────────────────
Instance: svcreq-027
InstanceOf: ServiceRequest
Usage: #inline
* language = #en
* status = #active
* intent = #order
* code.concept.text = "Pulmonologiya bo'limiga yotqazish"
* subject = Reference(urn:uuid:c0270002-0000-0000-0000-000000000001)
* encounter = Reference(urn:uuid:c0270004-0000-0000-0000-000000000001)
* requester = Reference(urn:uuid:c0270005-0000-0000-0000-000000000001)
* reason[0].reference = Reference(urn:uuid:c0270006-0000-0000-0000-000000000001)
* note.text = "Holat yomonlashganda yoki davolash samarasi bo'lmaganda shifoxonaga yotqazish ko'rsatilgan."

// ─── Provenance – signatures ───────────────────────────────────────────────────
Instance: provenance-027
InstanceOf: Provenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-027-outpatient)
* recorded = "2026-01-10T11:30:00+05:00"
* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#attester "Attester"
* agent[=].who = Reference(urn:uuid:c0270005-0000-0000-0000-000000000001) "Yusupova Nodira Hamidovna"
* agent[+].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[=].who = Reference(urn:uuid:c0270005-0000-0000-0000-000000000002) "Rahimov Jasur Abdullayevich"
* signature[0].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature[=].when = "2026-01-10T11:30:00+05:00"
* signature[=].who = Reference(urn:uuid:c0270005-0000-0000-0000-000000000001) "Yusupova Nodira Hamidovna"
* signature[=].sigFormat = #application/pdf
* signature[=].data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2JqCg=="
* signature[+].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature[=].when = "2026-01-10T11:35:00+05:00"
* signature[=].who = Reference(urn:uuid:c0270005-0000-0000-0000-000000000002) "Rahimov Jasur Abdullayevich"
* signature[=].sigFormat = #application/pdf
* signature[=].data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2JqCg=="
