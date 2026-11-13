Profile: BloodTransfusionAssessmentObservation
Parent: UZCoreObservation
Id: blood-transfusion-assessment-observation
Title: "Blood Transfusion Assessment Observation"
Description: "Integration Observation profile for pre-transfusion assessment and biological test results recorded in one transfusion protocol."
* ^status = #draft
* ^experimental = true

* identifier.system 1..1
* status ^comment = "Use final for a completed assessment. Correct results by updating the same Observation, for example with status amended."
* code = $sct#252314007
* code.coding 1..1
* code ^short = "Blood transfusion test"
* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Recipient of the blood component"
* effective[x] ^short = "Actual time or period of the assessment"
* issued ^short = "When this version of the result became available"
* component.code from BloodTransfusionAssessmentVS (required)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component contains
    aboCompatibility 0..1 MS and
    rhHrCompatibility 0..1 MS and
    transfusionHistory 0..1 MS and
    obstetricHistory 0..1 MS and
    preliminaryAboGroup 0..1 MS and
    biologicalSpecimen 0..1 MS

* component[aboCompatibility] ^short = "ABO compatibility"
* component[aboCompatibility].code = BloodTransfusionAssessmentCS#bldcomp-0001-00001
* component[aboCompatibility].code.coding 1..1
* component[aboCompatibility].value[x] only CodeableConcept
* component[aboCompatibility].valueCodeableConcept from BloodTransfusionValueVS (required)

* component[rhHrCompatibility] ^short = "Rh-Hr compatibility"
* component[rhHrCompatibility].code = BloodTransfusionAssessmentCS#bldcomp-0001-00002
* component[rhHrCompatibility].code.coding 1..1
* component[rhHrCompatibility].value[x] only CodeableConcept
* component[rhHrCompatibility].valueCodeableConcept from BloodTransfusionValueVS (required)

* component[transfusionHistory] ^short = "Transfusion history"
* component[transfusionHistory].code = BloodTransfusionAssessmentCS#bldcomp-0001-00003
* component[transfusionHistory].code.coding 1..1
* component[transfusionHistory].value[x] only CodeableConcept
* component[transfusionHistory].valueCodeableConcept from BloodTransfusionHistoryVS (required)

* component[obstetricHistory] ^short = "Obstetric history"
* component[obstetricHistory].code = BloodTransfusionAssessmentCS#bldcomp-0001-00004
* component[obstetricHistory].code.coding 1..1
* component[obstetricHistory].value[x] only CodeableConcept
* component[obstetricHistory].valueCodeableConcept from ObstetricHistoryVS (required)

* component[preliminaryAboGroup] ^short = "Preliminary ABO group"
* component[preliminaryAboGroup].code = BloodTransfusionAssessmentCS#bldcomp-0001-00005
* component[preliminaryAboGroup].code.coding 1..1
* component[preliminaryAboGroup].value[x] only CodeableConcept
* component[preliminaryAboGroup].valueCodeableConcept from BldAboGroupVS (required)

* component[biologicalSpecimen] ^short = "Biological test result"
* component[biologicalSpecimen].code = BloodTransfusionAssessmentCS#bldcomp-0001-00006
* component[biologicalSpecimen].code.coding 1..1
* component[biologicalSpecimen].value[x] only CodeableConcept
* component[biologicalSpecimen].valueCodeableConcept from SpecimenResVS (required)
