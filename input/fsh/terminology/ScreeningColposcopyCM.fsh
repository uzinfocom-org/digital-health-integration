Instance: screening-colposcopy-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Colposcopy Results to SNOMED CT"
Description: "Maps local UZ screening colposcopy result codes to SNOMED CT."
* url = "https://terminology.dhp.uz/ConceptMap/screening-colposcopy-to-snomed"
* name = "ScreeningColposcopyToSnomed"
* status = #draft
* experimental = false
* publisher = "DHP Integration"

* group.source = Canonical(ScreeningColposcopyCS)
* sourceScopeCanonical = Canonical(ScreeningColposcopyVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs 

// 1. NILM (Normal)
* group.element[+].code = #scr-colpo-1
* group.element[=].display = "NILM (Normal)"
* group.element[=].target[+].code = #373887005
* group.element[=].target[=].display = "Negative for intraepithelial lesion or malignancy"
* group.element[=].target[=].relationship = #equivalent

// 2. LSIL
* group.element[+].code = #scr-colpo-2
* group.element[=].display = "LSIL"
* group.element[=].target[+].code = #416030007
* group.element[=].target[=].display = "Cervicovaginal cytology: LSIL"
* group.element[=].target[=].relationship = #equivalent

// 3. HSIL
* group.element[+].code = #scr-colpo-3
* group.element[=].display = "HSIL"
* group.element[=].target[+].code = #22725004
* group.element[=].target[=].display = "High-grade squamous intraepithelial lesion"
* group.element[=].target[=].relationship = #equivalent

// 4. Atypical
* group.element[+].code = #scr-colpo-4
* group.element[=].display = "Atypical"
* group.element[=].target[+].code = #700450008
* group.element[=].target[=].display = "Colposcopy abnormal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target