Profile: ScreeningBreastHistologyObservation
Parent: ScreeningObservation
Id: screening-breast-histology-observation
Title: "Screening Breast Histology Observation"
Description: "Specialized screening Observation for breast histology and pathological TNM results."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* code = screening-specialized-observation-parameter-cs#scrn-0073-00005
* component[transformationZone] 0..0
* component[birads] 0..0
* component[breastDensity] 0..0
* component[imageQuality] 0..0
* component contains
    materialClass 1..1 MS and
    histologicType 0..1 MS and
    nottinghamTubularFormation 0..1 MS and
    nottinghamNuclearPleomorphism 0..1 MS and
    nottinghamMitoticCount 0..1 MS and
    largestInvasiveFocus 0..1 MS and
    dcisPresent 0..1 MS and
    dcisArchitecturalPattern 0..* MS and
    dcisGrade 0..1 MS and
    dcisNecrosis 0..1 MS and
    lymphovascularInvasion 0..1 MS and
    microcalcifications 0..1 MS and
    stageModifier 0..1 MS and
    pathologicalT 0..1 MS and
    pathologicalN 0..1 MS and
    pathologicalM 0..1 MS and
    overallGrade 0..1 MS and
    tumorFocality 0..1 MS and
    tumorSpread 0..* MS and
    skinInvasion 0..* MS and
    skinLesionFociPresent 0..1 MS and
    pagetDiseasePresent 0..1 MS and
    dermalLymphovascularInvasion 0..1 MS and
    residualCancerBurdenClass 0..1 MS and
    invasiveResectionMarginStatus 0..1 MS and
    dcisResectionMarginStatus 0..1 MS and
    invasiveResectionMarginLocation 0..* MS and
    dcisResectionMarginLocation 0..* MS and
    regionalLymphNodesProvided 0..1 MS and
    totalLymphNodesExamined 0..1 MS and
    positiveLymphNodes 0..1 MS and
    largestLymphNodeMetastasis 0..1 MS and
    extranodalExtension 0..1 MS and
    distantMetastasis 0..* MS and
    finalPathologicalStage 0..1 MS and
    primaryConclusion 0..1 MS

* component[materialClass] ^short = "Class of material received for histology"
* component[materialClass].code = screening-specialized-observation-parameter-cs#scrn-0073-00007
* component[materialClass].value[x] 1..1
* component[materialClass].value[x] only CodeableConcept
* component[materialClass].value[x] from ScreeningBreastMaterialClassVS (required)

* component[histologicType] ^short = "Breast histologic type"
* component[histologicType].code = screening-specialized-observation-parameter-cs#scrn-0073-00006
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
* component[dcisPresent].code = screening-specialized-observation-parameter-cs#scrn-0073-00008
* component[dcisPresent].value[x] 1..1
* component[dcisPresent].value[x] only boolean

* component[dcisArchitecturalPattern] ^short = "DCIS architectural growth pattern"
* component[dcisArchitecturalPattern].code = $loinc#85302-8 "Growth pattern of DCIS [Type] in Breast cancer specimen by Light microscopy"
* component[dcisArchitecturalPattern].value[x] 1..1
* component[dcisArchitecturalPattern].value[x] only CodeableConcept
* component[dcisArchitecturalPattern].value[x] from ScreeningHistologyDCISArchitecturalPatternVS (required)

* component[dcisGrade] ^short = "DCIS nuclear malignancy grade"
* component[dcisGrade].code = screening-specialized-observation-parameter-cs#scrn-0073-00009
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
* component[stageModifier].code = screening-specialized-observation-parameter-cs#scrn-0073-00010
* component[stageModifier].value[x] 1..1
* component[stageModifier].value[x] only CodeableConcept
* component[stageModifier].value[x] from ScreeningStageModifierVS (required)

* component[pathologicalT] ^short = "Pathological T category"
* component[pathologicalT].code = screening-specialized-observation-parameter-cs#scrn-0073-00011
* component[pathologicalT].value[x] 1..1
* component[pathologicalT].value[x] only CodeableConcept
* component[pathologicalT].value[x] from ScreeningPathologicalTVS (required)

