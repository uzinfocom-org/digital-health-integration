//=====================================================
// Bundle
//=====================================================

Instance: example-form-130-laboratory-test-results
InstanceOf: Bundle
Usage: #example
Title: "Form 130 - Laboratory Test Results"
Description: "Example of Form 130 Laboratory Results"

* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:130e8400-e29b-41d4-a716-446655440130"
* type = #document
* timestamp = "2026-01-20T10:30:00+05:00"

* entry[0].fullUrl = "urn:uuid:13000001-1111-2222-3333-444444444444"
* entry[=].resource = composition-130-001

* entry[+].fullUrl = "urn:uuid:13000002-1111-2222-3333-444444444444"
* entry[=].resource = patient-130-001

* entry[+].fullUrl = "urn:uuid:13000003-1111-2222-3333-444444444444"
* entry[=].resource = encounter-130-001

* entry[+].fullUrl = "urn:uuid:13000004-1111-2222-3333-444444444444"
* entry[=].resource = organization-requesting-130

* entry[+].fullUrl = "urn:uuid:13000005-1111-2222-3333-444444444444"
* entry[=].resource = organization-laboratory-130

* entry[+].fullUrl = "urn:uuid:13000006-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-referring-130

* entry[+].fullUrl = "urn:uuid:13000007-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-lab-130

* entry[+].fullUrl = "urn:uuid:13000008-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-referring-130

* entry[+].fullUrl = "urn:uuid:13000009-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-lab-130

* entry[+].fullUrl = "urn:uuid:13000010-1111-2222-3333-444444444444"
* entry[=].resource = servicerequest-130

* entry[+].fullUrl = "urn:uuid:13000011-1111-2222-3333-444444444444"
* entry[=].resource = specimen-130

* entry[+].fullUrl = "urn:uuid:13000012-1111-2222-3333-444444444444"
* entry[=].resource = diagnosticreport-130

* entry[+].fullUrl = "urn:uuid:13000013-1111-2222-3333-444444444444"
* entry[=].resource = observation-wbc-130

* entry[+].fullUrl = "urn:uuid:13000014-1111-2222-3333-444444444444"
* entry[=].resource = observation-neu-abs-130

* entry[+].fullUrl = "urn:uuid:13000015-1111-2222-3333-444444444444"
* entry[=].resource = observation-eos-abs-130

* entry[+].fullUrl = "urn:uuid:13000016-1111-2222-3333-444444444444"
* entry[=].resource = observation-img-abs-130

* entry[+].fullUrl = "urn:uuid:13000017-1111-2222-3333-444444444444"
* entry[=].resource = observation-neu-percent-130

* entry[+].fullUrl = "urn:uuid:13000018-1111-2222-3333-444444444444"
* entry[=].resource = observation-lym-percent-130

* entry[+].fullUrl = "urn:uuid:13000019-1111-2222-3333-444444444444"
* entry[=].resource = observation-mon-percent-130

* entry[+].fullUrl = "urn:uuid:13000020-1111-2222-3333-444444444444"
* entry[=].resource = observation-eos-percent-130

* entry[+].fullUrl = "urn:uuid:13000021-1111-2222-3333-444444444444"
* entry[=].resource = observation-bas-percent-130

* entry[+].fullUrl = "urn:uuid:13000022-1111-2222-3333-444444444444"
* entry[=].resource = observation-img-percent-130

* entry[+].fullUrl = "urn:uuid:13000023-1111-2222-3333-444444444444"
* entry[=].resource = observation-rbc-130

* entry[+].fullUrl = "urn:uuid:13000024-1111-2222-3333-444444444444"
* entry[=].resource = observation-hgb-130

* entry[+].fullUrl = "urn:uuid:13000025-1111-2222-3333-444444444444"
* entry[=].resource = observation-color-index-130

* entry[+].fullUrl = "urn:uuid:13000026-1111-2222-3333-444444444444"
* entry[=].resource = observation-hct-130

