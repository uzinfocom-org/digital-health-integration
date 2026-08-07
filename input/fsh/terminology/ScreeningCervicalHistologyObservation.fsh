Profile: ScreeningCervicalHistologyObservation
Parent: ScreeningObservation
Id: screening-cervical-histology-observation
Title: "Screening Cervical Histology Observation"
Description: "Specialized screening Observation for cervical histology conclusions."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* code = $sct#168394000
* bodySite 1..1 MS
* bodySite = $sct#71252005 "Cervix uteri structure"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ScreeningCervicalHistologyMorphologyVS (required)

* component[transformationZone] 0..0
* component[birads] 0..0
* component[breastDensity] 0..0
* component[imageQuality] 0..0
* component contains
    histologicGrade 0..1 MS and
    stromalInvasionDepth 0..1 MS and
    lymphovascularInvasion 0..1 MS and
    macroscopicDescription 0..1 MS and
    microscopicDescription 0..1 MS and
    resectionMarginStatus 0..1 MS and
    otherOrganInvolvement 0..* MS and
    closestMarginDistance 0..1 MS and
    metastasisType 0..1 MS and
    sentinelLymphNodeExamination 0..1 MS and
    extranodalExtension 0..1 MS and
    primaryConclusion 0..1 MS

* component[histologicGrade] ^short = "Histologic grade of the cervical lesion"
* component[histologicGrade].code = $loinc#33732-9 "Histology grade [Identifier] in Cancer specimen"
* component[histologicGrade].value[x] 1..1
* component[histologicGrade].value[x] only CodeableConcept
* component[histologicGrade].value[x] from ScreeningCervicalHistologicGradeVS (required)

* component[stromalInvasionDepth] ^short = "Depth of stromal invasion"
* component[stromalInvasionDepth].code = $sct#396235003
* component[stromalInvasionDepth].value[x] 1..1
* component[stromalInvasionDepth].value[x] only Quantity
* component[stromalInvasionDepth].valueQuantity.value 1..1
* component[stromalInvasionDepth].valueQuantity.value ^minValueDecimal = 0.1
* component[stromalInvasionDepth].valueQuantity.value ^maxValueDecimal = 10
* component[stromalInvasionDepth].valueQuantity.unit 1..1
* component[stromalInvasionDepth].valueQuantity.system 1..1
* component[stromalInvasionDepth].valueQuantity.code 1..1
* component[stromalInvasionDepth].valueQuantity ^patternQuantity.unit = "mm"
* component[stromalInvasionDepth].valueQuantity ^patternQuantity.system = $ucum
* component[stromalInvasionDepth].valueQuantity ^patternQuantity.code = #mm

* component[lymphovascularInvasion] ^short = "Lymphovascular space invasion (LVSI)"
* component[lymphovascularInvasion].code = $loinc#59544-7 "Lymph-vascular invasion Cancer specimen"
* component[lymphovascularInvasion].value[x] 1..1
* component[lymphovascularInvasion].value[x] only CodeableConcept
* component[lymphovascularInvasion].value[x] from ScreeningHistologyLymphovascularInvasionVS (required)

* component[macroscopicDescription] ^short = "Macroscopic description of the specimen"
* component[macroscopicDescription].code = $loinc#22634-0 "Pathology report gross observation Narrative"
* component[macroscopicDescription].value[x] 1..1
* component[macroscopicDescription].value[x] only string

* component[microscopicDescription] ^short = "Microscopic description of the specimen"
* component[microscopicDescription].code = $loinc#22635-7 "Pathology report microscopic observation Narrative Other stain"
* component[microscopicDescription].value[x] 1..1
* component[microscopicDescription].value[x] only string

* component[resectionMarginStatus].code = screening-specialized-observation-parameter-cs#scrn-0073-00019
* component[resectionMarginStatus].value[x] 1..1
* component[resectionMarginStatus].value[x] only CodeableConcept
* component[resectionMarginStatus].value[x] from ScreeningResectionMarginStatusVS (required)

* component[otherOrganInvolvement].code = screening-specialized-observation-parameter-cs#scrn-0073-00020
* component[otherOrganInvolvement].value[x] 1..1
* component[otherOrganInvolvement].value[x] only CodeableConcept
* component[otherOrganInvolvement].value[x] from ScreeningOtherOrganInvolvementVS (required)

* component[closestMarginDistance].code = screening-specialized-observation-parameter-cs#scrn-0073-00021
* component[closestMarginDistance].value[x] 1..1
* component[closestMarginDistance].value[x] only Quantity
* component[closestMarginDistance].valueQuantity.value 1..1
* component[closestMarginDistance].valueQuantity.value ^minValueDecimal = 0
* component[closestMarginDistance].valueQuantity.unit 1..1
* component[closestMarginDistance].valueQuantity.system 1..1
* component[closestMarginDistance].valueQuantity.code 1..1
* component[closestMarginDistance].valueQuantity ^patternQuantity.unit = "mm"
* component[closestMarginDistance].valueQuantity ^patternQuantity.system = $ucum
* component[closestMarginDistance].valueQuantity ^patternQuantity.code = #mm

* component[metastasisType].code = screening-specialized-observation-parameter-cs#scrn-0073-00022
* component[metastasisType].value[x] 1..1
* component[metastasisType].value[x] only CodeableConcept
* component[metastasisType].value[x] from ScreeningMetastasisTypeVS (required)

* component[sentinelLymphNodeExamination].code = $sct#396487001
* component[sentinelLymphNodeExamination].value[x] 1..1
* component[sentinelLymphNodeExamination].value[x] only CodeableConcept
* component[sentinelLymphNodeExamination].value[x] from ScreeningSentinelLymphNodeExaminationVS (required)

* component[extranodalExtension].code = screening-specialized-observation-parameter-cs#scrn-0073-00024
* component[extranodalExtension].value[x] 1..1
* component[extranodalExtension].value[x] only boolean

* component[primaryConclusion] ^short = "Primary conclusion marker"
* component[primaryConclusion].code = screening-specialized-observation-parameter-cs#scrn-0073-00048
* component[primaryConclusion].value[x] 1..1
* component[primaryConclusion].value[x] only boolean
