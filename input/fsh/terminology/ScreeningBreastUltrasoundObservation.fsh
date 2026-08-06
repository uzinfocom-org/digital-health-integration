Profile: ScreeningBreastUltrasoundObservation
Parent: ScreeningObservation
Id: screening-breast-ultrasound-observation
Title: "Screening Breast Ultrasound Observation"
Description: "Specialized screening Observation for breast ultrasound parameters and focal lesion characteristics."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* code = $sct#47079000 "Ultrasonography of breast"
* value[x] 0..1
* value[x] only CodeableConcept
* hasMember MS
* component[transformationZone] 0..0
* component[breastDensity] 0..0
* component[imageQuality] 0..0
* component contains
    breastFinding 0..* MS and
    breastSymmetry 0..1 MS and
    acrComposition 0..1 MS and
    skinNippleStatus 0..1 MS and
    tissueDifferentiation 0..1 MS and
    subcutaneousFat 0..1 MS and
    fibroglandularEchogenicity 0..1 MS and
    ductStatus 0..1 MS and
    retromammarySpace 0..1 MS and
    elastographyColorType 0..1 MS and
    intramammaryNodeStatus 0..1 MS and
    axillaryNodeStatus 0..1 MS and
    axillaryNodeDifferentiation 0..1 MS and
    regionalNodeStatus 0..1 MS and
    dynamics 0..1 MS and
    breastSide 0..1 MS and
    breastQuadrant 0..1 MS and
    lesionShape 0..1 MS and
    lesionOrientation 0..1 MS and
    lesionContour 0..1 MS and
    lesionEchogenicity 0..1 MS and
    lesionAcousticEffect 0..1 MS and
    lesionVascularization 0..1 MS and
    menstrualCycleDuration 0..1 MS and
    anamnesis 0..1 MS and
    fibroglandularThickness 0..1 MS and
    maximumDuctDiameter 0..1 MS and
    elastographyStiffness 0..1 MS and
    axillaryMaximumNodeSize 0..1 MS and
    axillaryCorticalThickness 0..1 MS and
    regionalNodeNote 0..1 MS and
    additionalChanges 0..1 MS and
    focalLesionPresent 0..1 MS and
    clockFacePosition 0..1 MS and
    distanceFromNipple 0..1 MS and
    lesionLength 0..1 MS and
    lesionWidth 0..1 MS and
    lesionThickness 0..1 MS and
    internalStructureHomogeneous 0..1 MS and
    internalStructureHeterogeneous 0..1 MS and
    internalStructureCysticInclusions 0..1 MS and
    internalStructureMicrocalcifications 0..1 MS and
    internalStructureMacrocalcifications 0..1 MS

* component[breastFinding] ^short = "Breast ultrasound finding"
* component[breastFinding].code = screening-specialized-observation-parameter-cs#scrn-0073-00004
* component[breastFinding].value[x] only CodeableConcept
* component[breastFinding].value[x] from ScreeningBreastFindingVS (required)

* component[breastSymmetry] ^short = "Breast symmetry"
* component[breastSymmetry].code = screening-ultrasound-parameter-cs#scrn-0052-00004
* component[breastSymmetry].value[x] only CodeableConcept
* component[breastSymmetry].value[x] from ScreeningUltrasoundBreastSymmetryVS (required)

* component[acrComposition] ^short = "ACR breast composition"
* component[acrComposition].code = screening-ultrasound-parameter-cs#scrn-0052-00005
* component[acrComposition].value[x] only CodeableConcept
* component[acrComposition].value[x] from ScreeningUltrasoundAcrCompositionVS (required)

* component[skinNippleStatus] ^short = "Skin and nipple status"
* component[skinNippleStatus].code = screening-ultrasound-parameter-cs#scrn-0052-00006
* component[skinNippleStatus].value[x] only CodeableConcept
* component[skinNippleStatus].value[x] from ScreeningUltrasoundSkinNippleStatusVS (required)

* component[tissueDifferentiation] ^short = "Tissue differentiation"
* component[tissueDifferentiation].code = screening-ultrasound-parameter-cs#scrn-0052-00007
* component[tissueDifferentiation].value[x] only CodeableConcept
* component[tissueDifferentiation].value[x] from ScreeningUltrasoundTissueDifferentiationVS (required)

