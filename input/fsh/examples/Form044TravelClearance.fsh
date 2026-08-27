Instance: example-form-044-travel-clearance
InstanceOf: Bundle
Usage: #example
Title: "Form 044 - Certificate of Absence of Medical Contraindications for Travel Abroad"
Description: "Example of Form 044 medical certificate for foreign travel"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:044e8400-e29b-41d4-a716-446655440044"
* type = #document
* timestamp = "2026-02-10T09:15:00+05:00"

* entry[0].fullUrl = "urn:uuid:04400001-1111-2222-3333-444444444444"
* entry[=].resource = composition-044-001
* entry[+].fullUrl = "urn:uuid:04400002-1111-2222-3333-444444444444"
* entry[=].resource = patient-044-001
* entry[+].fullUrl = "urn:uuid:04400003-1111-2222-3333-444444444444"
* entry[=].resource = organization-044-001
* entry[+].fullUrl = "urn:uuid:04400004-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-044-001
* entry[+].fullUrl = "urn:uuid:04400005-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-044-001
* entry[+].fullUrl = "urn:uuid:04400006-1111-2222-3333-444444444444"
* entry[=].resource = condition-measles-044
* entry[+].fullUrl = "urn:uuid:04400007-1111-2222-3333-444444444444"
* entry[=].resource = condition-scarlet-fever-044
* entry[+].fullUrl = "urn:uuid:04400008-1111-2222-3333-444444444444"
* entry[=].resource = condition-pertussis-044
* entry[+].fullUrl = "urn:uuid:04400009-1111-2222-3333-444444444444"
* entry[=].resource = observation-travel-clearance-044
* entry[+].fullUrl = "urn:uuid:04400010-1111-2222-3333-444444444444"
* entry[=].resource = observation-destination-country-044
* entry[+].fullUrl = "urn:uuid:04400011-1111-2222-3333-444444444444"
* entry[=].resource = observation-trip-period-044
* entry[+].fullUrl = "urn:uuid:04400012-1111-2222-3333-444444444444"
* entry[=].resource = provenance-signature-044



Instance: composition-044-001
InstanceOf: Form044TravelClearanceCertificateComposition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:944f9511-f30c-52e5-b827-557766550044"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "044"
* status = #final
* type = $loinc#104988-1 "Medical fitness certificate"
* category = $document-category-cs#form-044 "Certificate on absence of medical contraindications for travel abroad"
* subject = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)
* date = "2026-02-10T09:15:00+05:00"
* author = Reference(urn:uuid:04400005-1111-2222-3333-444444444444)
* title = "Form 044 - Certificate of Absence of Medical Contraindications for Travel Abroad"

* section[personalInformation].title = "Personal Information"
* section[=].code = $loinc#LP36348-8 "Patient Information"
* section[=].entry = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)

* section[residenceInformation].title = "Residence Information"
* section[=].code = $loinc#56799-0 "Address"
* section[=].entry = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)

* section[infectiousDiseaseHistory].title = "History of Infectious Diseases"
* section[=].code = $loinc#11348-0 "History of Past illness note"
* section[=].entry[0] = Reference(urn:uuid:04400006-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:04400007-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:04400008-1111-2222-3333-444444444444)

* section[travelAuthorization].title = "Travel Authorization"
* section[=].code = $loinc#104988-1 "Medical fitness certificate"
* section[=].entry[0] = Reference(urn:uuid:04400009-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:04400010-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:04400011-1111-2222-3333-444444444444)

* section[responsiblePersons].title = "Responsible Persons"
* section[=].code = $loinc#LP35157-4 "Responsible party"
* section[=].entry = Reference(urn:uuid:04400005-1111-2222-3333-444444444444)



Instance: patient-044-001
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
* identifier[nationalId].value = "31234567890044"
* identifier[healthCardId].value = "HC-2026-00044"
* name.use = #official
* name.text = "Yusupova Nodira Sharifovna"
* name.family = "Yusupova"
* name.given[0] = "Nodira"
* name.given[+] = "Sharifovna"
* birthDate = "1988-07-22"
* gender = #female
* address[uzAddress].postalCode = "100017"
* address[uzAddress].district = "1726266"
* address[uzAddress].state = "1726"
* address[uzAddress].city = "16090011"
* address[uzAddress].line[0] = "8-mavze"
* address[uzAddress].line[+] = "22-uy"
* managingOrganization = Reference(urn:uuid:04400003-1111-2222-3333-444444444444)



Instance: organization-044-001
InstanceOf: Organization
Usage: #inline
* language = #en
* identifier.system = "https://dhp.uz/fhir/core/sid/uz/organization-code"
* identifier.value = "200017"
* name = "Toshkent shahar 5-son poliklinikasi"



Instance: practitioner-044-001
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678900044"
* name.use = #official
* name.text = "Nazarov T.T."
* name.family = "Nazarov"
* name.given[0] = "T."
* name.given[+] = "T."



Instance: practitionerrole-044-001
InstanceOf: UZCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:04400004-1111-2222-3333-444444444444)
* organization = Reference(urn:uuid:04400003-1111-2222-3333-444444444444)
* code = $position-and-profession-cs#1112.189 
// Represents "Komissiya raisi" (Commission chair) — closest available code in
// position-and-profession-cs; confirmed as real/valid, no more specific
// "chief physician"/commission-chair code found. Approximation accepted.



Instance: condition-measles-044
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#resolved
* category = $condition-category#problem-list-item "Problem List Item"
* code.coding.system = $icd10
* code.coding.code = #B05
* code.coding.display = "Measles"
* code.text = "Measles"
* subject = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)



Instance: condition-scarlet-fever-044
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#resolved
* category = $condition-category#problem-list-item "Problem List Item"
* code.coding.system = $icd10
* code.coding.code = #A38
* code.coding.display = "Scarlet fever"
* code.text = "Scarlet fever"
* subject = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)



Instance: condition-pertussis-044
InstanceOf: UZCoreCondition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#resolved
* category = $condition-category#problem-list-item "Problem List Item"
* code.coding.system = $icd10
* code.coding.code = #A37
* code.coding.display = "Whooping cough"
* code.text = "Whooping cough"
* subject = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)



Instance: observation-travel-clearance-044
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = form-044-observation-type-cs#obtype-0044-0003
* subject = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-02-10T09:00:00+05:00"
* performer = Reference(urn:uuid:04400004-1111-2222-3333-444444444444)
* valueCodeableConcept = form-044-travel-clearance-conclusion-cs#form-0044-0001 "Allowed"



Instance: observation-destination-country-044
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = form-044-observation-type-cs#obtype-0044-0001
* subject = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-02-10T09:00:00+05:00"
* performer = Reference(urn:uuid:04400004-1111-2222-3333-444444444444)
* valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* valueCodeableConcept.coding.code = #DE
* valueCodeableConcept.coding.display = "Germany"



Instance: observation-trip-period-044
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = form-044-observation-type-cs#obtype-0044-0002
* subject = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)
* performer = Reference(urn:uuid:04400004-1111-2222-3333-444444444444)
* effectivePeriod.start = "2026-02-20"
* effectivePeriod.end = "2026-03-05"



Instance: provenance-signature-044
InstanceOf: Provenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-044-travel-clearance)
* recorded = "2026-02-10T09:20:00+05:00"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#attester "Attester"
* agent.who = Reference(urn:uuid:04400004-1111-2222-3333-444444444444) "Nazarov T.T."
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2026-02-10T09:20:00+05:00"
* signature.who = Reference(urn:uuid:04400004-1111-2222-3333-444444444444) "Nazarov T.T."
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2Jq"
