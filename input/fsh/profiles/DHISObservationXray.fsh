Profile: DHISObservationXray
Parent: UZCoreObservation
Id: dhis-observation-xray
Title: "DHIS Observation X-ray Profile"
Description: "Profile for recording chest X-ray findings used in tuberculosis screening and diagnosis in the DHIS information system."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Identifier for the observation."
* category =  $observation-category#imaging

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* effective[x] 0..1 MS SU
* effective[x] only dateTime

* performer 0..* MS
* performer only Reference(UZCoreOrganization)

* value[x] only boolean
* valueBoolean 0..1 MS
* valueBoolean ^short = "Actual result"


// Instance Example
Instance: example-observation-xray
InstanceOf: DHISObservationXray
Description: "Example observation recording a chest X-ray finding for tuberculosis screening."
Usage: #example
* status = #final
* category =  $observation-category#imaging
* code = $loinc#30745-4
* subject = Reference(example-patient-john)
* effectiveDateTime = "2026-03-10T10:00:00Z"
* issued = "2026-03-12T11:00:00Z"
* performer = Reference(Organization/example-organization)
* valueBoolean = false
