Profile: RelatedPersonBirth
Parent: RelatedPerson
Id: related-person-birth
Title: "RelatedPerson of Birth"
Description: "Uzbekistan Birth RelatedPerson profile for new born patient"
* ^status = #draft
* ^experimental = true


* patient 1..1 MS
* patient only Reference(UZCorePatient)
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
* active MS
* birthDate MS
* period MS

* extension contains relatedperson-education named education 1..1 MS
