Profile: ObservationTNM
Parent: Observation
Id: observation-tnm
Title: "Observation TNM"
Description: "An examination to determine the classification of the patient's tumor and the extent of the lesion"
* ^experimental = true
* ^status = #draf

* identifier MS
* identifier ^short = "Business identufier (TNMclassification)"

* code MS
* code ^short = "Defines the name of the examination/classification of the patient's tumor"
* code from https://terminology.medcore.uz/ValueSet/NameTests (required)

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient for whom the examination is being performed"

* effectiveDateTime MS
* effectiveDateTime ^short = "Date and time of examination"

* performer MS
* performer only Reference(Organization)
* performer ^short = "Identifies the organization that provides patient information"

* component MS

* component.code MS
* component.code ^short = "Defines the tumor classification parameter code"
* component.code from https://terminology.medcore.uz/ValueSet/TNMcomponents (required)

* component.value[x] MS

* component.valueCodeableConcept MS
* component.valueCodeableConcept ^short = "Result code for the component (degree of damage)"
* component.valueCodeableConcept from https://terminology.medcore.uz/ValueSet/Degree (required)

* component.interpretation MS
* component.interpretation ^short = "Result Interpretation Code
Determines the tumor stage code based on the results"
* component.interpretation from https://terminology.medcore.uz/ValueSet/CancerStage (required)