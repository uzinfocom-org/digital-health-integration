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
    materialClass 0..1 MS and
    histologicType 0..1 MS and
    nottinghamTubularFormation 0..1 MS and
    nottinghamNuclearPleomorphism 0..1 MS and
    nottinghamMitoticCount 0..1 MS and
    largestInvasiveFocus 0..1 MS and
    dcisPresent 0..1 MS and
    dcisArchitecturalPattern 0..1 MS and
    dcisGrade 0..1 MS and
    dcisNecrosis 0..1 MS and
    lymphovascularInvasion 0..1 MS and
    microcalcifications 0..1 MS and
    stageModifier 0..1 MS and
    pathologicalT 0..1 MS and
    pathologicalN 0..1 MS and
    pathologicalM 0..1 MS

* component[materialClass] ^short = "Class of material received for histology"
* component[materialClass].code = screening-specialized-observation-parameter-cs#material-class
* component[materialClass].value[x] 1..1
* component[materialClass].value[x] only CodeableConcept
* component[materialClass].value[x] from ScreeningBreastMaterialClassVS (required)

* component[histologicType] ^short = "Breast histologic type"
* component[histologicType].code = screening-specialized-observation-parameter-cs#histologic-type
* component[histologicType].value[x] 1..1
* component[histologicType].value[x] only CodeableConcept
* component[histologicType].value[x] from ScreeningBreastHistologicTypeVS (required)

* component[nottinghamTubularFormation] ^short = "Nottingham glandular differentiation (tubular formation) score"
* component[nottinghamTubularFormation].code = $loinc#85321-8 "Glandular differentiation [Score] in Breast cancer specimen by Nottingham"
* component[nottinghamTubularFormation].value[x] 1..1
* component[nottinghamTubularFormation].value[x] only integer
* component[nottinghamTubularFormation].valueInteger ^minValueInteger = 1
* component[nottinghamTubularFormation].valueInteger ^maxValueInteger = 3

* component[nottinghamNuclearPleomorphism] ^short = "Nottingham nuclear pleomorphism score"
* component[nottinghamNuclearPleomorphism].code = $loinc#44645-0 "Nuclear pleomorphism in Breast tumor by Nottingham"
* component[nottinghamNuclearPleomorphism].value[x] 1..1
* component[nottinghamNuclearPleomorphism].value[x] only integer
* component[nottinghamNuclearPleomorphism].valueInteger ^minValueInteger = 1
* component[nottinghamNuclearPleomorphism].valueInteger ^maxValueInteger = 3

* component[nottinghamMitoticCount] ^short = "Nottingham mitotic rate score"
* component[nottinghamMitoticCount].code = $loinc#85300-2 "Mitotic rate [Score] in Breast cancer specimen by Nottingham"
* component[nottinghamMitoticCount].value[x] 1..1
* component[nottinghamMitoticCount].value[x] only integer
* component[nottinghamMitoticCount].valueInteger ^minValueInteger = 1
* component[nottinghamMitoticCount].valueInteger ^maxValueInteger = 3

* component[largestInvasiveFocus] ^short = "Maximum dimension of the invasive component"
* component[largestInvasiveFocus].code = $loinc#44635-1 "Invasive component size.maximum dimension [Length] in Breast tumor"
* component[largestInvasiveFocus].value[x] 1..1
* component[largestInvasiveFocus].value[x] only Quantity
* component[largestInvasiveFocus].valueQuantity.value 1..1
* component[largestInvasiveFocus].valueQuantity.value ^minValueDecimal = 0
* component[largestInvasiveFocus].valueQuantity.unit 1..1
* component[largestInvasiveFocus].valueQuantity.unit = "mm" (exactly)
* component[largestInvasiveFocus].valueQuantity.system 1..1
* component[largestInvasiveFocus].valueQuantity.system = $ucum (exactly)
* component[largestInvasiveFocus].valueQuantity.code 1..1
* component[largestInvasiveFocus].valueQuantity.code = #mm (exactly)

* component[dcisPresent] ^short = "Presence of ductal carcinoma in situ (DCIS)"
* component[dcisPresent].code = screening-specialized-observation-parameter-cs#dcis-present
* component[dcisPresent].value[x] 1..1
* component[dcisPresent].value[x] only boolean

* component[dcisArchitecturalPattern] ^short = "DCIS architectural growth pattern"
* component[dcisArchitecturalPattern].code = $loinc#85302-8 "Growth pattern of DCIS [Type] in Breast cancer specimen by Light microscopy"
* component[dcisArchitecturalPattern].value[x] 1..1
* component[dcisArchitecturalPattern].value[x] only CodeableConcept
* component[dcisArchitecturalPattern].value[x] from ScreeningHistologyDCISArchitecturalPatternVS (required)

* component[dcisGrade] ^short = "DCIS nuclear malignancy grade"
* component[dcisGrade].code = screening-specialized-observation-parameter-cs#dcis-grade
* component[dcisGrade].value[x] 1..1
* component[dcisGrade].value[x] only CodeableConcept
* component[dcisGrade].value[x] from ScreeningDCISMalignancyGradeVS (required)

* component[dcisNecrosis] ^short = "DCIS necrosis type"
* component[dcisNecrosis].code = $loinc#85340-8 "DCIS necrosis [Type] in Breast cancer specimen by Light microscopy"
* component[dcisNecrosis].value[x] 1..1
* component[dcisNecrosis].value[x] only CodeableConcept
* component[dcisNecrosis].value[x] from ScreeningHistologyDCISNecrosisVS (required)

* component[lymphovascularInvasion] ^short = "Lymphovascular invasion"
* component[lymphovascularInvasion].code = $loinc#59544-7 "Lymph-vascular invasion Cancer specimen"
* component[lymphovascularInvasion].value[x] 1..1
* component[lymphovascularInvasion].value[x] only CodeableConcept
* component[lymphovascularInvasion].value[x] from ScreeningHistologyLymphovascularInvasionVS (required)

* component[microcalcifications] ^short = "Microcalcifications in the breast tumor"
* component[microcalcifications].code = $loinc#44692-2 "Microcalcifications in Breast tumor"
* component[microcalcifications].value[x] 1..1
* component[microcalcifications].value[x] only CodeableConcept
* component[microcalcifications].value[x] from ScreeningHistologyMicrocalcificationsVS (required)

* component[stageModifier] ^short = "Pathological stage modifier"
* component[stageModifier].code = screening-specialized-observation-parameter-cs#stage-modifier
* component[stageModifier].value[x] 1..1
* component[stageModifier].value[x] only CodeableConcept
* component[stageModifier].value[x] from ScreeningStageModifierVS (required)

* component[pathologicalT] ^short = "Pathological T category"
* component[pathologicalT].code = screening-specialized-observation-parameter-cs#pathological-t
* component[pathologicalT].value[x] 1..1
* component[pathologicalT].value[x] only CodeableConcept
* component[pathologicalT].value[x] from ScreeningPathologicalTVS (required)

* component[pathologicalN] ^short = "Pathological N category"
* component[pathologicalN].code = screening-specialized-observation-parameter-cs#pathological-n
* component[pathologicalN].value[x] 1..1
* component[pathologicalN].value[x] only CodeableConcept
* component[pathologicalN].value[x] from ScreeningPathologicalNVS (required)

* component[pathologicalM] ^short = "Pathological M category"
* component[pathologicalM].code = screening-specialized-observation-parameter-cs#pathological-m
* component[pathologicalM].value[x] 1..1
* component[pathologicalM].value[x] only CodeableConcept
* component[pathologicalM].value[x] from ScreeningPathologicalMVS (required)
