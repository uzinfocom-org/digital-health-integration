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

Extension: SickLeaveStatusHistory
Id: sickleave-status-history
Title: "Sick Leave Status History"
Description: "Список кодов прошлых статусов больничного листа"
* ^experimental = true
* ^context.type = #element
* ^context.expression = "CarePlan"

* extension contains
    status 1..1 MS and
    period 1..1 MS

* extension[status].value[x] only code
* extension[status].valueCode from CarePlanStatusVS (required)

* extension[period].value[x] only Period

Extension: DiagnosisUse
Id: care-for-diagnosis-use
Title: "Diagnosis Use Type"
Description: "Type of diagnosis usage for sick leave"
* ^context.type = #element
* ^experimental = true
* ^context.expression = "CarePlan.addresses"

* value[x] only code
* valueCode from https://terminology.dhp.uz/fhir/core/ValueSet/diagnosis-type-vs (required)

Extension: RelatedPersonGenderOther
Id: relatedperson-gender-other
Title: "Other Gender of Related Person"
Description: "Differentiation of administrative gender if changed"
* ^experimental = true

* value[x] only Coding
* valueCoding from https://terminology.dhp.uz/fhir/core/ValueSet/gender-other-vs (required)

Extension: RelatedPersonBirthdate
Id: relatedperson-birthdate
Title: "Birthdate of Related Person"
Description: "Date of birth of the related person"
* ^experimental = true

* value[x] 1..1 MS
* value[x] only date

Extension: MultipleBirthFlag
Id: multiple-birth-flag
Title: "Multiple Birth Flag"
Description: "Indicates whether more than one newborn was delivered."
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/multiple-birth-flag"
* ^experimental = true

* value[x] 1..1 MS
* value[x] only boolean
* valueBoolean ^short = "True if multiple babies were born"

Extension: NewbornBirthTime
Id: newborn-birth-time
Title: "Newborn Birth Time"
Description: "Birth time of each newborn in a multiple birth."
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/newborn-birth-time"
* ^experimental = true

* value[x] 1..1 MS
* value[x] only dateTime
* valueDateTime ^short = "Exact birth time of the newborn"

Extension: WorkflowStatus
Id: care-for-workflow-status
Title: "Sick Leave Workflow Status"
Description: "Extended lifecycle status of Sick Leave"
* ^context.type = #element
* ^experimental = true
* ^context.expression = "CarePlan"

* value[x] only code
* valueCode from CarePlanStatusVS (required)

Extension: StatusHistory
Id: care-for-status-history
Title: "Sick Leave Status History"
Description: "History of workflow statuses with active period"
* ^context.type = #element
* ^experimental = true
* ^context.expression = "CarePlan"

* extension contains
    status 1..1 MS and
    period 1..1 MS

* extension[status].value[x] only code
* extension[status].valueCode from CarePlanStatusVS (required)

* extension[period].value[x] only Period

Extension: RelatedPersonLink
Id: care-for-related-person
Title: "Related Person for Sick Leave"
Description: "Related person when sick leave reason is family care"
* ^context.type = #element
* ^experimental = true
* ^context.expression = "CarePlan"

* value[x] only Reference(RelatedPerson)
