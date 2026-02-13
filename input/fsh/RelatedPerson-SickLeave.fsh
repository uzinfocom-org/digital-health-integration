Profile: SickLeaveRelatedPerson
Parent: RelatedPerson
Id: sick-leave-related-person
Title: "Sick Leave Related Person"
Description: "Related person for family care sick leave"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* name 1..1 MS
* name ^short = "Full name of the related person"

* extension contains RelatedPersonGender named gender 1..1 MS
* extension contains RelatedPersonGenderOther named otherGender 0..1 MS
* extension contains RelatedPersonBirthdate named birthdate 1..1 MS