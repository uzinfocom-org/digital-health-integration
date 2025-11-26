Profile: PatientBirth
Parent: UZCorePatient
Id: patient-birth
Title: "Patient of Birth"
Description: "Uzbekistan Birth Patient profile, used to represent patients administrative information"
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/patient-birth"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* birthDate MS
* extension contains patient-placeOfBirthType named placeOfBirthType 1..1 MS