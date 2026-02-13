Profile: SickLeaveObservation
Parent: Observation
Id: sick-leave-observation
Title: "Sick Leave Observation"
Description: "Observation containing additional Sick Leave attributes"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* basedOn 1..1 MS
* basedOn only Reference(SickLeaveCarePlan)

* code 1..1 MS
* code = http://snomed.info/sct#224459001 "On sick leave from work"

* component 0..* MS
* component.code 1..1 MS
* component.value[x] 1..1 MS

* component.code from SickLeaveComponentVS (required)