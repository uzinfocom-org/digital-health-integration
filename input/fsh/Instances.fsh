Instance: SickLeaveCarePlanExample
InstanceOf: SickLeaveCarePlan
Title: "Sick Leave CarePlan Example"

* identifier.value = "01ТШ 005591125"

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

* extension[statusHistory].extension[status].valueCode = #completed
* extension[statusHistory].extension[period].valuePeriod.start = "2025-08-20"
* extension[statusHistory].extension[period].valuePeriod.end = "2025-08-24"

Instance: example
InstanceOf: Patient

* name[0].family = "Karimov"
* name[0].given[0] = "Ali"

Instance: examplePractitioner
InstanceOf: Practitioner

* name[0].family = "Dr. Ivanov"
* name[0].given[0] = "Sergey"

Instance: exampleCustodian
InstanceOf: Practitioner

* name[0].family = "Dr. Petrov"
* name[0].given[0] = "Natalia"

Instance: SickLeaveRelatedPersonExample
InstanceOf: SickLeaveRelatedPerson
Usage: #example

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

* id = "patient-example"
* name.family = "Karimov"
* name.given[0] = "Ali"
* gender = #male
* birthDate = 1990-05-15


Instance: SickLeaveObservationExample
InstanceOf: SickLeaveObservation
Usage: #example

* id = "sickleave-observation-01"
* status = #final

* basedOn = Reference(SickLeaveCarePlanExample)
* subject = Reference(PatientExample)
* effectiveDateTime = 2025-08-20

* code = http://snomed.info/sct#224459001 "On sick leave from work"

* component[0].code = SickLeaveComponentCS#emdoc-0009-0001
* component[0].valueCodeableConcept = https://terminology.dhp.uz/CodeSystem/city-affiliation#emdoc-0003-0001

* component[1].code = SickLeaveComponentCS#emdoc-0009-0002
* component[1].valueCodeableConcept = https://terminology.dhp.uz/CodeSystem/place-of-incident#emdoc-0004-0002

* component[2].code = SickLeaveComponentCS#emdoc-0009-0003
* component[2].valueBoolean = false

* component[3].code = SickLeaveComponentCS#emdoc-0009-0004
* component[3].valueBoolean = false

* component[4].code = SickLeaveComponentCS#emdoc-0009-0006
* component[4].valueString = "AMB"

* component[5].code = SickLeaveComponentCS#emdoc-0009-0007
* component[5].valueCodeableConcept = https://terminology.dhp.uz/CodeSystem/regime-violation#emdoc-0007-0005