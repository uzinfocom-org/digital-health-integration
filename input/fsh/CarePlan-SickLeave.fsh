Profile: SickLeaveCarePlan
Parent: CarePlan
Id: sick-leave-careplan
Title: "Sick Leave CarePlan"
Description: "FHIR R5 CarePlan profile representing a Sick Leave case (LN lifecycle)"
* insert SickLeaveContact
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* meta.versionId MS
* meta.versionId ^short = "Version of the sick leave (versionId)"
* meta.lastUpdated MS
* meta.lastUpdated ^short = "When the sick leave was last changed (updatedAt)"

* status MS
* status ^short = "active for opened and extended, completed for closed, revoked for cancelled"

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

* addresses ^slicing.discriminator.type = #exists
* addresses ^slicing.discriminator.path = "concept"
* addresses ^slicing.rules = #open
* addresses contains
    reason 0..1 MS and
    diagnosis 0..2 MS
* addresses[reason].concept 1..1
* addresses[reason].reference 0..0
* addresses[reason] from CarePlanReasonVS (required)
* addresses[reason] ^short = "Reason for the incapacity (reason)"
* addresses[diagnosis] only CodeableReference(SickLeaveCondition)
* addresses[diagnosis].concept 0..0
* addresses[diagnosis].reference 1..1
* addresses[diagnosis] ^short = "Preliminary and final diagnosis (diagnosis)"

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
