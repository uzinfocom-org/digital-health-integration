Profile: CarePlanCancer
Parent: CarePlan
Id: careplan-cancer
Title: "CarePlan Cancer"
Description: "Determines treatment plan"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier (CarePlanCancer)"

* intent MS
* intent from https://terminology.medcore.uz/ValueSet/SpecialTreatment (required)
* intent ^short = "Determines the type of special treatment"

* category MS
* category from https://terminology.medcore.uz/ValueSet/CharacterTreatment (required)
* category ^short = "defines the treatment nature code"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient for whom the treatment plan is selected"

* encounter MS
* encounter ^short = "Identifies the appointment at which the treatment plan was created"

* custodian MS
* custodian only Reference(Organization)
* custodian ^short = "Identifies the organization responsible for implementing the plan"