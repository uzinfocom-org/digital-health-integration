Profile: CancerObservationBehavior
Parent: UZCoreObservation
Id: cancer-observation-behavior
Title: "Cancer Observation Behavior"
Description: "Observation describing cancer morphology, behavior, and primary body site using ICD-O-3."

* ^experimental = true
* ^status = #active
* ^date = "2026-09-15"
* ^publisher = "Uzinfocom"

* status = #final

* code from CancerTumorMorphologyPanelVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* focus 1..1
* focus only Reference(CancerCondition)

* effective[x] MS
* effective[x] only dateTime

* performer MS
* performer only Reference(UZCorePractitionerRole)

* value[x] only CodeableConcept
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from $icd-o-3-morphology-vs (required)

* bodySite 0..1 MS
* bodySite.coding ^slicing.discriminator.type = #value
* bodySite.coding ^slicing.discriminator.path = "system"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains
    icdO3 1..1 MS and
    snomed 1..1 MS
* bodySite.coding[icdO3].system 1..1
* bodySite.coding[icdO3].system = $icd-o-3
* bodySite.coding[icdO3].code 1..1
* bodySite.coding[snomed].system 1..1
* bodySite.coding[snomed].system = $sct
* bodySite.coding[snomed].code 1..1


Instance: cancer-observation-behavior-example
InstanceOf: CancerObservationBehavior
Description: "Example of a cancer observation describing the biological behavior of a tumor."
Title: "Cancer Tumor Behavior Observation Example"
Usage: #example

* status = #final
* category = $observation-category#laboratory
* code = $loinc#31206-6 "Behavior ICD-O-3 Cancer"
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-example)
* effectiveDateTime = "2026-09-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/icd-o-3#8070/3 "Squamous cell carcinoma, NOS"
* bodySite.coding[icdO3] = $icd-o-3#C15.1 "Thoracic esophagus"
* bodySite.coding[snomed] = $sct#59609004 "Thoracic esophagus structure"
