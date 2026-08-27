Profile: HepatitisPatient
Parent: UZCorePatient
Id: hepatitis-patient
Title: "Hepatitis Patient"
Description: "Patient profile for the hepatitis registry system, inheriting the structure of UZCorePatient."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* telecom MS

Instance: hepatitis-patient-example
InstanceOf: HepatitisPatient
Description: "Example of a patient for the Hepatitis Registry"
Usage: #example

* language = #en
* extension[nationality].extension[code].valueCodeableConcept = $nationality-cs#44
* extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#UZ "Uzbekistan"

* identifier[nationalId]
  * value = "515050500505"

* identifier[passportLocal]
  * value = "AB1234567"

* identifier[healthCardId]
  * value = "01234567890456"

* active = true

* name
  * use = #official
  * text = "To'lanboev Tolibjon"
  * family = "To'lanboev"
  * given = "Tolibjon"

* gender = #male

* birthDate = "1990-02-01"

* telecom[0].system = #phone
* telecom[=].value = "998-90-123-45-45"
* telecom[=].use = #mobile

* address[0].use = #temp
* address[0].type = #physical
* address[0].text = "Iltifot MFY, 58-Harbiy shaharcha area, House 53, Apartment 104"
* address[0].city = "Buyuk Ipak Yuli MFY"
* address[0].district = "Mirzo Ulugbek District"
* address[0].state = "Tashkent City"