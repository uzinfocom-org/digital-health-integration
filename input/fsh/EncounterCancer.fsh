Profile: EncounterCancer
Parent: Encounter
Id: encounter-cancer
Title: "Encounter Cancer"
Description: "A patient's appointment during which the patient's condition and type of treatment are determined"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier (EncounterCancer)"

* class MS
* class from https://terminology.medcore.uz/ValueSet/TypeTreatment (required)
* class ^short = "Defines the code for the type of treatment (outpatient, inpatient, etc.)"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient"

* subjectStatus MS
* subjectStatus from https://terminology.medcore.uz/ValueSet/PatientsCondition (required)
* subjectStatus ^short = "Determines the patient's status code (alive, deceased, departed)"

* episodeOfCare MS
* episodeOfCare ^short = "Identifies the service event within which the reception was made"

* basedOn MS
* basedOn only Reference(CarePlan)
* basedOn ^short = "Determines treatment plan"

* serviceProvider MS
* serviceProvider ^short = "Defines an organization"

* participant.period MS
* participant.period ^short = "Defines the start date and end date of the reception"

* participant.actor MS
* participant.actor only Reference(Patient)
* participant.actor ^short = "Identifies the patient"

* diagnosis MS

* diagnosis.condition MS
* diagnosis.condition ^short = "Link to ConditionCancerDiagnosis ICD10"

* diagnosis.use MS
* diagnosis.use from https://terminology.medcore.uz/ValueSet/TypeTreatment (required)
* diagnosis.use ^short = "Defines the code for the type of treatment (outpatient, inpatient, etc.)"
