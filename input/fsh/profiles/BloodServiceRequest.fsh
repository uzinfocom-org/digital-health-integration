Profile: BloodServiceRequest
Parent: UZCoreServiceRequest
Id: blood-servicerequest
Title: "Blood ServiceRequest"
Description: "Integration ServiceRequest profile for one donor laboratory test or panel, or one secondary processing operation on a blood component."
* ^status = #draft
* ^experimental = true

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains orderNumber 0..1 MS
* identifier.system 1..1
* identifier[orderNumber] ^short = "Order number assigned by the requesting blood service"
* identifier[orderNumber].system = $blood-service-request-number
* identifier[orderNumber].value 1..1 MS
* intent = #order
* subject only Reference(UZCorePatient or UZCoreLocation)
* subject ^short = "Donor for laboratory testing, or the blood service location for stock processing"
* category[dhpCategory] ^short = "Receiving laboratory category; omitted for secondary processing"
* code 1..1
* code.concept 1..1
* code.reference 0..0
* code.concept.coding 1..1
* code from BloodLabCodesVS (required)
* code ^short = "Single requested laboratory test, panel or blood component processing operation"
* performer MS
* performer only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or CareTeam or UZCoreHealthcareService or UZCorePatient or Device or UZCoreRelatedPerson)
* location MS
* location only CodeableReference(UZCoreLocation)
* requisition.system 1..1
* requisition.system = $blood-donation-number
* requisition.value 1..1
* requisition ^short = "Donation number linking tests and component processing requests for the same donation"
* focus MS
* focus only Reference(UZCoreBiologicallyDerivedProduct)
* focus ^short = "Blood component to be processed"
* note MS
