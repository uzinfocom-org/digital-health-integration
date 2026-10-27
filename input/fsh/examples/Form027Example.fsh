Instance: example-form-027
InstanceOf: Bundle
Usage: #example
Title: "Form 027 - Patient medical record extract"
Description: "Example of Form 027 (extract from the patient's medical card, outpatient visit) as a FHIR document Bundle: the treating physician's extract after an outpatient visit that ended with a hospitalization referral, with a prescription, follow-up recommendations and dispensary registration"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:027e8400-e29b-41d4-a716-446655440027"
* type = #document
* timestamp = "2026-07-14T10:15:00+05:00"

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
* entry[=].resource = practitioner-027-001
* entry[+].fullUrl = "urn:uuid:02700007-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-027-002
* entry[+].fullUrl = "urn:uuid:02700008-1111-2222-3333-444444444444"
* entry[=].resource = observation-chief-complaint-027
* entry[+].fullUrl = "urn:uuid:02700009-1111-2222-3333-444444444444"
* entry[=].resource = observation-anamnesis-027
* entry[+].fullUrl = "urn:uuid:02700010-1111-2222-3333-444444444444"
* entry[=].resource = observation-clinical-examination-027
* entry[+].fullUrl = "urn:uuid:02700011-1111-2222-3333-444444444444"
* entry[=].resource = condition-main-diagnosis-027
* entry[+].fullUrl = "urn:uuid:02700012-1111-2222-3333-444444444444"
* entry[=].resource = condition-concomitant-diagnosis-027
* entry[+].fullUrl = "urn:uuid:02700013-1111-2222-3333-444444444444"
* entry[=].resource = diagnosticreport-027
* entry[+].fullUrl = "urn:uuid:02700014-1111-2222-3333-444444444444"
* entry[=].resource = careplan-027
* entry[+].fullUrl = "urn:uuid:02700015-1111-2222-3333-444444444444"
* entry[=].resource = medicationrequest-027
* entry[+].fullUrl = "urn:uuid:02700016-1111-2222-3333-444444444444"
* entry[=].resource = episodeofcare-027
* entry[+].fullUrl = "urn:uuid:02700017-1111-2222-3333-444444444444"
* entry[=].resource = servicerequest-027
* entry[+].fullUrl = "urn:uuid:02700018-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-027-001
* entry[+].fullUrl = "urn:uuid:02700019-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-027-002
* entry[+].fullUrl = "urn:uuid:02700020-1111-2222-3333-444444444444"
* entry[=].resource = provenance-physician-027
* entry[+].fullUrl = "urn:uuid:02700021-1111-2222-3333-444444444444"
* entry[=].resource = provenance-responsible-027



Instance: composition-027-001
InstanceOf: Form027Composition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:961f9511-f30c-52e5-b827-557766550027"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "027"
* status = #final
* type = $loinc#34133-9 "Summary of episode note"
* category = $document-category-cs#form-027 "Extract from the patient's medical card (outpatient/inpatient)"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* date = "2026-07-14T10:15:00+05:00"
* author[0] = Reference(urn:uuid:02700018-1111-2222-3333-444444444444)
* custodian = Reference(urn:uuid:02700004-1111-2222-3333-444444444444)
* title = "Form 027 - Patient Medical Record Extract"

* section[chiefComplaint].title = "Shikoyatlar (Complaints)"
* section[=].code = $loinc#10154-3 "Chief complaint Narrative - Reported"
* section[=].entry = Reference(urn:uuid:02700008-1111-2222-3333-444444444444)

* section[anamnesis].title = "Anamnez (Anamnesis)"
* section[=].code = $loinc#11329-0 "History general Narrative - Reported"
* section[=].entry = Reference(urn:uuid:02700009-1111-2222-3333-444444444444)

* section[clinicalExamination].title = "Ko'rik (Clinical examination)"
* section[=].code = $loinc#29545-1 "Physical findings note"
* section[=].entry = Reference(urn:uuid:02700010-1111-2222-3333-444444444444)

