Profile: BloodServiceRequest
Parent: UZCoreServiceRequest
Id: blood-servicerequest
Title: "Blood ServiceRequest"
Description: "Integration ServiceRequest profile for donor laboratory orders and secondary processing of blood components."
* ^status = #draft
* ^experimental = true

* identifier.system 1..1
* identifier ^short = "Laboratory order number or blood component processing request number"
* intent = #order
* subject only Reference(UZCorePatient)
* category[dhpCategory] ^short = "Receiving laboratory category; omitted for secondary processing"
* code ^short = "Overall requested service, distinct from the selected tests or processing operations"
* performer MS
* performer only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or CareTeam or UZCoreHealthcareService or UZCorePatient or Device or UZCoreRelatedPerson)
* location MS
* location only CodeableReference(UZCoreLocation)
* requisition.system 1..1
* requisition ^short = "Shared identifier grouping laboratory orders for one donation episode"
* focus MS
* focus only Reference(UZCoreInventoryItem)
* focus ^short = "Blood component inventory item to be processed"
* note MS
* orderDetail MS
* orderDetail.parameter MS
* orderDetail.parameter.code MS
* orderDetail.parameter.code from BldLabCodesVS (required)
* orderDetail.parameter.code ^short = "Selected laboratory test or local blood component processing operation"
* orderDetail.parameter.value[x] only boolean
* orderDetail.parameter.valueBoolean = true
* orderDetail.parameter.valueBoolean MS
* orderDetail.parameter.valueBoolean ^short = "True for a selected test or operation; omit parameters for unselected options"
