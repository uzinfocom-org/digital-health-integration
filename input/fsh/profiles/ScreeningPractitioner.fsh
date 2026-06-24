Profile: ScreeningPractitioner
Parent: UZCorePractitioner
Id: screening-practitioner
Title: "Screening Practitioner"
Description: "Practitioner profile for the cervical and breast cancer screening system, inheriting UZCorePractitioner."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier contains screeningId 0..1 MS
* identifier[screeningId].system = "https://dhp.uz/fhir/core/sid/pro/uz/screening"


// ==================== CORRECT EXAMPLE 1 ====================
Instance: mika-adamova
InstanceOf: ScreeningPractitioner
Usage: #example
Description: "Mika Adamova Chorshanbievna"

* identifier[nationalId].value = "515050500501"
* identifier[nationalId].use = #official
* identifier[screeningId].system = $screening-practitioner-id
* identifier[screeningId].value = "44"
* identifier[screeningId].use = #usual

* active = true
* name.text = "Mika Adamova Chorshanbievna"
* name.family = "Adamova"
* name.given[0] = "Mika"
* name.given[1] = "Chorshanbievna"
* gender = #female
* birthDate = "1995-03-18"

* telecom[0].system = #phone
* telecom[=].value = "998-99-999-99-99"
* telecom[=].use = #mobile


// ==================== EXAMPLE 2 ====================
Instance: lyuba-dadaeva
InstanceOf: ScreeningPractitioner
Usage: #example
Description: "Lyuba Dadaeva Yuldashevna"

* identifier[nationalId].value = "515050500502"
* identifier[nationalId].use = #official
* identifier[screeningId].system = $screening-practitioner-id
* identifier[screeningId].value = "45"
* identifier[screeningId].use = #usual

* active = true
* name.text = "Lyuba Dadaeva Yuldashevna"
* name.family = "Dadaeva"
* name.given[0] = "Lyuba"
* name.given[1] = "Yuldashevna"
* gender = #female
* birthDate = "1995-03-18"

* telecom[0].system = #phone
* telecom[=].value = "998-99-999-99-99"
* telecom[=].use = #mobile


// ==================== EXAMPLE 3 ====================
Instance: nina-tipsina
InstanceOf: ScreeningPractitioner
Usage: #example
Description: "Nina Tipsina Tumanovna"

* identifier[nationalId].value = "515050500503"
* identifier[nationalId].use = #official
* identifier[screeningId].system = $screening-practitioner-id
* identifier[screeningId].value = "46"
* identifier[screeningId].use = #usual

* active = true
* name.text = "Nina Tipsina Tumanovna"
* name.family = "Tipsina"
* name.given[0] = "Nina"
* name.given[1] = "Tumanovna"
* gender = #female
* birthDate = "1995-03-18"

* telecom[0].system = #phone
* telecom[=].value = "998-99-999-99-99"
* telecom[=].use = #mobile