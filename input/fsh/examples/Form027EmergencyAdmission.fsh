// Form 027, variant B: the extract DMED prints when the emergency room admits a
// patient without a referral (Priyomniy pokoy -> "Oformit patsienta bez napravleniya").
// The document describes the hospitalization itself: the Encounter is the stay that
// Forms 066, 003 and 096 send later (identifier = DMED hospitalization id), and no
// hospitalization ServiceRequest is sent because the patient is already admitted.

Instance: example-form-027-emergency-admission
InstanceOf: Bundle
Usage: #example
Title: "Form 027 - Extract at emergency admission without a referral"
Description: "Example of Form 027 printed when the emergency room admits a patient without a referral: the Encounter is the hospitalization, there is no hospitalization request"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:760e8400-e29b-41d4-a716-4466554402b0"
* type = #document
* timestamp = "2026-03-04T11:40:00+05:00"

* entry[0].fullUrl = "urn:uuid:027b0001-1111-2222-3333-444444444444"
* entry[=].resource = composition-027-b
* entry[+].fullUrl = "urn:uuid:027b0002-1111-2222-3333-444444444444"
* entry[=].resource = patient-027-b
* entry[+].fullUrl = "urn:uuid:027b0003-1111-2222-3333-444444444444"
* entry[=].resource = encounter-027-b
* entry[+].fullUrl = "urn:uuid:027b0004-1111-2222-3333-444444444444"
* entry[=].resource = organization-hospital-027-b
* entry[+].fullUrl = "urn:uuid:027b0005-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-doctor-027-b
* entry[+].fullUrl = "urn:uuid:027b0006-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-doctor-027-b
* entry[+].fullUrl = "urn:uuid:027b0007-1111-2222-3333-444444444444"
* entry[=].resource = condition-main-027-b
* entry[+].fullUrl = "urn:uuid:027b0008-1111-2222-3333-444444444444"
* entry[=].resource = observation-complaints-027-b
* entry[+].fullUrl = "urn:uuid:027b0009-1111-2222-3333-444444444444"
* entry[=].resource = observation-clinical-exam-027-b
* entry[+].fullUrl = "urn:uuid:027b0010-1111-2222-3333-444444444444"
* entry[=].resource = careplan-treatment-027-b
* entry[+].fullUrl = "urn:uuid:027b0011-1111-2222-3333-444444444444"
* entry[=].resource = provenance-doctor-signature-027-b


Instance: composition-027-b
InstanceOf: Form027MedicalRecordExtractComposition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:861f9511-f30c-52e5-b827-5577665502b0"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "027"
* status = #final
* type.coding[0] = $composition-type-cs#emdoc-0010-0106
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category[formCategory] = $document-category-cs#form-027 "Extract from patient's medical record"
* subject = Reference(urn:uuid:027b0002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:027b0003-1111-2222-3333-444444444444)
* date = "2026-03-04T11:40:00+05:00"
* author[0] = Reference(urn:uuid:027b0006-1111-2222-3333-444444444444)
* custodian = Reference(urn:uuid:027b0004-1111-2222-3333-444444444444)
* title = "Form 027 - Tibbiy muassasadagi bemorning tibbiy kartasidan koʻchirma (statsionar)"

* section[registrationInformation].title = "Roʻyxatga olish maʼlumotlari"
* section[=].code = $loinc#LP74442-2 "Admission Information"
* section[=].entry[0] = Reference(urn:uuid:027b0004-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:027b0003-1111-2222-3333-444444444444)

* section[personalInformation].title = "Shaxsiy maʼlumotlar"
* section[=].code = $loinc#45970-1 "Demographic information section"
* section[=].entry[0] = Reference(urn:uuid:027b0002-1111-2222-3333-444444444444)

* section[residenceInformation].title = "Manzil va aloqa"
* section[=].code = $loinc#56799-0 "Address"
* section[=].entry[0] = Reference(urn:uuid:027b0002-1111-2222-3333-444444444444)

* section[referralAndDiagnosis].title = "Yoʻllanma va tashxis"
* section[=].code = $loinc#42349-1 "Reason for referral (narrative)"
* section[=].entry[0] = Reference(urn:uuid:027b0003-1111-2222-3333-444444444444)
* section[referralAndDiagnosis].section[main].title = "Asosiy tashxis"
* section[referralAndDiagnosis].section[main].code = $diagnosis-role#main
* section[referralAndDiagnosis].section[main].entry = Reference(urn:uuid:027b0007-1111-2222-3333-444444444444)

* section[clinicalInformation].title = "Klinik maʼlumotlar"
* section[=].code = $loinc#34117-2 "History and physical note"
* section[=].entry[0] = Reference(urn:uuid:027b0003-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:027b0008-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:027b0009-1111-2222-3333-444444444444)

