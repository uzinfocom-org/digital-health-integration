Profile: ConditionCancerDiagnosisICD10
Parent: Condition
Id: condition-cancer-diagnosis-idc10
Title: "Condition Cancer Diagnosis ICD 10"
Description: "Establishing the primary diagnosis"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier (ConditionCancerDiagnosis ICD10)"

* category MS
* category from https://terminology.medcore.uz/ValueSet/Sourceofinformation  (required)
* category ^short = "Defines the general category of tumor topography"

* code MS
* code from https://terminology.medcore.uz/ValueSet/CodeSystemICD10 (required)
* code ^short = "Determines the diagnosis from ICD-10"

* note MS
* note ^short = "Text commentary on the diagnosis"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient whose condition is being described"

* onsetDateTime MS
* onsetDateTime ^short = "Date the condition was discovered"