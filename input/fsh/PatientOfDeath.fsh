Profile: PatientOfDeath
Parent: UZCorePatient
Id: patient-of-death
Title: "Patient of Death"
Description: "Profile representing the death information of a patient, including the date and time of death, cause of death, and other relevant details."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* managingOrganization MS
* managingOrganization ^short = "Organization managing the record (e.g., hospital or clinic)"
* managingOrganization only Reference(UZCoreOrganization)

Instance: patient-death-example
InstanceOf: PatientOfDeath
Title: "Example Patient Death"
Description: "Example instance of Patient Death profile"
Usage: #example

* identifier[nationalId].value = "30211975910033"
* active = true
* name
  * use = #usual
  * text = "Усманов Салим Салиевич"
  * family = "Усманов"
  * given = "Салим"
  * suffix = "Салиевич"
* telecom
  * system = #phone
  * use = #mobile
  * rank = 1
  * period.start = "2021-05-13"
* birthDate = "1994-01-27"
* address
  * use = #home
  * type = #postal
  * line = "ул.Муминова 4"
  * country = "182"
  * district = "1703202"
  * city = "22070013"
  * period.start = "1999-04-06"
* gender = #male