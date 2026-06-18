Instance: screening-hpv-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "HPV Results to SNOMED CT"
Description: "Maps local UZ screening HPV result codes to SNOMED CT."
* url = "https://terminology.dhp.uz/ConceptMap/screening-hpv-to-snomed"
* name = "ScreeningHPVToSnomed"
* status = #draft
* experimental = false
* publisher = "DHP Integration"

* group.source = Canonical(ScreeningHPVCS)
* sourceScopeCanonical = Canonical(ScreeningHPVVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs 

// 1. Invalid
* group.element[+].code = #scr-hpv-1
* group.element[=].display = "Invalid"
* group.element[=].target[+].code = #2655002
* group.element[=].target[=].display = "Invalid"
* group.element[=].target[=].relationship = #equivalent

// 2. Negative
* group.element[+].code = #scr-hpv-2
* group.element[=].display = "Negative"
* group.element[=].target[+].code = #77851000146104
* group.element[=].target[=].display = "High risk human papillomavirus not detected"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

// 3. Positive
* group.element[+].code = #scr-hpv-3
* group.element[=].display = "Positive"
* group.element[=].target[+].code = #97401000146106
* group.element[=].target[=].display = "High risk human papillomavirus positive"
* group.element[=].target[=].relationship = #source-is-narrower-than-target