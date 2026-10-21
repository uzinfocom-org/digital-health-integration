Instance: screening-colposcopy-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Colposcopy Results to SNOMED CT"
Description: "Maps local UZ screening colposcopy categories where a SNOMED CT target is available; exact SNOMED CT results are sent directly."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/screening-colposcopy-to-snomed"
* name = "ScreeningColposcopyToSnomed"
* status = #draft
* experimental = false
* publisher = "DHP Integration"

* group.source = Canonical(ScreeningColposcopyCS)
* sourceScopeCanonical = Canonical(ScreeningColposcopyVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs 

// Atypical change is narrower than the general abnormal-colposcopy finding.
* group.element[+].code = #scrn-0091-00004
* group.element[=].display = "Atypical change"
* group.element[=].target[+].code = #700450008
* group.element[=].target[=].display = "Colposcopy abnormal"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

// The combined CIN 2+ category has no exact SNOMED CT target asserted here.
* group.element[+].code = #scrn-0091-00007
* group.element[=].display = "Cervical intraepithelial neoplasia grade 2 or worse (CIN 2+)"
* group.element[=].noMap = true
