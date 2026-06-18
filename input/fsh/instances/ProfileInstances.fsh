// Example Encounter of Birth for a newborn in Uzbekistan
Instance: encounter-of-birth-example
InstanceOf: EncounterOfBirth
Usage: #example
Title: "Encounter of Birth Example"
Description: "Example birth encounter for a newborn in Uzbekistan"

* status = #completed
* class = $v3-ActCode#IMP "inpatient encounter"

* subject = Reference(patient-of-birth-example)

* serviceProvider = Reference(organization-birth-hospital-example)
* partOf = Reference(encounter-mother-delivery-example)

* participant[participantAttendant].type.coding[0].system = "http://loinc.org"
* participant[participantAttendant].type.coding[0].code = #87286-1
* participant[participantAttendant].type.coding[0].display = "Birth attendant [Extended Identifier]"
* participant[participantAttendant].actor = Reference(practitioner-birth-attendant-example)

* participant[participantCertifier].type.coding[0].system = "http://loinc.org"
* participant[participantCertifier].type.coding[0].code = #87287-9
* participant[participantCertifier].type.coding[0].display = "Birth certifier [Extended Identifier]"
* participant[participantCertifier].actor = Reference(practitioner-birth-certifier-example)
* participant[participantCertifier].period.start = "2026-04-01T10:30:00+05:00"

* diagnosis[0].condition = Reference(condition-neonatal-jaundice-example)

* location[0].location = Reference(location-delivery-room-example)



// Example Observation of APGAR for a newborn in Uzbekistan
Instance: observation-of-apgar-example
InstanceOf: ObservationOfAPGAR
Usage: #example
Title: "Observation APGAR Example"
Description: "Example APGAR observation for a newborn"

* status = #final

* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #vital-signs

* code = http://loinc.org#9274-2 "5 minute Apgar Score"

* subject = Reference(patient-of-birth-example)
* effectiveDateTime = "2026-04-01T10:08:00+05:00"

* performer[0] = Reference(practitioner-003)

* valueQuantity.value = 8
* valueQuantity.unit = "score"
* valueQuantity.system = "http://unitsofmeasure.org"



// Observation Birth Instance
Instance: observation-of-birth-example
InstanceOf: ObservationOfBirth
Usage: #example
Title: "Observation of Birth Example"
Description: "Example observation of birth for a newborn in Uzbekistan"

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #vital-signs
* code = http://loinc.org#8339-4 "Birth weight Measured"
* subject = Reference(patient-of-birth-example)
* effectiveDateTime = "2026-04-01T10:08:00+05:00"
* performer[0] = Reference(practitioner-003)

* valueQuantity.value = 50
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

* component[0].code = ObservationLifeCriteriaCS#birth0003.00001 "Breathing"
* component[0].valueBoolean = true
* component[1].code = ObservationLifeCriteriaCS#birth0003.00002 "Heartbeat"
* component[1].valueBoolean = true
* component[2].code = ObservationLifeCriteriaCS#birth0003.00004 "Involuntary muscle contractions"
* component[2].valueBoolean = true



//Patiet of Birth Instance
Instance: patient-of-birth-example
InstanceOf: PatientOfBirth
Usage: #example
Title: "Patient of Birth Example"
Description: "Example newborn patient in Uzbekistan"

* identifier[0].system = "https://dhp.uz/fhir/sid/newborn-id"
* identifier[0].value = "NB-2026-0001"

* name[0].text = "John Duran"
* name[0].family = "Duran"
* gender = #male
* birthDate = "2026-04-01"

* extension[placeOfBirthType].url = "https://dhp.uz/fhir/integrations/StructureDefinition/patient-placeOfBirthType"
* extension[placeOfBirthType].valueCodeableConcept = BirthPlaceCS#birth0004.00003 "Hospital"

* extension[multipleBirth].url = "https://dhp.uz/fhir/integrations/StructureDefinition/multiple-birth-flag"
* extension[multipleBirth].valueBoolean = false

* extension[newbornBirthTime][0].url = "https://dhp.uz/fhir/integrations/StructureDefinition/newborn-birth-time"
* extension[newbornBirthTime][0].valueDateTime = "2026-04-01T10:00:00+05:00"

* contact[0].relationship[0] = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact[0].name.text = "Sophia Lills"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+998936000000"
* contact[0].address.text = "Mirzo Ulugbek, Tashkent"
* contact[0].gender = #female
* contact[0].organization = Reference(organization-birth-hospital-example)

* generalPractitioner[0] = Reference(practitioner-003)

* managingOrganization = Reference(organization-birth-hospital-example)

* link[0].other = Reference(patient-mother-example)
* link[0].type = #seealso








// RelatedPerson of Birth Instance
Instance: related-person-of-birth-example
InstanceOf: RelatedPersonOfBirth
Usage: #example
Title: "RelatedPerson of Birth Example"
Description: "Example related person responsible for the newborn"

* identifier[passportInternational].system = $passport-international
* identifier[passportInternational].type = $identifier-type#PPN "Passport number"
* identifier[passportInternational].use = #official
* identifier[passportInternational].value = "AB1234567"

* patient = Reference(patient-of-birth-example)

* relationship[0].coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleClass"
* relationship[0].coding.code = #NOK
* relationship[0].coding.display = "next of kin"

* name[0].text = "Boltayev Damir Ketmonovich"
* gender = #male
* birthDate = "1950-01-01"

* telecom[0].system = #phone
* telecom[0].use = #mobile
* telecom[0].value = "+998901234567"
* telecom[0].rank = 1

* extension[education].url = "https://dhp.uz/fhir/integrations/StructureDefinition/relatedperson-education"
* extension[education].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs#regis0005.00008 "Higher education"



// Composition of Birth Example Instance
Instance: composition-of-birth-example
InstanceOf: CompositionOfBirth
Usage: #example
Title: "Composition of Birth Example"
Description: "Example birth document composition for a newborn in Uzbekistan"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:11111111-2222-3333-4444-555555555555"

* status = #final

* type = http://loinc.org#57075-4 "Newborn delivery information"

* date = "2026-04-01T11:00:00+05:00"

* title = "Birth Record Document"

* subject = Reference(patient-of-birth-example)

* author[0] = Reference(practitionerrole-001)

* custodian = Reference(organization-birth-hospital-example)

// Sections
* section[0].title = "Birth Encounter"
* section[0].entry[0] = Reference(encounter-of-birth-example)

* section[1].title = "APGAR Score"
* section[1].entry[0] = Reference(observation-of-apgar-example)

* section[2].title = "Birth Measurements"
* section[2].entry[0] = Reference(observation-of-birth-example)
