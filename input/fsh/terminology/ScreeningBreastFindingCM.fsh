Instance: screening-breast-finding-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Breast Findings to SNOMED CT"
Description: "Maps the local UZ macrocalcification finding code to SNOMED CT. All other breast finding codes use SNOMED CT directly and need no mapping."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/screening-breast-finding-to-snomed"
* name = "ScreeningBreastFindingToSnomed"
* status = #draft
* experimental = false
* publisher = "DHP Integration"

* group.source = Canonical(ScreeningBreastFindingCS)
* sourceScopeCanonical = Canonical(ScreeningBreastFindingVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

// 3. Macrocalcifications (no equivalent SNOMED concept; maps to the broader calcification finding)
* group.element[+].code = #src-find-3
* group.element[=].display = "Macrocalcifications"
* group.element[=].target[+].code = #697944008
* group.element[=].target[=].display = "Mammographic calcification of breast"
* group.element[=].target[=].relationship = #source-is-narrower-than-target
