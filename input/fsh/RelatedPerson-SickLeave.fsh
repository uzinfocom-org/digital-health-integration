Profile: SickLeaveRelatedPerson
Parent: RelatedPerson
Id: sick-leave-related-person
Title: "Sick Leave Related Person"
Description: "Legal representative, guardian, family member or other person related to the patient of a sick leave"
* insert SickLeaveContact
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* patient only Reference(UZCorePatient)

* name 1..1 MS
* name ^short = "Full name of the related person"

* gender MS
* gender.extension contains $gender-other named otherGender 0..1 MS

* birthDate MS
