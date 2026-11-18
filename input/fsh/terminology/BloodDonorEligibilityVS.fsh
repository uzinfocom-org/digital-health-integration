ValueSet: BloodDonorEligibilityVS
Id: blood-donor-eligibility-vs
Title: "Blood donor eligibility"
Description: "Eligibility for blood donation and the temporary and permanent medical deferrals from it"
* insert IntegrationsValueSet(blood-donor-eligibility-vs)
* ^status = #draft
* ^experimental = true
* $blood-donor-eligibility-cs#blood-donation-eligible
* $blood-donor-eligibility-cs#blood-donation-deferred-temporary
* $blood-donor-eligibility-cs#blood-donation-deferred-permanent
