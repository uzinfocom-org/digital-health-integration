Profile: NewbornPatient
Parent: UZCorePatient
Id: newborn-patient
Title: "Newborn Patient"
Description: "Uzbekistan Newborn Patient profile, used to represent patients administrative information"
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* birthDate MS
* birthDate.extension contains patient-birthTime named birthTime 0..1 MS

* multipleBirth[x] MS

// parts of not in UZCorePatient but needed for birth profile

* deceased[x] MS
* deceased[x] only dateTime

* contact MS
* contact ^short = "The patient's contact party (e.g., guardian, partner, friend)"


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






Instance: newborn-patient-example
InstanceOf: NewbornPatient
Usage: #example
Title: "Newborn Patient Example"
Description: "Example newborn patient in Uzbekistan"


* identifier[birthCertificate].system = "https://dhp.uz/fhir/core/sid/pid/uz/bct"
* identifier[birthCertificate].value = "51040910"


* name[0].text = "John Duran"
* name[0].family = "Duran"
* gender = #male


* multipleBirthBoolean = false


* birthDate = "2026-04-01"
* birthDate.extension[birthTime].valueDateTime = "2026-04-01T10:00:00+05:00"

* contact[0].relationship[0] = $v2-0131#N "Next-of-Kin"
* contact[0].name.text = "Sophia Lills"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+998936000000"
* contact[0].address.text = "Mirzo Ulugbek, Tashkent"
* contact[0].gender = #female
* contact[0].organization = Reference(organization1-example)

* generalPractitioner[0] = Reference(practitioner-003)

* managingOrganization = Reference(organization1-example)








