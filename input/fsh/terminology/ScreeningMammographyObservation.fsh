Profile: ScreeningMammographyObservation
Parent: ScreeningObservation
Id: screening-mammography-observation
Title: "Screening Mammography Observation"
Description: "Specialized screening Observation for mammography results and findings."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* code = $sct#71651007 "Mammography"
* component[transformationZone] 0..0
* component[birads] MS
* component[breastDensity] MS
* component[imageQuality] MS

* component contains breastFinding 0..* MS
* component[breastFinding] ^short = "Mammographic breast finding"
* component[breastFinding].code = screening-specialized-observation-parameter-cs#breast-finding
* component[breastFinding].value[x] only CodeableConcept
* component[breastFinding].value[x] from ScreeningBreastFindingVS (required)

