Instance: example-prescription-organization
InstanceOf: UZCoreOrganization
Usage: #example
Title: "Prescription Organization Example"
Description: "Example outpatient organization used by the prescription workflow examples."
* name = "Example family polyclinic"

Instance: example-prescription-patient
InstanceOf: UZCorePatient
Usage: #example
Title: "Prescription Patient Example"
Description: "Example patient used by the prescription workflow examples."
* identifier[nationalId]
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/ni"
  * value = "31234567890123"
  * use = #official
* name
  * use = #official
  * text = "Aziza Karimova"
  * family = "Karimova"
  * given = "Aziza"
* gender = #female
* birthDate = "1980-05-12"

Instance: example-prescriber
InstanceOf: UZCorePractitioner
Usage: #example
Title: "Prescription Prescriber Example"
* active = true
* name
  * use = #official
  * family = "Abdullayev"
  * given = "Kamol"

Instance: example-prescription-reviewer
InstanceOf: UZCorePractitioner
Usage: #example
Title: "Prescription Reviewer Example"
* active = true
* name
  * use = #official
  * family = "Usmanova"
  * given = "Dilnoza"

Instance: example-prescription-pharmacist
InstanceOf: UZCorePractitioner
Usage: #example
Title: "Prescription Pharmacist Example"
* active = true
* name
  * use = #official
  * family = "Nazarov"
  * given = "Aziz"

Instance: example-prescription-nurse
InstanceOf: UZCorePractitioner
Usage: #example
Title: "Prescription Nurse Example"
* active = true
* name
  * use = #official
  * family = "Raxmatova"
  * given = "Malika"

Instance: example-prescriber-role
InstanceOf: UZCorePractitionerRole
Usage: #example
Title: "Prescription Prescriber Role Example"
* active = true
* practitioner = Reference(example-prescriber)
* organization = Reference(example-prescription-organization)
* code = $position-and-profession-cs#2211.1 "General practitioner"

Instance: example-prescription-reviewer-role
InstanceOf: UZCorePractitionerRole
Usage: #example
Title: "Prescription Reviewer Role Example"
* active = true
* practitioner = Reference(example-prescription-reviewer)
* organization = Reference(example-prescription-organization)
* code = $position-and-profession-cs#2211.1 "General practitioner"

Instance: example-pharmacist-role
InstanceOf: UZCorePractitionerRole
Usage: #example
Title: "Prescription Pharmacist Role Example"
* active = true
* practitioner = Reference(example-prescription-pharmacist)
* organization = Reference(example-prescription-organization)
* code = $position-and-profession-cs#2262.13 "Pharmacist"

Instance: example-nurse-role
InstanceOf: UZCorePractitionerRole
Usage: #example
Title: "Prescription Nurse Role Example"
* active = true
* practitioner = Reference(example-prescription-nurse)
* organization = Reference(example-prescription-organization)
* code = $position-and-profession-cs#2221.3 "Medical nurse with higher education"

Instance: example-prescription-encounter
InstanceOf: UZCoreEncounter
Usage: #example
Title: "Prescription Encounter Example"
Description: "Example outpatient encounter in which the prescription is authored."
* status = #completed
* class = $v3-ActCode#AMB "ambulatory"
* type[nationalType] = $encounter-type-cs#mserv-0001-00004 "Treatment services"
* subject = Reference(example-prescription-patient)
* participant.type = $v3-ParticipationType#ATND "attender"
* participant.actor = Reference(example-prescriber-role)
* actualPeriod
  * start = "2026-09-17T08:30:00+05:00"
  * end = "2026-09-17T09:30:00+05:00"

Instance: example-prescription-condition
InstanceOf: UZCoreCondition
Usage: #example
Title: "Prescription Clinical Indication Example"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#J06.9 "Acute upper respiratory infection, unspecified"
* subject = Reference(example-prescription-patient)
* recordedDate = "2026-09-17T08:45:00+05:00"
* participant.actor = Reference(example-prescriber-role)

Instance: example-reimbursement-condition
InstanceOf: UZCoreCondition
Usage: #example
Title: "Prescription Reimbursement Diagnosis Example"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#E11.9 "Type 2 diabetes mellitus : Without complications"
* subject = Reference(example-prescription-patient)
* recordedDate = "2026-09-17T08:45:00+05:00"
* participant.actor = Reference(example-prescriber-role)

Instance: example-prescription-medication
InstanceOf: PrescriptionMedication
Usage: #example
Title: "Prescription Medication Example"
Description: "Paracetamol tablets selected from the DMED medication dictionary."
* meta.source = $dmed-prescription-source
* language = #en
* identifier[dmedMedication].value = "inn-005325-form-TAB101"
* code = $atc#N02BE01 "Paracetamol"
* status = #active
* doseForm = $medication-doseform-cs#TAB101 "tablets"

