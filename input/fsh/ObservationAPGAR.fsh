Profile: ObservationAPGAR
Parent: UZCoreObservation
Id: observation-apgar
Title: "Observation APGAR of Birth"
Description: "Assessment of the newborn's condition"
* ^status = #draft
* ^experimental = true

* identifier MS
* identifier ^short = "Assessment of the newborn's condition"

* status MS
* status ^short = "«final» (because the results on the Apgar scale have already ended)"
* status from https://terminology.dhp.uz/fhir/core/ValueSet/observation-status-vs (required)

* category MS
* category ^short = "Category: examination or vital signs"
* category from https://terminology.dhp.uz/fhir/core/ValueSet/observation-category-vs (required)

* code MS
* code ^short = "Type of surveillance (code/type)"
* code from https://terminology.dhp.uz/ValueSet/loinc-codes-vs (required)

* subject MS
* subject ^short = "about the patient (child)"
* subject only Reference(PatientBirth)

* performer MS
* performer ^short = "The specialist who checked on the Apgar scale"
* performer only Reference(UZCorePractitioner)

* value[x] MS
* value[x] ^short = "Apgar score: 1-10 result"

* valueQuantity MS
* valueQuantity ^short = "Height and weight of the child at birth"

* valueQuantity.value and valueQuantity.unit and valueQuantity.system and valueQuantity.code MS

* valueQuantity.value ^short = "Numeric value (with implicit precision)"
* valueQuantity.unit ^short = "Unit Representation"
* valueQuantity.system ^short = "A system that defines the shape of a coded unit"

* valueQuantity.code from ObservationUCUMVS (required)
