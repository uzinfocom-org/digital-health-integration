Profile: HepatitisEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: hepatitis-episode-of-care
Title: "Hepatitis Episode Of Care"
Description: "EpisodeOfCare profile representing the process of care for a patient registered for hepatitis A, B, C, or D."

* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains hepatitisRegistry 1..1 MS
* identifier[hepatitisRegistry].system = "https://dhp.uz/fhir/core/sid/org/uz/hepatitis"
* identifier[hepatitisRegistry].value 1..1

* diagnosis.condition MS
* diagnosis.condition only CodeableReference(HepatitisCondition)

* patient MS
* patient only Reference(HepatitisPatient)


Instance: hepatitis-episode-of-care-example
InstanceOf: HepatitisEpisodeOfCare
Usage: #example
Title: "Hepatitis Episode Of Care Example"
Description: "Example EpisodeOfCare for a patient registered for acute hepatitis B."

* identifier[hepatitisRegistry].system = "https://dhp.uz/fhir/core/sid/org/uz/hepatitis"
* identifier[hepatitisRegistry].value = "75dcdd0a-5a68-4cc6-8503-5ab15a42c63b"

* status = #active

* type[serviceType] = $episode-of-care-type#mserv-0001-00004 "Treatment services"


* diagnosis.condition = Reference(example-hepatitis-condition)
* diagnosis.use = $encounter-diagnosis-use-cs#final "Final"

* patient = Reference(hepatitis-patient-example)

* managingOrganization = Reference(samarkand-infectious-hospital)

* period.start = "2026-09-18T09:00:00+05:00"
// Expected end of the active care episode.
* period.end = "2026-11-10T17:00:00+05:00"

* careManager = Reference(PractitionerRole/example-hepatologist-role)