Instance: example-ordinary-prescription
InstanceOf: PrescriptionMedicationRequest
Usage: #example
Title: "Ordinary Prescription Example"
Description: "An ordinary prescription for one tablet three times a day for 30 days, matching the calculation example in the Prescription source document."
* meta.source = $dmed-prescription-source
* identifier[dmedPrescription].value = "A00012076"
* identifier[dmedPrescriptionUUID].value = "8fe0325e-79bb-4f0c-9e8a-3f47523578d1"
* status = #active
* category = $medicationrequest-admin-location#outpatient "Outpatient"
* medication = Reference(example-prescription-medication)
* subject = Reference(Patient/example-prescription-patient) "Example patient"
* encounter = Reference(Encounter/example-prescription-encounter) "Example outpatient encounter"
* authoredOn = "2026-09-17T09:00:00+05:00"
* requester = Reference(PractitionerRole/example-prescriber-role) "Family doctor"
* reason = Reference(Condition/example-prescription-condition) "Clinical indication"
* effectiveDosePeriod.start = "2026-09-17"
* effectiveDosePeriod.end = "2026-10-16"
* dosageInstruction[0]
  * patientInstruction = "Take one tablet three times a day for 30 days."
  * timing.repeat
    * frequency = 3
    * period = 1
    * periodUnit = #d
  * route = $sct#26643006 "Oral route"
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "tablet"
    * system = $ucum
    * code = #1
* dispenseRequest
  * quantity
    * value = 90
    * unit = "tablet"
    * system = $ucum
    * code = #1
  * expectedSupplyDuration
    * value = 30
    * unit = "day"
    * system = $ucum
    * code = #d
  * validityPeriod
    * start = "2026-09-17"
    * end = "2026-12-15"

Instance: example-reimbursement-prescription
InstanceOf: PrescriptionMedicationRequest
Usage: #example
Title: "Reimbursement Prescription Example"
Description: "A 30-day reimbursement prescription awaiting reviewer confirmation."
* meta.source = $dmed-prescription-source
* identifier[dmedPrescription].value = "R00012077"
* identifier[dmedPrescriptionUUID].value = "1ddb576e-7ced-4d26-98af-3a9560eb02f3"
* status = #active
* category[0] = $medicationrequest-admin-location#outpatient "Outpatient"
* category[+] = $medication-request-order-type-cs#rembr-0001-00001 "Rembursatsiyali buyurtma"
* medication = Reference(example-prescription-medication)
* subject = Reference(Patient/example-prescription-patient) "Example patient"
* encounter = Reference(Encounter/example-prescription-encounter) "Example outpatient encounter"
* authoredOn = "2026-09-17T09:15:00+05:00"
* requester = Reference(PractitionerRole/example-prescriber-role) "Family doctor"
* reason = Reference(Condition/example-reimbursement-condition) "Diagnosis covered by the reimbursement programme"
* effectiveDosePeriod.start = "2026-09-17"
* effectiveDosePeriod.end = "2026-10-16"
* dosageInstruction[0]
  * patientInstruction = "Take one tablet once a day for 30 days."
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#26643006 "Oral route"
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "tablet"
    * system = $ucum
    * code = #1
* dispenseRequest
  * quantity
    * value = 30
    * unit = "tablet"
    * system = $ucum
    * code = #1
  * expectedSupplyDuration
    * value = 30
    * unit = "day"
    * system = $ucum
    * code = #d
  * validityPeriod
    * start = "2026-09-17"
    * end = "2026-10-16"

Instance: example-prescription-approval-task
InstanceOf: PrescriptionApprovalTask
Usage: #example
Title: "Prescription Approval Task Example"
Description: "A reimbursement prescription waiting for review."
* meta.source = $dmed-prescription-source
* identifier.system = $dmed-prescription-id
* identifier.value = "R00012077-approval"
* status = #requested
* businessStatus = PrescriptionWorkflowStatusCS#review-pending "Awaiting reviewer confirmation"
* code = PrescriptionWorkflowActionCS#send-for-confirmation "Send for confirmation"
* focus = Reference(example-reimbursement-prescription)
* for = Reference(Patient/example-prescription-patient) "Example patient"
* authoredOn = "2026-09-17T09:16:00+05:00"
* lastModified = "2026-09-17T09:16:00+05:00"
* requester = Reference(PractitionerRole/example-prescriber-role) "Family doctor"
* owner = Reference(PractitionerRole/example-prescription-reviewer-role) "Prescription reviewer"

