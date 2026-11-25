Profile: OrdersServiceRequest
Parent: UZCoreServiceRequest
Id: orders-servicerequest
Title: "Orders ServiceRequest"
Description: "Service requests and referrals for the Orders integration, including referral purpose, clinical specialty, state-funded treatment grounds and SBDL criteria."
* ^status = #draft
* ^experimental = true
* identifier.system 1..1
* identifier.value 1..1
* category contains referralPurpose 0..* MS and specialty 0..1 MS
* category[referralPurpose] from OrdersServiceRequestReferralPurposeVS (required)
* category[referralPurpose] ^short = "Purpose of the referral"
* category[specialty] from OrdersServiceRequestSpecialtyVS (required)
* category[specialty] ^short = "Clinical specialty the referral is addressed to"
* code ^binding.additional[+].purpose = #preferred
* code ^binding.additional[=].valueSet = Canonical(OrdersServiceRequestCodeVS)
* orderDetail.parameter MS
* orderDetail.parameter.code from OrdersServiceRequestOrderDetailParameterVS (preferred)
* orderDetail.parameter ^slicing.discriminator.type = #value
* orderDetail.parameter ^slicing.discriminator.path = "code"
* orderDetail.parameter ^slicing.rules = #open
* orderDetail.parameter contains basis 0..1 MS
* orderDetail.parameter[basis] ^short = "Basis for state-funded treatment for a qualifying diagnosis"
* orderDetail.parameter[basis].code = $loinc#86947-9
* orderDetail.parameter[basis].code MS
* orderDetail.parameter[basis].value[x] only CodeableConcept
* orderDetail.parameter[basis].value[x] MS
* orderDetail.parameter[basis].valueCodeableConcept from OrdersServiceRequestBasisVS (extensible)
* performer MS
* performer only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or CareTeam or UZCoreHealthcareService or UZCorePatient or Device or UZCoreRelatedPerson)
* reason contains sbdl 0..1 MS
* reason[sbdl] from OrdersSBDLVS (required)
* reason[sbdl].concept 1..1
* reason[sbdl].reference 0..0
* reason[sbdl].concept.coding.system = $orders-sbdl-cs
* reason[sbdl] ^short = "SBDL criterion under which the treatment is state-funded; the diagnosis is a separate ICD-10 reason"
* extension contains OrdersFundingResolution named fundingResolution 0..1 MS
