Instance: example-blood-donation-encounter
InstanceOf: UZCoreEncounter
Title: "Example UZ Core Encounter - Donor Visit"
Description: "Ongoing donor visit shared by the laboratory order examples."
Usage: #example
* language = #uz
* status = #in-progress
* type[nationalType] = $encounter-type-cs#mserv-0001-00002 "Diagnostika"
* subject = Reference(Patient/example-salim)
* actualPeriod.start = "2026-11-10T09:00:00+05:00"

Instance: example-blood-whole-blood-specimen
InstanceOf: UZCoreSpecimen
Title: "Example UZ Core Specimen - Donor Whole Blood"
Description: "Whole blood sample shared by the donor laboratory orders."
Usage: #example
* language = #uz
* status = #available
* type = $v2-0487#BLD
* subject = Reference(Patient/example-salim)
* collection.collector = Reference(PractitionerRole/example-practitionerrole)
* collection.collectedDateTime = "2026-11-10T09:00:00+05:00"

Instance: example-blood-serum-specimen
InstanceOf: UZCoreSpecimen
Title: "Example UZ Core Specimen - Donor Serum"
Description: "Serum sample included with the donor whole blood sample in the bacteriology order."
Usage: #example
* language = #uz
* status = #available
* type = $v2-0487#SER
* subject = Reference(Patient/example-salim)
* collection.collector = Reference(PractitionerRole/example-practitionerrole)
* collection.collectedDateTime = "2026-11-10T09:00:00+05:00"

Instance: example-blood-service-laboratory
InstanceOf: UZCoreLocation
Title: "Example Blood Service Laboratory"
Description: "Blood service laboratory that performs donor tests and component processing."
Usage: #example
* language = #uz
* status = #active
* name = "Qon xizmati laboratoriyasi"
* mode = #instance
* managingOrganization = Reference(Organization/xonobod-medical-association)
