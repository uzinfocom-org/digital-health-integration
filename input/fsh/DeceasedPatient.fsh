Profile: DeceasedPatient
Parent: UZCorePatient
Id: patient-of-death
Title: "Patient of Death"
Description: "Profile representing the death information of a patient, including the date and time of death, cause of death, and other relevant details."
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* deceased[x] 1..1 MS
* deceased[x] only dateTime
* deceasedDateTime ^short = "Date and time of death"

* managingOrganization MS
* managingOrganization ^short = "Organization managing the record (e.g., hospital or clinic)"
* managingOrganization only Reference(UZCoreOrganization)






Instance: deceased-patient-example
InstanceOf: DeceasedPatient
Title: "Example instance of a deceased patient."
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
* deceasedDateTime = "2024-03-15T08:30:00+05:00"
* address[uzAddress]
  * use = #home
  * type = #postal
  * line = "ул.Муминова 4"
  * country = "UZ"
  * district = "1703202"
  * city = "22070013"
  * period.start = "1999-04-06"
* gender = #male