* component[pathologicalN] ^short = "Pathological N category"
* component[pathologicalN].code = screening-specialized-observation-parameter-cs#scrn-0073-00012
* component[pathologicalN].value[x] 1..1
* component[pathologicalN].value[x] only CodeableConcept
* component[pathologicalN].value[x] from ScreeningPathologicalNVS (required)

* component[pathologicalM] ^short = "Pathological M category"
* component[pathologicalM].code = screening-specialized-observation-parameter-cs#scrn-0073-00013
* component[pathologicalM].value[x] 1..1
* component[pathologicalM].value[x] only CodeableConcept
* component[pathologicalM].value[x] from ScreeningPathologicalMVS (required)

* component[overallGrade] ^short = "Overall histologic grade"
* component[overallGrade].code = screening-specialized-observation-parameter-cs#scrn-0073-00031
* component[overallGrade].value[x] 1..1
* component[overallGrade].value[x] only CodeableConcept
* component[overallGrade].value[x] from ScreeningCervicalHistologicGradeVS (required)

* component[tumorFocality] ^short = "Tumor focality"
* component[tumorFocality].code = screening-specialized-observation-parameter-cs#scrn-0073-00032
* component[tumorFocality].value[x] 1..1
* component[tumorFocality].value[x] only CodeableConcept

* component[tumorSpread] ^short = "Tumor spread"
* component[tumorSpread].code = screening-specialized-observation-parameter-cs#scrn-0073-00033
* component[tumorSpread].value[x] 1..1
* component[tumorSpread].value[x] only CodeableConcept

* component[skinInvasion] ^short = "Type of skin invasion"
* component[skinInvasion].code = screening-specialized-observation-parameter-cs#scrn-0073-00034
* component[skinInvasion].value[x] 1..1
* component[skinInvasion].value[x] only CodeableConcept

* component[skinLesionFociPresent] ^short = "Skin lesion foci present"
* component[skinLesionFociPresent].code = screening-specialized-observation-parameter-cs#scrn-0073-00035
* component[skinLesionFociPresent].value[x] 1..1
* component[skinLesionFociPresent].value[x] only boolean

* component[pagetDiseasePresent] ^short = "Paget disease present"
* component[pagetDiseasePresent].code = screening-specialized-observation-parameter-cs#scrn-0073-00036
* component[pagetDiseasePresent].value[x] 1..1
* component[pagetDiseasePresent].value[x] only boolean

* component[dermalLymphovascularInvasion] ^short = "Dermal lymphovascular invasion"
* component[dermalLymphovascularInvasion].code = screening-specialized-observation-parameter-cs#scrn-0073-00037
* component[dermalLymphovascularInvasion].value[x] 1..1
* component[dermalLymphovascularInvasion].value[x] only CodeableConcept
* component[dermalLymphovascularInvasion].value[x] from ScreeningHistologyLymphovascularInvasionVS (required)

* component[residualCancerBurdenClass] ^short = "Residual Cancer Burden class"
* component[residualCancerBurdenClass].code = screening-specialized-observation-parameter-cs#scrn-0073-00025
* component[residualCancerBurdenClass].value[x] 1..1
* component[residualCancerBurdenClass].value[x] only CodeableConcept
* component[residualCancerBurdenClass].value[x] from ScreeningResidualCancerBurdenClassVS (required)

* component[invasiveResectionMarginStatus] ^short = "Resection margin status for invasive carcinoma"
* component[invasiveResectionMarginStatus].code = screening-specialized-observation-parameter-cs#scrn-0073-00038
* component[invasiveResectionMarginStatus].value[x] 1..1
* component[invasiveResectionMarginStatus].value[x] only CodeableConcept
* component[invasiveResectionMarginStatus].value[x] from ScreeningResectionMarginStatusVS (required)