* component[subcutaneousFat] ^short = "Subcutaneous fat"
* component[subcutaneousFat].code = screening-ultrasound-parameter-cs#scrn-0052-00008
* component[subcutaneousFat].value[x] only CodeableConcept
* component[subcutaneousFat].value[x] from ScreeningUltrasoundSubcutaneousFatVS (required)

* component[fibroglandularEchogenicity] ^short = "Fibroglandular echogenicity"
* component[fibroglandularEchogenicity].code = screening-ultrasound-parameter-cs#scrn-0052-00010
* component[fibroglandularEchogenicity].value[x] only CodeableConcept
* component[fibroglandularEchogenicity].value[x] from ScreeningUltrasoundFibroglandularEchogenicityVS (required)

* component[ductStatus] ^short = "Duct status"
* component[ductStatus].code = screening-ultrasound-parameter-cs#scrn-0052-00012
* component[ductStatus].value[x] only CodeableConcept
* component[ductStatus].value[x] from ScreeningUltrasoundDuctStatusVS (required)

* component[retromammarySpace] ^short = "Retromammary space"
* component[retromammarySpace].code = screening-ultrasound-parameter-cs#scrn-0052-00013
* component[retromammarySpace].value[x] only CodeableConcept
* component[retromammarySpace].value[x] from ScreeningUltrasoundRetromammarySpaceVS (required)

* component[elastographyColorType] ^short = "Elastography color type"
* component[elastographyColorType].code = screening-ultrasound-parameter-cs#scrn-0052-00015
* component[elastographyColorType].value[x] only CodeableConcept
* component[elastographyColorType].value[x] from ScreeningUltrasoundElastographyColorTypeVS (required)

* component[intramammaryNodeStatus] ^short = "Intramammary lymph node status"
* component[intramammaryNodeStatus].code = screening-ultrasound-parameter-cs#scrn-0052-00016
* component[intramammaryNodeStatus].value[x] only CodeableConcept
* component[intramammaryNodeStatus].value[x] from ScreeningUltrasoundIntramammaryNodeStatusVS (required)

* component[axillaryNodeStatus] ^short = "Axillary lymph node status"
* component[axillaryNodeStatus].code = screening-ultrasound-parameter-cs#scrn-0052-00017
* component[axillaryNodeStatus].value[x] only CodeableConcept
* component[axillaryNodeStatus].value[x] from ScreeningUltrasoundAxillaryNodeStatusVS (required)

* component[axillaryNodeDifferentiation] ^short = "Axillary lymph node differentiation"
* component[axillaryNodeDifferentiation].code = screening-specialized-observation-parameter-cs#scrn-0073-00016
* component[axillaryNodeDifferentiation].value[x] only CodeableConcept
* component[axillaryNodeDifferentiation].value[x] from ScreeningUltrasoundAxillaryNodeDifferentiationVS (required)

* component[regionalNodeStatus] ^short = "Regional lymph node status"
* component[regionalNodeStatus].code = screening-ultrasound-parameter-cs#scrn-0052-00018
* component[regionalNodeStatus].value[x] only CodeableConcept
* component[regionalNodeStatus].value[x] from ScreeningUltrasoundRegionalNodeStatusVS (required)

* component[dynamics] ^short = "Comparison with previous study"
* component[dynamics].code = screening-ultrasound-parameter-cs#scrn-0052-00020
* component[dynamics].value[x] only CodeableConcept
* component[dynamics].value[x] from ScreeningUltrasoundDynamicsVS (required)

* component[breastSide] ^short = "Breast side"
* component[breastSide].code = screening-specialized-observation-parameter-cs#scrn-0073-00014
* component[breastSide].value[x] only CodeableConcept
* component[breastSide].value[x] from ScreeningUltrasoundBreastSideVS (required)

* component[breastQuadrant] ^short = "Breast quadrant"
* component[breastQuadrant].code = screening-specialized-observation-parameter-cs#scrn-0073-00015
* component[breastQuadrant].value[x] only CodeableConcept
* component[breastQuadrant].value[x] from ScreeningUltrasoundBreastQuadrantVS (required)

* component[lesionShape] ^short = "Lesion shape"
* component[lesionShape].code = screening-ultrasound-parameter-cs#scrn-0052-00027
* component[lesionShape].value[x] only CodeableConcept
* component[lesionShape].value[x] from ScreeningUltrasoundLesionShapeVS (required)

