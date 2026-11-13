Profile: PrescriptionMeasureReport
Parent: MeasureReport
Id: prescription-measure-report
Title: "Prescription Measure Report"
Description: "Summary or subject-level reporting over prescription requests, dispensing and administrations."
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert PrescriptionMetaSource

* status MS
* type MS
* measure MS
* subject MS
* date 1..1 MS
* period 1..1 MS
* period.start 1..1 MS
* period.end 1..1 MS
* reporter 1..1 MS
* reporter only Reference(UZCoreOrganization or UZCorePractitionerRole)
* group MS
* group.population MS
* group.population.count MS
* group.measureScore[x] MS
* evaluatedResource MS
* evaluatedResource only Reference(PrescriptionMedicationRequest or PrescriptionMedicationDispense or PrescriptionMedicationAdministration)
