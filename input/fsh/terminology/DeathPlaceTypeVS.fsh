ValueSet: DeathPlaceTypeVS
Id: death-place-type-vs
Title: "Death Place Type ValueSet"
Description: "ValueSet for death place classification"

* ^status = #draft
* ^experimental = true


* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeathPlaceTypeCS)

* http://snomed.info/sct#183676005 "Died in hospital"
* http://snomed.info/sct#876879006 "Died at home"
* http://snomed.info/sct#876885004 "Died in street"
* http://snomed.info/sct#74964007 "Other"