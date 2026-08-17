Instance: specimen-feature-type-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Tuberculosis Specimen Feature Types to SNOMED CT"
Description: "Maps the local DHIS specimen processing-state code that has an exact SNOMED CT concept - the culture isolate - to SNOMED CT. Use the SNOMED CT code directly in resources (see the DHIS Specimen Feature Type ValueSet); the primary sample and sediment states have no exact SNOMED CT concept and keep their local code."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/specimen-feature-type-to-snomed"
* name = "SpecimenFeatureTypeToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(SpecimenFeatureTypeCS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #Spec002-0004
* group.element[=].display = "Kultura izolati"
* group.element[=].target[+].code = #119303007
* group.element[=].target[=].display = "Microbial isolate"
* group.element[=].target[=].relationship = #equivalent
