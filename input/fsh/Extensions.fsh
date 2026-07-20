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

// sick leave
Extension: WorkflowStatus
Id: care-for-workflow-status
Title: "Sick Leave Workflow Status"
Description: "Extended lifecycle status of Sick Leave"

* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "CarePlan"

* value[x] 1..1 MS

* value[x] only code

* valueCode from CarePlanStatusVS (required)

Extension: StatusHistory
Id: care-for-status-history
Title: "Sick Leave Status History"
Description: "History of workflow statuses with active period"

* ^status = #draft

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

* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "CarePlan"

* value[x] 0..1

* value[x] only CodeableConcept

* valueCodeableConcept from https://terminology.dhp.uz/fhir/core/ValueSet/diagnosis-type-vs (required)

Extension: RelatedPersonLink
Id: care-for-related-person
Title: "Related Person for Sick Leave"
Description: "Reference to related person when sick leave reason is family care"

* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "CarePlan"

* value[x] 0..1

* value[x] only Reference(RelatedPerson)

Extension: RelatedPersonBirthdate
Id: relatedperson-birthdate
Title: "Birthdate of Related Person"
Description: "Date of birth of the related person"

* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "RelatedPerson"

* value[x] 1..1 MS

* value[x] only date
