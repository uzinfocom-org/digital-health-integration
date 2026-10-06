Profile: NursingCarePlan
Parent: CarePlan
Id: nursing-care-plan
Title: "Nursing CarePlan"
Description: "Nursing course of treatment grouping procedure and medication orders."
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* identifier MS

* instantiatesCanonical MS
* instantiatesCanonical only Canonical(UZCorePlanDefinition or UZCoreQuestionnaire or Measure or UZCoreActivityDefinition or OperationDefinition)

* instantiatesUri MS

* basedOn only Reference(CarePlan or UZCoreServiceRequest or RequestOrchestration or NutritionOrder)

* replaces MS

* partOf MS

* category MS

* title MS

* description MS

* status from ServiceRequestStatusVS (required)

* intent from NursingIntentVS (required) 

* subject only Reference(UZCorePatient or UZCoreGroup)

* encounter only Reference(UZCoreEncounter)

* period MS

* created MS

* custodian only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or Device or UZCoreRelatedPerson or CareTeam)

* contributor only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or Device or UZCoreRelatedPerson or CareTeam)

* careTeam MS

* supportingInfo MS

* addresses only CodeableReference(UZCoreCondition)

* goal only Reference(UZCoreGoal)

* activity MS
* activity.plannedActivityReference MS
* activity.plannedActivityReference only Reference(Appointment or CommunicationRequest or DeviceRequest or MedicationRequest or NutritionOrder or Task or UZCoreServiceRequest or VisionPrescription or RequestOrchestration or ImmunizationRecommendation or SupplyRequest)
* activity.performedActivity MS
* activity.performedActivity only CodeableReference(UZCoreProcedure or UZCoreImmunization or MedicationAdministration or NutritionIntake or UZCoreObservation or ServiceRequest or SupplyDelivery)
* activity.progress MS

* note MS

Instance: nursing-careplan-example-01
InstanceOf: NursingCarePlan
Title: "Nursing CarePlan Example"
Description: "Example course of treatment — shoulder massage, 3 sessions."
Usage: #example

* status = #active
* intent = $request-intent#order
* title = "Shoulder massage course"

* category = $sct#734163000 "Care plan"

* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-encounter)
* created = "2026-09-20T09:15:00+05:00"

* custodian = Reference(Practitioner/example-practitioner)
* contributor = Reference(Practitioner/example-practitioner-gender-other)

* activity[0].plannedActivityReference = Reference(ServiceRequest/UZCoreServiceRequest-Example01)
* activity[1].performedActivity.reference = Reference(Procedure/example-procedure)