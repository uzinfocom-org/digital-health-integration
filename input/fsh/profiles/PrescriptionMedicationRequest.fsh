Invariant: prescription-request-identifier
Description: "Exactly one DMED prescription business identifier is present"
Severity: #error
Expression: "identifier.where(system = 'https://dhp.uz/fhir/core/sid/doc/uz/dmed-prescription').count() = 1"

Invariant: prescription-outpatient-category
Description: "The prescription is categorised as outpatient"
Severity: #error
Expression: "category.coding.where(system = 'http://terminology.hl7.org/CodeSystem/medicationrequest-admin-location' and code = 'outpatient').exists()"

Invariant: prescription-reimbursement-reason
Description: "A reimbursement prescription has a clinical reason or diagnosis"
Severity: #error
Expression: "category.coding.where(system = 'https://terminology.dhp.uz/fhir/core/CodeSystem/medication-request-order-type-cs' and code = 'rembr-0001-00001').exists() implies reason.exists()"

Invariant: prescription-max-duration
Description: "A prescription, ordinary or reimbursement, supplies no more than 90 days"
Severity: #error
Expression: "dispenseRequest.expectedSupplyDuration.code = 'd' and dispenseRequest.expectedSupplyDuration.value <= 90"

Profile: PrescriptionMedicationRequest
Parent: UZCoreMedicationRequest
Id: prescription-medication-request
Title: "Prescription Medication Request"
Description: "Electronic prescription created in DMED. The profile separates FHIR clinical status from the approval business workflow represented by PrescriptionApprovalTask."
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert PrescriptionMetaSource
* obeys prescription-request-identifier and prescription-outpatient-category and prescription-reimbursement-reason and prescription-max-duration

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains dmedPrescription 1..1 MS and dmedPrescriptionUUID 0..1 MS
* identifier[dmedPrescription].use 1..1 MS
* identifier[dmedPrescription].use = #official
* identifier[dmedPrescription].type 1..1 MS
* identifier[dmedPrescription].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* identifier[dmedPrescription].system 1..1 MS
* identifier[dmedPrescription].system = $dmed-prescription-id
* identifier[dmedPrescription].value 1..1 MS
* identifier[dmedPrescriptionUUID].use 1..1 MS
* identifier[dmedPrescriptionUUID].use = #secondary
* identifier[dmedPrescriptionUUID].system 1..1 MS
* identifier[dmedPrescriptionUUID].system = $dmed-prescription-uuid
* identifier[dmedPrescriptionUUID].value 1..1 MS

* status MS
* statusReason MS
* statusChanged MS
* intent = #order
* category 1..* MS
* category ^short = "Always outpatient; a reimbursement prescription also has the UZ Core reimbursable order code rembr-0001-00001"
* medication only CodeableReference(PrescriptionMedication)
* subject MS
* encounter MS
* authoredOn 1..1 MS
* requester 1..1 MS
* reason MS
* extension[trustee] 0..1 MS

* effectiveDosePeriod 1..1 MS
* effectiveDosePeriod.start 1..1 MS
* effectiveDosePeriod.end 1..1 MS
* dosageInstruction 1..* MS
* dosageInstruction.patientInstruction MS
* dosageInstruction.timing 1..1 MS
* dosageInstruction.timing.repeat 1..1 MS
* dosageInstruction.timing.repeat.frequency 1..1 MS
* dosageInstruction.timing.repeat.period 1..1 MS
* dosageInstruction.timing.repeat.periodUnit 1..1 MS
* dosageInstruction.route 1..1 MS
* dosageInstruction.doseAndRate 1..* MS
* dosageInstruction.doseAndRate.doseQuantity 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity.value 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity.unit 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity.system 1..1 MS
* dosageInstruction.doseAndRate.doseQuantity.code 1..1 MS

* dispenseRequest 1..1 MS
* dispenseRequest.quantity 1..1 MS
* dispenseRequest.quantity.value 1..1 MS
* dispenseRequest.quantity.unit 1..1 MS
* dispenseRequest.quantity.system 1..1 MS
* dispenseRequest.quantity.code 1..1 MS
* dispenseRequest.expectedSupplyDuration 1..1 MS
* dispenseRequest.expectedSupplyDuration.value 1..1 MS
* dispenseRequest.expectedSupplyDuration.unit 1..1 MS
* dispenseRequest.expectedSupplyDuration.system 1..1 MS
* dispenseRequest.expectedSupplyDuration.system = "http://unitsofmeasure.org"
* dispenseRequest.expectedSupplyDuration.code 1..1 MS
* dispenseRequest.expectedSupplyDuration.code = #d
* dispenseRequest.validityPeriod 1..1 MS
* dispenseRequest.validityPeriod.start 1..1 MS
* dispenseRequest.validityPeriod.end 1..1 MS
