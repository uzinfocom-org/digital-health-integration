Profile: ObservationBirth
Parent: Observation
Id: observation-birth
Title: "Observation of Birth"
Description: "Assessment of the newborn's condition"
* ^status = #draft
* ^experimental = true

* identifier MS
* identifier ^short = "ID to monitor"

* status MS
* status ^short = "registered | sample in the process of processing | preliminary | final | modified | corrected | added | cancelled | entered by mistake | unknown | cannot be received"
* status from https://terminology.dhp.uz/fhir/core/ValueSet/observation-status-vs (required)

* category MS
* category ^short = "Classification of types of surveillance"
* category from https://terminology.dhp.uz/fhir/core/ValueSet/observation-category-vs (required)

* code MS
* code ^short = "Type of surveillance (code/type)"
* code from https://terminology.dhp.uz/ValueSet/loinc-birth-vs (required)

* subject MS
* subject ^short = "About the patient (child)"
* subject only Reference(PatientBirth)

* effective[x] MS
* effective[x] ^short = "Clinically significant time/follow-up period"

* performer MS
* performer ^short = "The doctor or specialist who measured the result"
* performer only Reference(UZCorePractitioner)

* value[x] 0..1
* value[x] ^short = "Observed measurement of newborn"
* value[x] only Quantity
* valueQuantity.system 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code 1..1
* valueQuantity.unit 1..1
* valueQuantity.unit from UnitOfMeasurementVS (required)
* valueQuantity.value 1..1