* component[lesionOrientation] ^short = "Lesion orientation"
* component[lesionOrientation].code = screening-ultrasound-parameter-cs#scrn-0052-00028
* component[lesionOrientation].value[x] only CodeableConcept
* component[lesionOrientation].value[x] from ScreeningUltrasoundLesionOrientationVS (required)

* component[lesionContour] ^short = "Lesion contour"
* component[lesionContour].code = screening-ultrasound-parameter-cs#scrn-0052-00029
* component[lesionContour].value[x] only CodeableConcept
* component[lesionContour].value[x] from ScreeningUltrasoundLesionContourVS (required)

* component[lesionEchogenicity] ^short = "Lesion echogenicity"
* component[lesionEchogenicity].code = screening-ultrasound-parameter-cs#scrn-0052-00030
* component[lesionEchogenicity].value[x] only CodeableConcept
* component[lesionEchogenicity].value[x] from ScreeningUltrasoundLesionEchogenicityVS (required)

* component[lesionAcousticEffect] ^short = "Lesion acoustic effect"
* component[lesionAcousticEffect].code = screening-ultrasound-parameter-cs#scrn-0052-00036
* component[lesionAcousticEffect].value[x] only CodeableConcept
* component[lesionAcousticEffect].value[x] from ScreeningUltrasoundLesionAcousticEffectVS (required)

* component[lesionVascularization] ^short = "Lesion vascularization"
* component[lesionVascularization].code = screening-ultrasound-parameter-cs#scrn-0052-00037
* component[lesionVascularization].value[x] only CodeableConcept
* component[lesionVascularization].value[x] from ScreeningUltrasoundLesionVascularizationVS (required)

* component[menstrualCycleDuration] ^short = "Menstrual cycle duration"
* component[menstrualCycleDuration].code = screening-ultrasound-parameter-cs#scrn-0052-00001
* component[menstrualCycleDuration].value[x] 1..1
* component[menstrualCycleDuration].value[x] only Quantity
* component[menstrualCycleDuration].valueQuantity.value 1..1
* component[menstrualCycleDuration].valueQuantity.value ^minValueDecimal = 0
* component[menstrualCycleDuration].valueQuantity.unit 1..1
* component[menstrualCycleDuration].valueQuantity.system 1..1
* component[menstrualCycleDuration].valueQuantity.code 1..1
* component[menstrualCycleDuration].valueQuantity ^patternQuantity.unit = "d"
* component[menstrualCycleDuration].valueQuantity ^patternQuantity.system = $ucum
* component[menstrualCycleDuration].valueQuantity ^patternQuantity.code = #d

* component[anamnesis] ^short = "Ultrasound anamnesis"
* component[anamnesis].code = screening-ultrasound-parameter-cs#scrn-0052-00003
* component[anamnesis].value[x] 1..1
* component[anamnesis].value[x] only string

* component[fibroglandularThickness] ^short = "Fibroglandular complex thickness"
* component[fibroglandularThickness].code = screening-ultrasound-parameter-cs#scrn-0052-00009
* component[fibroglandularThickness].value[x] 1..1
* component[fibroglandularThickness].value[x] only Quantity
* component[fibroglandularThickness].valueQuantity.value 1..1
* component[fibroglandularThickness].valueQuantity.value ^minValueDecimal = 0
* component[fibroglandularThickness].valueQuantity.unit 1..1
* component[fibroglandularThickness].valueQuantity.system 1..1
* component[fibroglandularThickness].valueQuantity.code 1..1
* component[fibroglandularThickness].valueQuantity ^patternQuantity.unit = "mm"
* component[fibroglandularThickness].valueQuantity ^patternQuantity.system = $ucum
* component[fibroglandularThickness].valueQuantity ^patternQuantity.code = #mm

* component[maximumDuctDiameter] ^short = "Maximum duct diameter"
* component[maximumDuctDiameter].code = screening-ultrasound-parameter-cs#scrn-0052-00011
* component[maximumDuctDiameter].value[x] 1..1
* component[maximumDuctDiameter].value[x] only Quantity
* component[maximumDuctDiameter].valueQuantity.value 1..1
* component[maximumDuctDiameter].valueQuantity.value ^minValueDecimal = 0
* component[maximumDuctDiameter].valueQuantity.unit 1..1
* component[maximumDuctDiameter].valueQuantity.system 1..1
* component[maximumDuctDiameter].valueQuantity.code 1..1
* component[maximumDuctDiameter].valueQuantity ^patternQuantity.unit = "mm"
* component[maximumDuctDiameter].valueQuantity ^patternQuantity.system = $ucum
* component[maximumDuctDiameter].valueQuantity ^patternQuantity.code = #mm