* entry[+].fullUrl = "urn:uuid:13000027-1111-2222-3333-444444444444"
* entry[=].resource = observation-mcv-130

* entry[+].fullUrl = "urn:uuid:13000028-1111-2222-3333-444444444444"
* entry[=].resource = observation-mch-130

* entry[+].fullUrl = "urn:uuid:13000029-1111-2222-3333-444444444444"
* entry[=].resource = observation-mchc-130

* entry[+].fullUrl = "urn:uuid:13000030-1111-2222-3333-444444444444"
* entry[=].resource = observation-rdw-cv-130

* entry[+].fullUrl = "urn:uuid:13000031-1111-2222-3333-444444444444"
* entry[=].resource = observation-rdw-sd-130

* entry[+].fullUrl = "urn:uuid:13000032-1111-2222-3333-444444444444"
* entry[=].resource = observation-plt-130

* entry[+].fullUrl = "urn:uuid:13000033-1111-2222-3333-444444444444"
* entry[=].resource = observation-mpv-130

* entry[+].fullUrl = "urn:uuid:13000034-1111-2222-3333-444444444444"
* entry[=].resource = observation-pdw-130

* entry[+].fullUrl = "urn:uuid:13000035-1111-2222-3333-444444444444"
* entry[=].resource = observation-pct-130

* entry[+].fullUrl = "urn:uuid:13000036-1111-2222-3333-444444444444"
* entry[=].resource = observation-plcc-130

* entry[+].fullUrl = "urn:uuid:13000037-1111-2222-3333-444444444444"
* entry[=].resource = observation-plcr-130

* entry[+].fullUrl = "urn:uuid:13000038-1111-2222-3333-444444444444"
* entry[=].resource = observation-nrbc-absolute-130

* entry[+].fullUrl = "urn:uuid:13000039-1111-2222-3333-444444444444"
* entry[=].resource = observation-nrbc-percent-130

* entry[+].fullUrl = "urn:uuid:13000040-1111-2222-3333-444444444444"
* entry[=].resource = observation-myelocyte-130

* entry[+].fullUrl = "urn:uuid:13000041-1111-2222-3333-444444444444"
* entry[=].resource = observation-metamielocyte-130

* entry[+].fullUrl = "urn:uuid:13000042-1111-2222-3333-444444444444"
* entry[=].resource = observation-band-neutrophil-130

* entry[+].fullUrl = "urn:uuid:13000043-1111-2222-3333-444444444444"
* entry[=].resource = observation-plasma-cell-130

* entry[+].fullUrl = "urn:uuid:13000044-1111-2222-3333-444444444444"
* entry[=].resource = provenance-130-001

//=====================================================
// Composition
//=====================================================

Instance: composition-130-001
InstanceOf: Form130LaboratoryTestResultsComposition
Usage: #inline

* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:861f9511-f30c-52e5-b827-557766551300"

* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "130"

* status = #final
* type = $loinc#11502-2 "Laboratory report"
* category = $document-category-cs#form-130 "Laboratory Test Results"

* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) //patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) //encounter-130-001

* date = "2026-01-20T10:45:00+05:00"

* author[0] = Reference(urn:uuid:13000008-1111-2222-3333-444444444444) //practitionerrole-referring-130
* author[+] = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130

* title = "Form 130 - Laboratory Test Results"

* section[patientInformation].title = "Patient Information"
* section[=].code = $loinc#LP36348-8 "Patient Information"
* section[=].entry[0] = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) //patient-130-001

* section[laboratoryOrderInformation].title = "Laboratory Order Information"
* section[=].code = $loinc#11502-2 "Laboratory report"
* section[=].entry[0] = Reference(urn:uuid:13000010-1111-2222-3333-444444444444) //servicerequest-130
* section[=].entry[+] = Reference(urn:uuid:13000004-1111-2222-3333-444444444444) //organization-requesting-130
* section[=].entry[+] = Reference(urn:uuid:13000008-1111-2222-3333-444444444444) // practitionerrole-referring-130

