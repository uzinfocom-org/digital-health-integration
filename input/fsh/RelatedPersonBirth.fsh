Profile: RelatedPersonOfBirth
Parent: UZCoreRelatedPerson
Id: related-person-of-birth
Title: "RelatedPerson of Birth"
Description: "This refers to the person who is associated with the newborn and is responsible for its care."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

Instance: related-person-of-birth-example
InstanceOf: RelatedPersonOfBirth
Usage: #example
Title: "RelatedPerson of Birth Example"
Description: "Example related person responsible for the newborn"


* identifier[passportInternational].type = $identifier-type#PPN "Passport number"
* identifier[passportInternational].use = #official
* identifier[passportInternational].value = "AB1234567"

* patient = Reference(newborn-patient-example)

* relationship = $v3-RoleClass#NOK

* name[0].text = "Boltayev Damir Ketmonovich"
* gender = #male
* birthDate = "1950-01-01"

* telecom[0].system = #phone
* telecom[0].use = #mobile
* telecom[0].value = "+998901234567"
* telecom[0].rank = 1
