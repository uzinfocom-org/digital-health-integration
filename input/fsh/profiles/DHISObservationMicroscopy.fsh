Profile: DHISObservationMicroscopy
Parent: UZCoreObservation
Id: dhis-observation-microscopy
Title: "DHIS Observation Microscopy Profile"
Description: "Profile for recording sputum smear microscopy results, including acid-fast bacilli load grading, used in tuberculosis diagnosis in the DHIS information system."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Identifier for the observation."

* category = $observation-category#laboratory

* subject 1..1 MS
* subject only Reference(UZCorePatient)
* subject ^short = "Who and/or what the observation is about"

* effective[x] only dateTime
* effectiveDateTime 1..1 MS SU

* performer 0..1 MS
* performer only Reference(UZCoreOrganization)

* method 0..1 MS
* method from DHISObservationMethodVS

* specimen 0..1 MS
* specimen ^short = "Specimen used for this observation + Rule: If Observation.specimen is a reference to Group, the group can only have specimens"

* component 0..* MS
  * code 1..1 MS
  * code from DHISObservationComponentCodeVS (required)
  * value[x] only CodeableConcept
  * valueCodeableConcept 1..1 MS
  * valueCodeableConcept from DHISObservationCodeableConceptVS

//Instance Example
Instance: example-microscopy
InstanceOf: DHISObservationMicroscopy
Description: "Example observation recording a sputum smear microscopy result with its acid-fast bacilli load grade."
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#53904-9
* subject = Reference(example-patient-john)
* effectiveDateTime = "2026-03-12T12:00:00Z"
* issued = "2026-03-12T11:00:00Z"
* performer.reference = "Organization/example-organization"
* component[0]
  * code = https://terminology.dhp.uz/fhir/integrations/CodeSystem/dhis-observation-component-code-cs#tub004-0005 "AMK/KAN/CAP result"
  * valueCodeableConcept = https://terminology.dhp.uz/fhir/integrations/CodeSystem/dhis-observation-codeable-concept-cs#Tub003-0040 "Macrota sample sediment"
  * interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
