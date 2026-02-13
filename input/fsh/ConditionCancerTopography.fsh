Profile: ConditionCancerTopography
Parent: Condition
Id: condition-cancer-topography
Title: "Condition Cancer Topography"
Description: "Determining tumor topography. Diagnosis according to ICD-0-3"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier (ConditionCancerTopography)"

* category MS
* category from https://terminology.medcore.uz/ValueSet/CategoryTopography (required)
* category ^short = "Defines the general category of tumor topography"

* code MS
* code from https://terminology.medcore.uz/ValueSet/ICD3topography (required)
* code ^short = "Determines the diagnosis from ICD-0-3 Tumor topography"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient whose condition is being described"

* onsetDateTime MS
* onsetDateTime ^short = "Date of registration"

* recordedDate MS
* recordedDate ^short = "Date of registration"

* participant.actor MS
* participant.actor only Reference(Organization)
* participant.actor ^short = "Identifies the organization that provides patient information"