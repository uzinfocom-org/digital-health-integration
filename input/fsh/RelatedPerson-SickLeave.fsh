Profile: RelatedPersonSickLeave
Parent: RelatedPerson
Id: relatedperson-sickleave
Title: "RelatedPerson Sick Leave"
Description: "Profile for related persons linked to SickLeave CarePlan with business rules."
* ^experimental = true

* name 1..1 MS
* name ^short = "Full name of the related person"

* extension contains RelatedPersonGender named gender 1..1 MS
* extension contains RelatedPersonGenderOther named otherGender 0..1 MS
* extension contains RelatedPersonBirthdate named birthdate 1..1 MS