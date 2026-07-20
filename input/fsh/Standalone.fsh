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
* subject = Reference(Patient/example-hepatitis-patient)

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

Instance: example-hepatitis-patient
InstanceOf: UZCorePatient
Description: "Gepatit profili uchun Tolibjon To'lanboev misolida namuna"
Usage: #example

* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#UZ "Uzbekistan"
* identifier[nationalId]
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/ni"
  * value = "515050500505"
  * use = #official

* identifier[passportLocal]
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local"
  * value = "AB1234567"
  * use = #official

* name
  * use = #official
  * text = "To'lanboev Tolibjon"
  * family = "To'lanboyev"
  * given = "Tolibjon"

* gender = #male
* birthDate = "1990-02-01"

* address[uzAddress]
  * use = #home
  * type = #physical
  * text = "Iltifot MFY, 58-Harbiy shaharcha mavzesi, 53 Uy, 104 Kvartira"
  * city = #17150085
  * district = #1726262
  * state = #1726
  * country = "UZ"

// Instance Example
Instance: example-hepatitis-questionnaire
InstanceOf: Questionnaire
Description: "Hepatitis B and C treatment questionnaire"
Usage: #example

* id = "hepatitis-questionnaire"
* url = "https://dhp.uz/fhir/integrations/Questionnaire/hepatitis-questionnaire"
* version = "1.0.0"

* status = #active
* title = "HEPATITIS QUESTIONNAIRE"
* identifier.value = "HCV-HBV-QS-2026"

* item[0]
  * linkId = "grp-1"
  * text = "MAIN INFORMATION"
  * type = #group 

  * item[0]
    * linkId = "hx-tx-hcv-hbv"
    * text = "Has treatment for HCV/HBV been conducted in the past (in the patient's history)?"
    * type = #boolean

  * item[1]
    * linkId = "hx-tx-hcv-hbv-meds"
    * text = "What medications were taken against HCV/HBV?"
    * type = #string
    * enableWhen[0]
      * question = "hx-tx-hcv-hbv"
      * operator = #=
      * answerBoolean = true

* item[1]
  * linkId = "grp-pregnancy"
  * text = "Gynecological treatment / Pregnancy"
  * type = #group

  * item[0]
    * linkId = "pregnancy-trimester"
    * text = "Pregnancy duration (Homiladorlik muddati)"
    * type = #coding
    * answerOption[0].valueCoding = $sct#255246003 "First trimester"
    * answerOption[1].valueCoding = $sct#255247007 "Second trimester"
    * answerOption[2].valueCoding = $sct#255248002 "Third trimester"

// Instance Example 
Instance: example-hcv-response
InstanceOf: QuestionnaireResponse
Description: "Example of anamnesis responses completed by the patient for hepatitis B and C treatment questionnaire"
Usage: #example

* identifier
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:6f9b9d8e-3b7d-4d87-8f6e-123456789abc"

* status = #completed
* questionnaire = "https://dhp.uz/fhir/integrations/Questionnaire/hepatitis-questionnaire"
* subject = Reference(example-hepatitis-patient)
* authored = "2026-03-19T12:00:00Z"
* author = Reference(muratova-gulshoda-role)

* item[0]
  * linkId = "grp-1"
  * text = "MAIN INFORMATION"

  * item[0]
    * linkId = "hx-tx-hcv-hbv"
    * text = "Has treatment for HCV/HBV been conducted in the past (in the patient's history)?"
    * answer[0].valueBoolean = true

  * item[1]
    * linkId = "hx-tx-hcv-hbv-meds"
    * text = "What medications were taken against HCV/HBV?"
    * answer[0].valueString = "Sofosbuvir + Declatasvir"

* item[1]
  * linkId = "grp-pregnancy"
  * text = "Gynecological treatment / Pregnancy"

  * item[0]
    * linkId = "pregnancy-trimester"
    * text = "Pregnancy duration (Homiladorlik muddati)"
    * answer[0]
      * valueCoding = $sct#255246003 "First trimester"

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
