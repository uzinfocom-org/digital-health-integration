Profile: ScreeningBreastUltrasoundObservation
Parent: ScreeningObservation
Id: screening-breast-ultrasound-observation
Title: "Screening Breast Ultrasound Observation"
Description: "Specialized screening Observation for breast ultrasound parameters and focal lesion characteristics."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* code = $sct#47079000 "Ultrasound of breast"
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
    lesionVascularization 0..1 MS

* component[breastFinding] ^short = "Breast ultrasound finding"
* component[breastFinding].code = screening-specialized-observation-parameter-cs#breast-finding
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
* component[axillaryNodeDifferentiation].code = screening-specialized-observation-parameter-cs#axillary-node-differentiation
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
* component[breastSide].code = screening-specialized-observation-parameter-cs#breast-side
* component[breastSide].value[x] only CodeableConcept
* component[breastSide].value[x] from ScreeningUltrasoundBreastSideVS (required)

* component[breastQuadrant] ^short = "Breast quadrant"
* component[breastQuadrant].code = screening-specialized-observation-parameter-cs#breast-quadrant
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

