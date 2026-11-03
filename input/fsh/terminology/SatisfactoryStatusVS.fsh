ValueSet: SatisfactoryStatusVS
Id: satisfactory-status-vs
Title: "Satisfactory Status"
Description: "Observation.valueCodeableConcept for a general condition field (Observation.code chr-0005-00003 \"Umumiy ahvoli\"): satisfactory or unsatisfactory, the same SNOMED CT codes as Form 111."
* insert IntegrationsValueSet(satisfactory-status-vs)
* ^status = #draft
* ^experimental = true

* $sct#162669003 "Patient's condition satisfactory"
* $sct#162667001 "Patient's condition poor"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)
