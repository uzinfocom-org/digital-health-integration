Profile: CancerEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: cancer-episode-of-care
Title: "Cancer Episode Of Care"
Description: "Defines a care episode for a patient with a specific cancer diagnosis."

* ^experimental = true
* ^status = #active
* ^date = "2026-09-15"
* ^publisher = "Uzinfocom"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains cancerRegistry 1..1 MS
* identifier[cancerRegistry].system = "https://dhp.uz/fhir/core/sid/reg/uz/cancer"
* identifier[cancerRegistry].value 1..1

* type contains
    treatmentIntent 0..1 MS and
    localTreatmentIntent 0..1 MS and
    specialTreatment 0..1 MS


* type[treatmentIntent] from CancerTreatmentIntentSnomedVS (required)
* type[treatmentIntent].coding.system = $sct

* type[localTreatmentIntent] from CancerTreatmentIntentVS (required)
* type[localTreatmentIntent].coding.system = Canonical(CancerTreatmentIntentCS)


* type[specialTreatment] from CancerSpecialTreatmentVS (required)
* type[specialTreatment].coding.system = Canonical(CancerSpecialTreatmentCS)


Instance: cancer-episode-of-care-example
InstanceOf: CancerEpisodeOfCare
Usage: #example
Title: "Cancer Episode Of Care Example"
Description: "Example of an episode of care for a patient with a cancer diagnosis."

* identifier[cancerRegistry].system = "https://dhp.uz/fhir/core/sid/reg/uz/cancer"
* identifier[cancerRegistry].value = "75dcdd0a-5a68-4cc6-8503-5ab15a41c63b"

* status = #active

* type[serviceType] = $episode-of-care-type#mserv-0001-00004 "Treatment services"

* type[treatmentIntent] = $sct#373808002 "Curative - procedure intent"
* type[specialTreatment] = cancer-special-treatment-cs#cancer-0018-0002 "Surgical treatment"

* diagnosis[0].condition = Reference(cancer-condition-example)
* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"

* patient = Reference(Patient/example-salim)
* managingOrganization = Reference(Organization/example-organization)

* period.start = "2026-09-15"

* careManager = Reference(PractitionerRole/practitionerrole-001)



