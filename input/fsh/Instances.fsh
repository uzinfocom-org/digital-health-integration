Instance: SickLeaveCarePlanExample
InstanceOf: SickLeaveCarePlan
Title: "Sick Leave CarePlan Example"
Description: "Example sick leave certificate with its full dated status history"

* identifier[series].system = "https://dhp.uz/fhir/core/sid/doc/uz/sickleave"
* identifier[series].value = "01ТШ 005591125"

* status = #completed
* intent = #plan

* subject = Reference(Patient/example)

* category = SickLeaveCategoryCS#mserv-0005-00001

* created = "2025-08-20"
* period.start = "2025-08-20"
* period.end = "2025-08-24"

* contributor = Reference(Practitioner/examplePractitioner)
* custodian = Reference(Practitioner/exampleCustodian)

* addresses[reason].concept = CarePlanReasonCS#emdoc-0001-0001
* addresses[diagnosis].concept = http://hl7.org/fhir/sid/icd-10#J11.0

* extension[workflowStatus].valueCode = #completed

// Full dated history: each past workflow step with the period it was active.
// Detailed workflowStatus codes; the coarse CarePlan.status is derivable via the crosswalk.
* extension[statusHistory][0].extension[status].valueCode = #emdoc-0002-0004
* extension[statusHistory][0].extension[period].valuePeriod.start = "2025-08-20"
* extension[statusHistory][0].extension[period].valuePeriod.end = "2025-08-20"

* extension[statusHistory][1].extension[status].valueCode = #active
* extension[statusHistory][1].extension[period].valuePeriod.start = "2025-08-20"
* extension[statusHistory][1].extension[period].valuePeriod.end = "2025-08-24"

* extension[statusHistory][2].extension[status].valueCode = #completed
* extension[statusHistory][2].extension[period].valuePeriod.start = "2025-08-24"

Instance: example
InstanceOf: Patient
Description: "Minimal example patient the sick leave is issued to"

* name[0].family = "Karimov"
* name[0].given[0] = "Ali"

Instance: examplePractitioner
InstanceOf: Practitioner
Description: "Example issuing doctor (contributor) for a sick leave"

* name[0].family = "Dr. Ivanov"
* name[0].given[0] = "Sergey"

Instance: exampleCustodian
InstanceOf: Practitioner
Description: "Example head of department (custodian) for a sick leave"

* name[0].family = "Dr. Petrov"
* name[0].given[0] = "Natalia"

Instance: SickLeaveRelatedPersonExample
InstanceOf: SickLeaveRelatedPerson
Usage: #example
Description: "Example related person cared for under a family-care sick leave"

* id = "relatedperson-01"
* patient = Reference(Patient/patient-example)
* name.family = "Boltayev"
* name.given[0] = "Damir"
* name.given[1] = "Ketmonovich"
* gender = #male
* extension[birthdate].valueDate = 1950-01-01

Instance: PatientExample
InstanceOf: Patient
Usage: #example
Description: "Minimal example patient referenced by the sick leave observation"

* id = "patient-example"
* name.family = "Karimov"
* name.given[0] = "Ali"
* gender = #male
* birthDate = 1990-05-15


Instance: SickLeaveObservationExample
InstanceOf: SickLeaveObservation
Usage: #example
Description: "Example sick leave observation carrying the additional attributes"

* id = "sickleave-observation-01"
* status = #final

* basedOn = Reference(SickLeaveCarePlanExample)
* subject = Reference(PatientExample)
* effectiveDateTime = 2025-08-20

* code = http://snomed.info/sct#224459001 "On sick leave from work"

* component[0].code = SickLeaveComponentCS#emdoc-0009-0001 "City affiliation"
* component[0].valueCodeableConcept = CarePlanBelongingCS#emdoc-0003-0001 "urban population"

* component[1].code = SickLeaveComponentCS#emdoc-0009-0002 "Place of incident"
* component[1].valueCodeableConcept = PlaceOfIncidentCS#emdoc-0004-0002 "in everyday life"

* component[2].code = SickLeaveComponentCS#emdoc-0009-0003 "Issuance of sick leave to a patient from another city"
* component[2].valueBoolean = false

* component[3].code = SickLeaveComponentCS#emdoc-0009-0004 "Information about contact with an infectious disease patient"
* component[3].valueBoolean = false

* component[4].code = SickLeaveComponentCS#emdoc-0009-0006 "Regime/Mode"
* component[4].valueCodeableConcept = $v3-ActCode#AMB "ambulatory"

* component[5].code = SickLeaveComponentCS#emdoc-0009-0005 "Degree of kinship"
* component[5].valueCodeableConcept = RelationDegreeCS#emdoc-0005-0001 "mother"

* component[6].code = SickLeaveComponentCS#emdoc-0009-0007 "Data on regime violation"
* component[6].valueCodeableConcept = RegimenViolationCS#emdoc-0007-0005 "other violations"

* component[7].code = SickLeaveComponentCS#emdoc-0009-0008 "Temporarily transfer to another job"
* component[7].valueDateTime = "2025-08-25"

* component[8].code = SickLeaveComponentCS#emdoc-0009-0009 "Conclusions"
* component[8].valueCodeableConcept = ConclusionsCS#emdoc-0008-0001 "Identified as a person with disability for the first time or repeatedly"

* component[9].code = SickLeaveComponentCS#emdoc-0009-0010 "Date of verification"
* component[9].valueDateTime = "2025-08-22"

Instance: SickLeaveFamilyCareExample
InstanceOf: SickLeaveCarePlan
Title: "Sick Leave CarePlan Example (family care)"
Usage: #example
Description: "Example family-care sick leave linked to a related person"

* identifier[series].system = "https://dhp.uz/fhir/core/sid/doc/uz/sickleave"
* identifier[series].value = "01ТШ 005591200"

* status = #active
* intent = #plan

* subject = Reference(Patient/example)

* category = SickLeaveCategoryCS#mserv-0005-00001

* created = "2025-09-01"
* period.start = "2025-09-01"
* period.end = "2025-09-10"

* contributor = Reference(Practitioner/examplePractitioner)
* custodian = Reference(Practitioner/exampleCustodian)

* addresses[reason].concept = CarePlanReasonCS#emdoc-0001-0009
* addresses[diagnosis].concept = http://hl7.org/fhir/sid/icd-10#J11.0

* extension[workflowStatus].valueCode = #active

* extension[diagnosisUse].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs#gencl-0001-00008 "Final diagnosis"
* extension[relatedPerson].valueReference = Reference(SickLeaveRelatedPersonExample)