* section[specimenInformation].title = "Specimen Information"
* section[=].code = $loinc#LP443467-8 "Specimen"
* section[=].entry[0] = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* section[laboratoryTestResults].title = "Laboratory test results"
* section[=].code = $loinc#LP420386-7 "Laboratory test results reported"
* section[=].entry[0] = Reference(urn:uuid:13000013-1111-2222-3333-444444444444) // observation-wbc-130
* section[=].entry[+] = Reference(urn:uuid:13000014-1111-2222-3333-444444444444) // observation-neu-abs-130
* section[=].entry[+] = Reference(urn:uuid:13000015-1111-2222-3333-444444444444) // observation-eos-abs-130
* section[=].entry[+] = Reference(urn:uuid:13000016-1111-2222-3333-444444444444) // observation-img-abs-130
* section[=].entry[+] = Reference(urn:uuid:13000017-1111-2222-3333-444444444444) // observation-neu-percent-130
* section[=].entry[+] = Reference(urn:uuid:13000018-1111-2222-3333-444444444444) // observation-lym-percent-130
* section[=].entry[+] = Reference(urn:uuid:13000019-1111-2222-3333-444444444444) // observation-mon-percent-130
* section[=].entry[+] = Reference(urn:uuid:13000020-1111-2222-3333-444444444444) // observation-eos-percent-130
* section[=].entry[+] = Reference(urn:uuid:13000021-1111-2222-3333-444444444444) // observation-bas-percent-130
* section[=].entry[+] = Reference(urn:uuid:13000022-1111-2222-3333-444444444444) // observation-img-percent-130

* section[=].entry[+] = Reference(urn:uuid:13000023-1111-2222-3333-444444444444) // observation-rbc-130
* section[=].entry[+] = Reference(urn:uuid:13000024-1111-2222-3333-444444444444) // observation-hgb-130
* section[=].entry[+] = Reference(urn:uuid:13000025-1111-2222-3333-444444444444) // observation-color-index-130
* section[=].entry[+] = Reference(urn:uuid:13000026-1111-2222-3333-444444444444) // observation-hct-130
* section[=].entry[+] = Reference(urn:uuid:13000027-1111-2222-3333-444444444444) // observation-mcv-130
* section[=].entry[+] = Reference(urn:uuid:13000028-1111-2222-3333-444444444444) // observation-mch-130
* section[=].entry[+] = Reference(urn:uuid:13000029-1111-2222-3333-444444444444) // observation-mchc-130
* section[=].entry[+] = Reference(urn:uuid:13000030-1111-2222-3333-444444444444) // observation-rdw-cv-130
* section[=].entry[+] = Reference(urn:uuid:13000031-1111-2222-3333-444444444444) // observation-rdw-sd-130

* section[=].entry[+] = Reference(urn:uuid:13000032-1111-2222-3333-444444444444) // observation-plt-130
* section[=].entry[+] = Reference(urn:uuid:13000033-1111-2222-3333-444444444444) // observation-mpv-130
* section[=].entry[+] = Reference(urn:uuid:13000034-1111-2222-3333-444444444444) // observation-pdw-130
* section[=].entry[+] = Reference(urn:uuid:13000035-1111-2222-3333-444444444444) // observation-pct-130
* section[=].entry[+] = Reference(urn:uuid:13000036-1111-2222-3333-444444444444) // observation-plcc-130
* section[=].entry[+] = Reference(urn:uuid:13000037-1111-2222-3333-444444444444) // observation-plcr-130

* section[=].entry[+] = Reference(urn:uuid:13000038-1111-2222-3333-444444444444) // observation-nrbc-absolute-130
* section[=].entry[+] = Reference(urn:uuid:13000039-1111-2222-3333-444444444444) // observation-nrbc-percent-130

