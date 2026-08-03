Profile: ScreeningBreastCytologyObservation
Parent: ScreeningObservation
Id: screening-breast-cytology-observation
Title: "Screening Breast Cytology Observation"
Description: "Breast cytology conclusion classified using the Yokohama system."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* code = screening-specialized-observation-parameter-cs#scrn-0073-00029
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from ScreeningYokohamaCategoryVS (required)
* note MS
* component[transformationZone] 0..0
* component[birads] 0..0
* component[breastDensity] 0..0
* component[imageQuality] 0..0
* component contains
    materialClass 1..1 MS and
    primaryConclusion 0..1 MS

* component[materialClass].code = screening-specialized-observation-parameter-cs#scrn-0073-00007
* component[materialClass].value[x] 1..1
* component[materialClass].value[x] only CodeableConcept
* component[materialClass].valueCodeableConcept = ScreeningBreastMaterialClassCS#scrn-0072-00003

* component[primaryConclusion].code = screening-specialized-observation-parameter-cs#scrn-0073-00048
* component[primaryConclusion].value[x] 1..1
* component[primaryConclusion].value[x] only boolean
