Profile: SickLeaveCarePlan
Parent: CarePlan
Id: sick-leave-careplan
Title: "Sick Leave CarePlan"
Description: "FHIR R5 CarePlan profile representing a Sick Leave case (LN lifecycle)"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* identifier 0..1 MS
* identifier.system = "http://dhp.uz/NamingSystem/sickleave" (exactly)
* identifier.value 1..1

* category 1..1 MS
* category from SickLeaveCategoryVS (required)

* subject 1..1 MS
* subject only Reference(Patient or Group)
* subject ^short = "For whom the sick leave is open"

* created 0..1 MS
* period 0..1 MS

* contributor 0..* MS
* contributor only Reference(Practitioner or PractitionerRole or Organization or CareTeam)

* custodian 0..1 MS
* custodian only Reference(Practitioner or PractitionerRole or Organization or CareTeam)

* addresses 1..* MS
* addresses ^slicing.discriminator.type = #type
* addresses ^slicing.discriminator.path = "concept"
* addresses ^slicing.rules = #open

* addresses contains
    reason 0..1 MS and
    diagnosis 0..1 MS

* addresses[reason] MS
* addresses[reason] from CarePlanReasonVS (required)
* addresses[reason] ^short = "Причина открытия больничного листа"

* addresses[diagnosis] 1..1 MS
* addresses[diagnosis] ^short = "Diagnosis according to ICD-10"
* addresses[diagnosis] from ICD10VS (required)

* extension contains
    WorkflowStatus named workflowStatus 1..1 MS and
    StatusHistory named statusHistory 0..* MS and
    DiagnosisUse named diagnosisUse 0..1 MS and
    RelatedPersonLink named relatedPerson 0..1 MS