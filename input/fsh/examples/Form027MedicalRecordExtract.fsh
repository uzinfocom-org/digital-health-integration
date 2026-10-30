Instance: example-form-027-medical-record-extract
InstanceOf: Bundle
Usage: #example
Title: "Form 027 - Medical record extract"
Description: "Example of Form 027 extract from patient's medical record"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:760e8400-e29b-41d4-a716-446655440027"
* type = #document
* timestamp = "2026-02-10T09:15:00+05:00"

* entry[0].fullUrl = "urn:uuid:02700001-1111-2222-3333-444444444444"
* entry[=].resource = composition-027-001
* entry[+].fullUrl = "urn:uuid:02700002-1111-2222-3333-444444444444"
* entry[=].resource = patient-027-001
* entry[+].fullUrl = "urn:uuid:02700003-1111-2222-3333-444444444444"
* entry[=].resource = encounter-027-001
* entry[+].fullUrl = "urn:uuid:02700004-1111-2222-3333-444444444444"
* entry[=].resource = organization-027-001
* entry[+].fullUrl = "urn:uuid:02700005-1111-2222-3333-444444444444"
* entry[=].resource = organization-referring-027
* entry[+].fullUrl = "urn:uuid:02700006-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-doctor-027
* entry[+].fullUrl = "urn:uuid:02700007-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-responsible-027
* entry[+].fullUrl = "urn:uuid:02700008-1111-2222-3333-444444444444"
* entry[=].resource = condition-main-diagnosis-027
* entry[+].fullUrl = "urn:uuid:02700009-1111-2222-3333-444444444444"
* entry[=].resource = condition-complication-027
* entry[+].fullUrl = "urn:uuid:02700010-1111-2222-3333-444444444444"
* entry[=].resource = condition-concomitant-027
* entry[+].fullUrl = "urn:uuid:02700026-1111-2222-3333-444444444444"
* entry[=].resource = observation-complaints-027
* entry[+].fullUrl = "urn:uuid:02700011-1111-2222-3333-444444444444"
* entry[=].resource = observation-anamnesis-027
* entry[+].fullUrl = "urn:uuid:02700012-1111-2222-3333-444444444444"
* entry[=].resource = observation-clinical-exam-027
* entry[+].fullUrl = "urn:uuid:02700013-1111-2222-3333-444444444444"
* entry[=].resource = diagnosticreport-027
* entry[+].fullUrl = "urn:uuid:02700024-1111-2222-3333-444444444444"
* entry[=].resource = observation-wbc-027
* entry[+].fullUrl = "urn:uuid:02700025-1111-2222-3333-444444444444"
* entry[=].resource = observation-hemoglobin-027
* entry[+].fullUrl = "urn:uuid:02700014-1111-2222-3333-444444444444"
* entry[=].resource = careplan-treatment-027
* entry[+].fullUrl = "urn:uuid:02700015-1111-2222-3333-444444444444"
* entry[=].resource = medicationrequest-027
* entry[+].fullUrl = "urn:uuid:02700016-1111-2222-3333-444444444444"
* entry[=].resource = careplan-followup-027
* entry[+].fullUrl = "urn:uuid:02700017-1111-2222-3333-444444444444"
* entry[=].resource = episodeofcare-027
* entry[+].fullUrl = "urn:uuid:02700018-1111-2222-3333-444444444444"
* entry[=].resource = servicerequest-027
* entry[+].fullUrl = "urn:uuid:02700019-1111-2222-3333-444444444444"
* entry[=].resource = provenance-doctor-signature-027
* entry[+].fullUrl = "urn:uuid:02700020-1111-2222-3333-444444444444"
* entry[=].resource = provenance-responsible-signature-027
* entry[+].fullUrl = "urn:uuid:02700021-1111-2222-3333-444444444444"
* entry[=].resource = medication-paracetamol-027
* entry[+].fullUrl = "urn:uuid:02700022-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-doctor-027
* entry[+].fullUrl = "urn:uuid:02700023-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-responsible-027


