ValueSet: CancerStageGroupVS
Id: cancer-stage-group-vs
Title: "Cancer Stage Group ValueSet"
Description: "ValueSet containing SNOMED CT concepts for cancer stage grouping used in the Uzbekistan healthcare system."

* insert IntegrationsValueSet(cancer-stage-group-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CancerStageGroupCS)

* $sct#399390009 "TNM stage grouping"
* $sct#399537006 "Clinical TNM stage grouping"
* $sct#399588009 "Pathologic TNM stage grouping"
