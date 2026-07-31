Profile: ScreeningBreastHistologyObservation
Parent: ScreeningObservation
Id: screening-breast-histology-observation
Title: "Screening Breast Histology Observation"
Description: "Specialized screening Observation for breast histology and pathological TNM results."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* code = screening-specialized-observation-parameter-cs#breast-histology-result
* component[transformationZone] 0..0
* component[birads] 0..0
* component[breastDensity] 0..0
* component[imageQuality] 0..0
* component contains
    histologicType 0..1 MS and
    dcisGrade 0..1 MS and
    stageModifier 0..1 MS and
    pathologicalT 0..1 MS and
    pathologicalN 0..1 MS and
    pathologicalM 0..1 MS

* component[histologicType] ^short = "Breast histologic type"
* component[histologicType].code = screening-specialized-observation-parameter-cs#histologic-type
* component[histologicType].value[x] only CodeableConcept
* component[histologicType].value[x] from ScreeningBreastHistologicTypeVS (required)

* component[dcisGrade] ^short = "DCIS malignancy grade"
* component[dcisGrade].code = screening-specialized-observation-parameter-cs#dcis-grade
* component[dcisGrade].value[x] only CodeableConcept
* component[dcisGrade].value[x] from ScreeningDCISMalignancyGradeVS (required)

* component[stageModifier] ^short = "Pathological stage modifier"
* component[stageModifier].code = screening-specialized-observation-parameter-cs#stage-modifier
* component[stageModifier].value[x] only CodeableConcept
* component[stageModifier].value[x] from ScreeningStageModifierVS (required)

* component[pathologicalT] ^short = "Pathological T category"
* component[pathologicalT].code = screening-specialized-observation-parameter-cs#pathological-t
* component[pathologicalT].value[x] only CodeableConcept
* component[pathologicalT].value[x] from ScreeningPathologicalTVS (required)

* component[pathologicalN] ^short = "Pathological N category"
* component[pathologicalN].code = screening-specialized-observation-parameter-cs#pathological-n
* component[pathologicalN].value[x] only CodeableConcept
* component[pathologicalN].value[x] from ScreeningPathologicalNVS (required)

* component[pathologicalM] ^short = "Pathological M category"
* component[pathologicalM].code = screening-specialized-observation-parameter-cs#pathological-m
* component[pathologicalM].value[x] only CodeableConcept
* component[pathologicalM].value[x] from ScreeningPathologicalMVS (required)
