Instance: example-form-044-travel-clearance
InstanceOf: Bundle
Usage: #example
Title: "Form 044 - Medical Certificate for Travelers Abroad"
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
* entry[+].fullUrl = "urn:uuid:04400013-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-044-002
* entry[+].fullUrl = "urn:uuid:04400014-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-044-002



Instance: composition-044-001
InstanceOf: Form044TravelClearanceCertificateComposition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:944f9511-f30c-52e5-b827-557766550044"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "044"
* identifier[certificateNumber].value = "044-2026-001"
* status = #final
* type.coding[0] = $composition-type-cs#emdoc-0010-0042 "Medical certificate for travelers abroad"
* type.coding[+] = $loinc#104988-1 "Medical Fitness Certificate"
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category[formCategory] = $document-category-cs#form-044 "Medical certificate for travelers abroad"
* subject = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)
* date = "2026-02-10T09:15:00+05:00"
* author = Reference(urn:uuid:04400005-1111-2222-3333-444444444444)
* custodian = Reference(urn:uuid:04400003-1111-2222-3333-444444444444)
* title = "Form 044 - Medical Certificate for Travelers Abroad"

* section[personalInformation].title = "1. Personal information"
* section[=].code = $loinc#LP36348-8 "Patient information"
* section[=].entry = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)

* section[infectiousDiseaseHistory].title = "2. History of infectious diseases"
* section[=].code = $loinc#11348-0 "History of Past illness note"
* section[=].entry[0] = Reference(urn:uuid:04400006-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:04400007-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:04400008-1111-2222-3333-444444444444)

* section[travelAuthorization].title = "3. Travel authorization"
* section[=].code = $loinc#104988-1 "Medical Fitness Certificate"
* section[=].entry[0] = Reference(urn:uuid:04400009-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:04400010-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:04400011-1111-2222-3333-444444444444)

* section[residenceInformation].title = "4. Residence information"
* section[=].code = $loinc#56799-0 "Address"
* section[=].entry = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)

* section[responsiblePersons].title = "5. Responsible persons"
* section[=].code = $loinc#LP35157-4 "Responsible party"
* section[=].entry[0] = Reference(urn:uuid:04400005-1111-2222-3333-444444444444)
* section[=].entry[+] = Reference(urn:uuid:04400014-1111-2222-3333-444444444444)



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
InstanceOf: UZCoreOrganization
Usage: #inline
* language = #en
* identifier[taxId].type = $identifier-type#TAX "Tax ID number"
* identifier[taxId].system = $organization-tax-id-system-dhp
* identifier[taxId].value = "200017044"
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
* language = #en
* practitioner = Reference(urn:uuid:04400004-1111-2222-3333-444444444444)
* organization = Reference(urn:uuid:04400003-1111-2222-3333-444444444444)
* code.coding[role] = $occupation-cs#1342.18 "Head of department (health institution)"



Instance: practitioner-044-002
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "22345678900044"
* name.use = #official
* name.text = "Karimova D.A."
* name.family = "Karimova"
* name.given[0] = "D."
* name.given[+] = "A."



Instance: practitionerrole-044-002
InstanceOf: UZCorePractitionerRole
Usage: #inline
* language = #en
* practitioner = Reference(urn:uuid:04400013-1111-2222-3333-444444444444)
* organization = Reference(urn:uuid:04400003-1111-2222-3333-444444444444)
* code.coding[role] = $occupation-cs#2212.113 "Physician"



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
* code = $form-044-observation-code-cs#travel-clearance "Travel clearance"
* subject = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-02-10T09:00:00+05:00"
* performer = Reference(urn:uuid:04400004-1111-2222-3333-444444444444)
* valueBoolean = true



Instance: observation-destination-country-044
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $loinc#94651-7 "Country of travel [Location]"
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
* code = $form-044-observation-code-cs#trip-period "Business trip period"
* subject = Reference(urn:uuid:04400002-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-02-10T09:00:00+05:00"
* performer = Reference(urn:uuid:04400004-1111-2222-3333-444444444444)
* valuePeriod.start = "2026-02-20"
* valuePeriod.end = "2026-03-05"



Instance: provenance-signature-044
InstanceOf: UZCoreProvenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-044-travel-clearance)
* recorded = "2026-02-10T09:20:00+05:00"
* agent[0].type = $provenance-participant-type#author "Author"
* agent[=].who = Reference(urn:uuid:04400005-1111-2222-3333-444444444444) "Nazarov T.T."
* agent[+].type = $provenance-participant-type#attester "Attester"
* agent[=].who = Reference(urn:uuid:04400014-1111-2222-3333-444444444444) "Karimova D.A."
* signature[0].type[nationalType] = $signature-type-cs#soliqAuth
* signature[=].when = "2026-02-10T09:20:00+05:00"
* signature[=].who = Reference(urn:uuid:04400005-1111-2222-3333-444444444444) "Nazarov T.T."
* signature[=].sigFormat = #application/pdf
* signature[=].data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2Jq"
* signature[+].type[nationalType] = $signature-type-cs#soliqAuth
* signature[=].when = "2026-02-10T09:25:00+05:00"
* signature[=].who = Reference(urn:uuid:04400014-1111-2222-3333-444444444444) "Karimova D.A."
* signature[=].sigFormat = #application/pdf
* signature[=].data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2Jq"
