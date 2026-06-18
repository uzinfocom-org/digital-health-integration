Profile: PatientOfBirth
Parent: UZCorePatient
Id: patient-of-birth
Title: "Patient of Birth"
Description: "Uzbekistan Birth Patient profile, used to represent patients administrative information"
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* birthDate MS

* extension contains patient-placeOfBirthType named placeOfBirthType 1..1 MS
* extension contains MultipleBirthFlag named multipleBirth 0..1 MS
* extension contains NewbornBirthTime named newbornBirthTime 0..* MS

* extension[multipleBirth]
* extension[newbornBirthTime]

// parts of not in UZCorePatient but needed for birth profile

* deceased[x] MS
* deceased[x] only dateTime

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

* generalPractitioner MS
* generalPractitioner ^short = "The doctor (paramedic or obstetrician) who issued the medical birth certificate"
* generalPractitioner only Reference(UZCorePractitioner)

* managingOrganization MS
* managingOrganization ^short = "Places of birth"
* managingOrganization only Reference(UZCoreOrganization)

* link MS
* link ^short = "Reference to a Patient or RelatedPerson resource that relates to the same specific person"
