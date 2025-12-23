Profile: PatientBirth
Parent: UZCorePatient
Id: patient-birth
Title: "Patient of Birth"
Description: "Uzbekistan Birth Patient profile, used to represent patients administrative information"
* ^status = #draft
* ^experimental = true

* birthDate MS

* extension contains patient-placeOfBirthType named placeOfBirthType 1..1 MS

// parts of not in UZCorePatient but needed for birth profile

* generalPractitioner MS
* generalPractitioner ^short = "The doctor (paramedic or obstetrician) who issued the medical birth certificate"
* generalPractitioner only Reference(UZCorePractitioner)

* managingOrganization MS
* managingOrganization ^short = "Places of birth"
* managingOrganization only Reference(UZCoreOrganization)

* extension contains MultipleBirthFlag named multipleBirth 0..1
* extension contains NewbornBirthTime named newbornBirthTime 0..*

* extension[multipleBirth] MS
* extension[newbornBirthTime] MS

* contact MS
* contact ^short = "The patient's contact party (e.g., guardian, partner, friend)"

* contact.relationship from http://terminology.hl7.org/ValueSet/v2-0131 (required)
* contact.relationship ^short = "Type of relationship (who is the contact person)"

* contact.name ^short = "Full name of the contact person"
* contact.telecom ^short = "Contact information"
* contact.address ^short = "Address of the contact person"
* contact.gender ^short = "Gender of the contact person"

* contact.organization only Reference(UZCoreOrganization)
* contact.organization ^short = "The organization that the contact person represents"