* section[treatmentAndRecommendations].title = "Davolash va tavsiyalar"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].entry[0] = Reference(urn:uuid:027b0010-1111-2222-3333-444444444444)

* section[responsiblePersons].title = "Masʼul shaxslar"
* section[=].code = $loinc#LP35157-4 "Responsible party"
* section[=].entry[0] = Reference(urn:uuid:027b0006-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:027b0011-1111-2222-3333-444444444444)


Instance: patient-027-b
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
* identifier[nationalId].value = "31234567890125"
* identifier[healthCardId].value = "HC-2026-00028"
* name.use = #official
* name.text = "Karimov Jasur Anvarovich"
* name.family = "Karimov"
* name.given[0] = "Jasur"
* name.given[+] = "Anvarovich"
* birthDate = "1979-11-03"
* gender = #male
* telecom[0].system = #phone
* telecom[=].value = "+998901112244"
* address[uzAddress].text = "Toshkent sh., Yunusobod tumani, 4-mavze, 12-uy"
* address[uzAddress].district = "1726266"
* address[uzAddress].state = "1726"


// The hospitalization itself: the same Encounter Forms 066, 003 and 096 send for this stay.
Instance: encounter-027-b
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
* status = #in-progress
* identifier[0].system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* identifier[=].value = "20811"
* class = $v3-ActCode#IMP "inpatient encounter"
* type[nationalType] = encounter-type-cs#mserv-0001-00004 "Treatment services"
* subject = Reference(urn:uuid:027b0002-1111-2222-3333-444444444444)
* actualPeriod.start = "2026-03-04T11:10:00+05:00"
* serviceProvider = Reference(urn:uuid:027b0004-1111-2222-3333-444444444444)


Instance: organization-hospital-027-b
InstanceOf: UZCoreOrganization
Usage: #inline
* language = #en
* identifier[taxId].type = $identifier-type#TAX "Tax ID number"
* identifier[taxId].system = $organization-tax-id-system-dhp
* identifier[taxId].value = "310272027"
* name = "Toshkent shahar 1-son klinik shifoxonasi"


Instance: practitioner-doctor-027-b
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678900012"
* name.use = #official
* name.text = "Rahimov B.O."
* name.family = "Rahimov"
* name.given[0] = "B."
* name.given[+] = "O."


Instance: practitionerrole-doctor-027-b
InstanceOf: UZCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:027b0005-1111-2222-3333-444444444444)
* code.coding[role] = https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs#2211.6 "Medical specialist"


Instance: condition-main-027-b
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active
* category = $diagnosis-role#main
* code = $icd10#K35.8 "Acute appendicitis, other and unspecified"
* subject = Reference(urn:uuid:027b0002-1111-2222-3333-444444444444)


Instance: observation-complaints-027-b
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#8661-1 "Chief complaint - Reported"
* subject = Reference(urn:uuid:027b0002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:027b0003-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-03-04T11:15:00+05:00"
* performer = Reference(urn:uuid:027b0005-1111-2222-3333-444444444444)
* valueString = "Qorinning o'ng pastki qismida 6 soatdan beri og'riq, ko'ngil aynishi"


Instance: observation-clinical-exam-027-b
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#10210-3 "Physical findings of General status Narrative"
* subject = Reference(urn:uuid:027b0002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:027b0003-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-03-04T11:20:00+05:00"
* performer = Reference(urn:uuid:027b0005-1111-2222-3333-444444444444)
* valueString = "Umumiy holati o'rta og'ir. Qorin o'ng yonbosh sohasida og'riqli, Shchetkin belgisi musbat."


Instance: careplan-treatment-027-b
InstanceOf: UZCoreCarePlan
Usage: #inline
* language = #en
* status = #active
* intent = #plan
* subject = Reference(urn:uuid:027b0002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:027b0003-1111-2222-3333-444444444444)
* activity.performedActivity.concept.text = "Shoshilinch appendektomiyaga tayyorlash"


Instance: provenance-doctor-signature-027-b
InstanceOf: UZCoreProvenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-027-emergency-admission)
* recorded = "2026-03-04T11:40:00+05:00"
* agent.type = $provenance-participant-type#author "Author"
* agent.who = Reference(urn:uuid:027b0006-1111-2222-3333-444444444444) "Rahimov B.O."
* signature.type[nationalType] = $signature-type-cs#soliqAuth
* signature.when = "2026-03-04T11:40:00+05:00"
* signature.who = Reference(urn:uuid:027b0006-1111-2222-3333-444444444444) "Rahimov B.O."
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2Jq"
