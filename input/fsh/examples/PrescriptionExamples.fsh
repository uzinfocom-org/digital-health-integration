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
Description: "Paracetamol tablets: a DMED trade name with its Pharmaceutical Committee registry identifier."
* meta.source = $dmed-prescription-source
* language = #en
* identifier[dmedMedication].value = "48210"
* identifier[uzpharmBoxGroupID].value = "102345"
* code = $atc#N02BE01 "Paracetamol"
* status = #active
* doseForm = $medication-doseform-cs#TAB101 "tablets"

Instance: example-prescription-medication-batch
InstanceOf: PrescriptionMedication
Usage: #example
Title: "Prescription Dispensed Batch Example"
Description: "The batch of paracetamol tablets actually dispensed, shared by all dispenses of this batch."
* meta.source = $dmed-prescription-source
* language = #en
* identifier[dmedMedication].value = "48210"
* identifier[uzpharmBoxGroupID].value = "102345"
* code = $atc#N02BE01 "Paracetamol"
* status = #active
* doseForm = $medication-doseform-cs#TAB101 "tablets"
* batch
  * lotNumber = "PCM-0926"
  * expirationDate = "2028-08-31"

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
* authoredOn = "2026-09-17T09:00:00+05:00"
* requester = Reference(PractitionerRole/example-prescriber-role) "Family doctor"
* reason
  * concept = $icd-10#E11.9 "Type 2 diabetes mellitus without complications"
  * reference = Reference(Condition/example-prescription-condition) "Clinical indication"
* effectiveDosePeriod.start = "2026-09-17"
* effectiveDosePeriod.end = "2026-10-16"
* dosageInstruction[0]
  * patientInstruction = "Take one tablet three times a day for 30 days."
  * timing.repeat
    * frequency = 3
    * period = 1
    * periodUnit = #d
    * boundsDuration
      * value = 30
      * unit = "day"
      * system = $ucum
      * code = #d
  * route = $sct#26643006 "Oral route"
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "piece"
    * system = $medication-total-volume-local-units-cs
    * code = #piece
* dispenseRequest
  * quantity
    * value = 90
    * unit = "piece"
    * system = $medication-total-volume-local-units-cs
    * code = #piece
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
    * boundsDuration
      * value = 30
      * unit = "day"
      * system = $ucum
      * code = #d
  * route = $sct#26643006 "Oral route"
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "piece"
    * system = $medication-total-volume-local-units-cs
    * code = #piece
* dispenseRequest
  * quantity
    * value = 30
    * unit = "piece"
    * system = $medication-total-volume-local-units-cs
    * code = #piece
  * expectedSupplyDuration
    * value = 30
    * unit = "day"
    * system = $ucum
    * code = #d
  * validityPeriod
    * start = "2026-09-17"
    * end = "2026-10-16"

Instance: example-prescription-dispense
InstanceOf: PrescriptionMedicationDispense
Usage: #example
Title: "Prescription Dispense Example"
Description: "An allowed partial dispense of 80 tablets from one batch against an ordinary prescription for 90 tablets."
* meta.source = $dmed-prescription-source
* identifier[dmedDispense].value = "DISP-A00012076-01"
* identifier[globalTradeItemID].value = "09506000134352"
// Illustrative package codes, not production marking codes.
* identifier[markingID][0].value = "010950600013435221DEMO-PACK-001"
* identifier[markingID][1].value = "010950600013435221DEMO-PACK-002"
* status = #completed
* category = $medicationdispense-admin-location#outpatient "Outpatient"
* medication = Reference(example-prescription-medication-batch)
* subject = Reference(Patient/example-prescription-patient) "Example patient"
* performer.actor = Reference(PractitionerRole/example-pharmacist-role) "Example pharmacist"
* authorizingPrescription = Reference(example-ordinary-prescription)
* quantity
  * value = 80
  * unit = "piece"
  * system = $medication-total-volume-local-units-cs
  * code = #piece
* recorded = "2026-09-18T10:40:00+05:00"
* whenHandedOver = "2026-09-18T10:40:00+05:00"
* receiver = Reference(Patient/example-prescription-patient) "Example patient"

