Profile: Form027Composition
Parent: Composition
Id: form-027-composition
Title: "Form 027 - Patient Medical Record Extract Composition"
Description: "Composition profile for Form 027 (Extract from the patient's medical card, outpatient or inpatient / Tibbiy muassasadagi bemorning tibbiy kartasidan ko'chirma (ambulator/statsionar)), Ministry of Health Order No. 399 dated 2025-12-26. Section slices follow the numbered items of the official blank; item numbers are given in the ^short of each element."

* identifier 1..*
* identifier ^short = "Document identifier(s); the form-number identifier (system .../sid/doc/uz/form-number) carries the official form number 027"
* status = #final
// 34133-9 is the LOINC document type for a summary of an episode of care, which is what an
// extract from the medical card is. PR #59 chose the same code; an earlier draft used
// 34764-1 "General medicine Consult note", which describes a consultant's reply, not an extract.
* type = $loinc#34133-9 "Summary of episode note"
* category 1..1
* category = $document-category-cs#form-027 "Extract from the patient's medical card (outpatient/inpatient)"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Bemor (form items 1, 5-16): identifiers, name, birth date, gender, citizenship, passport, address, phone, e-mail"

* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Encounter.class distinguishes ambulator (AMB) from statsionar (IMP), form item 2; actualPeriod.start = Murojaat sanasi (item 4), actualPeriod.end = Chiqarilgan sana (item 3); admission.origin = Yo'llagan muassasa (items 16-17)"

* date ^short = "Date the extract was issued"

* author 1..*
* author only Reference(UZCorePractitionerRole)
* author ^short = "Davolovchi shifokor (treating physician), form item 26a; the PractitionerRole carries the physician's position and organization"

* custodian 1..1
* custodian only Reference(UZCoreOrganization)
* custodian ^short = "Muassasa nomi (issuing institution), form header"

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    chiefComplaint 1..1 and
    anamnesis 0..1 and
    clinicalExamination 1..1 and
    diagnosis 1..1 and
    diagnostics 0..1 and
    treatmentPlan 0..1 and
    responsiblePersons 0..1

// Shikoyatlar va anamnez / Жалобы и анамнез (form item 20). The blank has a single item and
// DMED captures it as one text field (complaints_anamnesis); when the source text is not split,
// the whole text goes into chiefComplaint and the anamnesis section is omitted.
* section[chiefComplaint].title 1..1
* section[chiefComplaint].code 1..1
* section[chiefComplaint].code = $loinc#10154-3 "Chief complaint Narrative - Reported"
* section[chiefComplaint].entry 1..1
* section[chiefComplaint].entry only Reference(UZCoreObservation)
* section[chiefComplaint].entry ^short = "Shikoyatlar (form item 20) as a free-text Observation; the same Observation may be referenced from Encounter.reason"

* section[anamnesis].title 1..1
* section[anamnesis].code 1..1
* section[anamnesis].code = $loinc#11329-0 "History general Narrative - Reported"
* section[anamnesis].entry 1..1
* section[anamnesis].entry only Reference(UZCoreObservation)
* section[anamnesis].entry ^short = "Anamnez (form item 20) as a free-text Observation, when captured separately from the complaints"

// Ko'rik / Осмотр (form item 21)
* section[clinicalExamination].title 1..1
* section[clinicalExamination].code 1..1
* section[clinicalExamination].code = $loinc#29545-1 "Physical findings note"
* section[clinicalExamination].entry 1..1
* section[clinicalExamination].entry only Reference(UZCoreObservation)
* section[clinicalExamination].entry ^short = "Ko'rik (form item 21): clinical examination findings as a free-text Observation"

