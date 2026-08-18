Instance: type-resource-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Type Resource to SNOMED CT"
Description: "Maps the local record artifact type codes to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/type-resource-to-snomed"
* name = "TypeResourceToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(TypeResourceCS)
* sourceScopeCanonical = Canonical(NarcologyTypeResourceVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #type-res-0002-0001
* group.element[=].display = "Komissiya qarori"
* group.element[=].target[+].code = #444804000
* group.element[=].target[=].display = "Multidisciplinary care conference report (record artifact)"
* group.element[=].target[=].relationship = #equivalent
