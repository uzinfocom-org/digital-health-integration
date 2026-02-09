Profile: SickLeaveCarePlan
Parent: CarePlan
Id: sick-leave-careplan
Title: "Sick Leave CarePlan"
<<<<<<< HEAD
Description: "CarePlan profile for managing sick leave (bolnichny list) lifecycle"
* ^experimental = true

* category 1..1 MS
* category ^short = "The Careplan category"

=======
Description: "FHIR R5 CarePlan profile representing a Sick Leave case (LN lifecycle)"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* identifier 0..1 MS
* identifier.system = "http://dhp.uz/NamingSystem/sickleave" (exactly)
* identifier.value 1..1

* category 1..1 MS
* category from SickLeaveCategoryVS (required)

>>>>>>> 37883d3 (last changes added bu Sickleave)
* subject 1..1 MS
* subject only Reference(Patient or Group)
* subject ^short = "For whom the sick leave is open"

<<<<<<< HEAD
* created 1..1 MS
* created ^short = "Date when the sick leave was created"

* period 1..1 MS
* period ^short = "The period of validity of the sick leave"

* status 1..1 MS
* status ^short = "Sick leave status"
* status from CarePlanStatusVS

* extension contains SickLeaveStatusHistory named statusHistory 0..1 MS

* addresses 1..1 MS
* addresses ^slicing.discriminator.type = #pattern
=======
* created 0..1 MS
* period 0..1 MS

* contributor 0..* MS
* contributor only Reference(Practitioner or PractitionerRole or Organization or CareTeam)

* custodian 0..1 MS
* custodian only Reference(Practitioner or PractitionerRole or Organization or CareTeam)

* addresses 1..* MS
* addresses ^slicing.discriminator.type = #type
>>>>>>> 37883d3 (last changes added bu Sickleave)
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

<<<<<<< HEAD
* addresses[diagnosis].extension contains DiagnosisUse named diagnosisUse 0..1 MS

* identifier 1..1 MS
* identifier ^short = "Business ID of the sick leave"

* identifier.system = "http://dhp.uz/NamingSystem/sickleave"
* identifier.value 1..1 MS

* contributor 1..1 MS
* contributor ^short = "The person who issued the sick leave"

* contributor only Reference(
    Practitioner or
    PractitionerRole or
    Organization or
    CareTeam
)

* custodian 1..1 MS
* custodian ^short = "The designated person in charge of the sick leave"

* custodian only Reference(
    Practitioner or
    PractitionerRole or
    Device or
    Organization or
    CareTeam
)
=======
* extension contains
    WorkflowStatus named workflowStatus 1..1 MS and
    StatusHistory named statusHistory 0..* MS and
    DiagnosisUse named diagnosisUse 0..1 MS and
    RelatedPersonLink named relatedPerson 0..1 MS
>>>>>>> 37883d3 (last changes added bu Sickleave)
