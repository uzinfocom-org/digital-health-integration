Extension: PatientPlaceOfBirthType
Id: patient-placeOfBirthType
Title: "Place of Birth Type"
Description: "Extension to indicate the type of place where the patient was born (e.g. home, hospital, other)."
* ^status = #active
* ^context.type = #element
* ^experimental = true
* ^context.expression = "Patient"

* value[x] only CodeableConcept
* valueCodeableConcept from https://terminology.dhp.uz/ValueSet/birth-place-vs (required)
* valueCodeableConcept ^short = "Type of the place where the patient was born"

Extension: RelatedPersonEducation
Id: relatedperson-education
Title: "Related Person Education"
Description: "Extension to indicate the education level of the related person."
* ^status = #draft
* ^context.type = #element
* ^experimental = true
* ^context.expression = "RelatedPerson"

* value[x] only CodeableConcept
* valueCodeableConcept from https://terminology.dhp.uz/fhir/core/ValueSet/education-vs (required)
* valueCodeableConcept ^short = "Education level of the related person"

Extension: GenderOtherUZ
Id: gender-other
Title: "Differentiation of the administrative gender 'other'"
Description: "Extension for more precise differentiation of the administrative gender 'other', aligned with German base profiles representation of the same concept."
Context: Patient.gender, RelatedPerson.gender, Person.gender, Practitioner.gender, Patient.contact.gender
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/gender-other"
* ^experimental = true
* ^date = "2025-03-12"
* value[x] 1..
* value[x] only Coding
* value[x] from gender-other-vs (required)
  * obeys uzcore-gender-other-1

  Invariant: uzcore-gender-other-1
Description: "The differentiation of the gender indication 'other' may only be filled if the gender 'other' is specified (for use in an extension)"
* severity = #error
* expression = "%resource.where(gender='other').exists()"

Invariant: uzcore-gender-other-2
Description: "gender 'other' implies differentiation of the gender indication 'other' (for use in a profile)"
* severity = #error
* expression = "gender.exists() and gender = 'other' implies gender.extension('https://dhp.uz/fhir/integrations/StructureDefinition/gender-other').exists()"

Extension: ManagingOrganizationAttachment
Id: managing-organization-attachment
Title: "Managing organization attachment date"
Description: "Date when the patient was attached to the managing organization. In Uzbekistan, patients can only change their managing organization once a year."
Context: Patient
* ^context.type = #element
* ^context.expression = "Patient"
* ^experimental = true
* value[x] 1..
* value[x] only date

Extension: CarePlanStatusHistory
Id: careplan-status-history
Title: "CarePlan Status History"

* extension contains
    status 1..1 and
    period 1..1

* extension[status].valueCode
* extension[status].valueCode from CarePlanStatusVS (required)

* extension[period].valuePeriod

Extension: CarePlanCustodian
Id: careplan-custodian
Title: "CarePlan Custodian (FHIR R5 replacement)"

* valueReference
* valueReference only Reference(
    Practitioner or PractitionerRole or Organization or CareTeam
)

Extension: DiagnosisUseExtension
Id: care-for-diagnosis-use
Title: "Diagnosis Use Type"

* valueCode
* valueCode from https://terminology.dhp.uz/fhir/core/ValueSet/diagnosis-type-vs (required)

Extension: RelatedPersonGenderExtension
Id: care-for-relatedperson-gender
Title: "Related Person Gender"

* valueCode
* valueCode from https://terminology.medcore.uz/ValueSet/gender (required)

Extension: RelatedPersonBirthDateExtension
Id: care-for-relatedperson-birthdate
Title: "Related Person Birth Date"

* valueDate
