Profile: ScreeningSpecimen
Parent: Specimen
Id: screening-specimen
Title: "Screening Specimen"
Description: "Breast or cervical specimen collected during screening."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier MS
* status MS
* type 1..1 MS
* type from ScreeningPathologySpecimenTypeVS (required)
* subject 1..1 MS
* collection MS
