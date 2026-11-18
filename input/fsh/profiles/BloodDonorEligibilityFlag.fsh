Profile: BloodDonorEligibilityFlag
Parent: UZCoreFlag
Id: blood-donor-eligibility-flag
Title: "Blood Donor Eligibility Flag"
Description: "Flag recording whether a blood donor is eligible to donate or deferred from donation for medical reasons, with the deferral reason and, for a temporary deferral, when it ends."
* ^status = #draft
* ^experimental = true
* obeys bdflag-1

* extension contains $workflow-reason named reason 0..1 MS
* extension[reason] ^short = "Why the donor is deferred, and what led to it; only on a deferral"
* extension[reason].valueCodeableReference.concept 1..1 MS
* extension[reason].valueCodeableReference from DonorDeferralReasonVS (required)
* extension[reason].valueCodeableReference.reference MS
* extension[reason].valueCodeableReference only CodeableReference(UZCoreObservation or UZCoreDiagnosticReport or UZCoreCondition)
* extension[reason].valueCodeableReference.reference ^short = "Test result, report or condition that led to the deferral"

* status ^short = "Status of the flag: active while the eligibility or deferral is in force"
* category MS
* code from BloodDonorEligibilityVS (required)
* code ^short = "Eligible to donate, or temporarily or permanently deferred for medical reasons"
* subject ^short = "The donor"
* period 1..1 MS
* period ^short = "When the eligibility or deferral began and, for a temporary deferral, when it ends"
* period ^definition = "When the eligibility or deferral is in force. A temporary deferral has a period.end, the date from which the donor may give blood again; the flag stays active until it is set to inactive, so read period.end together with status. A permanent deferral has no period.end while it applies. A flag that no longer applies, such as an eligibility replaced by a deferral or a deferral lifted early, is set to inactive, with period.end at the time it stopped applying."
* period.start 1..1 MS
* period.start ^short = "When the eligibility or deferral began"
* period.end MS
* period.end ^short = "When a temporary deferral ends, or when the flag stopped applying"
* author MS
* author only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* author ^short = "Who recorded the eligibility or deferral"

Invariant: bdflag-1
Description: "A deferral states its reason in the workflow-reason extension; an eligibility has no reason"
* severity = #error
* expression = "extension('http://hl7.org/fhir/StructureDefinition/workflow-reason').exists() = code.coding.where(system = 'https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs' and code.startsWith('blood-donation-deferred')).exists()"
