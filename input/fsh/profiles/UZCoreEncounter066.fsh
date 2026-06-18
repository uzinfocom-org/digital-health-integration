Profile: UZCoreEncounter066
Parent: UZCoreEncounter
Id: uz-core-encounter-066
Title: "UZ Core Encounter 066"
Description: "Uzbekistan Core Encounter 066 profile, used to represent clinical encounters"

* ^experimental = true
* ^status = #active
* ^date = "2025-08-01"
* ^publisher = "Uzinfocom"

* admission.origin.extension contains AdmissionOrigin named admissionOrigin 0..1

Instance: example-encounter-066
InstanceOf: UZCoreEncounter066
Description: "This example represents a patient encounter used in the cancer registry system, including admission and clinical interaction details."
Usage: #example

* status = #completed
* class = $v3-ActCode#IMP "Inpatient encounter"
* subject = Reference(ExamplePatient)

* admission.origin.display = "Home"
* admission.origin.extension[admissionOrigin].valueCodeableConcept = admit-source-home-cs#mserv-0003-00001 "From home"