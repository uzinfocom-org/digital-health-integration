Profile: DHISObservationHIV
Parent: UZCoreObservation
Id: dhis-observation-hiv
Title: "DHIS Observation HIV Profile"
Description: "Profile for recording the result of an HIV test performed as part of tuberculosis/HIV co-infection screening in the DHIS information system."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Идентификатор для наблюдения"

* category = $observation-category#laboratory

* subject 1..1 MS
* subject only Reference(UZCorePatient)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS SU


* performer 0..* MS
* performer only Reference(UZCoreOrganization)

* value[x] only boolean
* valueBoolean 0..1 MS
* valueBoolean ^short = "Actual result"

* component 0..* MS
  * code 1..1 MS
  * code from DHISObservationComponentCodeVS (required)
  * value[x] only boolean
  * valueBoolean 0..1 MS     

//Instance Example
Instance: example-obs-hiv
InstanceOf: DHISObservationHIV
Description: "Example observation recording an HIV test result for a tuberculosis patient."
Usage: #example
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#56888-1
* subject = Reference(example-patient-john)
* effectiveDateTime = "2026-03-10T10:00:00Z"
* issued = "2026-03-15T11:00:00Z"
* performer = Reference(Organization/example-organization)
* valueBoolean = true
* component[0]
  * code = https://terminology.dhp.uz/fhir/integrations/CodeSystem/dhis-observation-component-code-cs#tub004-0005 "AMK/KAN/CAP result"
  * valueBoolean = true