* section[diagnosis].title = "Tashxis (Diagnosis)"
* section[diagnosis].code = $loinc#29308-4 "Diagnosis"
* section[diagnosis].section[main].title = "Asosiy tashxis (Main diagnosis)"
* section[diagnosis].section[main].code = $diagnosis-role#main
* section[diagnosis].section[main].entry = Reference(urn:uuid:02700011-1111-2222-3333-444444444444)
* section[diagnosis].section[concomitant].title = "Yo'ldosh kasallik (Concomitant disease)"
* section[diagnosis].section[concomitant].code = $diagnosis-role#concomitant
* section[diagnosis].section[concomitant].entry = Reference(urn:uuid:02700012-1111-2222-3333-444444444444)

* section[diagnostics].title = "Diagnostik tekshiruv (Diagnostic examination)"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[=].entry = Reference(urn:uuid:02700013-1111-2222-3333-444444444444)

* section[treatmentPlan].title = "Davolash, tavsiyalar, keyingi tadbirlar (Treatment, recommendations, follow-up)"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].entry[0] = Reference(urn:uuid:02700014-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700015-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700016-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:02700017-1111-2222-3333-444444444444)

* section[responsiblePersons].title = "Mas'ul shaxs (Responsible person)"
* section[=].code = $loinc#LP35157-4 "Responsible party"
* section[=].entry = Reference(urn:uuid:02700019-1111-2222-3333-444444444444)



Instance: patient-027-001
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
* identifier[nationalId].value = "41234567890127"
* identifier[healthCardId].value = "MED-000123"
* name.use = #official
* name.text = "Fozilova Xadicha Alisherovna"
* name.family = "Fozilova"
* name.given[0] = "Xadicha"
* name.given[+] = "Alisherovna"
* birthDate = "1999-04-20"
* gender = #female
// extension[citizenship] intentionally omitted: urn:iso:std:iso:3166 codes are only resolvable
// against the terminology server, not locally, per the documented workaround in Standalone.fsh
// (tracked upstream as hapifhir/org.hl7.fhir.core#2636).
* telecom[0].system = #phone
* telecom[=].value = "+998909875679"
* telecom[+].system = #email
* telecom[=].value = "khadicha.fozilova@example.uz"
* address[uzAddress].line[0] = "Kutakaul 228, Ulugnor tumani, Andijon viloyati"



Instance: organization-027-001
InstanceOf: UZCoreOrganization
Usage: #inline
* language = #en
* identifier.system = "https://dhp.uz/fhir/core/sid/uz/organization-code"
* identifier.value = "143"
* name = "7-semeynaya poliklinika"

Instance: organization-referring-027
InstanceOf: UZCoreOrganization
Usage: #inline
* language = #en
* identifier.system = "https://dhp.uz/fhir/core/sid/uz/organization-code"
* identifier.value = "70"
* name = "Semeynaya poliklinika No. 70"



Instance: encounter-027-001
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
* status = #completed
* identifier[0].system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* identifier[=].value = "REG-10000"
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* actualPeriod.start = "2026-07-01T09:30:00+05:00"
* actualPeriod.end = "2026-07-14T10:00:00+05:00"
* serviceProvider = Reference(urn:uuid:02700004-1111-2222-3333-444444444444)
* admission.origin = Reference(urn:uuid:02700005-1111-2222-3333-444444444444)
* reason.value = Reference(urn:uuid:02700008-1111-2222-3333-444444444444)
* participant.actor = Reference(urn:uuid:02700006-1111-2222-3333-444444444444)
* type[nationalType] = $encounter-type-cs#mserv-0001-00004 "Treatment services"



Instance: practitioner-027-001
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "22345678900001"
* name.use = #official
* name.text = "Talipova Muhlisa"
* name.family = "Talipova"
* name.given = "Muhlisa"

Instance: practitioner-027-002
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "22345678900002"
* name.use = #official
* name.text = "Karimov Alisher"
* name.family = "Karimov"
* name.given = "Alisher"

Instance: practitionerrole-027-001
InstanceOf: UZCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:02700006-1111-2222-3333-444444444444)
* organization = Reference(urn:uuid:02700004-1111-2222-3333-444444444444)
* code.coding[role] = https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs#2211.6 "Medical specialist"

Instance: practitionerrole-027-002
InstanceOf: UZCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:02700007-1111-2222-3333-444444444444)
* organization = Reference(urn:uuid:02700004-1111-2222-3333-444444444444)
* code.coding[role] = https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs#1342.18 "Head of department (health institution)"



