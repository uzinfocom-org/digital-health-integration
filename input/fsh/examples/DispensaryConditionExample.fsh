Instance: example-dispensary-condition
InstanceOf: UZCoreCondition
Title: "Dispensary Registration Condition Example"
Description: "Thalassaemia recorded for Salim when he was placed under dispensary observation, carrying the nature of the disease reported by DMED as `disease_nature`."
Usage: #example

* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#D56 "Thalassaemia"
* subject = Reference(example-salim)
* recordedDate = "2026-06-17"

// DMED sent disease_nature = "subacute"; see dmed-dispensary-disease-nature-to-dhp.
* extension[0].url = "https://dhp.uz/fhir/integrations/StructureDefinition/disease-nature"
* extension[=].valueCodeableConcept = dispensary-disease-nature-cs#chr-0128-0003 "Subacute"