Instance: example-prescription-dispense-declined
InstanceOf: PrescriptionMedicationDispense
Usage: #example
Title: "Prescription Declined Dispense Example"
Description: "A pharmacy refusal to dispense because the product is unavailable; the prescription stays active."
* meta.source = $dmed-prescription-source
* identifier[dmedDispense].value = "DISP-A00012076-02"
* status = #declined
* notPerformedReason.concept = $medicationdispense-status-reason#frr04 "Product unavailable"
* category = $medicationdispense-admin-location#outpatient "Outpatient"
* medication = Reference(example-prescription-medication)
* subject = Reference(Patient/example-prescription-patient) "Example patient"
* performer.actor = Reference(PractitionerRole/example-pharmacist-role) "Example pharmacist"
* authorizingPrescription = Reference(example-ordinary-prescription)
* recorded = "2026-09-19T09:15:00+05:00"

Instance: example-prescription-administration
InstanceOf: PrescriptionMedicationAdministration
Usage: #example
Title: "Prescription Medication Administration Example"
Description: "A medication dose from a DMED treatment course administered by healthcare personnel."
* meta.source = $dmed-prescription-source
* identifier[dmedAdministration].value = "ADM-A00012076-01"
* status = #completed
* medication = Reference(example-prescription-medication)
* subject = Reference(Patient/example-prescription-patient) "Example patient"
* occurenceDateTime = "2026-09-18T08:00:00+05:00"
* recorded = "2026-09-18T08:01:00+05:00"
* performer.actor = Reference(PractitionerRole/example-nurse-role) "Example nurse"
* dosage
  * text = "One tablet administered orally"
  * route = $sct#26643006 "Oral route"
  * dose
    * value = 1
    * unit = "piece"
    * system = $medication-total-volume-local-units-cs
    * code = #piece

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

RuleSet: PrescriptionExampleOrdinaryBody
* meta.source = $dmed-prescription-source
* category = $medicationrequest-admin-location#outpatient "Outpatient"
* medication = Reference(example-prescription-medication)
* subject = Reference(Patient/example-prescription-patient) "Example patient"
* requester = Reference(PractitionerRole/example-prescriber-role) "Family doctor"
* reason
  * concept = $icd-10#E11.9 "Type 2 diabetes mellitus without complications"
  * reference = Reference(Condition/example-prescription-condition) "Clinical indication"
* dosageInstruction[0]
  * patientInstruction = "Take one tablet three times a day for 30 days."
  * timing.repeat
    * frequency = 3
    * period = 1
    * periodUnit = #d
    * boundsDuration
      * value = 30
      * unit = "day"
      * system = $ucum
      * code = #d
  * route = $sct#26643006 "Oral route"
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "piece"
    * system = $medication-total-volume-local-units-cs
    * code = #piece
* dispenseRequest
  * quantity
    * value = 90
    * unit = "piece"
    * system = $medication-total-volume-local-units-cs
    * code = #piece
  * expectedSupplyDuration
    * value = 30
    * unit = "day"
    * system = $ucum
    * code = #d

Instance: example-prescription-approval
InstanceOf: PrescriptionProvenance
Usage: #example
Title: "Prescription Approval Provenance Example"
Description: "The clinic reviewer approves a reimbursement prescription in DMED."
* meta.source = $dmed-prescription-source
* target = Reference(example-reimbursement-prescription)
* occurredDateTime = "2026-09-17T11:20:00+05:00"
* recorded = "2026-09-17T11:20:02+05:00"
* activity = PrescriptionWorkflowActionCS#approve "Approve prescription"
* patient = Reference(Patient/example-prescription-patient) "Example patient"
* agent
  * type = $provenance-participant-type#verifier "Verifier"
  * who = Reference(PractitionerRole/example-prescription-reviewer-role) "Prescription reviewer"