Instance: observation-chief-complaint-027
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#10154-3 "Chief complaint Narrative - Reported"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* performer = Reference(urn:uuid:02700018-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-07-01T09:30:00+05:00"
* valueString = "Bosh og'rig'i va umumiy holsizlik"

Instance: observation-anamnesis-027
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#11329-0 "History general Narrative - Reported"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* performer = Reference(urn:uuid:02700018-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-07-01T09:30:00+05:00"
* valueString = "Kasallik 3 kun oldin boshlangan"

Instance: observation-clinical-examination-027
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#29545-1 "Physical findings note"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* performer = Reference(urn:uuid:02700018-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-07-01T09:30:00+05:00"
* valueString = "Umumiy holati qoniqarli, tana harorati 36.6"



Instance: condition-main-diagnosis-027
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active
* category = $diagnosis-role#main
* code.coding.system = $icd-10
* code.coding.code = #Z99.8
* code.coding.display = "Dependence on other enabling machines and devices"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)

Instance: condition-concomitant-diagnosis-027
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active
* category = $diagnosis-role#concomitant
* code.coding.system = $icd-10
* code.coding.code = #Z99.9
* code.coding.display = "Dependence on unspecified enabling machine and device"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)



Instance: diagnosticreport-027
InstanceOf: UZCoreDiagnosticReport
Usage: #inline
* language = #en
* status = #final
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* conclusion = "Umumiy qon tahlili me'yorda"



Instance: careplan-027
InstanceOf: CarePlan
Usage: #inline
* language = #en
* status = #active
* intent = #plan
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* activity.performedActivity.concept.text = "Dorivor davo"
* note.text = "Kuzatuvda bo'lish, 1 hafta ichida qayta ko'rikka kelish tavsiya etiladi"



Instance: medicationrequest-027
InstanceOf: MedicationRequest
Usage: #inline
* language = #en
* status = #active
* intent = #order
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* medication.concept = $sct#387517004 "Paracetamol"
* dosageInstruction.route = $sct#26643006 "Oral route"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.boundsDuration = 5 'd' "days"
* dosageInstruction.doseAndRate.doseQuantity = 500 'mg' "mg"
* dispenseRequest.validityPeriod.start = "2026-07-01"
* dispenseRequest.validityPeriod.end = "2026-07-06"
* dispenseRequest.quantity = 15 '1' "tablet"
* note.text = "Ovqatdan keyin ichish"



Instance: episodeofcare-027
InstanceOf: UZCoreEpisodeOfCare
Usage: #inline
* language = #en
* status = #active
* type[serviceType] = $episode-of-care-type#mserv-0001-00001
* patient = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)



Instance: servicerequest-027
InstanceOf: UZCoreServiceRequest
Usage: #inline
* language = #en
* status = #active
* intent = #order
* subject = Reference(urn:uuid:02700002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:02700003-1111-2222-3333-444444444444)
* requester = Reference(urn:uuid:02700018-1111-2222-3333-444444444444)
* code.concept = $sct#306206005 "Referral to service"
* note.text = "Qo'shimcha ma'lumot yo'q"
* reason[0].concept = $hospitalization-purpose-cs#treatment "Treatment"



Instance: provenance-physician-027
InstanceOf: UZCoreProvenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-027)
* recorded = "2026-07-14T10:15:00+05:00"
* agent.type = $provenance-participant-type#author "Author"
* agent.who = Reference(urn:uuid:02700018-1111-2222-3333-444444444444) "Talipova Muhlisa"
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2026-07-14T10:15:00+05:00"
* signature.who = Reference(urn:uuid:02700018-1111-2222-3333-444444444444) "Talipova Muhlisa"
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2Jq"

Instance: provenance-responsible-027
InstanceOf: UZCoreProvenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-027)
* recorded = "2026-07-14T10:15:00+05:00"
* agent.type = $provenance-participant-type#legal "Legal Authenticator"
* agent.who = Reference(urn:uuid:02700019-1111-2222-3333-444444444444) "Karimov Alisher"
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.5 "Verification Signature"
* signature.when = "2026-07-14T10:15:00+05:00"
* signature.who = Reference(urn:uuid:02700019-1111-2222-3333-444444444444) "Karimov Alisher"
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2Jq"
