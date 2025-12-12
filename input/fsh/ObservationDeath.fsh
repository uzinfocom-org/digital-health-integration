Profile: ObservationDeath
Parent: UZCoreObservation
Id: observation-death
Title: "Observation of Death"
Description: "An Observation resource that represents a patient's death information."
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/observation-death"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* status and code MS

* subject MS
* subject ^short = "The decedent"
* subject only Reference(UZCorePatient)

* performer MS
* performer ^short = "Certifying physician"
* performer only Reference(UZCorePractitionerRole)

* effective[x] MS
* effective[x] ^short = "Date/Time of Death"

* note MS
* note ^short = "Notes about the actual or presumed date of death, e.g., the date of death can't be specified as a dateTime and can only be narrowed down to a decade"

* value[x] MS
* value[x] ^short = "Date/Time of Death"
* value[x] from OccuredFromVS (required)

* component MS
* component ^short = "Conditions leading to immediate cause."
* component.code MS
* component.code from OccuredFromVS 