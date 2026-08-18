Profile: ScreeningBreastBiopsyServiceRequest
Parent: ScreeningServiceRequest
Id: screening-breast-biopsy-service-request
Title: "Screening Breast Biopsy Service Request"
Description: "Specialized screening request for a breast biopsy subtype."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* code 1..1 MS
* code from ScreeningBreastBiopsySubtypeVS (required)

Profile: ScreeningBreastBiopsyProcedure
Parent: Procedure
Id: screening-breast-biopsy-procedure
Title: "Screening Breast Biopsy Procedure"
Description: "Performed breast biopsy with a constrained biopsy subtype."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier MS
* status MS
* code 1..1 MS
* code from ScreeningBreastBiopsySubtypeVS (required)
* subject MS
* encounter MS
* occurrence[x] MS
* performer MS

