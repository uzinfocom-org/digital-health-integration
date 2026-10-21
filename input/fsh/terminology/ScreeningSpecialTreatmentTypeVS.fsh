ValueSet: ScreeningSpecialTreatmentTypeVS
Id: screening-special-treatment-type-vs
Title: "Screening Special Treatment Type ValueSet"
Description: "SNOMED CT and local special treatment types accepted in breast and cervical pathology requests."
* insert IntegrationsValueSet(screening-special-treatment-type-vs)
* ^experimental = true

* include $sct#387713003
* include $sct#367336001
* include $sct#1287742003
* include $sct#169413002
* include $sct#103735009
* include $sct#713148004
* include codes from system screening-special-treatment-type-cs
