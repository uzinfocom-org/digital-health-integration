Profile: ConditionCancerRelapseMetastas
Parent: Condition
Id: condition-cancer-relapse-metastas
Title: "Condition Cancer Relapse Metastasis"
Description: "Determination of the emerging metastasis processes and determination of the anatomical area of ​​damage."
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier (ConditionCancerRelapseMetastas)"

* clinicalStatus MS
* clinicalStatus from https://terminology.medcore.uz/ValueSet/ClinicalStatus (required)
* clinicalStatus ^short = "Identifies the processes that have arisen"

* bodySite MS
* bodySite from https://terminology.medcore.uz/ValueSet/Anatomicallocation (required)
* bodySite ^short = "Determines the anatomical area of ​​the lesion"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient whose condition is being described"

* onsetDateTime MS
* onsetDateTime ^short = "Date the condition was discovered"