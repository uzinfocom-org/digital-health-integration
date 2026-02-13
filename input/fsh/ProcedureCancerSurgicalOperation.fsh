Profile: ProcedureCancerSurgicalOperation
Parent: Procedure
Id: procedure-cancer-surgical-operation
Title: "Procedure Cancer Surgical Operation"
Description: "Describes the operation performed"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier (ProcedureCancerSurgicalOperations)"

* category MS
* category from https://terminology.medcore.uz/ValueSet/CharacterOperations (required)
* category ^short = "Defines the operation character code"

* code MS
* code from https://terminology.medcore.uz/ValueSet/NameOperations (required)
* code ^short = "Defines the operation name code"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient who underwent surgery"

* occurrenceDateTime MS
* occurrenceDateTime ^short = "Date of operation"

* report MS
* report ^short = "Description of the operation"

* focalDevice MS

* focalDevice.action MS
* focalDevice.action from https://terminology.medcore.uz/ValueSet/TypeOperations (required)

* performer.actor MS
* performer.actor only Reference(Organization)
* performer.actor ^short = "Identifies the organization where the operation was performed"