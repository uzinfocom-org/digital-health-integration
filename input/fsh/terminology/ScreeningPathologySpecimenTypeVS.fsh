ValueSet: ScreeningPathologySpecimenTypeVS
Id: screening-pathology-specimen-type-vs
Title: "Screening Pathology Specimen Type ValueSet"
Description: "Breast and cervical specimen types accepted by ScreeningSpecimen."
* insert IntegrationsValueSet(screening-pathology-specimen-type-vs)
* ^experimental = true

* include codes from system screening-breast-material-class-cs
* include codes from system screening-cervical-material-type-cs
