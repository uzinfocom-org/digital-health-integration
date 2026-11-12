Invariant: blood-donor-deferral-obs-1
Description: "Lifelong donor deferral must not include a duration in any component."
Severity: #error
Expression: "code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs' and code = 'lldf-0001-00001').exists() implies component.value.empty()"

Profile: BloodDonorDeferralObservation
Parent: UZCoreObservation
Id: blood-donor-deferral-observation
Title: "Blood Donor Deferral Observation"
Description: "Integration Observation profile for recording a blood donor's temporary or lifelong deferral and its reasons."
* ^status = #draft
* ^experimental = true
* obeys blood-donor-deferral-obs-1

* identifier.system 1..1
* code from DonorDeferralTypeVS (required)
* code ^short = "Temporary or lifelong donor deferral"
* code ^definition = "The type of deferral assessed for the donor. One Observation records one deferral type."
* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Donor whose deferral is recorded"
* effective[x] ^definition = "The time or period when the donor deferral assessment is clinically relevant."
* issued ^short = "When this version of the assessment became available"
* component ^short = "Reasons for this deferral type"
* component ^definition = "Each component records one reason for the donor deferral. Multiple reasons of the same deferral type may be recorded in one Observation."
* component.code from DonorDeferralReasonVS (required)
* component.code ^short = "Reason for donor deferral"
* component.value[x] only integer
* component.valueInteger ^minValueInteger = 0
* component.valueInteger ^short = "Duration of a temporary deferral in days"
* component.valueInteger ^definition = "An optional non-negative duration in days for this temporary deferral reason. Zero is a valid temporary duration; omit the value for lifelong deferral."
* note ^short = "Optional clinical explanation of the donor deferral"