* section[=].entry[+] = Reference(urn:uuid:13000040-1111-2222-3333-444444444444) // observation-myelocyte-130
* section[=].entry[+] = Reference(urn:uuid:13000041-1111-2222-3333-444444444444) // observation-metamielocyte-130
* section[=].entry[+] = Reference(urn:uuid:13000042-1111-2222-3333-444444444444) // observation-band-neutrophil-130
* section[=].entry[+] = Reference(urn:uuid:13000043-1111-2222-3333-444444444444) // observation-plasma-cell-130


* section[responsiblePersons].title = "Responsible Persons"
* section[=].code = $loinc#LP35157-4 "Responsible party"
* section[=].entry[0] = Reference(urn:uuid:13000008-1111-2222-3333-444444444444) //practitionerrole-referring-130
* section[=].entry[+] = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130

//=====================================================
// Patient
//=====================================================

Instance: patient-130-001
InstanceOf: UZCorePatient
Usage: #inline

* language = #en
* identifier[nationalId].value = "31234567890123"
* identifier[healthCardId].value = "HC-2026-00130"

* name.use = #official
* name.family = "Tursunov"
* name.given = "Alisher"
* name.text = "Alisher Tursunov Qodirovich"

* gender = #male
* birthDate = "1990-04-12"

//=====================================================
// Encounter
//=====================================================

Instance: encounter-130-001
InstanceOf: UZCoreEncounter
Usage: #inline

* status = #completed
* class = $v3-ActCode#AMB
* type = $encounter-type-cs#mserv-0001-00002 "Diagnostic"
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) //patient-130-001 
* actualPeriod.start = "2026-01-20T08:30:00+05:00"
* actualPeriod.end = "2026-01-20T10:30:00+05:00"
* serviceProvider = Reference(urn:uuid:13000004-1111-2222-3333-444444444444) //organization-requesting-130

//=====================================================
// Organizations
//=====================================================

Instance: organization-requesting-130
InstanceOf: UZCoreOrganization
Usage: #inline

* identifier.value = "200001"
* name = "Yunusobod Family Polyclinic"

Instance: organization-laboratory-130
InstanceOf: Organization
Usage: #inline

* identifier.value = "300001"
* name = "Central Clinical Laboratory"

//=====================================================
// Practitioners
//=====================================================

Instance: practitioner-referring-130
InstanceOf: UZCorePractitioner
Usage: #inline

* identifier[nationalId].value = "12345678900001"
* name.family = "Karimov"
* name.given = "J."

Instance: practitioner-lab-130
InstanceOf: UZCorePractitioner
Usage: #inline

* identifier[nationalId].value = "12345678900002"
* name.family = "Rasulova"
* name.given = "M."

//=====================================================
// Practitioner Roles
//=====================================================

Instance: practitionerrole-referring-130
InstanceOf: UZCorePractitionerRole
Usage: #inline

* code = $position-and-profession-cs#2211.1 "General practitioner"
* practitioner = Reference(urn:uuid:13000006-1111-2222-3333-444444444444) //practitioner-referring-130
* organization = Reference(urn:uuid:13000004-1111-2222-3333-444444444444) //organization-requesting-130

Instance: practitionerrole-lab-130
InstanceOf: UZCorePractitionerRole
Usage: #inline

* code = $position-and-profession-cs#2212.53 "Doctor of laboratory clinical biochemical laboratory"
* practitioner = Reference(urn:uuid:13000007-1111-2222-3333-444444444444) //practitioner-lab-130
* organization = Reference(urn:uuid:13000005-1111-2222-3333-444444444444) //organization-laboratory-130

//=====================================================
// ServiceRequest
//=====================================================

Instance: servicerequest-130
InstanceOf: UZCoreServiceRequest
Usage: #inline

* status = #completed
* intent = #order

* code = $lab-pan-cs#lab-pan-E "CBC panel"
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) //patient-130-001 
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) //encounter-130-001
* requester = Reference(urn:uuid:13000008-1111-2222-3333-444444444444) //practitionerrole-referring-130

