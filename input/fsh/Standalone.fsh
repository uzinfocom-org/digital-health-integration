Instance: samarkand-regional-hospital
InstanceOf: Organization
Description: "Example regional hospital organization in Samarkand."
Usage: #example

* id = "samarkand-regional-hospital"
* name = "Samarkand Regional Hospital"

Instance: samarkand-infectious-hospital
InstanceOf: Organization
Description: "Example infectious diseases hospital organization in Samarkand."
Usage: #example

* id = "samarkand-infectious-hospital"
* name = "Samarkand Infectious Hospital"

Instance: example-practitioner
InstanceOf: Practitioner
Description: "Example healthcare practitioner."
Usage: #example

* id = "example-practitioner"
* name.family = "Simonov"
* name.given[0] = "Farkhod"

Instance: referral-to-specialist
InstanceOf: ServiceRequest
Description: "Example referral request to a specialist."
Usage: #example

* id = "referral-to-specialist"
* status = #active
* intent = #order
* subject = Reference(Patient/hepatitis-patient-example)

Instance: muratova-gulshoda
InstanceOf: Practitioner
Description: "Example practitioner Gulshoda Muratova."
Usage: #example

* id = "muratova-gulshoda"
* name.family = "Muratova"
* name.given[0] = "Gulshoda"

Instance: muratova-gulshoda-role
InstanceOf: PractitionerRole
Description: "Example practitioner role for Gulshoda Muratova at Samarkand Regional Hospital."
Usage: #example

* id = "muratova-gulshoda-role"
* practitioner = Reference(Practitioner/muratova-gulshoda)
* organization = Reference(Organization/samarkand-regional-hospital)


Instance: specimen-example-blood
InstanceOf: Specimen
Usage: #example
Description: "Temporary Specimen instance for lab (based on drafted UZCoreSpecimen Excel structure)"
/* * identifier.system = "https://dhp.uz/fhir/identifier/specimen-id"
* identifier.value = "SPC-2025-000001"
* accessionIdentifier.system = "https://dhp.uz/fhir/identifier/lab-accession-id"
* accessionIdentifier.value = "ACC-2025-000045" */
* status = #available
* type = $v2-0487#BLD "Whole blood"
* subject = Reference(Patient/example-salim)
* receivedTime = "2025-11-04T08:30:00Z"
* request[0] = Reference(ServiceRequest/example-cbc-order)
* role[0] = $specimen-role#p "Patient"
* collection.collector = Reference(Practitioner/example-practitioner)
* collection.collectedDateTime = "2025-11-04T08:10:00Z"
* collection.duration = 5 'min'
* collection.quantity = 3 'mL' "mL"
* collection.fastingStatusCodeableConcept = $v2-0916#NF "The patient indicated they did not fast prior to the procedure."
* note[0].text = "Venous blood collected into EDTA tube. No visible hemolysis."

Instance: example-cbc-order
InstanceOf: ServiceRequest
Usage: #example
Description: "Example ServiceRequest for CBC (Umumiy qon tahlili) order"
* status = #active
* intent = #order
* code = observation-lab-research-codes-cs#lab-A "CBC panel"
* subject = Reference(Patient/example-salim)
* requester = Reference(Practitioner/example-practitioner)
* authoredOn = "2025-11-04T08:00:00Z"
* specimen[0] = Reference(Specimen/specimen-example-blood)


Instance: example-salim
InstanceOf: UZCorePatient
Description: "Example of a patient named Salim"
Usage: #example
* language = #ru
* identifier[nationalId]
  * value = "30211975910033"
* identifier[passportLocal]
  * value = "AC1234567"
* identifier[passportInternational]
  * value = "AA1234567"
* identifier[birthCertificate]
  * value = "I-МЯ №123456"
* identifier[driversLicense]
  * value = "AAA123456"
* identifier[diplomaticPassport]
  * value = "D1234567"
* identifier[healthCardId]
  * value = "01234567890123"
* identifier[militaryId]
  * value = "ВБ1234567"
* identifier[penitentiaryInstitution]
  * value = "УИН123456789012"
* active = true
* name
  * use = #usual
  * text = "Усманов Салим Салиевич"
  * family = "Усманов"
  * given = "Салим"
  * suffix = "Салиевич"
* telecom
  * system = #phone
  * use = #mobile
  * rank = 1
  * period.start = "2021-05-13"
* birthDate = "1994-01-27"
* address
  * use = #home
  * type = #postal
  * line = "ул.Муминова 4"
  * country = "182"
  * district = "1703202"
  * city = "22070013"
  * period.start = "1999-04-06"
* gender = #male
* contact
  * relationship = $v2-0131#N "Next-of-Kin"
  * name.text = "Ваисов Раис"
  * gender = #male
* maritalStatus = $v3-MaritalStatus#W "Вдовец, вдова"
* extension[nationality].extension[code].valueCodeableConcept = $nationality-cs#44 "УЗБЕК/УЗБЕЧКА"
* extension[managingOrganizationAttachment].valueDate = "2024-03-15"

Instance: example-patient-john
InstanceOf: UZCorePatient
Usage: #example
Title: "Example Patient"
Description: "Example patient registered in the DHIS information system."

* identifier[nationalId]
  * value = "12345678901234"

* active = false

* name
  * use = #official
  * text = "John Smith"
  * family = "Deera"
  * given = "John"

* gender = #unknown

* birthDate = "2026-03-13"

* address[uzAddress]
  * use = #temp
  * type = #physical
  * text = "Iltifot MFY, 58-Harbiy shaharcha mavzesi, 53 Uy, 104 Kvartira"
  * city = "104-0116"
  * district = "1726290"
  * state = "1726"
  * country = "UZ"

