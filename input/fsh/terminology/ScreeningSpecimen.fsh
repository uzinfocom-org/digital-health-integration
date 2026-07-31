Profile: ScreeningSpecimen
Parent: Specimen
Id: screening-specimen
Title: "Screening Specimen"
Description: "Specimen collected during cervical cancer screening."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier MS
* status MS
* type 1..1 MS
* type from ScreeningCervicalMaterialTypeVS (required)
* subject 1..1 MS
* collection MS

