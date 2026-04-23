Instance: example-form-044-foreign-travel
InstanceOf: Bundle
Usage: #example
Title: "Form 044 - Medical certificate for foreign travel"
Description: "Example of a medical certificate for foreign travel eligibility (Медицинская справка для выезжающих за границу)"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:550e8400-e29b-41d4-a716-446655440044"
* type = #document
* timestamp = "2026-04-23T10:00:00+05:00"
* entry[0].fullUrl = "urn:uuid:a0440001-1111-1111-1111-000000000001"
* entry[=].resource = composition-form-044
* entry[+].fullUrl = "urn:uuid:a0440002-2222-2222-2222-000000000002"
* entry[=].resource = patient-form-044
* entry[+].fullUrl = "urn:uuid:a0440003-3333-3333-3333-000000000003"
* entry[=].resource = organization-form-044
* entry[+].fullUrl = "urn:uuid:a0440004-4444-4444-4444-000000000004"
* entry[=].resource = condition-form-044
* entry[+].fullUrl = "urn:uuid:a0440005-5555-5555-5555-000000000005"
* entry[=].resource = obs-clearance-form-044
* entry[+].fullUrl = "urn:uuid:a0440006-6666-6666-6666-000000000006"
* entry[=].resource = obs-country-form-044
* entry[+].fullUrl = "urn:uuid:a0440007-7777-7777-7777-000000000007"
* entry[=].resource = obs-period-form-044
* entry[+].fullUrl = "urn:uuid:a0440009-9999-9999-9999-000000000009"
* entry[=].resource = practitioner-commission-form-044
* entry[+].fullUrl = "urn:uuid:a0440008-8888-8888-8888-000000000008"
* entry[=].resource = provenance-form-044

// ─── Composition ──────────────────────────────────────────────────────────────

Instance: composition-form-044
InstanceOf: Form044Composition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:b0440001-f30c-52e5-b827-557766550044"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "044"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/certificate-number"
* identifier[=].value = "044-2026-00123"
* status = #final
* type = $loinc#11488-4 "Consult note"
* category = $document-category-cs#form-044 "Medical certificate for foreign travel"
* subject = Reference(urn:uuid:a0440002-2222-2222-2222-000000000002)
* date = "2026-04-23T10:00:00+05:00"
* author = Reference(urn:uuid:a0440003-3333-3333-3333-000000000003)
* title = "Form 044 - Medical Certificate for Foreign Travel"
// Link Provenance to Composition so it is reachable within the document Bundle
* event[+].detail[+].reference = Reference(urn:uuid:a0440008-8888-8888-8888-000000000008)
* section[infectiousHistory].title = "Kechirgan yuqumli kasalliklar / История инфекционных заболеваний"
* section[infectiousHistory].code = $loinc#11348-0 "History of Past illness note"
* section[infectiousHistory].entry = Reference(urn:uuid:a0440004-4444-4444-4444-000000000004)
* section[travelClearance].title = "Tibbiy xulosa / Медицинское заключение"
* section[travelClearance].code = $loinc#51848-0 "Evaluation note"
* section[travelClearance].entry[0] = Reference(urn:uuid:a0440005-5555-5555-5555-000000000005)
* section[travelClearance].entry[+] = Reference(urn:uuid:a0440006-6666-6666-6666-000000000006)
* section[travelClearance].entry[+] = Reference(urn:uuid:a0440007-7777-7777-7777-000000000007)

// ─── Patient ───────────────────────────────────────────────────────────────────

Instance: patient-form-044
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
// JShShR (PINFL) — national identifier (NI)
* identifier[nationalId].value = "30012001234567"
// Med ID raqami — medical chart number (HC)
* identifier[+].system = "https://gov.uz/ssv/identifier/healthcard"
* identifier[=].value = "MED-2024-98765"
* name.use = #official
* name.text = "Yusupov Jasur Aliyevich"
* name.family = "Yusupov"
* name.given[0] = "Jasur"
* name.given[+] = "Aliyevich"
* birthDate = "1990-05-15"
// address.city is excluded: UZCorePatient binds city to mahalla-vs coded ValueSet
* address.use = #home
* address.text = "Toshkent sh., Yunusobod tumani, 17-uy"
* address.country = "UZ"

// ─── Organization ──────────────────────────────────────────────────────────────

Instance: organization-form-044
InstanceOf: Organization
Usage: #inline
* language = #en
* active = true
* identifier.system = "https://soliq.uz"
* identifier.value = "201234567"
* name = "Toshkent shahar 1-sonli ko'p tarmoqli tibbiyot markazi"

// ─── Condition (past infectious disease) ──────────────────────────────────────

