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

* insert SickLeaveContact
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

* insert SickLeaveContact
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

Extension: RelatedPersonLink
Id: care-for-related-person
Title: "Related Person for Sick Leave"
Description: "Reference to related person when sick leave reason is family care"

* insert SickLeaveContact
* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "CarePlan"

* value[x] 0..1

* value[x] only Reference(RelatedPerson)

Extension: IncapacityPeriod
Id: care-for-incapacity-period
Title: "Sick Leave Incapacity Period"
Description: "One period of temporary incapacity for work covered by the sick leave. A sick leave extended several times has one period per extension."

* insert SickLeaveContact
* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "CarePlan"

* value[x] 1..1

* value[x] only Period

* valuePeriod.start 1..1

* valuePeriod.end 1..1

Extension: HeadPractitioner
Id: care-for-head-practitioner
Title: "Sick Leave Head Practitioner"
Description: "Chief physician or other authorized practitioner who approves the sick leave."

* insert SickLeaveContact
* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "CarePlan"

* value[x] 1..1

* value[x] only Reference(UZCorePractitioner)


Extension: CancerICCC3Group
Id: cancer-iccc-3-group
Title: "Cancer ICCC-3 Group"
Description: "ICCC-3 group for the primary cancer"

* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from $iccc-3-vs (required)


Extension: CancerDetectionCondition
Id: cancer-detection-condition
Title: "Cancer Detection Condition"
Description: "Circumstances under which the primary cancer was detected."

* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from CancerDetectionConditionVS (required)

Extension: CancerLateralityQualifier
Id: cancer-laterality-qualifier
Title: "Cancer Laterality Qualifier"
Description: "Laterality of the anatomical site affected by the primary cancer."

* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition.bodySite"

* value[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from CancerLateralityQualifierVS (required)