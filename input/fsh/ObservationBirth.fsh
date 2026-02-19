Profile: ObservationBirth
Parent: Observation
Id: observation-birth
Title: "Observation of Birth"
Description: "Assessment of the newborn's condition"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

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

* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains birthMeasure 0..* MS

* component[birthMeasure].code 1..1 MS
* component[birthMeasure].code from http://hl7.org/fhir/ValueSet/observation-codes (required)
* component[birthMeasure].code ^short = "Type of component"

* component[birthMeasure].valueQuantity 0..1 MS
* component[birthMeasure].valueQuantity ^short = "Рост, вес ребенка при рождении"

* component[birthMeasure].valueQuantity.value 0..1 MS
* component[birthMeasure].valueQuantity.value ^short = "Числовое значение (с неявной точностью)"

* component[birthMeasure].valueQuantity.unit 0..1 MS
* component[birthMeasure].valueQuantity.system 0..1 MS
* component[birthMeasure].valueQuantity.code 0..1 MS
* component[birthMeasure].valueQuantity.code from LOINC_CodesVS (required)

* component contains lifeCrit 0..1 MS

* component[lifeCrit].code 1..1 MS
* component[lifeCrit].code from LifeCritVS (required)

* component[lifeCrit].valueBoolean 0..1 MS
* component[lifeCrit].valueBoolean ^short = "Тип жизненные критерии"
