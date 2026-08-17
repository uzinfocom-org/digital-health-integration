ValueSet: ScreeningObservationTypeVS
Id: screening-observation-type-vs
Title: "Observation Types ValueSet"
Description: "Value set of SNOMED CT codes for screening observation component types. Vital signs (height, weight, BMI) use the FHIR vital signs profiles instead."
* insert IntegrationsValueSet(screening-observation-type-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningObservationTypeCS)

* include codes from system $sct

// * $sct#1348266008 "Breast Imaging and Reporting and Data System"
// * $sct#129793001 "Mammographic breast density"
// * $sct#246646005 "Quality of visual image"
