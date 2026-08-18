Profile: SickLeaveCarePlan
Parent: CarePlan
Id: sick-leave-careplan
Title: "Sick Leave CarePlan"
Description: "FHIR R5 CarePlan profile representing a Sick Leave case (LN lifecycle)"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* intent = #plan

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains series 0..1 MS
* identifier[series].system = "https://dhp.uz/fhir/core/sid/doc/uz/sickleave"
* identifier[series].value 1..1

* category 1..1 MS
* category from SickLeaveCategoryVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)
* subject ^short = "For whom the sick leave is open"

* created 0..1 MS
* period 0..1 MS

* contributor 0..* MS
* contributor only Reference(Practitioner or PractitionerRole or Organization or CareTeam)

* custodian 0..1 MS
* custodian only Reference(Practitioner or PractitionerRole or Organization or CareTeam)

* addresses ^slicing.discriminator.type = #value
* addresses ^slicing.discriminator.path = "concept.coding.system"
* addresses ^slicing.rules = #open
* addresses contains
    reason 0..1 MS and
    diagnosis 0..1 MS
* addresses[reason].concept.coding.system = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs"
* addresses[reason] from CarePlanReasonVS (required)
* addresses[diagnosis].concept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* addresses[diagnosis] from ICD10VS (required)

* extension contains
    WorkflowStatus named workflowStatus 1..1 MS and
    StatusHistory named statusHistory 0..* MS and
    DiagnosisUse named diagnosisUse 0..1 MS and
    RelatedPersonLink named relatedPerson 0..1 MS