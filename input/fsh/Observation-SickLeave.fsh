Profile: SickLeaveObservation
Parent: UZCoreObservation
Id: sick-leave-observation
Title: "Sick Leave Observation"
Description: "Observation containing additional Sick Leave attributes"
* insert SickLeaveContact
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* status = #final

* basedOn 1..1 MS
* basedOn only Reference(SickLeaveCarePlan)

* code 1..1 MS
* code = $sct#224459001

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    urbanResident 0..1 MS and
    nonLocal 0..1 MS and
    epidemiologicalHistory 0..1 MS

* component[urbanResident].code = SickLeaveComponentCS#urban-resident
* component[urbanResident].value[x] only boolean
* component[urbanResident] ^short = "Urban (true) or rural (false) resident (patient.isUrban)"

* component[nonLocal].code = SickLeaveComponentCS#non-local
* component[nonLocal].value[x] only boolean
* component[nonLocal] ^short = "Issued outside the patient's place of residence (isNonLocal)"

* component[epidemiologicalHistory].code = SickLeaveComponentCS#epidemiological-history
* component[epidemiologicalHistory].value[x] only string
* component[epidemiologicalHistory] ^short = "Contact with infectious patients and other epidemiological history (epidemiologicalHistory)"