* component[elastographyStiffness] ^short = "Elastography stiffness; unit is supplied by Screening"
* component[elastographyStiffness].code = screening-ultrasound-parameter-cs#scrn-0052-00014
* component[elastographyStiffness].value[x] 1..1
* component[elastographyStiffness].value[x] only Quantity
* component[elastographyStiffness].valueQuantity.value 1..1
* component[elastographyStiffness].valueQuantity.value ^minValueDecimal = 0
* component[elastographyStiffness].valueQuantity.unit 1..1
* component[elastographyStiffness].valueQuantity.system 1..1
* component[elastographyStiffness].valueQuantity.code 1..1
* component[elastographyStiffness].valueQuantity ^patternQuantity.system = $ucum

* component[axillaryMaximumNodeSize] ^short = "Maximum axillary lymph node size"
* component[axillaryMaximumNodeSize].code = screening-ultrasound-parameter-cs#scrn-0052-00038
* component[axillaryMaximumNodeSize].value[x] 1..1
* component[axillaryMaximumNodeSize].value[x] only Quantity
* component[axillaryMaximumNodeSize].valueQuantity.value 1..1
* component[axillaryMaximumNodeSize].valueQuantity.value ^minValueDecimal = 0
* component[axillaryMaximumNodeSize].valueQuantity.unit 1..1
* component[axillaryMaximumNodeSize].valueQuantity.system 1..1
* component[axillaryMaximumNodeSize].valueQuantity.code 1..1
* component[axillaryMaximumNodeSize].valueQuantity ^patternQuantity.unit = "mm"
* component[axillaryMaximumNodeSize].valueQuantity ^patternQuantity.system = $ucum
* component[axillaryMaximumNodeSize].valueQuantity ^patternQuantity.code = #mm

* component[axillaryCorticalThickness] ^short = "Axillary lymph node cortical thickness"
* component[axillaryCorticalThickness].code = screening-ultrasound-parameter-cs#scrn-0052-00039
* component[axillaryCorticalThickness].value[x] 1..1
* component[axillaryCorticalThickness].value[x] only Quantity
* component[axillaryCorticalThickness].valueQuantity.value 1..1
* component[axillaryCorticalThickness].valueQuantity.value ^minValueDecimal = 0
* component[axillaryCorticalThickness].valueQuantity.unit 1..1
* component[axillaryCorticalThickness].valueQuantity.system 1..1
* component[axillaryCorticalThickness].valueQuantity.code 1..1
* component[axillaryCorticalThickness].valueQuantity ^patternQuantity.unit = "mm"
* component[axillaryCorticalThickness].valueQuantity ^patternQuantity.system = $ucum
* component[axillaryCorticalThickness].valueQuantity ^patternQuantity.code = #mm

* component[regionalNodeNote] ^short = "Comment about other regional lymph nodes"
* component[regionalNodeNote].code = screening-ultrasound-parameter-cs#scrn-0052-00040
* component[regionalNodeNote].value[x] 1..1
* component[regionalNodeNote].value[x] only string

* component[additionalChanges] ^short = "Additional ultrasound changes"
* component[additionalChanges].code = screening-ultrasound-parameter-cs#scrn-0052-00019
* component[additionalChanges].value[x] 1..1
* component[additionalChanges].value[x] only string

* component[focalLesionPresent] ^short = "Focal breast lesion present"
* component[focalLesionPresent].code = screening-ultrasound-parameter-cs#scrn-0052-00021
* component[focalLesionPresent].value[x] 1..1
* component[focalLesionPresent].value[x] only boolean

* component[clockFacePosition] ^short = "Lesion clock-face position, 1 to 12"
* component[clockFacePosition].code = screening-ultrasound-parameter-cs#scrn-0052-00022
* component[clockFacePosition].value[x] 1..1
* component[clockFacePosition].value[x] only integer
* component[clockFacePosition].valueInteger ^minValueInteger = 1
* component[clockFacePosition].valueInteger ^maxValueInteger = 12

