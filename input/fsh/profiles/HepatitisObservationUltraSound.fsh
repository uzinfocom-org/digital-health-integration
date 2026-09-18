Profile: HepatitisObservationUltraSound
Parent: UZCoreObservation
Id: hepatitis-observation-ultra-sound
Title: "Hepatitis UltraSound Observation"
Description: "Profile for representing ultrasound observations related to hepatitis patients in the context of a digital health integration project. This profile extends the base Observation resource to include specific elements and extensions relevant to ultrasound findings, such as the type of ultrasound, clinical significance, and associated notes."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains hepatitisRegistry 1..1 MS
* identifier[hepatitisRegistry].system = "https://dhp.uz/fhir/core/sid/org/uz/hepatitis"
* identifier[hepatitisRegistry].value 1..1

* code MS
* code from HepatitisTypeOfUltraSoundVS (required)


* code.text 0..1 MS


* effective[x] MS              
* effective[x] only dateTime or Period


* value[x] MS    
* value[x] only boolean




Instance: example-ultrasound-cirrhosis
InstanceOf: HepatitisObservationUltraSound
Description: "Instance of cirrhosis detected"
Usage: #example

* status = #final

* identifier[hepatitisRegistry].system = "https://dhp.uz/fhir/core/sid/org/uz/hepatitis"
* identifier[hepatitisRegistry].value = "85dcdd0a-5a68-4cc6-8503-5ab15a42c73b"

* code = $sct#19943007

* subject = Reference(Patient/hepatitis-patient-example)
* effectiveDateTime = "2026-09-18T10:30:00+05:00"
* performer[0] = Reference(PractitionerRole/example-hepatologist-role)
* performer[1] = Reference(Organization/samarkand-infectious-hospital)
* valueBoolean = true


// Instance Example
Instance: example-ultrasound-lesion
InstanceOf: HepatitisObservationUltraSound
Description: "Instance of liver lesion detected"
Usage: #example
* status = #final

* identifier[hepatitisRegistry].system = "https://dhp.uz/fhir/core/sid/org/uz/hepatitis"
* identifier[hepatitisRegistry].value = "85dcdd0a-5a68-4cc6-8503-5ab15a42c74b"

* code = $sct#300332007

* subject = Reference(Patient/hepatitis-patient-example)
* effectiveDateTime = "2026-09-18T10:30:00+05:00"
* performer[0] = Reference(PractitionerRole/example-hepatologist-role)
* performer[1] = Reference(Organization/samarkand-infectious-hospital)
* valueBoolean = false
