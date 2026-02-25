Profile: RelatedPersonBirth
Parent: RelatedPerson
Id: related-person-birth
Title: "RelatedPerson of Birth"
Description: "This refers to the person who is associated with the newborn and is responsible for its care."
* ^status = #draft
* ^experimental = true

* identifier 0..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "International passport identifier"
* identifier ^slicing.ordered = false

* identifier contains passportInternational 0..1 MS

* identifier[passportInternational]
  * system 1..1 MS
  * system = $passport-international
  * type 1..1 MS
  * type = $identifier-type#PPN "Passport number"
  * use = #official
  * value 1..1 MS

* patient 1..1 MS
* patient only Reference(PatientBirth)
* relationship 0..* MS
* relationship from RelationshipTypeVS (required)
* telecom 0..* MS
  * system 0..1 MS 
  * system from ContactPointSystemVS (required)
  * use 0..1 MS 
  * use from TelecomUseVS (required)
  * value 1..1 MS
  * value ^short = "Contact details of the related person"
  * rank 0..1 MS
  * rank ^short = "Preferred order of use"
  * period 0..1 MS
  * period ^short = "Period of use"
* gender MS
  * extension contains GenderOtherUZ named gender-other-2 0..1 MS
* obeys uzcore-gender-other-2
* insert IntAndUzAddressRules
* insert HumanName

* birthDate MS
* period MS

* extension contains relatedperson-education named education 1..1 MS