* component[distanceFromNipple] ^short = "Distance from nipple"
* component[distanceFromNipple].code = screening-ultrasound-parameter-cs#scrn-0052-00023
* component[distanceFromNipple].value[x] 1..1
* component[distanceFromNipple].value[x] only Quantity
* component[distanceFromNipple].valueQuantity.value 1..1
* component[distanceFromNipple].valueQuantity.value ^minValueDecimal = 0
* component[distanceFromNipple].valueQuantity.unit 1..1
* component[distanceFromNipple].valueQuantity.system 1..1
* component[distanceFromNipple].valueQuantity.code 1..1
* component[distanceFromNipple].valueQuantity ^patternQuantity.unit = "mm"
* component[distanceFromNipple].valueQuantity ^patternQuantity.system = $ucum
* component[distanceFromNipple].valueQuantity ^patternQuantity.code = #mm

* component[lesionLength] ^short = "Lesion length"
* component[lesionLength].code = screening-ultrasound-parameter-cs#scrn-0052-00024
* component[lesionLength].value[x] 1..1
* component[lesionLength].value[x] only Quantity
* component[lesionLength].valueQuantity.value 1..1
* component[lesionLength].valueQuantity.value ^minValueDecimal = 0
* component[lesionLength].valueQuantity.unit 1..1
* component[lesionLength].valueQuantity.system 1..1
* component[lesionLength].valueQuantity.code 1..1
* component[lesionLength].valueQuantity ^patternQuantity.unit = "mm"
* component[lesionLength].valueQuantity ^patternQuantity.system = $ucum
* component[lesionLength].valueQuantity ^patternQuantity.code = #mm

* component[lesionWidth] ^short = "Lesion width"
* component[lesionWidth].code = screening-ultrasound-parameter-cs#scrn-0052-00025
* component[lesionWidth].value[x] 1..1
* component[lesionWidth].value[x] only Quantity
* component[lesionWidth].valueQuantity.value 1..1
* component[lesionWidth].valueQuantity.value ^minValueDecimal = 0
* component[lesionWidth].valueQuantity.unit 1..1
* component[lesionWidth].valueQuantity.system 1..1
* component[lesionWidth].valueQuantity.code 1..1
* component[lesionWidth].valueQuantity ^patternQuantity.unit = "mm"
* component[lesionWidth].valueQuantity ^patternQuantity.system = $ucum
* component[lesionWidth].valueQuantity ^patternQuantity.code = #mm

* component[lesionThickness] ^short = "Lesion thickness"
* component[lesionThickness].code = screening-ultrasound-parameter-cs#scrn-0052-00026
* component[lesionThickness].value[x] 1..1
* component[lesionThickness].value[x] only Quantity
* component[lesionThickness].valueQuantity.value 1..1
* component[lesionThickness].valueQuantity.value ^minValueDecimal = 0
* component[lesionThickness].valueQuantity.unit 1..1
* component[lesionThickness].valueQuantity.system 1..1
* component[lesionThickness].valueQuantity.code 1..1
* component[lesionThickness].valueQuantity ^patternQuantity.unit = "mm"
* component[lesionThickness].valueQuantity ^patternQuantity.system = $ucum
* component[lesionThickness].valueQuantity ^patternQuantity.code = #mm

* component[internalStructureHomogeneous].code = screening-ultrasound-parameter-cs#scrn-0052-00031
* component[internalStructureHomogeneous].value[x] 1..1
* component[internalStructureHomogeneous].value[x] only boolean

* component[internalStructureHeterogeneous].code = screening-ultrasound-parameter-cs#scrn-0052-00032
* component[internalStructureHeterogeneous].value[x] 1..1
* component[internalStructureHeterogeneous].value[x] only boolean

* component[internalStructureCysticInclusions].code = screening-ultrasound-parameter-cs#scrn-0052-00033
* component[internalStructureCysticInclusions].value[x] 1..1
* component[internalStructureCysticInclusions].value[x] only boolean

* component[internalStructureMicrocalcifications].code = screening-ultrasound-parameter-cs#scrn-0052-00034
* component[internalStructureMicrocalcifications].value[x] 1..1
* component[internalStructureMicrocalcifications].value[x] only boolean

* component[internalStructureMacrocalcifications].code = screening-ultrasound-parameter-cs#scrn-0052-00035
* component[internalStructureMacrocalcifications].value[x] 1..1
* component[internalStructureMacrocalcifications].value[x] only boolean
