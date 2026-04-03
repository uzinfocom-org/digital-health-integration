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