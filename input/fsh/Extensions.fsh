Extension: PatientPlaceOfBirthType
Id: patient-placeOfBirthType
Title: "Place of Birth Type"
Description: "Extension to indicate the type of place where the patient was born (e.g. home, hospital, other)."

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/patient-placeOfBirthType"
* ^status = #active
* ^context.type = #element
* ^experimental = true
* ^context.expression = "Patient"

* value[x] only CodeableConcept
* valueCodeableConcept from BirthPlaceVS (required)
* valueCodeableConcept ^short = "Type of the place where the patient was born"

Extension: RelatedPersonEducation
Id: relatedperson-education
Title: "Related Person Education"
Description: "Extension to indicate the education level of the related person."
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/relatedperson-education"
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
* ^date = "2026-02-12"
* value[x] 1..
* value[x] only Coding
* value[x] from https://terminology.dhp.uz/fhir/core/ValueSet/gender-other-vs (required)
  * obeys uzcore-gender-other-1

  Invariant: uzcore-gender-other-1
Description: "The differentiation of the gender indication 'other' may only be filled if the gender 'other' is specified (for use in an extension)"
* severity = #error
* expression = "%resource.where(gender='other').exists()"

Invariant: uzcore-gender-other-2
Description: "gender 'other' implies differentiation of the gender indication 'other' (for use in a profile)"
* severity = #error
* expression = "gender.exists() and gender = 'other' implies gender.extension('https://dhp.uz/fhir/integrations/StructureDefinition/gender-other').exists()"

// Extension: ManagingOrganizationAttachment
// Id: managing-organization-attachment
// Title: "Managing organization attachment date"
// Description: "Date when the patient was attached to the managing organization. In Uzbekistan, patients can only change their managing organization once a year."
// Context: Patient
// * ^context.type = #element
// * ^context.expression = "Patient"
// * ^experimental = true
// * value[x] 1..
// * value[x] only date

Extension: ManagingOrganizationAttachment
Id: managing-organization-attachment
Title: "Managing organization attachment date"
Description: "Date when the patient was attached to the managing organization. In Uzbekistan, patients can only change their managing organization once a year."
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/managing-organization-attachment"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Patient"

* value[x] 1..1
* value[x] only date


Extension: MultipleBirthFlag
Id: multiple-birth-flag
Title: "Multiple Birth Flag"
Description: "Indicates whether more than one newborn was delivered."

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/multiple-birth-flag"
* ^experimental = true

//change context
* ^context.type = #element
* ^context.expression = "Patient"

* value[x] 1..1 MS
* value[x] only boolean
* valueBoolean ^short = "True if multiple babies were born"


Extension: NewbornBirthTime
Id: newborn-birth-time
Title: "Newborn Birth Time"
Description: "Birth time of each newborn in a multiple birth."

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/newborn-birth-time"
* ^experimental = true

//change context
* ^context.type = #element
* ^context.expression = "Patient"

* value[x] 1..1 MS
* value[x] only dateTime
* valueDateTime ^short = "Exact birth time of the newborn"



// mine
Extension: AdmissionOrigin
Id: admission-origin
Title: "Admission Origin"
Description: "Extension to represent the origin from which the patient came before admission."
Context: Encounter.admission.origin
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from EncounterAdmissionOriginVS (required)


// screening
Extension: BreastQuadrantExtension
Id: breast-quadrant
Title: "Breast Quadrant Extension"
Description: "Breast quadrant used to localize findings."
* ^status = #active
* ^experimental = true
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/breast-quadrant"
* ^context.type = #element
* ^context.expression = "Observation.bodySite"
* value[x] only CodeableConcept
* valueCodeableConcept from ScreeningBreastQuadrantVS (required)

