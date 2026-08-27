ValueSet: CancerEncounterClassVS
Id: cancer-encounter-class-vs
Title: "Cancer Encounter Class ValueSet"
Description: "All cancer encounter classes from the Cancer Encounter Class code system."
* insert IntegrationsValueSet(cancer-encounter-class-vs)
* ^experimental = true
* include codes from system cancer-encounter-class-cs
* include codes from system $v3-ActCode