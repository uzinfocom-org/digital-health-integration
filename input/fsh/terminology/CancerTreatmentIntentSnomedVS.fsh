ValueSet: CancerTreatmentIntentSnomedVS
Id: cancer-treatment-intent-snomed-vs
Title: "Cancer Treatment Intent Snomed ValueSet"
Description: "ValueSet containing SNOMED CT concepts for cancer treatment intent used in the Uzbekistan healthcare system."

* insert IntegrationsValueSet(cancer-treatment-intent-snomed-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CancerTreatmentIntentSnomedCS)

* $sct#373808002 "Curative"
* $sct#363676003 "Palliative"
* $sct#399707004 "Supportive"
* $sct#129428001 "Preventive"
