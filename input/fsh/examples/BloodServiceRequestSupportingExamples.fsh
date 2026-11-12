Instance: example-blood-donor
InstanceOf: UZCorePatient
Title: "Example UZ Core Patient - Blood Donor"
Description: "Synthetic donor shared by the blood service order examples."
Usage: #example
* language = #uz
* identifier[nationalId].value = "31234566690123"
* name.use = #official
* name.family = "Tursunov"
* name.given = "Alisher"
* gender = #male
* birthDate = "1990-04-12"

Instance: example-blood-donation-encounter
InstanceOf: UZCoreEncounter
Title: "Example UZ Core Encounter - Donor Visit"
Description: "Ongoing donor visit shared by the laboratory order examples."
Usage: #example
* language = #uz
* status = #in-progress
* type[nationalType] = $encounter-type-cs#mserv-0001-00002 "Diagnostika"
* subject = Reference(example-blood-donor)
* actualPeriod.start = "2026-11-10T09:00:00+05:00"

Instance: example-blood-donor-physician
InstanceOf: UZCorePractitioner
Title: "Example UZ Core Practitioner - Donor Physician"
Description: "Synthetic physician issuing the donor laboratory orders."
Usage: #example
* language = #uz
* active = true
* name.family = "Rasulov"
* name.given = "Bahodir"

Instance: example-blood-processing-requester
InstanceOf: UZCorePractitioner
Title: "Example UZ Core Practitioner - Processing Requester"
Description: "Synthetic blood service staff member issuing the component processing order."
Usage: #example
* language = #uz
* active = true
* name.family = "Qodirov"
* name.given = "Aziz"

Instance: example-blood-whole-blood-specimen
InstanceOf: UZCoreSpecimen
Title: "Example UZ Core Specimen - Donor Whole Blood"
Description: "Whole blood sample shared by the donor laboratory orders."
Usage: #example
* language = #uz
* status = #available
* type = $v2-0487#BLD
* subject = Reference(example-blood-donor)
* collection.collector = Reference(example-blood-donor-physician)
* collection.collectedDateTime = "2026-11-10T09:00:00+05:00"

Instance: example-blood-serum-specimen
InstanceOf: UZCoreSpecimen
Title: "Example UZ Core Specimen - Donor Serum"
Description: "Serum sample included with the donor whole blood sample in the bacteriology order."
Usage: #example
* language = #uz
* status = #available
* type = $v2-0487#SER
* subject = Reference(example-blood-donor)
* collection.collector = Reference(example-blood-donor-physician)
* collection.collectedDateTime = "2026-11-10T09:00:00+05:00"

Instance: example-blood-component-inventory
InstanceOf: UZCoreInventoryItem
Title: "Example UZ Core InventoryItem - Blood Component"
Description: "Blood component inventory item targeted by the secondary processing order."
Usage: #example
* language = #uz
* status = #active
* identifier[inventoryItem].system = "https://dhp.uz/fhir/core/sid/doc/uz/inventory-item"
* identifier[inventoryItem].value = "INV-BLOOD-2026-00789"
* name.nameType = http://hl7.org/fhir/inventoryitem-nametype#alias
* name.name = "Blood component"
* name.language = #en