// Asosiy tashxis / Asorati / Yo'ldosh kasallik (form items 17, 18, 19).
// The printed blank has one main-diagnosis slot (17) and two slots (18, 19) that are each either a
// complication or a concomitant disease (underlined by hand). DMED's hospitalization-referral
// diagnosis widget captures all 5 diagnosis-role categories (main / concomitant / background /
// complication / competing), so all 5 sub-sections are allowed for data fidelity, mirroring
// Form066HospitalDischargeComposition; background and competing never appear on the printed form.
* section[diagnosis].title 1..1
* section[diagnosis].code 1..1
* section[diagnosis].code = $loinc#29308-4 "Diagnosis"
* section[diagnosis].entry 0..0
* section[diagnosis].section ^slicing.discriminator.type = #value
* section[diagnosis].section ^slicing.discriminator.path = "code"
* section[diagnosis].section ^slicing.rules = #open
* section[diagnosis].section contains
    main 1..1 and
    concomitant 0..1 and
    background 0..1 and
    complication 0..1 and
    competing 0..1
* section[diagnosis].section[main].code = $diagnosis-role#main
* section[diagnosis].section[main].entry 1..1
* section[diagnosis].section[main].entry only Reference(UZCoreCondition)
* section[diagnosis].section[main].entry ^short = "Asosiy tashxis (form item 17, 17a): ICD-10 code and name"
* section[diagnosis].section[concomitant].code = $diagnosis-role#concomitant
* section[diagnosis].section[concomitant].entry 1..*
* section[diagnosis].section[concomitant].entry only Reference(UZCoreCondition)
* section[diagnosis].section[concomitant].entry ^short = "Yo'ldosh kasallik (form items 18-19)"
* section[diagnosis].section[background].code = $diagnosis-role#background
* section[diagnosis].section[background].entry 1..*
* section[diagnosis].section[background].entry only Reference(UZCoreCondition)
* section[diagnosis].section[background].entry ^short = "Fon kasallik - captured by DMED, not printed on the blank"
* section[diagnosis].section[complication].code = $diagnosis-role#complication
* section[diagnosis].section[complication].entry 1..*
* section[diagnosis].section[complication].entry only Reference(UZCoreCondition)
* section[diagnosis].section[complication].entry ^short = "Asorati (form items 18-19)"
* section[diagnosis].section[competing].code = $diagnosis-role#competing
* section[diagnosis].section[competing].entry 1..*
* section[diagnosis].section[competing].entry only Reference(UZCoreCondition)
* section[diagnosis].section[competing].entry ^short = "Raqobat tashxis - captured by DMED, not printed on the blank"

// Diagnostik tekshiruv / Диагностическое обследование (form item 22)
* section[diagnostics].title 1..1
* section[diagnostics].code 1..1
* section[diagnostics].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[diagnostics].entry 0..*
* section[diagnostics].entry only Reference(UZCoreDiagnosticReport or UZCoreObservation)
* section[diagnostics].entry ^short = "Diagnostik tekshiruv (form item 22): diagnostic reports, or free-text Observations when only a narrative is available"

// Davolash, Tavsiyalar, Retsept, Keyingi tadbirlar (form items 23-25)
* section[treatmentPlan].title 1..1
* section[treatmentPlan].code 1..1
* section[treatmentPlan].code = $loinc#18776-5 "Plan of care note"
* section[treatmentPlan].entry 0..*
* section[treatmentPlan].entry only Reference(CarePlan or MedicationRequest or UZCoreEpisodeOfCare or UZCoreServiceRequest)
* section[treatmentPlan].entry ^short = "Davolash (23) and Tavsiyalar / Kuzatuv (24, 25) as CarePlan; Retsept (24) as MedicationRequest; Dispanserizatsiya (25) as EpisodeOfCare; Shifoxonaga yotqazish (25) as ServiceRequest"

// Mas'ul shaxs (form item 26b) - Composition.author already carries 26a (davolovchi shifokor)
* section[responsiblePersons].title 1..1
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#LP35157-4 "Responsible party"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole)
* section[responsiblePersons].entry ^short = "Mas'ul shaxs (form item 26b), printed as Bo'lim mudiri (head of department) on the DMED form"
