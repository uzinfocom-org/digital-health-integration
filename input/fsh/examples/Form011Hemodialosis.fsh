Instance: example-form-011-hemodialysis
InstanceOf: Bundle
Usage: #example
Title: "Form 011 - Hemodialysis session"
Description: "Example of a hemodialysis session record"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:550e8400-e29b-41d4-a716-446655440000"
* type = #document
* timestamp = "2026-01-06T13:30:00+05:00"
* entry[0].fullUrl = "urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890"
* entry[=].resource = composition-001
* entry[+].fullUrl = "urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901"
* entry[=].resource = patient-001
* entry[+].fullUrl = "urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012"
* entry[=].resource = encounter-001
* entry[+].fullUrl = "urn:uuid:d4e5f6a7-b8c9-0123-defa-234567890123"
* entry[=].resource = practitioner-001
* entry[+].fullUrl = "urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234"
* entry[=].resource = practitioner-002
* entry[+].fullUrl = "urn:uuid:f6a7b8c9-d0e1-2345-fabc-456789012345"
* entry[=].resource = procedure-dialysis
* entry[+].fullUrl = "urn:uuid:a7b8c9d0-e1f2-3456-abcd-567890123456"
* entry[=].resource = observation-vital-signs
* entry[+].fullUrl = "urn:uuid:a7b8c9d0-0001-0000-0000-000000000001"
* entry[=].resource = observation-bp
* entry[+].fullUrl = "urn:uuid:a7b8c9d0-0002-0000-0000-000000000002"
* entry[=].resource = observation-pulse
* entry[+].fullUrl = "urn:uuid:a7b8c9d0-0003-0000-0000-000000000003"
* entry[=].resource = observation-temp
* entry[+].fullUrl = "urn:uuid:a7b8c9d0-0004-0000-0000-000000000004"
* entry[=].resource = observation-spo2
* entry[+].fullUrl = "urn:uuid:e1f2a3b4-c5d6-7890-efab-901234567890"
* entry[=].resource = observation-uf
* entry[+].fullUrl = "urn:uuid:f2a3b4c5-d6e7-8901-fabc-012345678901"
* entry[=].resource = observation-weight-before
* entry[+].fullUrl = "urn:uuid:a3b4c5d6-e7f8-9012-abcd-123456789012"
* entry[=].resource = observation-weight-after
* entry[+].fullUrl = "urn:uuid:b4c5d6e7-f8a9-0123-bcde-234567890123"
* entry[=].resource = medication-admin-heparin
* entry[+].fullUrl = "urn:uuid:c5d6e7f8-a9b0-1234-cdef-345678901234"
* entry[=].resource = provenance-signature

Instance: composition-001
InstanceOf: Composition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:661f9511-f30c-52e5-b827-557766551111"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "011"
* status = #final
* type = $loinc#11516-2 "Physician Episode of care medical records"
* category = $document-category-cs#form-011 "Hemodialysis session record"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* date = "2026-01-06T13:30:00+05:00"
* author = Reference(urn:uuid:d4e5f6a7-b8c9-0123-defa-234567890123)
* title = "Form 011 - Hemodialysis Session Record"
* section[0].title = "Vital Signs"
* section[=].code = $loinc#8716-3 "Vital signs note"
* section[=].entry = Reference(urn:uuid:a7b8c9d0-e1f2-3456-abcd-567890123456)
* section[+].title = "Dialysis Parameters"
* section[=].code = $loinc#29554-3 "Procedure Narrative"
* section[=].entry[0] = Reference(urn:uuid:f6a7b8c9-d0e1-2345-fabc-456789012345)
* section[=].entry[+] = Reference(urn:uuid:e1f2a3b4-c5d6-7890-efab-901234567890)
* section[=].entry[+] = Reference(urn:uuid:f2a3b4c5-d6e7-8901-fabc-012345678901)
* section[=].entry[+] = Reference(urn:uuid:a3b4c5d6-e7f8-9012-abcd-123456789012)
* section[+].title = "Medications"
* section[=].code = $loinc#10160-0 "History of Medication use Narrative"
* section[=].entry = Reference(urn:uuid:b4c5d6e7-f8a9-0123-bcde-234567890123)

Instance: patient-001
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
// National Personal Identification Number (PINFL)
* identifier[nationalId].value = "31234567890123"
* name.use = #official
* name.text = "Aziz John"
* name.family = "John"
* name.given = "Aziz"

Instance: encounter-001
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
* status = #completed
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* participant[0].type = $v3-ParticipationType#PPRF "primary performer"
* participant[=].actor = Reference(urn:uuid:d4e5f6a7-b8c9-0123-defa-234567890123) "Karimov A.A."
* participant[+].type = $v3-ParticipationType#SPRF "secondary performer"
* participant[=].actor = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234) "Raxmatova M.M."
* actualPeriod.start = "2026-01-06T09:00:00+05:00"
* actualPeriod.end = "2026-01-06T13:00:00+05:00"

Instance: practitioner-001
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678901234"
* name.use = #official
* name.text = "Karimov A.A."
* name.family = "Karimov"
* name.given[0] = "A."
* name.given[+] = "A."

Instance: practitioner-002
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678901235"
* name.use = #official
* name.text = "Raxmatova M.M."
* name.family = "Raxmatova"
* name.given[0] = "M."
* name.given[+] = "M."

