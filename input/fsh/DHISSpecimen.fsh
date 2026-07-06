Profile: DHISSpecimen
Parent: UZCoreSpecimen
Id: dhis-specimen
Title: "DHIS Specimen Profile"
Description: "Profile for a biological specimen collected for tuberculosis laboratory testing in the DHIS information system."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Sample identifier"

* status 0..1 MS
* status from http://hl7.org/fhir/ValueSet/specimen-status

* type 0..1 MS
* type from SpecimenTypeVS (required)
* subject 0..1 MS
* subject only Reference(UZCorePatient)
* receivedTime 0..1 MS
* receivedTime only dateTime

* parent 0..* MS
* parent only Reference(DHISSpecimen)

* feature 0..1 MS
* feature.type from SpecimenFeatureTypeVS (required)

// Instance example
Instance: example-dhis-specimen
InstanceOf: DHISSpecimen
Description: "Example specimen representing a sputum sample collected for tuberculosis testing."
Usage: #example
* status = #available
* type =  $sct#119334006 "Sputum specimen"
* subject = Reference(example-patient-john)
* receivedTime = "2026-02-13T12:00:00Z"