Instance: composition-027-001
InstanceOf: Form027MedicalRecordExtractComposition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:861f9511-f30c-52e5-b827-557766550027"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "027"
* status = #final
* type.coding[0] = $composition-type-cs#emdoc-0010-0106 "Extract from inpatient medical record"
* type.coding[+] = $loinc#34133-9 "Summary of episode note"
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category[formCategory] = $document-category-cs#form-027 "Extract from patient's medical record"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* date = "2026-02-10T09:15:00+05:00"
* author[0] = Reference(urn:uuid:02700022-1111-2222-3333-444444444444)
* custodian = Reference(urn:uuid:02700004-1111-2222-3333-444444444444)
* title = "Form 027 - Tibbiy muassasadagi bemorning tibbiy kartasidan koʻchirma"

* section[registrationInformation].title = "Roʻyxatga olish maʼlumotlari"
* section[=].code = $loinc#LP74442-2 "Admission Information"
* section[=].entry[0] = Reference(urn:uuid:02700004-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)

* section[personalInformation].title = "Shaxsiy maʼlumotlar"
* section[=].code = $loinc#45970-1 "Demographic information section"
* section[=].entry[0] = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)

* section[residenceInformation].title = "Manzil va aloqa"
* section[=].code = $loinc#56799-0 "Address"
* section[=].entry[0] = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)

* section[referralAndDiagnosis].title = "Yoʻllanma va tashxis"
* section[=].code = $loinc#42349-1 "Reason for referral (narrative)"
* section[=].entry[0] = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)

* section[referralAndDiagnosis].section[main].title = "Asosiy tashxis"
* section[referralAndDiagnosis].section[main].code = $diagnosis-role#main
* section[referralAndDiagnosis].section[main].entry = Reference(urn:uuid:02700008-1111-2222-3333-444444444444)

* section[referralAndDiagnosis].section[complication].title = "Asorati"
* section[referralAndDiagnosis].section[complication].code = $diagnosis-role#complication
* section[referralAndDiagnosis].section[complication].entry = Reference(urn:uuid:02700009-1111-2222-3333-444444444444)

* section[referralAndDiagnosis].section[concomitant].title = "Yoʻldosh kasallik"
* section[referralAndDiagnosis].section[concomitant].code = $diagnosis-role#concomitant
* section[referralAndDiagnosis].section[concomitant].entry = Reference(urn:uuid:02700010-1111-2222-3333-444444444444)

* section[clinicalInformation].title = "Klinik maʼlumotlar"
* section[=].code = $loinc#34117-2 "History and physical note"
* section[=].entry[0] = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700026-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700011-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700012-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700013-1111-2222-3333-444444444444)

* section[treatmentAndRecommendations].title = "Davolash va tavsiyalar"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].entry[0] = Reference(urn:uuid:02700014-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700015-1111-2222-3333-444444444444)

* section[nextSteps].title = "Keyingi tadbirlar"
* section[=].code = $loinc#74213-0 "Discharge instructions"
* section[=].entry[0] = Reference(urn:uuid:02700016-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700017-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700018-1111-2222-3333-444444444444)

* section[responsiblePersons].title = "Masʼul shaxslar"
* section[=].code = $loinc#LP35157-4 "Responsible party"
* section[=].entry[0] = Reference(urn:uuid:02700022-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700019-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700023-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700020-1111-2222-3333-444444444444)


Instance: patient-027-001
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
* identifier[nationalId].value = "31234567890124"
* identifier[healthCardId].value = "HC-2026-00027"
* identifier[passportLocal].value = "AC7654321"
* name.use = #official
* name.text = "Yusupova Nilufar Rustamovna"
* name.family = "Yusupova"
* name.given[0] = "Nilufar"
* name.given[+] = "Rustamovna"
* birthDate = "1988-07-22"
* gender = #female

// citizenship temporarily omitted, as in example-hepatitis-patient - restore once hapifhir/org.hl7.fhir.core#2636
// is fixed in a publisher release:
// * extension[citizenship].extension[code].valueCodeableConcept = $iso-3166#UZ "Uzbekistan"
* telecom[0].system = #phone
* telecom[=].value = "+998901112233"
* telecom[+].system = #email
* telecom[=].value = "nilufar.yusupova@mail.com"
* address[uzAddress].text = "Toshkent sh., Chilonzor tumani, 12-mavze, 5-uy, 10-xonadon"
* address[uzAddress].postalCode = "100115"
* address[uzAddress].district = "1726294"
* address[uzAddress].state = "1726"
* address[uzAddress].line[0] = "12-mavze"
* address[uzAddress].line[+] = "5-uy"
* address[uzAddress].line[+] = "10-xonadon"


