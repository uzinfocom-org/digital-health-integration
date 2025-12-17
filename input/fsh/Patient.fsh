Profile: PatientBirth
Parent: UZCorePatient
Id: patient-birth
Title: "Patient of Birth"
Description: "Uzbekistan Birth Patient profile, used to represent patients administrative information"
* ^status = #draft
* ^experimental = true

* birthDate MS
* extension contains patient-placeOfBirthType named placeOfBirthType 1..1 MS