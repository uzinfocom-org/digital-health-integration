ValueSet: AnesthesiaMethodVS
Id: anesthesia-method-vs
Title: "Anesthesia Method ValueSet"
Description: "ValueSet for anesthesia methods, Form 003 inpatient medical record: SNOMED CT anesthesia procedures plus the local code SNOMED CT does not cover."
* insert IntegrationsValueSet(anesthesia-method-vs)
* ^experimental = true

* $sct#27372005 "Regional anesthesia"
* $sct#386761002 "Local anesthesia"
* $sct#18946005 "Epidural anesthesia"
* $sct#231249005 "Spinal anesthesia"
* $sct#78432000 "Intravenous anesthesia"
* $sct#50697003 "Administration of general anesthetic"
* $sct#266802007 "Endotracheal anesthesia"
* $sct#288185006 "Inhalation general anesthesia"
* include codes from system anesthesia-method-cs
