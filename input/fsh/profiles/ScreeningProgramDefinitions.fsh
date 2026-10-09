Profile: ScreeningPlanDefinition
Parent: UZCorePlanDefinition
Id: screening-plan-definition
Title: "Screening PlanDefinition"
Description: "Versioned reusable screening program definition with a program identifier. This definition does not itself implement invitation generation, eligibility or completion evaluation."
* ^status = #draft
* ^experimental = true
* version 1..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains program 1..1 MS
* identifier[program].system 1..1
* identifier[program].system = $screening-program-type-id
* identifier[program].value 1..1
* useContext[screeningFocus] 1..1
* subjectReference only Reference(UZCoreGroup)

Profile: ScreeningActivityDefinition
Parent: UZCoreProgramActivityDefinition
Id: screening-activity-definition
Title: "Screening ActivityDefinition"
Description: "An individual screening activity with a screening focus and the same program identifier as its owning screening PlanDefinition. A questionnaire is linked through workflow-shallComplyWith."
* ^status = #draft
* ^experimental = true
* version 1..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains program 1..1 MS
* identifier[program].system 1..1
* identifier[program].system = $screening-program-type-id
* identifier[program].value 1..1
* useContext[focus].valueCodeableConcept = $sct#360156006 "Screening intent"
