ValueSet: AnesthesiaMethodVS
Id: anesthesia-method-vs
Title: "Form003 Anesthesia Method ValueSet"
Description: "ValueSet for anesthesia methods, Form003 inpatient medical record: SNOMED CT procedure codes plus the local code SNOMED CT does not cover."
* insert IntegrationsValueSet(anesthesia-method-vs)
* ^experimental = true

* include codes from valueset ProcedureCodeVS
* include codes from system anesthesia-method-cs