//=====================================================
// Specimen
//=====================================================

Instance: specimen-130
InstanceOf: UZCoreSpecimen
Usage: #inline

// Namuna №
// * identifier.value = "SMP-130-0001"
* status = #available
* type = $v2-0487#BLD "Whole blood"
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) //patient-130-001 
* receivedTime = "2026-01-20T09:05:00+05:00"
* collection.collectedDateTime = "2026-01-20T09:00:00+05:00"

//=====================================================
// Diagnostic Report
//=====================================================

Instance: diagnosticreport-130
InstanceOf: UZCoreDiagnosticReport
Usage: #inline

// Reg№
// * identifier.value = "REG-130-0001"
* status = #final
* category = $diagnostic-report-service-category#HM
* code = $lab-report-types-cs#lab-rep-01 "CBC panel"
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) //patient-130-001 
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) //encounter-130-001
* effectiveDateTime = "2026-01-20T09:00:00+05:00"
* issued = "2026-01-20T10:20:00+05:00"
* performer = Reference(urn:uuid:13000005-1111-2222-3333-444444444444) //organization-laboratory-130
* basedOn = Reference(urn:uuid:13000010-1111-2222-3333-444444444444) //servicerequest-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) //specimen-130


Instance: observation-wbc-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-107
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) //specimen-130

* valueQuantity.value = 7.2
* valueQuantity.unit = "10^9/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*9/L

* referenceRange.low.value = 4.0
* referenceRange.high.value = 9.0

* interpretation = $observation-interpretation#N


Instance: observation-neu-abs-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-108
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 4.2
* valueQuantity.unit = "10^9/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*9/L

* interpretation = $observation-interpretation#N


Instance: observation-eos-abs-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-111
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0.2
* valueQuantity.unit = "10^9/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*9/L

* interpretation = $observation-interpretation#N


Instance: observation-img-abs-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-133
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0.03
* valueQuantity.unit = "10^9/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*9/L

* interpretation = $observation-interpretation#N


Instance: observation-neu-percent-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-113
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 60
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* referenceRange.low.value = 47
* referenceRange.high.value = 72

* interpretation = $observation-interpretation#N


Instance: observation-lym-percent-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-114
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 30
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* referenceRange.low.value = 19
* referenceRange.high.value = 37

* interpretation = $observation-interpretation#N

Instance: observation-mon-percent-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-115
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 7
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* referenceRange.low.value = 3
* referenceRange.high.value = 11

* interpretation = $observation-interpretation#N


Instance: observation-eos-percent-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-116
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 2
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* referenceRange.low.value = 0.5
* referenceRange.high.value = 5

* interpretation = $observation-interpretation#N


Instance: observation-bas-percent-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-117
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0.5
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* referenceRange.low.value = 0
* referenceRange.high.value = 1

* interpretation = $observation-interpretation#N


Instance: observation-img-percent-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-133
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0.5
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* interpretation = $observation-interpretation#N


Instance: observation-rbc-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-118
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 4.5
* valueQuantity.unit = "10^12/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*12/L

* referenceRange.low.value = 4.0
* referenceRange.high.value = 5.0

* interpretation = $observation-interpretation#N


Instance: observation-hgb-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-119
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 130
* valueQuantity.unit = "g/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #g/L

* referenceRange.low.value = 120
* referenceRange.high.value = 140

* interpretation = $observation-interpretation#N

Instance: observation-color-index-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-76
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0.95
* valueQuantity.unit = "1"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #1

* referenceRange.low.value = 0.85
* referenceRange.high.value = 1.05

* interpretation = $observation-interpretation#N

Instance: observation-hct-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-120
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 40
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* referenceRange.low.value = 32
* referenceRange.high.value = 45

* interpretation = $observation-interpretation#N


Instance: observation-mcv-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-121
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 90
* valueQuantity.unit = "fL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #fL

