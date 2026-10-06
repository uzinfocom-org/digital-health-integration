Profile: SickLeaveCondition
Parent: UZCoreCondition
Id: sick-leave-condition
Title: "Sick Leave Condition"
Description: "Preliminary or final diagnosis of a sick leave, coded in ICD-10. The verification status tells them apart: provisional for the preliminary diagnosis, confirmed for the final one."
* insert SickLeaveContact
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* verificationStatus 1..1
* verificationStatus from SickLeaveDiagnosisStatusVS (required)
* verificationStatus ^short = "provisional for the preliminary diagnosis, confirmed for the final one"

* code 1..1
* code from ICD10VS (required)
* code ^short = "ICD-10 code (diagnosis.preliminary, diagnosis.final), with its name in text (preliminaryDisplay, finalDisplay)"

* subject only Reference(UZCorePatient)
