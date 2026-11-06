Profile: PrescriptionApprovalTask
Parent: Task
Id: prescription-approval-task
Title: "Prescription Approval Task"
Description: "Reviewer workflow for a reimbursement prescription. MedicationRequest.status remains the FHIR clinical status; Task.businessStatus carries review-pending, approved or revision-requested."
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert PrescriptionMetaSource

* identifier 1..* MS
* status MS
* businessStatus 1..1 MS
* businessStatus from PrescriptionWorkflowStatusVS (required)
* intent = #order
* code 1..1 MS
* code from PrescriptionWorkflowActionVS (required)
* focus 1..1 MS
* focus only Reference(PrescriptionMedicationRequest)
* for 1..1 MS
* for only Reference(UZCorePatient)
* authoredOn 1..1 MS
* lastModified 1..1 MS
* requester 1..1 MS
* requester only Reference(UZCorePractitionerRole)
* owner 1..1 MS
* owner only Reference(UZCorePractitionerRole)
* reason MS
* note MS
