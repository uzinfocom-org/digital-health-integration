Profile: SickLeaveRelatedPerson
Parent: RelatedPerson
<<<<<<< HEAD
Id: relatedperson-sickleave
Title: "RelatedPerson Sick Leave"
Description: "Profile for related persons linked to SickLeave CarePlan with business rules."
* ^experimental = true
=======
Id: sick-leave-related-person
Title: "Sick Leave Related Person"
Description: "Related person for family care sick leave"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"
>>>>>>> 37883d3 (last changes added bu Sickleave)

* name 1..1 MS
* name ^short = "Full name of the related person"

* extension contains RelatedPersonGender named gender 1..1 MS
* extension contains RelatedPersonGenderOther named otherGender 0..1 MS
* extension contains RelatedPersonBirthdate named birthdate 1..1 MS