Profile: CancerCondition
Parent: UZCoreCondition
Id: cancer-condition
Title: "Cancer Condition"
Description: "Determination of tumor topography. Diagnosis according to ICD-O-3."

* ^experimental = true
* ^status = #active
* ^date = "2026-09-15"
* ^publisher = "Uzinfocom"


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains cancerRegistry 1..1 MS
* identifier[cancerRegistry].system = "https://dhp.uz/fhir/core/sid/reg/uz/cancer"
* identifier[cancerRegistry].value 1..1

* code MS
* code 0..1
* code from CancerICD10VS (required)

* extension contains
    CancerICCC3Group named cancer-iccc-3-group 0..1 MS

* bodySite MS
* bodySite from CancerLateralityQualifierVS
* bodySite.extension contains
    CancerDetectionCondition named detection-condition 0..1 MS

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* encounter MS
* encounter only Reference(CancerEncounter)

* onset[x] MS
* onset[x] only dateTime

* recordedDate 1..1 MS

* participant MS
* participant.actor only Reference(UZCoreOrganization)

* stage MS
* stage.summary MS
* stage.summary from CancerTNMStageVS (example)

* stage.assessment MS
* stage.assessment only Reference(CancerObservationTNMStageGroup)


Instance: cancer-condition-example
InstanceOf: CancerCondition
Description: "Example of a confirmed active malignant neoplasm of the tongue, registered in the cancer registry, including diagnosis type, cancer classification, detection condition, anatomical site, and TNM stage information."
Title: "Cancer Condition Example"
Usage: #example

* identifier[cancerRegistry].system = "https://dhp.uz/fhir/core/sid/reg/uz/cancer"
* identifier[cancerRegistry].value = "57dcdd0a-5a68-4cc6-8503-5ab15a41c62b"

* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-verification-status#confirmed
* category = $condition-category#problem-list-item

* code = $icd-10#C02 "Malignant neoplasm of other and unspecified parts of tongue"

* extension[diagnosisType].valueCodeableConcept = $diagnosis-type-cs#cancer-0003-0003 "Notification from a branch of the Republican Specialized Scientific and Practical Medical Center of Oncology and Radiology"
* extension[cancer-iccc-3-group].valueCodeableConcept =  $iccc-3#IIId2

* bodySite = $sct#7771000 "Left"
* bodySite.extension[detection-condition].valueCodeableConcept = cancer-detection-condition-cs#cancer-0005-0002 "Detected in the Onconazorat office"

* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/cancer-encounter-example)

* onsetDateTime = "2026-08-15"
* recordedDate = "2026-08-20"

* participant.actor = Reference(Organization/example-organization)

* stage.summary = $sct#1352944009 "II (UICC)"
* stage.assessment = Reference(Observation/cancer-observation-tnm-stage-group-example)