Instance: encounter-027-001
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
* status = #completed
* identifier[0].system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* identifier[=].value = "MRN-027-2026-0124"
* class = $v3-ActCode#AMB "ambulatory"
* type[nationalType] = encounter-type-cs#mserv-0001-00004 "Treatment services"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* actualPeriod.start = "2026-02-08T09:00:00+05:00"
* actualPeriod.end = "2026-02-10T09:00:00+05:00"
* serviceProvider = Reference(urn:uuid:02700004-1111-2222-3333-444444444444)
* admission.origin = Reference(urn:uuid:02700005-1111-2222-3333-444444444444)


Instance: organization-027-001
InstanceOf: UZCoreOrganization
Usage: #inline
* language = #en
* identifier[taxId].type = $identifier-type#TAX "Tax ID number"
* identifier[taxId].system = $organization-tax-id-system-dhp
* identifier[taxId].value = "310271027"
* name = "Chilonzor tuman poliklinikasi"


Instance: organization-referring-027
InstanceOf: UZCoreOrganization
Usage: #inline
* language = #en
* identifier[taxId].type = $identifier-type#TAX "Tax ID number"
* identifier[taxId].system = $organization-tax-id-system-dhp
* identifier[taxId].value = "310272027"
* name = "Yakkasaroy tuman oilaviy poliklinikasi"


Instance: practitioner-doctor-027
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678900010"
* name.use = #official
* name.text = "Ismoilova M.T."
* name.family = "Ismoilova"
* name.given[0] = "M."
* name.given[+] = "T."


Instance: practitioner-responsible-027
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678900011"
* name.use = #official
* name.text = "Nazarov S.K."
* name.family = "Nazarov"
* name.given[0] = "S."
* name.given[+] = "K."


Instance: practitionerrole-doctor-027
InstanceOf: UZCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:02700006-1111-2222-3333-444444444444)
* code.coding[role] = https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs#2211.6 "Medical specialist"

Instance: practitionerrole-responsible-027
InstanceOf: UZCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:02700007-1111-2222-3333-444444444444)
* code.coding[role] = https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs#1342.18 "Head of department (health institution)"

Instance: condition-main-diagnosis-027
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active
* category = $diagnosis-role#main
* code.coding.system = $icd10
* code.coding.code = #J18.9
* code.coding.display = "Pneumonia, unspecified"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)


Instance: condition-concomitant-027
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active
* category = $diagnosis-role#concomitant
* code.coding.system = $icd10
* code.coding.code = #E66.9
* code.coding.display = "Obesity, unspecified"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)


Instance: condition-complication-027
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active
* category = $diagnosis-role#complication
* code = $icd10#J90 "Pleural effusion, not elsewhere classified"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)


Instance: observation-complaints-027
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#8661-1 "Chief complaint - Reported"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-02-08T09:05:00+05:00"
* performer = Reference(urn:uuid:02700006-1111-2222-3333-444444444444)
* valueString = "Isitma, balg'amli yo'tal, o'ng tomonda ko'krak qafasida og'riq"


Instance: observation-anamnesis-027
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#10164-2 "History of present illness Narrative"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-02-08T09:10:00+05:00"
* performer = Reference(urn:uuid:02700006-1111-2222-3333-444444444444)
* valueString = "5 kun oldin sovqotishdan keyin tana harorati 38,7 °C gacha ko'tarildi, balg'amli yo'tal paydo bo'ldi. Uyda paratsetamol qabul qildi, yaxshilanmadi."


Instance: observation-clinical-exam-027
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#10210-3 "Physical findings of General status Narrative"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-02-08T09:20:00+05:00"
* performer = Reference(urn:uuid:02700006-1111-2222-3333-444444444444)
* valueString = "Umumiy holati o'rta og'ir. O'ng o'pka pastki qismida nam xirillashlar, perkussiyada tovush qisqargan. Nafas olish soni 24/min."


