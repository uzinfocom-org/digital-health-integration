ValueSet: ICD10VS
Id: icd-10-vs
Title: "ICD-10 Full ValueSet"
Description: "All ICD-10 diagnosis codes"
* insert IntegrationsValueSet(icd-10-vs)
* ^status = #active
* ^experimental = false

* include codes from system http://hl7.org/fhir/sid/icd-10