Profile: PatientCancer
Parent: Patient
Id: profile-cancer
Title: "Patient Cancer"
Description: "Collecting data on patients with cancer"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS

* identifier.use MS
* identifier.use from https://terminology.medcore.uz/ValueSet/identifier-use (required)
* identifier.use ^short = "Defines the purpose of this identifier"

* identifier.type MS
* identifier.type ^short = "Identifier type code"
