Profile: ObservationOfBirth
Parent: UZCoreObservation
Id: observation-of-birth
Title: "Observation of Birth"
Description: "Assessment of the newborn's condition"
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* status = #final

* category MS
* category ^short = "Classification of types of observation"

* code MS
* code ^short = "Type of observation (code/type)"
* code from LOINCBirthVS (required)

* subject MS
* subject ^short = "Newborn patient"
* subject only Reference(NewbornPatient)

* effective[x] MS
* effective[x] ^short = "Clinically significant time/observation period"

* performer MS
* performer ^short = "The doctor or specialist who measured the result"
* performer only Reference(UZCorePractitioner)

* value[x] MS
* value[x] only Quantity or integer
* value[x] ^short = "The baby's weight, height, gestational age, number of pregnancies, or birth order."

* valueQuantity MS

* valueQuantity.value MS
* valueQuantity.value ^short = "Numerical value"

* valueQuantity.unit MS
* valueQuantity.unit ^short = "Representation of units"

* valueQuantity.system MS
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.system ^short = "UCUM unit system"

* valueQuantity.code MS
* valueQuantity.code ^short = "UCUM unit code. Examples: g for birth weight, cm for body length, [in_i] for inches."

* valueInteger MS
* valueInteger ^short = "Full weeks of pregnancy, number of pregnancies, or birth order of the child"

* component MS
* component ^short = "This section should be the criteria for life."

* component.code MS
* component.code ^short = "Breathing CodesystemObservation -lifecrit"
* component.code from ObservationLifeCriteriaVS (required)

* component.value[x] only boolean
* component.value[x] ^short = "Actual result by component"
* component.valueBoolean MS
* component.valueBoolean ^short = "Type  life criteria - true or false"




Instance: observation-of-birth-example
InstanceOf: ObservationOfBirth
Usage: #example
Title: "Observation of Birth Example"
Description: "Example observation of birth for a newborn in Uzbekistan"

* status = #final
* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[0].coding.code = #vital-signs
* code = http://loinc.org#8339-4 "Birth weight Measured"
* subject = Reference(newborn-patient-example)
* effectiveDateTime = "2026-04-01T10:08:00+05:00"
* performer[0] = Reference(practitioner-003)

* valueQuantity
  * value = 3200
  * unit = "g"
  * system = $ucum
  * code = #g

* component[0].code = ObservationLifeCriteriaCS#birth0003-00001 "Breathing"
* component[0].valueBoolean = true
* component[1].code = ObservationLifeCriteriaCS#birth0003-00002 "Heartbeat"
* component[1].valueBoolean = true
* component[2].code = ObservationLifeCriteriaCS#birth0003-00004 "Involuntary muscle contractions"
* component[2].valueBoolean = true