* component[dcisResectionMarginStatus] ^short = "Resection margin status for DCIS"
* component[dcisResectionMarginStatus].code = screening-specialized-observation-parameter-cs#scrn-0073-00039
* component[dcisResectionMarginStatus].value[x] 1..1
* component[dcisResectionMarginStatus].value[x] only CodeableConcept
* component[dcisResectionMarginStatus].value[x] from ScreeningResectionMarginStatusVS (required)

* component[invasiveResectionMarginLocation] ^short = "Location of a positive invasive carcinoma margin"
* component[invasiveResectionMarginLocation].code = screening-specialized-observation-parameter-cs#scrn-0073-00040
* component[invasiveResectionMarginLocation].value[x] 1..1
* component[invasiveResectionMarginLocation].value[x] only CodeableConcept

* component[dcisResectionMarginLocation] ^short = "Location of a positive DCIS margin"
* component[dcisResectionMarginLocation].code = screening-specialized-observation-parameter-cs#scrn-0073-00041
* component[dcisResectionMarginLocation].value[x] 1..1
* component[dcisResectionMarginLocation].value[x] only CodeableConcept

* component[regionalLymphNodesProvided] ^short = "Regional lymph nodes were submitted for examination"
* component[regionalLymphNodesProvided].code = screening-specialized-observation-parameter-cs#scrn-0073-00042
* component[regionalLymphNodesProvided].value[x] 1..1
* component[regionalLymphNodesProvided].value[x] only boolean

* component[totalLymphNodesExamined] ^short = "Total number of lymph nodes examined"
* component[totalLymphNodesExamined].code = screening-specialized-observation-parameter-cs#scrn-0073-00043
* component[totalLymphNodesExamined].value[x] 1..1
* component[totalLymphNodesExamined].value[x] only integer
* component[totalLymphNodesExamined].valueInteger ^minValueInteger = 0

* component[positiveLymphNodes] ^short = "Number of positive lymph nodes"
* component[positiveLymphNodes].code = screening-specialized-observation-parameter-cs#scrn-0073-00044
* component[positiveLymphNodes].value[x] 1..1
* component[positiveLymphNodes].value[x] only integer
* component[positiveLymphNodes].valueInteger ^minValueInteger = 0

* component[largestLymphNodeMetastasis] ^short = "Largest lymph node metastasis"
* component[largestLymphNodeMetastasis].code = screening-specialized-observation-parameter-cs#scrn-0073-00045
* component[largestLymphNodeMetastasis].value[x] 1..1
* component[largestLymphNodeMetastasis].value[x] only Quantity
* component[largestLymphNodeMetastasis].valueQuantity.value 1..1
* component[largestLymphNodeMetastasis].valueQuantity.value ^minValueDecimal = 0
* component[largestLymphNodeMetastasis].valueQuantity.unit = "mm" (exactly)
* component[largestLymphNodeMetastasis].valueQuantity.system = $ucum (exactly)
* component[largestLymphNodeMetastasis].valueQuantity.code = #mm (exactly)

* component[extranodalExtension] ^short = "Extranodal extension"
* component[extranodalExtension].code = screening-specialized-observation-parameter-cs#scrn-0073-00024
* component[extranodalExtension].value[x] 1..1
* component[extranodalExtension].value[x] only boolean

* component[distantMetastasis] ^short = "Distant metastasis site"
* component[distantMetastasis].code = screening-specialized-observation-parameter-cs#scrn-0073-00046
* component[distantMetastasis].value[x] 1..1
* component[distantMetastasis].value[x] only CodeableConcept

* component[finalPathologicalStage] ^short = "Final pathological stage"
* component[finalPathologicalStage].code = screening-specialized-observation-parameter-cs#scrn-0073-00047
* component[finalPathologicalStage].value[x] 1..1
* component[finalPathologicalStage].value[x] only CodeableConcept

* component[primaryConclusion] ^short = "Primary conclusion marker"
* component[primaryConclusion].code = screening-specialized-observation-parameter-cs#scrn-0073-00048
* component[primaryConclusion].value[x] 1..1
* component[primaryConclusion].value[x] only boolean
