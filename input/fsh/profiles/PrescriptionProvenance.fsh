Profile: PrescriptionProvenance
Parent: Provenance
Id: prescription-provenance
Title: "Prescription Provenance"
Description: "Authorship, signature and workflow-event provenance for prescription resources. This integration profile is required because UZCoreProvenance 0.9.0 does not permit MedicationRequest as a target."
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert PrescriptionMetaSource

* target 1..* MS
* target only Reference(PrescriptionMedicationRequest or PrescriptionMedication or PrescriptionMedicationDispense or PrescriptionMedicationAdministration or Bundle)
* occurredDateTime 1..1 MS
* recorded 1..1 MS
* activity 1..1 MS
* activity from PrescriptionWorkflowActionVS (required)
* patient 1..1 MS
* patient only Reference(UZCorePatient)
* agent 1..* MS
* agent.type 1..1 MS
* agent.who 1..1 MS
* agent.who only Reference(UZCorePractitionerRole)
* signature MS
* signature.type 1..* MS
* signature.when 1..1 MS
* signature.who 1..1 MS
* signature.who only Reference(UZCorePractitionerRole)
* signature.targetFormat 1..1 MS
* signature.sigFormat 1..1 MS
* signature.data 1..1 MS
