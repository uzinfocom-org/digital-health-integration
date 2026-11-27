Profile: AmbulanceEncounter
Parent: UZCoreEncounter
Id: ambulance-encounter
Title: "Ambulance Encounter"
Description: "Encounter profile for an emergency medical service (ambulance) call, during which emergency medical care is provided to the patient"

* ^experimental = true
* ^status = #active
* ^date = "2026-11-25"
* ^publisher = "Uzinfocom"

* identifier 1..1
* identifier ^short = "Call card number in the ambulance MIS"
* identifier.system 1..1 MS
* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card"
* identifier.value 1..1 MS

* subject 1..1

* basedOn only Reference(UZCoreMedicationRequest or UZCoreServiceRequest)

* partOf only Reference(UZCoreEncounter)

* serviceProvider 1..1
* serviceProvider only Reference(UZCoreOrganization)
* serviceProvider ^short = "Responsible emergency medical service organization"

* participant.actor 1..1
* participant.actor only Reference(UZCorePatient or UZCoreRelatedPerson or UZCorePractitioner or UZCorePractitionerRole or UZCoreHealthcareService)
* participant.actor ^short = "Person or service participating in the encounter"

* reason.use ^short = "Reason for the ambulance call"
* reason.value only CodeableReference(UZCoreCondition or UZCoreDiagnosticReport or UZCoreProcedure or UZCoreObservation)

* actualPeriod 1..1

* admission.destination only Reference(UZCoreLocation or UZCoreOrganization)
* admission.destination ^short = "Location or organization the patient is taken to after emergency care"
* admission.dischargeDisposition 1..1

* location 1..1
* location.period MS

Instance: example-ambulance-call-location
InstanceOf: UZCoreLocation
Usage: #example
Title: "Example Location - Ambulance Call Address"
Description: "Patient's home address to which the ambulance team was called"
* language = #uz
* status = #active
* mode = #instance
* name = "Bemorning uyi"
* address.text = "Toshkent shahar, Yunusobod tumani, Amir Temur ko'chasi 108"

Instance: example-ambulance-call-encounter
InstanceOf: AmbulanceEncounter
Usage: #example
Title: "Example Ambulance Encounter - Hypertensive Crisis Call"
Description: "Ambulance call to a patient at home with a significant change in blood pressure; the patient was taken to hospital"
* language = #uz
* identifier.value = "01.CM5742/26"
* status = #completed
* class[dhpClass] = $v3-ActCode#EMER
* priority = $v3ActPriority#EM
* type[nationalType] = https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-ambulance-cs#emer5-0006-1 "Birlamchi"
* subject = Reference(Patient/example-salim)
* subjectStatus = https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-subject-status-cs#gencl-0003-00002 "Hushsiz"
* serviceProvider = Reference(Organization/xonobod-medical-association)

* participant[0].type = $v3-ParticipationType#ATND
* participant[=].actor = Reference(PractitionerRole/example-practitionerrole)

* reason[0].use = https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-ambulance-cs#emer103054 "Qon bosimining sezilarli darajada o'zgarishi"
* reason[=].value[0].concept = $icd-10#I10

* actualPeriod.start = "2026-03-01T09:30:00+05:00"
* actualPeriod.end = "2026-03-01T10:15:00+05:00"

* diagnosis[0].condition[0].concept = $icd-10#I10

* admission.admitSource = $sct#257630004 "House"
* admission.destination = Reference(Location/example-location)
* admission.dischargeDisposition = https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-discharge-disposition-home-cs#mserv-0004-00001 "Kasalxonaga yotqizildi"

* location[0].location = Reference(Location/example-ambulance-call-location)
* location[=].period.start = "2026-03-01T09:42:00+05:00"
* location[=].period.end = "2026-03-01T10:05:00+05:00"
