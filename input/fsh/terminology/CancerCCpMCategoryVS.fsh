ValueSet: CancerCCpMCategoryVS
Id: cancer-cc-p-m-category-vs
Title: "Cancer CCpM Category ValueSet"
Description: "ValueSet containing SNOMED CT concepts used to classify the pathological M category of cancer."

* insert IntegrationsValueSet(cancer-cc-p-m-category-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CancerCCpMCategorySnomedCS)

* $sct#1352583000 
* $sct#1352573004 
* $sct#1352578008 
* $sct#1229923005 
* $sct#1352580002 

* include codes from system cancer-cc-p-m-category-cs