* referenceRange.low.value = 80
* referenceRange.high.value = 100

* interpretation = $observation-interpretation#N


Instance: observation-mch-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-122
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 32
* valueQuantity.unit = "pg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #pg

* referenceRange.low.value = 30
* referenceRange.high.value = 35

* interpretation = $observation-interpretation#N


Instance: observation-mchc-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-123
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 340
* valueQuantity.unit = "g/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #g/L

* referenceRange.low.value = 320
* referenceRange.high.value = 360

* interpretation = $observation-interpretation#N


Instance: observation-rdw-cv-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-124
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 13
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* referenceRange.low.value = 11.5
* referenceRange.high.value = 14.5

* interpretation = $observation-interpretation#N

Instance: observation-rdw-sd-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-125
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 42
* valueQuantity.unit = "fL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #fL

* interpretation = $observation-interpretation#N


Instance: observation-plt-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-126
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 250
* valueQuantity.unit = "10^9/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*9/L

* referenceRange.low.value = 180
* referenceRange.high.value = 320

* interpretation = $observation-interpretation#N


Instance: observation-mpv-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-127
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 7
* valueQuantity.unit = "fL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #fL

* referenceRange.low.value = 3.6
* referenceRange.high.value = 9.4

* interpretation = $observation-interpretation#N


Instance: observation-pdw-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-128
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 10
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* referenceRange.low.value = 1.0
* referenceRange.high.value = 20

* interpretation = $observation-interpretation#N


Instance: observation-pct-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-129
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0.3
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* referenceRange.low.value = 0.15
* referenceRange.high.value = 0.45

* interpretation = $observation-interpretation#N


Instance: observation-plcc-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-130
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 80
* valueQuantity.unit = "10^9/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*9/L

* interpretation = $observation-interpretation#N

Instance: observation-plcr-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-131
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 25
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* interpretation = $observation-interpretation#N


Instance: observation-nrbc-absolute-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-134
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0.01
* valueQuantity.unit = "10^9/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10*9/L

* interpretation = $observation-interpretation#N


Instance: observation-nrbc-percent-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-135
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0.5
* valueQuantity.unit = "/10WBC"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* interpretation = $observation-interpretation#N


Instance: observation-myelocyte-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-136
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* interpretation = $observation-interpretation#N


Instance: observation-metamielocyte-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-137
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* interpretation = $observation-interpretation#N


Instance: observation-band-neutrophil-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-138
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 2
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* interpretation = $observation-interpretation#N


Instance: observation-plasma-cell-130
InstanceOf: UZCoreObservation
Usage: #inline

* language = #en
* status = #final
* category = $observation-category#laboratory
* code = $lab-pan-cs#lab-pan-139
* subject = Reference(urn:uuid:13000002-1111-2222-3333-444444444444) // patient-130-001
* encounter = Reference(urn:uuid:13000003-1111-2222-3333-444444444444) // encounter-130-001
* effectiveDateTime = "2026-07-31T09:30:00+05:00"
* performer = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
* specimen = Reference(urn:uuid:13000011-1111-2222-3333-444444444444) // specimen-130

* valueQuantity.value = 0
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* interpretation = $observation-interpretation#N


// -----------------------------------------------------------------------------
// PROVENANCE
// -----------------------------------------------------------------------------

Instance: provenance-130-001
InstanceOf: UZCoreProvenance
Usage: #inline

* language = #en

* target = Reference(Bundle/example-form-130-laboratory-test-results)

* occurredDateTime = "2026-07-31T10:05:00+05:00"
* agent
  * type = $provenance-participant-type#author
  * who = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130

* signature 
  * type[nationalType] = $signature-type-cs#biometricAuth
  * when = "2026-07-31T10:05:00+05:00"
  * who = Reference(urn:uuid:13000009-1111-2222-3333-444444444444) //practitionerrole-lab-130
  * sigFormat = #application/signature+xml
  * data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2Jq"
