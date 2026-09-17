ValueSet: CancerBodyLocationVS
Id: cancer-body-location-vs
Title: "Cancer Body Location ValueSet"
Description: "Value set for cancer body locations used in the Uzbekistan healthcare system, with Uzbek and Russian designations."

* insert IntegrationsValueSet(cancer-body-location-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CancerBodyLocationCS)

* $sct#59441001 "Structure of lymph node"
* $sct#272673000 "Bone structure"
* $sct#10200004 "Liver structure"
* $sct#110549009 "Lung and pleura, CS"
* $sct#12738006 "Brain structure"
* $sct#15497006 "Ovarian structure"
* $sct#87784001 "Soft tissue"
* $sct#23451007 "Adrenal structure"
* $sct#15425007 "Structure of serous membrane of peritoneum"
* $sct#74964007 "Other"