* managingOrganization = Reference(example-organization)


Instance: example-organization
InstanceOf: UZCoreOrganization
Usage: #example
Title: "Example Organization"
Description: "Example organization representing a tuberculosis treatment facility referenced by DHIS resources."

* name = "Respublika onkologiya markazi"


Instance: practitionerrole-001
InstanceOf: UZCorePractitionerRole
Usage: #example
Description: "Example practitioner role linking a clinician to a tuberculosis treatment facility."
Title: "Practitioner Role Example"

* language = #uz
* code = $position-and-profession-cs#2212.125 "Vrach ftiziatr"
* practitioner = Reference(Practitioner/example-practitioner)
* organization = Reference(Organization/example-organization)


Instance: example-dhis-encounter
InstanceOf: UZCoreEncounter
Usage: #example
Title: "Encounter Example"
Description: "Example encounter representing a tuberculosis patient's inpatient admission."

* status = #completed

* class = $v3-ActCode#IMP "inpatient encounter"

* type[nationalType] = EncounterTypeCS#mserv-0001-00004 "Treatment services"

* subject = Reference(example-patient-john)

* actualPeriod.start = "2026-02-12T08:00:00+05:00"
* actualPeriod.end = "2026-02-18T14:00:00+05:00"

* participant[0].type = $v3-ParticipationType#ATND "attender"

* participant[0].period.start = "2026-02-12T08:00:00+05:00"
* participant[0].period.end = "2026-02-18T14:00:00+05:00"

* participant[0].actor = Reference(example-practitioner)

* diagnosis[0].condition = Reference(example-tbc-diagnosis)

* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"

Instance: example-practitionerrole
InstanceOf: UZCorePractitionerRole
Title: "Example PractitionerRole"
Description: "General practitioner role at the example organization"
Usage: #example
* language = #uz
* active = true
* practitioner = Reference(Practitioner/example-practitioner)
* organization = Reference(Organization/example-organization)
* code = $position-and-profession-cs#2211.1 "Umumiy amaliyot vrachi"
* specialty = $profession-specialization-cs#394814009 "Umumiy amaliyot"

Instance: example-headache
InstanceOf: UZCoreCondition
Title: "Example Uz Core Condition - Headache"
Description: "Headache documented for Salim during an outpatient visit"
Usage: #example
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* severity = $sct#255604002 "Mild"
* code = $icd-10#R51 "Headache"
* extension[diagnosisType].valueCodeableConcept = diagnosis-type-cs#gencl-0001-00001 "Diagnosis of the referring institution"
* bodySite = $sct#69536005 "Head structure"
* subject = Reference(example-salim)
* onsetDateTime = "2025-07-25"
* recordedDate = "2025-07-29"
* participant
  * actor = Reference(example-practitioner)
  * function = $provenance-participant-type#author "Author"
* note
  * text = "Patient complained of mild headache for two days. Condition resolved after rest and hydration."

Instance: example-location
InstanceOf: UZCoreLocation
Usage: #example
Title: "Example Location"
Description: "City hospital where the outpatient visit took place"
* language = #uz
* status = #active
* mode = #instance
* name = "Toshkent shahar 1-sonli shifoxona"
* address.text = "Toshkent shahar, Chilonzor tumani, Katta Qo'yliq 45"

Instance: example-encounter
InstanceOf: UZCoreEncounter
Title: "Example Encounter"
Description: "Outpatient visit at which Salim's headache was assessed"
Usage: #example
* status = #completed "Completed"
* class = $v3-ActCode#AMB "Ambulatory"
* priority = $v3ActPriority#R "Routine"
* type[0] = encounter-type-cs#mserv-0001-00004 "Treatment services"
* subject = Reference(example-salim)
* subjectStatus = encounter-subject-status-cs#gencl-0003-00001 "Awake"

* participant.type = $v3-ParticipationType#ATND "attender"
* participant.actor = Reference(PractitionerRole/example-practitionerrole)
* participant.period
  * start = "2025-07-29T10:00:00Z"
  * end = "2025-07-29T11:00:00Z"

* reason[0]
  * use = encounter-reason-use-cs#mserv-0002-00001 "Disease"
  * value = Reference(Condition/example-headache)

* actualPeriod
  * start = "2025-07-29T10:00:00Z"
  * end = "2025-07-29T11:00:00Z"

* plannedStartDate = "2025-07-29T10:00:00Z"
* plannedEndDate = "2025-07-29T11:00:00Z"

* diagnosis[0].condition = Reference(Condition/example-headache)
* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"

* location[0].location = Reference(example-location)
* location[0].status = #completed

Instance: example-healthcareservice
InstanceOf: UZCoreHealthcareService
Title: "Example HealthcareService"
Description: "Immunohistochemistry service offered by an oncology centre"
Usage: #example
* active = true
* providedBy = Reference(Organization/example-organization)
* category.coding[dhpCategory]
  * code = #cancr0013.00000
* type.coding[dhpService]
  * code = #cancr0013.00001
* language = #uz
* name = "IHC-ga xos"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #ru
    * extension[content][+]
      * valueString = "ИГХ специфические"
  * extension[translation][+]
    * extension[lang][0]
      * valueCode = #kaa
    * extension[content][+]
      * valueString = "IHC ushın arnawlı"

Instance: example-narcology-center
InstanceOf: UZCoreOrganization
Title: "Example Narcology Centre"
Description: "Republican Centre for Mental Health and Narcology, which keeps the narcology registry"
Usage: #example

* name = "Respublika ruhiy salomatlik va narkologiya markazi"