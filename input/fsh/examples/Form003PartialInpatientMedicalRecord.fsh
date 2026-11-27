Instance: example-form-003-partial-inpatient-medical-record
InstanceOf: Bundle
Usage: #example
Title: "Example Form 003 - Partial Inpatient Medical Record"
Description: "Synthetic partial DMED document with administrative text and a patient identifier. No discharge, diagnosis, examination, treatment, temperature chart or signature data is asserted."
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:00310000-0000-4000-8000-000000000000"
* type = #document
* timestamp = "2026-11-24T09:00:00+05:00"
* entry[0].fullUrl = "urn:uuid:00310001-0000-4000-8000-000000000000"
* entry[=].resource = composition-003-partial
* entry[+].fullUrl = "urn:uuid:00310002-0000-4000-8000-000000000000"
* entry[=].resource = patient-003-partial
* entry[+].fullUrl = "urn:uuid:00310003-0000-4000-8000-000000000000"
* entry[=].resource = encounter-003-partial
* entry[+].fullUrl = "urn:uuid:00310004-0000-4000-8000-000000000000"
* entry[=].resource = organization-003-partial
* entry[+].fullUrl = "urn:uuid:00310005-0000-4000-8000-000000000000"
* entry[=].resource = practitionerrole-003-partial
* entry[+].fullUrl = "urn:uuid:00310006-0000-4000-8000-000000000000"
* entry[=].resource = practitioner-003-partial

Instance: composition-003-partial
InstanceOf: Form003InpatientMedicalRecordComposition
Usage: #inline
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:00310011-0000-4000-8000-000000000000"
* status = #preliminary
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category[formCategory] = $document-category-cs#form-003 "Patient medical record"
* subject = Reference(urn:uuid:00310002-0000-4000-8000-000000000000)
* encounter = Reference(urn:uuid:00310003-0000-4000-8000-000000000000)
* date = "2026-11-24T09:00:00+05:00"
* author = Reference(urn:uuid:00310005-0000-4000-8000-000000000000)
* title = "Form 003 - Partial Inpatient Medical Record"
* section[administrativeInformation].title = "Administrative information"
* section[administrativeInformation].code = form-003-section-cs#administrative-information
* section[administrativeInformation].text.status = #generated
* section[administrativeInformation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Inpatient medical card number: DEMO-003-2026. The hospitalization is in progress.</p></div>"
* section[personalInformation].title = "Patient information"
* section[personalInformation].code = $loinc#LP36348-8 "Patient Information"
* section[personalInformation].entry = Reference(urn:uuid:00310002-0000-4000-8000-000000000000)

Instance: patient-003-partial
InstanceOf: UZCorePatient
Usage: #inline
* identifier[healthCardId].value = "DEMO003"
* name.text = "Demo Patient"

Instance: encounter-003-partial
InstanceOf: UZCoreEncounter
Usage: #inline
* status = #in-progress
* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* identifier.value = "20760"
* type[nationalType] = https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-cs#mserv-0001-00004 "Treatment services"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(urn:uuid:00310002-0000-4000-8000-000000000000)
* actualPeriod.start = "2026-11-24T08:30:00+05:00"
* serviceProvider = Reference(urn:uuid:00310004-0000-4000-8000-000000000000)

Instance: organization-003-partial
InstanceOf: UZCoreOrganization
Usage: #inline
* name = "Demo Hospital"

Instance: practitionerrole-003-partial
InstanceOf: UZCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:00310006-0000-4000-8000-000000000000)
* organization = Reference(urn:uuid:00310004-0000-4000-8000-000000000000)
* code.coding[role] = $position-and-profession-cs#2211.6 "Medical specialist"

Instance: practitioner-003-partial
InstanceOf: UZCorePractitioner
Usage: #inline
* name.text = "Demo Clinician"
