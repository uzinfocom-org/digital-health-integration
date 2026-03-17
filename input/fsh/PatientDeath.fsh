// Profile: ProfileDeath
// Parent: Patient
// Id: profile-death
// Title: "Patient - Death"
// Description: "Minimal patient profile used for death registration in Uzbekistan"

// * ^status = #active
// * ^experimental = false
// * ^publisher = "Uzinfocom"

// ////////////////////////////////////////////////////////
// //// IDENTIFIER
// ////////////////////////////////////////////////////////

// * identifier 0..* MS
// * identifier ^short = "Patient identifiers"

// * identifier.use from https://terminology.dhp.uz/ValueSet/identifier-use-vs
// * identifier.type from https://terminology.dhp.uz/ValueSet/identifier-type-vs

// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "type"
// * identifier ^slicing.rules = #open

// * identifier contains nationalId 0..1 MS

// ////////////////////////////////////////////////////////
// //// NATIONAL ID SLICE
// ////////////////////////////////////////////////////////

// * identifier[nationalId]
// * identifier[nationalId].use 0..1
// * identifier[nationalId].type 1..1 MS
// * identifier[nationalId].system 1..1 MS
// * identifier[nationalId].value 1..1 MS

// * identifier[nationalId].type = $identifier-type#NI "National unique individual identifier"

// * identifier[nationalId].type.coding.system = "https://terminology.hl7.org/CodeSystem/v2-0203"
// * identifier[nationalId].type.coding.code = #NI
// * identifier[nationalId].type.coding.display = "National unique individual identifier"

// * identifier[nationalId].system ^patternUri = "https://dpm.uz/"

// ////////////////////////////////////////////////////////
// //// ACTIVE
// ////////////////////////////////////////////////////////

// * active 0..1 MS

// ////////////////////////////////////////////////////////
// //// NAME
// ////////////////////////////////////////////////////////

// * name 0..* MS

// * name.use 0..1
// * name.text 0..1 MS
// * name.family 0..1 MS
// * name.given 0..* MS
// * name.suffix 0..* MS
// * name.period 0..1

// ////////////////////////////////////////////////////////
// //// GENDER
// ////////////////////////////////////////////////////////

// * gender 0..1

// * gender from http://hl7.org/fhir/ValueSet/administrative-gender

// * gender.extension contains
//     http://medcore.uz/StructureDefinition/gender-other named gender-other 0..1

// ////////////////////////////////////////////////////////
// //// BIRTH DATE
// ////////////////////////////////////////////////////////

// * birthDate 0..1 MS

// ////////////////////////////////////////////////////////
// //// DECEASED
// ////////////////////////////////////////////////////////

// * deceased[x] only dateTime
// * deceasedDateTime 0..1 MS
// * deceasedDateTime ^short = "Date and time of death"

// ////////////////////////////////////////////////////////
// //// ADDRESS
// ////////////////////////////////////////////////////////

// * address 0..* MS

// * address.use 0..1
// * address.use from https://terminology.dhp.uz/ValueSet/address-use-vs

// * address.type 0..1
// * address.type from https://terminology.dhp.uz/ValueSet/address-type-vs

// * address.line 0..* MS
// * address.city 0..1 MS
// * address.district 0..1 MS
// * address.country 0..1 MS
// * address.period 0..1

// ////////////////////////////////////////////////////////
// //// MANAGING ORGANIZATION
// ////////////////////////////////////////////////////////

// * managingOrganization 0..1
// * managingOrganization only Reference(Organization)