Instance: example-prescription-dispense
InstanceOf: PrescriptionMedicationDispense
Usage: #example
Title: "Prescription Dispense Example"
Description: "An allowed partial dispense of 80 tablets against an ordinary prescription for 90 tablets."
* meta.source = $dmed-prescription-source
* identifier[dmedDispense].value = "DISP-A00012076-01"
* status = #completed
* medication = Reference(example-prescription-medication)
* subject = Reference(Patient/example-prescription-patient) "Example patient"
* performer.actor = Reference(PractitionerRole/example-pharmacist-role) "Example pharmacist"
* authorizingPrescription = Reference(example-ordinary-prescription)
* quantity
  * value = 80
  * unit = "tablet"
  * system = $ucum
  * code = #1
* recorded = "2026-09-18T10:40:00+05:00"
* whenHandedOver = "2026-09-18T10:40:00+05:00"
* receiver = Reference(Patient/example-prescription-patient) "Example patient"

Instance: example-prescription-administration
InstanceOf: PrescriptionMedicationAdministration
Usage: #example
Title: "Prescription Medication Administration Example"
Description: "A medication dose administered by healthcare personnel."
* meta.source = $dmed-prescription-source
* identifier[dmedAdministration].value = "ADM-A00012076-01"
* status = #completed
* medication = Reference(example-prescription-medication)
* subject = Reference(Patient/example-prescription-patient) "Example patient"
* encounter = Reference(Encounter/example-prescription-encounter) "Example encounter"
* occurenceDateTime = "2026-09-18T08:00:00+05:00"
* recorded = "2026-09-18T08:01:00+05:00"
* performer.actor = Reference(PractitionerRole/example-nurse-role) "Example nurse"
* request = Reference(example-ordinary-prescription)
* dosage
  * text = "One tablet administered orally"
  * route = $sct#26643006 "Oral route"
  * dose
    * value = 1
    * unit = "tablet"
    * system = $ucum
    * code = #1

Instance: example-prescription-signature
InstanceOf: PrescriptionProvenance
Usage: #example
Title: "Prescription Signature Provenance Example"
Description: "Digital signature of a specific prescription version."
* meta.source = $dmed-prescription-source
* target = Reference(example-ordinary-prescription)
* occurredDateTime = "2026-09-17T09:01:00+05:00"
* recorded = "2026-09-17T09:01:05+05:00"
* activity = PrescriptionWorkflowActionCS#sign "Sign prescription"
* patient = Reference(Patient/example-prescription-patient) "Example patient"
* agent
  * type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
  * who = Reference(PractitionerRole/example-prescriber-role) "Family doctor"
* signature
  * type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
  * when = "2026-09-17T09:01:05+05:00"
  * who = Reference(PractitionerRole/example-prescriber-role) "Family doctor"
  * targetFormat = #application/fhir+json
  * sigFormat = #application/jose
  * data = "ZXhhbXBsZS1zaWduYXR1cmU="

Instance: example-prescription-operation-outcome
InstanceOf: OperationOutcome
Usage: #example
Title: "Prescription Business Rule Error Example"
Description: "OperationOutcome returned when a DMED terminology value has no approved crosswalk."
* issue.severity = #error
* issue.code = #business-rule
* issue.details = PrescriptionErrorCS#terminology-crosswalk-not-found "Terminology crosswalk not found"
* issue.diagnostics = "No approved mapping exists for the supplied DMED medication dictionary value."
* issue.expression = "Bundle.entry[1].resource.medication"

Instance: example-prescription-transaction
InstanceOf: Bundle
Usage: #example
Title: "Prescription Transaction Example"
Description: "Atomic creation of a medication, an ordinary prescription and its signature provenance."
* type = #transaction
* timestamp = "2026-09-17T09:01:05+05:00"
* entry[0]
  * fullUrl = "https://example.org/fhir/Medication/example-prescription-medication"
  * resource = example-prescription-medication
  * request
    * method = #POST
    * url = "Medication"
    * ifNoneExist = "identifier=https://dhp.uz/fhir/core/sid/medication/uz/dmed|inn-005325-form-TAB101"
* entry[+]
  * fullUrl = "https://example.org/fhir/MedicationRequest/example-ordinary-prescription"
  * resource = example-ordinary-prescription
  * request
    * method = #POST
    * url = "MedicationRequest"
    * ifNoneExist = "identifier=https://dhp.uz/fhir/core/sid/doc/uz/dmed-prescription|A00012076"
* entry[+]
  * fullUrl = "https://example.org/fhir/Provenance/example-prescription-signature"
  * resource = example-prescription-signature
  * request
    * method = #POST
    * url = "Provenance"
