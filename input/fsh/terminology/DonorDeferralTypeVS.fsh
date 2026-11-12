ValueSet: DonorDeferralTypeVS
Id: donor-deferral-type-vs
Title: "Allowed donor deferral types"
Description: "Types of blood donor deferral in the blood service integration."
* insert IntegrationsValueSet(donor-deferral-type-vs)
* ^status = #draft
* ^experimental = true
* include codes from system DonorDeferralTypeCS
