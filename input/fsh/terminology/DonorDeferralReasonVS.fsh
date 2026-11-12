ValueSet: DonorDeferralReasonVS
Id: donor-deferral-reason-vs
Title: "Allowed donor deferral reasons"
Description: "Reasons of blood donor deferral in the blood service integration."
* insert IntegrationsValueSet(donor-deferral-reason-vs)
* ^status = #draft
* ^experimental = true
* include codes from system DonorDeferralReasonCS