Instance: condition-form-044
InstanceOf: Condition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#resolved "Resolved"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $sct#14189004 "Measles"
* code.text = "Qizamiq (Measles)"
* subject = Reference(urn:uuid:a0440002-2222-2222-2222-000000000002)
* onsetDateTime = "2005-03-15"
* abatementDateTime = "2005-04-10"

// ─── Observation: Travel fitness assessment ────────────────────────────────────
// Uses base Observation (not UZCoreObservation) because UZCoreObservation.code
// requires a LOINC code; these travel-specific concepts have no LOINC equivalent.

Instance: obs-clearance-form-044
InstanceOf: Observation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $travel-clearance-cs#travel-fitness-assessment
* code.text = "Tibbiy xulosa / Медицинское заключение о годности для выезда за рубеж"
* subject = Reference(urn:uuid:a0440002-2222-2222-2222-000000000002)
* effectiveDateTime = "2026-04-23T10:00:00+05:00"
* performer = Reference(urn:uuid:a0440003-3333-3333-3333-000000000003)
* valueCodeableConcept = $travel-clearance-cs#allowed
* valueCodeableConcept.text = "Mumkin / Разрешён — chet elga chiqishga tibbiy qarshiliklar yo'q"

// ─── Observation: Destination country ─────────────────────────────────────────

Instance: obs-country-form-044
InstanceOf: Observation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $travel-clearance-cs#destination-country
* code.text = "Borish mamlakati / Страна назначения"
* subject = Reference(urn:uuid:a0440002-2222-2222-2222-000000000002)
* effectiveDateTime = "2026-04-23T10:00:00+05:00"
* performer = Reference(urn:uuid:a0440003-3333-3333-3333-000000000003)
* valueCodeableConcept = $iso-3166#RU
* valueCodeableConcept.text = "Rossiya Federatsiyasi / Российская Федерация"

// ─── Observation: Travel duration ─────────────────────────────────────────────

Instance: obs-period-form-044
InstanceOf: Observation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $travel-clearance-cs#travel-duration
* code.text = "Safarning muddati / Срок поездки"
* subject = Reference(urn:uuid:a0440002-2222-2222-2222-000000000002)
* effectivePeriod.start = "2026-05-01T00:00:00+05:00"
* effectivePeriod.end = "2026-07-01T00:00:00+05:00"
* performer = Reference(urn:uuid:a0440003-3333-3333-3333-000000000003)
* valueString = "2 oy / 2 месяца (2026-05-01 — 2026-07-01)"

// ─── Practitioner (commission chairman) ───────────────────────────────────────

Instance: practitioner-commission-form-044
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678901299"
* name.use = #official
* name.text = "Kamolov B.B."
* name.family = "Kamolov"
* name.given[0] = "B."
* name.given[+] = "B."

// ─── Provenance (commission chairman signature) ────────────────────────────────
// target points to Composition (not Bundle) so the entry is reachable
// via Composition.event.detail backward traversal.

Instance: provenance-form-044
InstanceOf: Provenance
Usage: #inline
* language = #en
* target = Reference(urn:uuid:a0440001-1111-1111-1111-000000000001)
* recorded = "2026-04-23T10:00:00+05:00"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#attester "Attester"
* agent.who = Reference(urn:uuid:a0440009-9999-9999-9999-000000000009) "Kamolov B.B."
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2026-04-23T10:00:00+05:00"
* signature.who = Reference(urn:uuid:a0440009-9999-9999-9999-000000000009) "Kamolov B.B."
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2JqCjIgMCBvYmoKPDwKL1R5cGUgL1BhZ2VzCi9LaWRzIFszIDAgUl0KL0NvdW50IDEKL01lZGlhQm94IFswIDAgNjEyIDc5Ml0KPj4KZW5kb2JqCjMgMCBvYmoKPDwKL1R5cGUgL1BhZ2UKL1BhcmVudCAyIDAgUgovQ29udGVudHMgNCAwIFIKPj4KZW5kb2JqCjQgMCBvYmoKPDwKL0xlbmd0aCA0NAo+PgpzdHJlYW0KQlQKL0YxIDEyIFRmCjEwMCA3MDAgVGQKKFNhbXBsZSBTaWduZWQgRG9jdW1lbnQpIFRqCkVUCmVuZHN0cmVhbQplbmRvYmoKeHJlZgowIDUKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDAwMDA5IDAwMDAwIG4gCjAwMDAwMDAwNTggMDAwMDAgbiAKMDAwMDAwMDE0OCAwMDAwMCBuIAowMDAwMDAwMjE3IDAwMDAwIG4gCnRyYWlsZXIKPDwKL1NpemUgNQovUm9vdCAxIDAgUgo+PgpzdGFydHhyZWYKMzEyCiUlRU9G"
