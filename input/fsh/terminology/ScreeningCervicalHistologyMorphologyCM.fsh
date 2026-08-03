Alias: $icdo3 = http://terminology.hl7.org/CodeSystem/icd-o-3

Instance: screening-cervical-histology-morphology-to-icdo3
InstanceOf: ConceptMap
Usage: #definition
Title: "Screening Cervical Histology Morphology to ICD-O-3"
Description: "Maps Screening-local cervical histology diagnosis codes to ICD-O-3 morphology codes."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/screening-cervical-histology-morphology-to-icdo3"
* name = "ScreeningCervicalHistologyMorphologyToICDO3"
* status = #draft
* experimental = true
* publisher = "DHP Integration"
* group.source = Canonical(ScreeningCervicalHistologyMorphologyCS)
* sourceScopeCanonical = Canonical(ScreeningCervicalHistologyMorphologyVS)
* group.target = $icdo3

* group.element[+].code = #scrn-0075-00001
* group.element[=].target[+].code = #8077/0
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #scrn-0075-00002
* group.element[=].target[+].code = #8077/2
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[+].code = #scrn-0075-00003
* group.element[=].target[+].code = #8077/2
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[+].code = #scrn-0075-00004
* group.element[=].target[+].code = #8085/3
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #scrn-0075-00005
* group.element[=].target[+].code = #8086/3
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #scrn-0075-00006
* group.element[=].target[+].code = #8070/3
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #scrn-0075-00007
* group.element[=].target[+].code = #8140/2
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #scrn-0075-00008
* group.element[=].target[+].code = #8483/2
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #scrn-0075-00009
* group.element[=].target[+].code = #8484/2
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #scrn-0075-00010
* group.element[=].target[+].code = #8140/3
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #scrn-0075-00011
* group.element[=].target[+].code = #8482/3
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #scrn-0075-00012
* group.element[=].target[+].code = #8310/3
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #scrn-0075-00013
* group.element[=].target[+].code = #9110/3
* group.element[=].target[=].relationship = #equivalent
