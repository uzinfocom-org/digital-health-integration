Instance: dispensary-disease-nature-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Dispensary Disease Nature to SNOMED CT"
Description: "Maps the DHP dispensary disease nature codes to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dispensary-disease-nature-to-snomed"
* name = "DispensaryDiseaseNatureToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(DispensaryDiseaseNatureCS)
* sourceScopeCanonical = Canonical(DispensaryDiseaseNatureVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

// "Not stated" carries no clinical meaning of its own: leave the target unpopulated
// rather than asserting an unknown-value code.
* group.element[+].code = #chr-0128-0001
* group.element[=].display = "Ko'rsatilmagan"
* group.element[=].noMap = true

* group.element[+].code = #chr-0128-0002
* group.element[=].display = "O'tkir"
* group.element[=].target[+].code = #424124008
* group.element[=].target[=].display = "Sudden onset AND/OR short duration (qualifier value)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #chr-0128-0003
* group.element[=].display = "Yarim o'tkir"
* group.element[=].target[+].code = #19939008
* group.element[=].target[=].display = "Subacute (qualifier value)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #chr-0128-0004
* group.element[=].display = "Hayotda birinchi marta aniqlangan"
* group.element[=].target[+].code = #255217005
* group.element[=].target[=].display = "First episode (qualifier value)"
* group.element[=].target[=].relationship = #equivalent

// SNOMED only says the episode is new; the DHP code additionally scopes that to the
// current reporting year, so it is the narrower of the two.
* group.element[+].code = #chr-0128-0005
* group.element[=].display = "Joriy yilda birinchi marta aniqlangan"
* group.element[=].target[+].code = #288527008
* group.element[=].target[=].display = "New episode (qualifier value)"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
