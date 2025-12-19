Profile: PatientBirth
Parent: UZCorePatient
Id: patient-birth
Title: "Patient of Birth"
Description: "Uzbekistan Birth Patient profile, used to represent patients administrative information"
* ^status = #draft
* ^experimental = true

* birthDate MS

* extension contains patient-placeOfBirthType named placeOfBirthType 1..1 MS

* generalPractitioner MS
* generalPractitioner ^short = "The doctor (paramedic or obstetrician) who issued the medical birth certificate"
* generalPractitioner only Reference(UZCorePractitioner)

* managingOrganization MS
* managingOrganization ^short = "Places of birth"
* managingOrganization only Reference(UZCoreOrganization)

// * multipleBirth[x] MS
// * multipleBirth[x] ^short = "Indicates whether the patient was part of a multiple birth"

// * multipleBirthBoolean ^short = "True if the patient was part of a multiple birth"
// * multipleBirthInteger ^short = "Birth order in a multiple birth (e.g., 1 = first born, 2 = second born)"