Instance: procedure-dialysis
InstanceOf: Procedure
Usage: #inline
* language = #en
// Organization-scoped dialysis session number
* identifier.type = $v2-0203#PLAC "Placer Identifier"
* identifier.system = "https://dhp.uz/fhir/core/sid/pid/uz/prn/200935935/dialysis-session"
* identifier.value = "128"
* status = #completed
* code = $sct#302497006 "Hemodialysis"
* code.text = "Hemodialysis"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* occurrencePeriod.start = "2026-01-06T09:00:00+05:00"
* occurrencePeriod.end = "2026-01-06T13:00:00+05:00"
* performer[0].actor = Reference(urn:uuid:d4e5f6a7-b8c9-0123-defa-234567890123)
* performer[+].actor = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234)
* bodySite = $sct#261665006 "Unknown"
* bodySite.text = "Left AV fistula"
* used[0].concept.text = "Dialyzer: FX 80"
* used[+].concept.text = "Bloodline: Arterial/Venous"
* used[+].concept.text = "Needle: AVF 16G"

Instance: observation-vital-signs
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85353-1 "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
* code.text = "Vital signs panel"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* performer = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234)
* hasMember[0] = Reference(urn:uuid:a7b8c9d0-0001-0000-0000-000000000001)
* hasMember[+] = Reference(urn:uuid:a7b8c9d0-0002-0000-0000-000000000002)
* hasMember[+] = Reference(urn:uuid:a7b8c9d0-0003-0000-0000-000000000003)
* hasMember[+] = Reference(urn:uuid:a7b8c9d0-0004-0000-0000-000000000004)

Instance: observation-bp
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* performer = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 150 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 90 'mm[Hg]' "mmHg"

Instance: observation-pulse
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* code.text = "Heart rate"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* performer = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234)
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"

Instance: observation-temp
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body temperature"
* code.text = "Body temperature"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* performer = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234)
* valueQuantity = 36.6 'Cel' "°C"

Instance: observation-spo2
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.text = "Oxygen saturation (SpO2)"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* performer = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234)
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"

Instance: observation-uf
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $loinc#99741-1 "Ultrafiltrate volume removed"
* code.text = "Ultrafiltration"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* effectiveDateTime = "2026-01-06T13:00:00+05:00"
* performer = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234)
* valueQuantity = 2500 'mL' "mL"

Instance: observation-weight-before
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* code.text = "Pre-session weight"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* effectiveDateTime = "2026-01-06T09:00:00+05:00"
* performer = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234)
* valueQuantity = 72.5 'kg' "kg"

Instance: observation-weight-after
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* code.text = "Post-session weight"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* effectiveDateTime = "2026-01-06T13:00:00+05:00"
* performer = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234)
* valueQuantity = 70 'kg' "kg"

Instance: medication-admin-heparin
InstanceOf: MedicationAdministration
Usage: #inline
* language = #en
* status = #completed
* medication.concept = $sct#372877000 "Heparin"
* medication.concept.text = "Heparin"
* subject = Reference(urn:uuid:b2c3d4e5-f6a7-8901-bcde-f12345678901)
* encounter = Reference(urn:uuid:c3d4e5f6-a7b8-9012-cdef-123456789012)
* occurencePeriod.start = "2026-01-06T09:00:00+05:00"
* occurencePeriod.end = "2026-01-06T13:00:00+05:00"
* performer.actor = Reference(urn:uuid:e5f6a7b8-c9d0-1234-efab-345678901234)
* dosage.dose = 2000 '[iU]' "IU"
* dosage.text = "2000 IU"
* note.text = "Maintenance therapy"

Instance: provenance-signature
InstanceOf: Provenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-011-hemodialysis)
* recorded = "2026-01-06T13:45:00+05:00"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#attester "Attester"
* agent.who = Reference(urn:uuid:d4e5f6a7-b8c9-0123-defa-234567890123) "Karimov A.A."
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2026-01-06T13:45:00+05:00"
* signature.who = Reference(urn:uuid:d4e5f6a7-b8c9-0123-defa-234567890123) "Karimov A.A."
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2JqCjIgMCBvYmoKPDwKL1R5cGUgL1BhZ2VzCi9LaWRzIFszIDAgUl0KL0NvdW50IDEKL01lZGlhQm94IFswIDAgNjEyIDc5Ml0KPj4KZW5kb2JqCjMgMCBvYmoKPDwKL1R5cGUgL1BhZ2UKL1BhcmVudCAyIDAgUgovQ29udGVudHMgNCAwIFIKPj4KZW5kb2JqCjQgMCBvYmoKPDwKL0xlbmd0aCA0NAo+PgpzdHJlYW0KQlQKL0YxIDEyIFRmCjEwMCA3MDAgVGQKKFNhbXBsZSBTaWduZWQgRG9jdW1lbnQpIFRqCkVUCmVuZHN0cmVhbQplbmRvYmoKeHJlZgowIDUKMDAwMDAwMDAwMCA2NTUzNSBmIAowMDAwMDAwMDA5IDAwMDAwIG4gCjAwMDAwMDAwNTggMDAwMDAgbiAKMDAwMDAwMDE0OCAwMDAwMCBuIAowMDAwMDAwMjE3IDAwMDAwIG4gCnRyYWlsZXIKPDwKL1NpemUgNQovUm9vdCAxIDAgUgo+PgpzdGFydHhyZWYKMzEyCiUlRU9G"
