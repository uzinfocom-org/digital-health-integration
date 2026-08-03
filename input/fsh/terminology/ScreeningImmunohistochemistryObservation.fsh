Profile: ScreeningImmunohistochemistryObservation
Parent: ScreeningObservation
Id: screening-immunohistochemistry-observation
Title: "Screening Immunohistochemistry Observation"
Description: "Structured breast or cervical immunohistochemistry results: ER, PR, Ki-67, HER2 and p16."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier MS
* basedOn 0..1 MS
* subject 1..1 MS
* encounter 1..1 MS
* effective[x] 1..1 MS
* effective[x] only dateTime
* performer 1..* MS
* derivedFrom 1..* MS
* bodySite MS
* code = ScreeningSpecializedObservationParameterCS#scrn-0073-00001
* value[x] 0..0
* component 1..* MS

* component[transformationZone] 0..0
* component[birads] 0..0
* component[breastDensity] 0..0
* component[imageQuality] 0..0
* component contains
    allredER 0..1 MS and
    allredPR 0..1 MS and
    ki67 0..1 MS and
    her2Ihc 0..1 MS and
    p16 0..1 MS

* component[allredER] ^short = "Allred score for estrogen receptor (ER), 0 to 8"
* component[allredER].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00002
* component[allredER].value[x] 1..1
* component[allredER].value[x] only integer
* component[allredER].valueInteger ^minValueInteger = 0
* component[allredER].valueInteger ^maxValueInteger = 8

* component[allredPR] ^short = "Allred score for progesterone receptor (PR), 0 to 8"
* component[allredPR].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00003
* component[allredPR].value[x] 1..1
* component[allredPR].value[x] only integer
* component[allredPR].valueInteger ^minValueInteger = 0
* component[allredPR].valueInteger ^maxValueInteger = 8

* component[ki67] ^short = "Ki-67 proliferation index, 0 to 100 percent"
* component[ki67].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00049
* component[ki67].value[x] 1..1
* component[ki67].value[x] only Quantity
* component[ki67].valueQuantity.value 1..1
* component[ki67].valueQuantity.value ^minValueDecimal = 0
* component[ki67].valueQuantity.value ^maxValueDecimal = 100
* component[ki67].valueQuantity.system 1..1
* component[ki67].valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* component[ki67].valueQuantity.code 1..1
* component[ki67].valueQuantity.code = #% (exactly)

* component[her2Ihc] ^short = "HER2 immunohistochemistry score"
* component[her2Ihc].code = $loinc#85319-2 "HER2 Ag [Presence] in Breast cancer specimen by Immune stain"
* component[her2Ihc].value[x] 1..1
* component[her2Ihc].value[x] only CodeableConcept
* component[her2Ihc].value[x] from ScreeningHer2IhcScoreVS (required)

* component[p16] ^short = "p16 immunohistochemistry result"
* component[p16].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00030
* component[p16].value[x] 1..1
* component[p16].value[x] only CodeableConcept
* component[p16].value[x] from ScreeningP16ResultVS (required)
