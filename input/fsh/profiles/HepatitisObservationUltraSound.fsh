Profile: HepatitisObservationUltraSound
Parent: UZCoreObservation
Id: hepatitis-observation-ultra-sound
Title: "Hepatitis UltraSound Observation"
Description: "Profile for representing ultrasound observations related to hepatitis patients in the context of a digital health integration project. This profile extends the base Observation resource to include specific elements and extensions relevant to ultrasound findings, such as the type of ultrasound, clinical significance, and associated notes."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier 1..* MS

* code MS
* code from HepatitisTypeOfUltraSoundVS (required)
* code ^short = "Ultrasound examination type"
* code ^definition = "Ultrasound examination type represented using SNOMED CT."

* code.coding 1..* MS
* code.coding.system 1..1 MS
* code.coding.system = "http://snomed.info/sct"

* code.coding.code 1..1 MS
* code.coding.display 0..1 MS

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
* identifier 
  * system = $hep-id-sys 
  * value = "OBS-2026-5541"
  * type.coding
    * system = $v2-0203
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official
* code 
  * coding = $sct#19943007 "Cirrhosis of liver"
  * text = "Signs of cirrhosis"

* subject = Reference(Patient/hepatitis-patient-example)
* effectiveDateTime = "2026-01-26"
* performer[0] = Reference(PractitionerRole/example-hepatologist-role)
* performer[1] = Reference(Organization/samarkand-infectious-hospital)
* valueBoolean = true


// Instance Example
Instance: example-ultrasound-lesion
InstanceOf: HepatitisObservationUltraSound
Description: "Instance of liver lesion detected"
Usage: #example
* status = #final
* identifier
  * system = $hep-id-sys 
  * value = "OBS-2026-5542"
  * type.coding
    * system = $v2-0203
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official
* code 
  * coding = $sct#19943007 "Cirrhosis of liver"
  * text = "Signs of masses in the liver"

* subject = Reference(Patient/hepatitis-patient-example)
* effectiveDateTime = "2027-01-26"
* performer[0] = Reference(PractitionerRole/example-hepatologist-role)
* performer[1] = Reference(Organization/samarkand-infectious-hospital)
* valueBoolean = false
