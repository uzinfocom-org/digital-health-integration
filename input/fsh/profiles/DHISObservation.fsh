Profile: DHISObservation
Parent: UZCoreObservation
Id: dhis-observation
Title: "DHIS Observation Profile"
Description: "Profile for recording tuberculosis diagnostic test results and clinical observations in the DHIS information system."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Identifier for the observation."

* category = $observation-category#laboratory


* subject 1..1 MS
* subject only Reference(UZCorePatient)

* value[x] only CodeableConcept
* valueCodeableConcept 0..1 MS
* valueCodeableConcept ^short = "Test results."

* method = $sct#278289002 "Microscopy technique (qualifier value)"
* specimen 0..1 MS
* specimen ^short = "Specimen used for this observation + Rule: If Observation.specimen is a reference to Group, the group can only have specimens"

* component 0..* MS
  * code 1..1 MS
  * code from DHISObservationComponentCodeVS (required)
  * value[x] 1..1 MS
  * value[x] only CodeableConcept or dateTime or string
  * valueCodeableConcept from DHISObservationCodeableConceptVS


// Instance Example
Instance: example-tb-microscopy
InstanceOf: DHISObservation
Description: "Example observation recording a sputum smear microscopy result for tuberculosis."
Usage: #example
* status = #final
* category = $observation-category#laboratory
* code = $loinc#89876-7
* subject = Reference(example-patient-john)
* effectiveDateTime = "2025-09-12T10:00:00Z"
* issued = "2025-09-12T11:00:00Z"
* performer.reference = "Organization/example-organization"
* valueCodeableConcept =  http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(example-dhis-specimen)

* component[0].code = https://terminology.dhp.uz/fhir/integrations/CodeSystem/dhis-observation-component-code-cs#tub004-0008 "Isoniazid (0.1 mg/mL)"
* component[0].valueCodeableConcept = https://terminology.dhp.uz/fhir/integrations/CodeSystem/dhis-observation-codeable-concept-cs#Tub003-0040 "Macrota sample sediment"

