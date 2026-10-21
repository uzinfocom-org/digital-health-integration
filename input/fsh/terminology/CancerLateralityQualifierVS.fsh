ValueSet: CancerLateralityQualifierVS
Id: cancer-laterality-qualifier-vs
Title: "Cancer Laterality ValueSet"
Description: "ValueSet containing SNOMED CT laterality concepts used to qualify the body site of a cancer condition."

* insert IntegrationsValueSet(cancer-laterality-qualifier-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CancerLateralityQualifierCS)

* $sct#24028007 "Right"
* $sct#7771000 "Left"
* $sct#51440002 "Right and left"
* $sct#399488007 "Midline"
* $sct#261665006 "Unknown"