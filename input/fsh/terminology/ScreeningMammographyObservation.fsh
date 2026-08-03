Profile: ScreeningMammographyObservation
Parent: ScreeningObservation
Id: screening-mammography-observation
Title: "Screening Mammography Observation"
Description: "Specialized screening Observation for mammography results and findings."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* code = $sct#71651007 "Mammography"
* component[transformationZone] 0..0
* component[birads] 1..1 MS
* component[breastDensity] 1..1 MS
* component[imageQuality] 1..1 MS
* hasMember MS

* component contains
    readingNumber 1..1 MS and
    consensusResult 0..1 MS and
    arbitrationResult 0..1 MS

* component[readingNumber] ^short = "Mammography reading number (1, 2 or 3)"
* component[readingNumber].code = screening-specialized-observation-parameter-cs#scrn-0073-00026
* component[readingNumber].value[x] 1..1
* component[readingNumber].value[x] only integer
* component[readingNumber].valueInteger ^minValueInteger = 1
* component[readingNumber].valueInteger ^maxValueInteger = 3

* component[consensusResult] ^short = "Result selected as the consensus result"
* component[consensusResult].code = screening-specialized-observation-parameter-cs#scrn-0073-00027
* component[consensusResult].value[x] 1..1
* component[consensusResult].value[x] only boolean

* component[arbitrationResult] ^short = "Result produced by the third arbitration reading"
* component[arbitrationResult].code = screening-specialized-observation-parameter-cs#scrn-0073-00028
* component[arbitrationResult].value[x] 1..1
* component[arbitrationResult].value[x] only boolean
