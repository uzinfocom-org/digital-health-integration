Profile: ConditionDeath
Parent: Condition
Id: condition-death
Title: "Condition of Death"
Description: "A Condition resource that represents a patient's death information."
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/condition-death"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* subject and note MS

* code MS
* code ^short = "ICD-10 coded disease or condition"
* code from https://hl7.org/fhir/ValueSet/icd-10 (required)

* onset[x] MS
* onset[x] ^short = "Onset of the condition"

// * participant[recorder].function = http://hl7.org/fhir/CodeSystem/procedure-performer-role#recorder
// * participant[recorder].actor only Reference(Practitioner)
// * participant[recorder].date ^short = "The date when the record was created"

* recordedDate MS
* recordedDate ^short = "Date condition was recorded"

* evidence MS
* evidence ^short = "In non-work related accidents, the  type of injury"
* evidence from https://terminology.dhp.uz/fhir/core/ValueSet/condition-evidence-vs (required)