ValueSet: BloodDonorObservationTypeVS
Id: blood-donor-observation-type-vs
Title: "Blood donor observation type"
Description: "Blood donor observation type codes for blood donor registration in Uzbekistan"
* insert IntegrationsValueSet(blood-donor-observation-type-vs)
* ^status = #draft
* ^experimental = true
* include codes from system BloodDonorObservationTypeCS
* include $loinc#29308-4

* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningLaboratoryCS)
