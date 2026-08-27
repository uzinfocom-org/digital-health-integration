Profile: CancerEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: cancer-episode-of-care
Title: "Cancer Episode Of Care"
Description: "Defines a care episode for a patient with a specific cancer diagnosis."

* ^experimental = true
* ^status = #active
* ^date = "2026-08-15"
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier.system 1..1
* identifier.system = "https://dhp.uz/fhir/core/sid/reg/uz/cancer"

* type contains characterTreatment 1..1 MS and specialTreatment 0..1 MS

* type[characterTreatment] from CancerCharacterTreatmentVS (required)
* type[characterTreatment].coding.system = Canonical(CancerCharacterTreatmentCS)

* type[specialTreatment] from CancerSpecialTreatmentVS (required)
* type[specialTreatment].coding.system = Canonical(CancerSpecialTreatmentCS)


Instance: cancer-episode-of-care-example
InstanceOf: CancerEpisodeOfCare
Usage: #example
Title: "Cancer Episode Of Care Example"
Description: "Example of an episode of care for a patient with a cancer diagnosis."

* status = #active

* type[serviceType] = $episode-of-care-type#mserv-0001-00004 "Treatment services"

* type[characterTreatment] = cancer-character-treatment-cs#cancer-0017-0002
* type[specialTreatment] = cancer-special-treatment-cs#cancer-0018-0002

* diagnosis[0].condition = Reference(cancer-condition-primary-example)
* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"

* patient = Reference(Patient/example-salim)
* managingOrganization = Reference(Organization/example-organization)

* period.start = "2026-08-15"
* period.end = "2026-08-15"

* careManager = Reference(PractitionerRole/practitionerrole-001)