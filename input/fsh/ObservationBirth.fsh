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
* code from https://terminology.dhp.uz/ValueSet/loinc-codes-vs (required)

* subject MS
* subject ^short = "About the patient (child)"
* subject only Reference(PatientBirth)

* effective[x] MS
* effective[x] ^short = "Clinically significant time/follow-up period"

* performer MS
* performer ^short = "The doctor or specialist who measured the result"
* performer only Reference(UZCorePractitioner)

* component.code MS
* component.code ^short = "Type of measurement (code/type)"
* component.code from https://www.hl7.org/fhir/valueset-observation-codes (required)

* component.value[x] MS
* component.value[x] ^short = "The actual result"

* component.valueQuantity MS
* component.valueQuantity ^short = "Height and weight of the child at birth"

* component.valueQuantity.value and component.valueQuantity.unit and component.valueQuantity.system and component.valueQuantity.code MS

* component.valueQuantity.value ^short = "Numeric value (with implicit precision)"
* component.valueQuantity.unit ^short = "Unit Representation"
* component.valueQuantity.system ^short = "A system that defines the shape of a coded unit"
* component.valueQuantity.code from ObservationUCUMVS (required)

* component.code MS
* component.code ^short = "Breathing CodesystemObservation -lifecrit"
* component.code from LifeCritVS (required)