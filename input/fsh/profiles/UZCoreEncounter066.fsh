Profile: UZCoreEncounter066
Parent: UZCoreEncounter
Id: uz-core-encounter-066
Title: "UZ Core Encounter 066"
Description: "UZ Core Encounter for the hospital stay reported on Form 066 and Form 066-1, adding where the patient was admitted from (admission origin)."

* ^experimental = true
* ^status = #active
* ^date = "2025-08-01"
* ^publisher = "Uzinfocom"

* admission.origin.extension contains AdmissionOrigin named admissionOrigin 0..1

Instance: example-encounter-066
InstanceOf: UZCoreEncounter066
Description: "Example inpatient treatment stay, admitted from home, as reported on Form 066."
Usage: #example

* status = #completed
* class = $v3-ActCode#IMP "Inpatient encounter"
* type = $encounter-type-cs#mserv-0001-00004 // Treatment
* subject = Reference(ExamplePatient)

* admission.origin.display = "Home"
* admission.origin.extension[admissionOrigin].valueCodeableConcept = admit-source-home-cs#mserv-0003-00001 "From home"