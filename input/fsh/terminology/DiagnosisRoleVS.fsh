ValueSet: DiagnosisRoleVS
Id: diagnosis-role-integration-vs
Title: "Diagnosis Role ValueSet"
Description: "All diagnosis roles from the [Diagnosis Role code system](CodeSystem-diagnosis-role-integration.html), as used in [Form 066 - Hospital Discharge Statistical Card](StructureDefinition-form-066-hospital-discharge-composition.html) and [Form 066-1 - Psychiatric/Narcological Discharge Statistical Card](StructureDefinition-form-066-1-psychiatric-discharge-composition.html)."
* insert IntegrationsValueSet(diagnosis-role-integration-vs)
* ^experimental = true
* include codes from system diagnosis-role-integration
