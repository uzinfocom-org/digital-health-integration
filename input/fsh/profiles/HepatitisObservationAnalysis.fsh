Profile: HepatitisObservationAnalysis
Parent: UZCoreObservation
Id: hepatitis-observation-analysis
Title: "Hepatitis Observation Analysis"
Description: "Profile for representing hepatitis observation analysis in the context of a digital health integration project. This profile extends the base Observation resource to include specific elements and extensions relevant to hepatitis observation analysis, such as laboratory result types, clinical significance, and associated notes."

* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier 1..* MS


* subject MS
* subject only Reference(UZCorePatient)

* effective[x]  MS
* effective[x] only dateTime or Period


* value[x] MS
* value[x] only Attachment or Quantity or CodeableConcept


* component.value[x] MS
* component.value[x] only string or CodeableConcept or Quantity

* component.dataAbsentReason MS
* component.interpretation 0..1 MS




// Instance Example
Instance: example-hepatitis-observation-analysis
InstanceOf: HepatitisObservationAnalysis
Description: "Sample Hepatitis B DNA Test"
Usage: #example
* language = #en
* status = #final
* identifier 
  * system = $hep-id-sys 
  * value = "PZR-2026-001"
  * type.coding
    * system = $v2-0203
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official

* method = $lab-methods-cs#lab-method-1 "PCR (Polymerase Chain Reaction)"
* code = $loinc#22314-9 "Hepatitis A virus IgM Ab [Presence] in Serum"
* subject = Reference(Patient/hepatitis-patient-example)
* effectiveDateTime = "2026-01-27T09:57:00Z"

* valueCodeableConcept = $observation-interpretation#NEG "Negative"

* performer[0] = Reference(PractitionerRole/example-hepatologist-role)
* performer[1] = Reference(Organization/samarkand-infectious-hospital)

