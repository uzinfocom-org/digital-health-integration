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

Instance: example-dispensary-episode-of-care
InstanceOf: UZCoreEpisodeOfCare
Title: "Dispensary Registration EpisodeOfCare Example"
Description: "Salim's active dispensary observation for thalassaemia, opened by DMED on the registration date. The diagnosis role is always `final`, because a patient is placed under dispensary observation only for an established diagnosis."
Usage: #example

* status = #active
* type[serviceType] = $episode-of-care-type#mserv-0001-00001 "Preventive services"
* diagnosis[0].condition = Reference(Condition/example-dispensary-condition)
* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"
* patient = Reference(example-salim)
* managingOrganization = Reference(example-organization)
* period.start = "2026-06-17"
* careManager = Reference(example-practitionerrole)
