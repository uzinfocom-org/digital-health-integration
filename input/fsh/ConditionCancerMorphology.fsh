Profile: ConditionCancerMorphology
Parent: Condition
Id: condition-cancer-morphology
Title: "Condition Cancer Morphology"
Description: "Determining tumor behavior and its degree of differentiation. Establishing a morphological diagnosis according to ICD-0-3."
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier (ConditionCancerMorphology)"

* clinicalStatus MS
* clinicalStatus from https://terminology.medcore.uz/ValueSet/Tumorbehavior (required)
* clinicalStatus ^short = "Determines tumor behavior"

* category MS
* category from https://terminology.medcore.uz/ValueSet/DegreeDifferentiation (required)
* category ^short = "Determines the degree of tumor differentiation"

* code MS
* code from https://terminology.medcore.uz/ValueSet/ICD3Morphology (required)
* code ^short = "Determines the diagnosis from ICD-0-3 Morphology"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient whose condition is being described"

* onsetDateTime MS
* onsetDateTime ^short = "Date of examination and diagnosis"

* participant.actor MS
* participant.actor only Reference(Organization)
* participant.actor ^short = "Identifies the organization that provides patient information"