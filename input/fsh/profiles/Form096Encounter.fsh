Profile: Form096Encounter
Parent: UZCoreEncounter
Id: form-096-encounter
Title: "Form 096 Encounter"
Description: "Hospital encounter referenced by Form 096, including the complete hospitalization outcome and an optional transfer destination."
* ^experimental = true

* admission 1..1 MS
* admission.dischargeDisposition 1..1 MS
* admission.dischargeDisposition from Form096HospitalizationOutcomeVS (required)
* admission.destination 0..1 MS
* admission.destination only Reference(UZCoreLocation or UZCoreOrganization)
