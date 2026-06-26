Profile: ObservationOfAPGAR
Parent: UZCoreObservation
Id: observation-of-apgar
Title: "Observation APGAR of Birth"
Description: "Assessment of the newborn's condition"
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Identifier for observation"

* status MS
* status = #final
* status ^short = "Final APGAR assessment result"

* category MS
* category ^short = "Category: examination or vital signs"


* code MS
* code ^short = "Observation type (code/type)"
* code from LOINCBirthVS (extensible)

* subject MS
* subject ^short = "The child/patient the Observation is about"
* subject only Reference(NewbornPatient)

* performer MS
* performer ^short = "The specialist who checked the Apgar score"
* performer only Reference(UZCorePractitioner)

* value[x] MS
* value[x] only Quantity
* value[x] ^short = "Apgar score: 1-10 result"

* valueQuantity MS
* valueQuantity ^short = "Numeric value (with implicit precision) and unit of measure (score)"

* valueQuantity.value MS
* valueQuantity.value ^short = "Numeric value (with implicit precision)"
* valueQuantity.value obeys apgar-range

* valueQuantity.unit MS
* valueQuantity.unit ^short = "Representation of units"

* valueQuantity.system MS
* valueQuantity.system ^short = "System that determines the form of the coded unit"
* valueQuantity.system = "http://unitsofmeasure.org"

* valueQuantity.code MS
* valueQuantity.code = #score

Invariant: apgar-range
Description: "Apgar score must be between 1 and 10"
Expression: "$this >= 0 and $this <= 10"
Severity: #error



Instance: observation-of-apgar-example
InstanceOf: ObservationOfAPGAR
Usage: #example
Title: "Observation APGAR Example"
Description: "Example APGAR observation for a newborn"

* status = #final

* category = $observation-category#vital-signs "Vital Signs"

* code = http://loinc.org#9274-2 "5 minute Apgar Score"

* subject = Reference(newborn-patient-example)
* effectiveDateTime = "2026-04-01T10:08:00+05:00"

* performer[0] = Reference(practitioner-003)

* valueQuantity.value = 8
* valueQuantity.unit = "score"
* valueQuantity.system = "http://unitsofmeasure.org"
