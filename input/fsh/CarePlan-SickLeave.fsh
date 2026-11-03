Profile: SickLeaveCarePlan
Parent: CarePlan
Id: sick-leave-careplan
Title: "Sick Leave CarePlan"
Description: "FHIR R5 CarePlan profile representing a Sick Leave case (LN lifecycle)"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* meta.versionId MS
* meta.versionId ^short = "Version of the sick leave (versionId)"
* meta.lastUpdated MS
* meta.lastUpdated ^short = "When the sick leave was last changed (updatedAt)"

* status MS
* status ^short = "active for opened and extended, completed for closed, revoked for cancelled"
* obeys slcp-1

* intent = #plan

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains code 1..1 MS
* identifier[code].system = "https://dhp.uz/fhir/core/sid/doc/uz/sickleave"
* identifier[code].value 1..1
* identifier[code] ^short = "Sick leave number (code)"

* category 1..1 MS
* category from SickLeaveCategoryVS (required)
* category ^short = "Document type (type)"

* subject 1..1 MS
* subject only Reference(UZCorePatient)
* subject ^short = "For whom the sick leave is open (patient)"

* created 0..1 MS
* created ^short = "When the sick leave was created (createdAt)"

* period 0..1 MS
* period ^short = "From the start of the first to the end of the last incapacity period (dates)"

* contributor 0..* MS
* contributor only Reference(UZCorePractitioner)
* contributor ^short = "Practitioner who issued the sick leave (practitioner)"

* custodian 0..1 MS
* custodian only Reference(UZCoreOrganization)
* custodian ^short = "Organization that issued the sick leave (organization)"

* addresses ^slicing.discriminator[0].type = #exists
* addresses ^slicing.discriminator[=].path = "reference"
* addresses ^slicing.discriminator[+].type = #value
* addresses ^slicing.discriminator[=].path = "concept.coding.system"
* addresses ^slicing.rules = #open
* addresses contains
    reason 0..1 MS and
    diagnosis 0..2 MS and
    familyDiagnosis 0..2 MS
* addresses[reason].concept 1..1
* addresses[reason].concept.coding 1..1
* addresses[reason].concept.coding.system = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs"
* addresses[reason].reference 0..0
* addresses[reason] from CarePlanReasonVS (required)
* addresses[reason] ^short = "Reason for the incapacity (reason)"
* addresses[diagnosis] only CodeableReference(SickLeaveCondition)
* addresses[diagnosis].concept 0..0
* addresses[diagnosis].reference 1..1
* addresses[diagnosis] ^short = "Preliminary and final diagnosis of the patient (diagnosis)"
* addresses[familyDiagnosis].concept 1..1
* addresses[familyDiagnosis].concept.coding 1..1
* addresses[familyDiagnosis].concept.coding.system = "http://hl7.org/fhir/sid/icd-10"
* addresses[familyDiagnosis].reference 0..0
* addresses[familyDiagnosis] from ICD10VS (required)
* addresses[familyDiagnosis] ^short = "Diagnosis of the family member cared for, ICD-10 code (diagnosis)"
* addresses[familyDiagnosis] ^comment = "Used when the reason is FMC (care for a sick family member): the diagnosis belongs to the family member, not to the patient, so it is not a Condition of the patient. The name of the diagnosis goes in concept.text."

* extension contains
    WorkflowStatus named workflowStatus 1..1 MS and
    StatusHistory named statusHistory 0..* MS and
    IncapacityPeriod named incapacityPeriod 0..* MS and
    HeadPractitioner named headPractitioner 0..1 MS and
    RelatedPersonLink named relatedPerson 0..1 MS
* extension[workflowStatus] ^short = "Current status (status)"
* extension[statusHistory] ^short = "Status history (statuses)"
* extension[incapacityPeriod] ^short = "Incapacity period (dates)"
* extension[headPractitioner] ^short = "Chief physician who approves the sick leave (headPractitioner)"
* extension[relatedPerson] ^short = "Person related to the patient (relatedPerson)"
