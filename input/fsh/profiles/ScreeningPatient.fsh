Profile: ScreeningPatient
Parent: UZCorePatient
Id: screening-patient
Title: "Screening Patient"
Description: "Patient profile for the cervical and breast cancer screening system, inheriting the structure of UZCorePatient."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier contains screeningId 0..1 MS
* identifier[screeningId].system = "https://dhp.uz/fhir/core/sid/pid/uz/screening"

* telecom MS


Instance: lola-oripova
InstanceOf: ScreeningPatient
Usage: #example
Description: "Example patient Lola Oripova for the cervical and breast cancer screening module"

* identifier[nationalId].value = "515050500505"
* identifier[nationalId].use = #official
* identifier[passportLocal].value = "AC1234567"
* identifier[passportLocal].use = #official
* identifier[screeningId].system = $screening-patient-id
* identifier[screeningId].value = "45"
* identifier[screeningId].use = #usual

* name[0].text = "Lola Oripova Shakhzodovna"
* name[=].family = "Oripova"
* name[=].given[0] = "Lola"
* name[=].given[+] = "Shakhzodovna"

* gender = #female
* birthDate = "1995-03-18"

* telecom[0].system = #phone
* telecom[=].value = "998-99-999-99-99"
* telecom[=].use = #mobile

* address[0].use = #temp
* address[0].type = #physical
* address[0].text = "Iltifot MFY, 58 Harbiy Shaharcha Area, House 53, Apartment 104"
* address[0].city = "Buyuk Ipak Yuli MFY"
* address[0].district = "Mirzo Ulugbek District"
* address[0].state = "Tashkent City"

// ==================== Extensions ====================
* extension[nationality].extension[code].valueCodeableConcept = $nationality-cs#44