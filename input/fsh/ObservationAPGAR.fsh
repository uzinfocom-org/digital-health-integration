Profile: ObservationAPGAR
Parent: Observation
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

* component.code MS
* component.code ^short = "Apgar CodesystemObservation -apgar"

* component.value[x] MS
* component.value[x] ^short = "Apgar score: 1-10 result"

* component.valueQuantity MS
* component.valueQuantity ^short = "Height and weight of the child at birth"

* component.valueQuantity.value and component.valueQuantity.unit and component.valueQuantity.system and component.valueQuantity.code MS

* component.valueQuantity.value ^short = "Numeric value (with implicit precision)"
* component.valueQuantity.unit ^short = "Unit Representation"
* component.valueQuantity.system ^short = "A system that defines the shape of a coded unit"

* component.valueQuantity.code from ObservationUCUMVS (required)