Instance: example-prescription-on-hold
InstanceOf: PrescriptionMedicationRequest
Usage: #example
Title: "Prescription Returned for Revision Example"
Description: "A reimbursement prescription the clinic reviewer returned to the doctor for revision."
* meta.source = $dmed-prescription-source
* identifier[dmedPrescription].value = "R00012078"
* status = #on-hold
* statusReason.text = "Уточните дозировку"
* category[0] = $medicationrequest-admin-location#outpatient "Outpatient"
* category[+] = $medication-request-order-type-cs#rembr-0001-00001 "Rembursatsiyali buyurtma"
* medication = Reference(example-prescription-medication)
* subject = Reference(Patient/example-prescription-patient) "Example patient"
* authoredOn = "2026-09-17T09:20:00+05:00"
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
    * boundsDuration
      * value = 30
      * unit = "day"
      * system = $ucum
      * code = #d
  * route = $sct#26643006 "Oral route"
  * doseAndRate[0].doseQuantity
    * value = 1
    * unit = "piece"
    * system = $medication-total-volume-local-units-cs
    * code = #piece
* dispenseRequest
  * quantity
    * value = 30
    * unit = "piece"
    * system = $medication-total-volume-local-units-cs
    * code = #piece
  * expectedSupplyDuration
    * value = 30
    * unit = "day"
    * system = $ucum
    * code = #d
  * validityPeriod
    * start = "2026-09-17"
    * end = "2026-10-16"

Instance: example-prescription-revision-request
InstanceOf: PrescriptionProvenance
Usage: #example
Title: "Prescription Revision Request Provenance Example"
Description: "The clinic reviewer returns a reimbursement prescription for revision."
* meta.source = $dmed-prescription-source
* target = Reference(example-prescription-on-hold)
* occurredDateTime = "2026-09-17T11:05:00+05:00"
* recorded = "2026-09-17T11:05:02+05:00"
* activity = PrescriptionWorkflowActionCS#request-revision "Request revision"
* patient = Reference(Patient/example-prescription-patient) "Example patient"
* agent
  * type = $provenance-participant-type#verifier "Verifier"
  * who = Reference(PractitionerRole/example-prescription-reviewer-role) "Prescription reviewer"

Instance: example-prescription-cancelled
InstanceOf: PrescriptionMedicationRequest
Usage: #example
Title: "Cancelled Prescription Example"
Description: "An ordinary prescription cancelled by the doctor because of a medical contraindication."
* insert PrescriptionExampleOrdinaryBody
* identifier[dmedPrescription].value = "A00012079"
* status = #cancelled
* statusReason = $sct#438833006 "Administration of medication contraindicated"
* statusReason.text = "Аллергия на парацетамол в анамнезе"
* statusChanged = "2026-09-18T09:10:00+05:00"
* authoredOn = "2026-09-17T09:30:00+05:00"
* effectiveDosePeriod.start = "2026-09-17"
* effectiveDosePeriod.end = "2026-10-16"
* dispenseRequest.validityPeriod
  * start = "2026-09-17"
  * end = "2026-12-15"

Instance: example-prescription-cancellation
InstanceOf: PrescriptionProvenance
Usage: #example
Title: "Prescription Cancellation Provenance Example"
Description: "The doctor cancels a prescription."
* meta.source = $dmed-prescription-source
* target = Reference(example-prescription-cancelled)
* occurredDateTime = "2026-09-18T09:10:00+05:00"
* recorded = "2026-09-18T09:10:03+05:00"
* activity = PrescriptionWorkflowActionCS#cancel "Cancel prescription"
* patient = Reference(Patient/example-prescription-patient) "Example patient"
* agent
  * type = $provenance-participant-type#author "Author"
  * who = Reference(PractitionerRole/example-prescriber-role) "Family doctor"

Instance: example-prescription-renewed
InstanceOf: PrescriptionMedicationRequest
Usage: #example
Title: "Renewed Prescription Example"
Description: "A renewal: a new prescription with a new DMED number. DMED does not keep a link to the earlier prescription, so priorPrescription is not filled."
* insert PrescriptionExampleOrdinaryBody
* identifier[dmedPrescription].value = "A00012190"
* status = #active
* authoredOn = "2026-10-16T09:00:00+05:00"
* effectiveDosePeriod.start = "2026-10-16"
* effectiveDosePeriod.end = "2026-11-14"
* dispenseRequest.validityPeriod
  * start = "2026-10-16"
  * end = "2027-01-13"