Instance: diagnosticreport-027
InstanceOf: UZCoreDiagnosticReport
Usage: #inline
* language = #en
* status = #final
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-02-08T10:00:00+05:00"
* result[0] = Reference(urn:uuid:02700024-1111-2222-3333-444444444444)
* result[+] = Reference(urn:uuid:02700025-1111-2222-3333-444444444444)
* conclusion = "Leykotsitoz"


Instance: careplan-treatment-027
InstanceOf: CarePlan
Usage: #inline
* language = #en
* status = #active
* intent = #plan
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* activity.performedActivity.concept.text = "Antipiretik terapiya, ko'p suyuqlik ichish"
* description = "Statsionar davolash; 10-14 kundan keyin ko'krak qafasi rentgenogrammasini takrorlash."


Instance: medicationrequest-027
InstanceOf: UZCoreMedicationRequest
Usage: #inline
* language = #en
* status = #active
* intent = #order
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* medication = Reference(urn:uuid:02700021-1111-2222-3333-444444444444)
* dosageInstruction.text = "500 mg ichish uchun, harorat 38,5 °C dan oshganda, kuniga 3 martagacha"
* dosageInstruction.doseAndRate.doseQuantity = 500 'mg' "mg"


Instance: medication-paracetamol-027
InstanceOf: UZCoreMedication
Usage: #inline
* language = #en
* identifier[registrationCertificateID].value = "UZ/MED/2025/00271"
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs#005325 "paracetamol"
* code.text = "Paracetamol 500 mg tablet"
* status = #active


Instance: careplan-followup-027
InstanceOf: CarePlan
Usage: #inline
* language = #en
* status = #active
* intent = #plan
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* description = "Shifoxonadan chiqqandan keyin 1 oy davomida oilaviy poliklinikada kuzatuv."


Instance: episodeofcare-027
InstanceOf: UZCoreEpisodeOfCare
Usage: #inline
* language = #en
* status = #active
* type[serviceType] = $episode-of-care-type#mserv-0001-00001 "Preventive services"
* patient = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* managingOrganization = Reference(urn:uuid:02700004-1111-2222-3333-444444444444)


Instance: servicerequest-027
InstanceOf: UZCoreServiceRequest
Usage: #inline
* language = #en
* status = #active
* intent = #order
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* authoredOn = "2026-02-10"
* code = $sct#32485007 "Hospital admission"
* reason.reference = Reference(urn:uuid:02700008-1111-2222-3333-444444444444)



Instance: provenance-doctor-signature-027
InstanceOf: UZCoreProvenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-027-medical-record-extract)
* recorded = "2026-02-10T09:20:00+05:00"
* agent.type = $provenance-participant-type#author "Author"
* agent.who = Reference(urn:uuid:02700022-1111-2222-3333-444444444444) "Ismoilova M.T."
* signature.type[nationalType] = $signature-type-cs#soliqAuth
* signature.when = "2026-02-10T09:20:00+05:00"
* signature.who = Reference(urn:uuid:02700022-1111-2222-3333-444444444444) "Ismoilova M.T."
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2Jq"


Instance: provenance-responsible-signature-027
InstanceOf: UZCoreProvenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-027-medical-record-extract)
* recorded = "2026-02-10T09:25:00+05:00"
* agent.type = $provenance-participant-type#author "Author"
* agent.who = Reference(urn:uuid:02700023-1111-2222-3333-444444444444) "Nazarov S.K."
* signature.type[nationalType] = $signature-type-cs#soliqAuth
* signature.when = "2026-02-10T09:25:00+05:00"
* signature.who = Reference(urn:uuid:02700023-1111-2222-3333-444444444444) "Nazarov S.K."
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2Jq"


Instance: observation-wbc-027
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-02-08T10:00:00+05:00"
* valueQuantity = 13.5 '10*9/L' "10*9/L"


Instance: observation-hemoglobin-027
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-02-08T10:00:00+05:00"
* valueQuantity = 128 'g/L' "g/L"
