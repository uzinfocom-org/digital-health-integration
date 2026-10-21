ValueSet: CancerCCcMCategoryVS
Id: cancer-cc-c-m-category-vs
Title: "Cancer CCC M Category ValueSet"
Description: "ValueSet containing SNOMED CT concepts used to classify the M category of cancer."

* insert IntegrationsValueSet(cancer-cc-c-m-category-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CancerCCcMCategorySnomedCS)

* $sct#1352512001
* $sct#1352513006
* $sct#1352517007
* $sct#1352514000
* $sct#1352516003
* $sct#1352510009

* cancer-cc-c-m-category-cs#cancer-0008-0001 "X"