Instance: example-prescription-administration-not-done
InstanceOf: PrescriptionMedicationAdministration
Usage: #example
Title: "Prescription Administration Not Done Example"
Description: "A scheduled dose from a DMED treatment course that was not given."
* meta.source = $dmed-prescription-source
* identifier[dmedAdministration].value = "ADM-A00012076-02"
* status = #not-done
* statusReason.text = "Пациент отказался от процедуры"
* medication = Reference(example-prescription-medication)
* subject = Reference(Patient/example-prescription-patient) "Example patient"
* occurenceDateTime = "2026-09-19T08:00:00+05:00"
* recorded = "2026-09-19T08:15:00+05:00"
* performer.actor = Reference(PractitionerRole/example-nurse-role) "Example nurse"
* dosage
  * text = "One tablet orally, not given"
  * route = $sct#26643006 "Oral route"
  * dose
    * value = 1
    * unit = "piece"
    * system = $medication-total-volume-local-units-cs
    * code = #piece

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
    * ifNoneExist = "identifier=https://uzpharminfo.uz/boxGroupId|102345&lot-number:missing=true"
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

Instance: example-prescription-dispense-transaction
InstanceOf: Bundle
Usage: #example
Title: "Prescription Dispense Transaction Example"
Description: "A dispense from one batch: the batch Medication is found or created by box group ID and lot number, then the dispense and its charge are created."
* type = #transaction
* timestamp = "2026-09-18T10:40:05+05:00"
* entry[0]
  * fullUrl = "https://example.org/fhir/Medication/example-prescription-medication-batch"
  * resource = example-prescription-medication-batch
  * request
    * method = #POST
    * url = "Medication"
    * ifNoneExist = "identifier=https://uzpharminfo.uz/boxGroupId|102345&lot-number=PCM-0926"
* entry[+]
  * fullUrl = "https://example.org/fhir/MedicationDispense/example-prescription-dispense"
  * resource = example-prescription-dispense
  * request
    * method = #POST
    * url = "MedicationDispense"
    * ifNoneExist = "identifier=https://dhp.uz/fhir/core/sid/dispense/uz/dmed|DISP-A00012076-01"
* entry[+]
  * fullUrl = "https://example.org/fhir/ChargeItem/example-prescription-dispense-charge"
  * resource = example-prescription-dispense-charge
  * request
    * method = #POST
    * url = "ChargeItem"
    * ifNoneExist = "identifier=https://dhp.uz/fhir/core/sid/dispense/uz/dmed|DISP-A00012076-01"

Instance: example-prescription-transaction-response
InstanceOf: Bundle
Usage: #example
Title: "Prescription Transaction Response Example"
Description: "DHP response to the prescription transaction: the medication already existed, the prescription and its provenance were created."
* type = #transaction-response
* timestamp = "2026-09-17T09:01:06+05:00"
* entry[0].response
  * status = "200 OK"
  * location = "Medication/example-prescription-medication/_history/1"
* entry[+].response
  * status = "201 Created"
  * location = "MedicationRequest/example-ordinary-prescription/_history/1"
  * etag = "W/\"1\""
* entry[+].response
  * status = "201 Created"
  * location = "Provenance/example-prescription-signature/_history/1"
  * etag = "W/\"1\""

Instance: example-prescription-dispense-charge
InstanceOf: UZCoreChargeItem
Usage: #example
Title: "Prescription Dispense Charge Example"
Description: "Total sale amount of one DMED dispense line, separate from any reimbursement benefit."
* identifier
  * system = $dmed-dispense-id
  * value = "DISP-A00012076-01"
* status = #billable
* code = $sct#373784005 "Dispensing medication"
* subject = Reference(example-prescription-patient)
* service = Reference(example-prescription-dispense)
* totalPriceComponent
  * type = #base
  * amount
    * value = 32000
    * currency = #UZS
