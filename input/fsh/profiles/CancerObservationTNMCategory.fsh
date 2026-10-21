Profile: CancerObservationTNMCategory
Parent: UZCoreObservation
Id: cancer-observation-tnm-category
Title: "Cancer Observation TNM Category"
Description: "Обследование с целью определения классификации опухоли пациента и степени поражения"

* ^experimental = true
* ^status = #active
* ^date = "2026-09-15"
* ^publisher = "Uzinfocom"

* status = #final

* category MS
* category = $observation-category#imaging

* code MS
* code from CancerTNMCategoryVS (required)

* method 1..1 MS
* method from CancerStagingEditionVS

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* focus 1..1
* focus only Reference(CancerCondition)

* effective[x] MS
* effective[x] only dateTime

* performer MS
* performer only Reference(UZCorePractitionerRole)

* value[x] MS
* valueCodeableConcept 1..1
* valueCodeableConcept from CancerCCCtCategoryVS (example)
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(CancerCCCtCategoryVS)
  * ^binding.additional[=].usage.code = https://dhp.uz/fhir/integrations/StructureDefinition/cancer-observation-tnm-category#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#399504009 "cT category"
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(CancerCCpTCategoryVS)
  * ^binding.additional[=].usage.code = https://dhp.uz/fhir/integrations/StructureDefinition/cancer-observation-tnm-category#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#384625004 "pT category"
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(CancerCCcNCategoryVS)
  * ^binding.additional[=].usage.code = https://dhp.uz/fhir/integrations/StructureDefinition/cancer-observation-tnm-category#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#399534004 "cN category"
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(CancerCCpNCategoryVS)
  * ^binding.additional[=].usage.code = https://dhp.uz/fhir/integrations/StructureDefinition/cancer-observation-tnm-category#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#371494008 "pN category"
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(CancerCCcMCategoryVS)
  * ^binding.additional[=].usage.code = https://dhp.uz/fhir/integrations/StructureDefinition/cancer-observation-tnm-category#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#399387003 "cM category"
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(CancerCCpMCategoryVS)
  * ^binding.additional[=].usage.code = https://dhp.uz/fhir/integrations/StructureDefinition/cancer-observation-tnm-category#Observation.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#371497001 "pM category"

Instance: cancer-observation-tnm-category-ct
InstanceOf: CancerObservationTNMCategory
Usage: #example
Title: "Cancer TNM Clinical T Category Example"
Description: "Example of a clinical primary tumor (cT) category observation using the AJCC 8th edition staging system."

* status = #final
* category = $observation-category#imaging
* code = $sct#399504009 "cT category"
* method = $sct#897275008 
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-example)
* effectiveDateTime = "2026-02-10T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = $sct#1352983006 


Instance: cancer-observation-tnm-category-cn
InstanceOf: CancerObservationTNMCategory
Usage: #example
Title: "Cancer TNM Clinical N Category Example"
Description: "Example of a clinical regional lymph node (cN) category observation using the AJCC 8th edition staging system."

* status = #final
* category = $observation-category#imaging
* code = $sct#399534004 "cN category"
* method = $sct#897275008 
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-example)
* effectiveDateTime = "2026-09-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = $sct#1353043007 


Instance: cancer-observation-tnm-category-pn
InstanceOf: CancerObservationTNMCategory
Usage: #example
Title: "Cancer TNM Pathological N Category Example"
Description: "Example of a pathological regional lymph node (pN) category observation using the AJCC 8th edition staging system."

* status = #final
* category = $observation-category#imaging
* code = $sct#371494008 "pN category"
* method = $sct#897275008 
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-example)
* effectiveDateTime = "2026-09-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = $sct#1352614009 


Instance: cancer-observation-tnm-category-cm
InstanceOf: CancerObservationTNMCategory
Usage: #example
Title: "Cancer TNM Clinical M Category Example"
Description: "Example of a clinical distant metastasis (cM) category observation using the AJCC 8th edition staging system."

* status = #final
* category = $observation-category#imaging
* code = $sct#399387003 "cM category"
* method = $sct#897275008
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-example)
* effectiveDateTime = "2026-09-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = $sct#1352512001 


Instance: cancer-observation-tnm-category-pm
InstanceOf: CancerObservationTNMCategory
Usage: #example
Title: "Cancer TNM Pathological M Category Example"
Description: "Example of a pathological distant metastasis (pM) category observation using the AJCC 8th edition staging system."

* status = #final
* category = $observation-category#imaging
* code = $sct#371497001 "pM category"
* method = $sct#897275008 
* subject = Reference(Patient/example-salim)
* focus = Reference(Condition/cancer-condition-example)
* effectiveDateTime = "2026-09-15T10:00:00+05:00"
* performer = Reference(PractitionerRole/practitionerrole-001)
* valueCodeableConcept = $sct#1352573004