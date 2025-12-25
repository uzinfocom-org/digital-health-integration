Profile: CarePlanSickLeave
Parent: CarePlan
Id: careplan-sickleave
Title: "CarePlan – Sick Leave (FHIR R5)"
Description: "Electronic Sick Leave master resource"

* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains series 1..1

* identifier[series].system = "http://dhp.uz/NamingSystem/sickleave"
* identifier[series].value 1..1

* category 1..1
* category from SickLeaveCategoryVS (required)

* subject 1..1
* subject only Reference(Patient or Group)

* status 1..1
* status from CarePlanStatusVS (required)

* extension contains CarePlanStatusHistory named statusHistory 0..*
* extension contains CarePlanCustodian named custodian 0..1

* addresses 1..*
* addresses ^slicing.discriminator.type = #pattern
* addresses ^slicing.discriminator.path = "concept"
* addresses ^slicing.rules = #open


* addresses contains reason 1..1
* addresses contains diagnosis 1..*

* addresses[reason] only CodeableReference
* addresses[reason] from CarePlanReasonVS (required)

* addresses[diagnosis] only CodeableReference
* addresses[diagnosis] from ICD10VS (required)

* addresses[diagnosis].extension contains
    DiagnosisUseExtension named diagnosisUse 0..1

* created 1..1
* period 0..1

* contributor 1..*
* contributor only Reference(Practitioner or PractitionerRole or Organization or CareTeam)
