Profile: CancerConditionPrimary
Parent: UZCoreCondition
Id: cancer-condition-primary
Title: "Cancer Condition Primary"
Description: "Determination of tumor topography. Diagnosis according to ICD-O-3."


* ^experimental = true
* ^status = #active
* ^date = "2026-08-15"
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier.system 1..1
* identifier.system = "https://dhp.uz/fhir/core/sid/reg/uz/cancer"

* extension contains
    CancerLateralityQualifier named lateralityQualifier 0..1 MS and
    CancerTopography named topography 0..1 MS and
    CancerMorphology named morphology 0..1 MS and
    CancerGradeDifferentiation named gradeDifferentiation 0..1 MS and
    CancerTumorBehavior named tumorBehavior 0..1 MS and
    CancerDetectionCircumstance named detectionCircumstance 0..1 MS and
    CancerICCC3Group named iccc3Group 0..* MS and
    CancerConfirmationMethod named confirmationMethod 0..1 MS

* code from ICD10VS (required) 

* onsetDateTime 0..1

* stage.summary from CancerStageVS (required)
* stage.assessment only Reference(CancerObservationTNMStageGroup)

* stage.summary from CancerSubStageVS (required)
* stage.assessment only Reference(CancerObservationTNMStageGroup)



Instance: cancer-condition-primary-example
InstanceOf: CancerConditionPrimary
Description: "Example of a primary cancer condition with laterality, topography, and morphology information."
Usage: #example


* extension[diagnosisType].valueCodeableConcept = $diagnosis-type-cs#cancer-0003-0003
* extension[lateralityQualifier].valueCodeableConcept = cancer-laterlity-qualifier-cs#cancer-0004-0002 
* extension[topography].valueCodeableConcept = cancer-icd3-topography-cs#C020
* extension[morphology].valueCodeableConcept = cancer-icd3-morphology-cs#8000
* extension[gradeDifferentiation].valueCodeableConcept = cancer-degree-differentiation-cs#cancer-0020-0002
* extension[tumorBehavior].valueCodeableConcept = cancer-tumor-behavior-cs#cancer-0019-0004
* extension[detectionCircumstance].valueCodeableConcept = cancer-detection-circumstance-cs#cancer-0005-0002
* extension[confirmationMethod].valueCodeableConcept = cancer-confirmation-method-cs#cancer-0002-0003
* extension[cancer-iccc-3-group].valueCodeableConcept = $iccc-3-cs#III


* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-verification-status#confirmed
* category = $condition-category#problem-list-item

* code = $icd-10#C02

* bodySite = $sct#422005

* subject = Reference(Patient/example-salim)
* encounter = Reference(cancer-encounter-example)

* onsetDateTime = "2026-08-15"
* recordedDate = "2020-08-15"

* participant.actor = Reference(PractitionerRole/practitionerrole-001)

* stage.summary = cancer-stage-cs#cancer-0012-0002
* stage.assessment = Reference(cancer-observation-tnm-stage-group-example)

* stage.summary = cancer-sub-stage-cs#cancer-0013-0007
* stage.assessment = Reference(cancer-observation-tnm-stage-group-example)

