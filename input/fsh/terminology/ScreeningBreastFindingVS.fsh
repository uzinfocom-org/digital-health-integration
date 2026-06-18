ValueSet: ScreeningBreastFindingVS
Id: screening-breast-finding-vs
Title: "Breast Mammography Findings ValueSet"
Description: "Value set of codes for recording breast findings. Uses SNOMED CT where an equivalent concept exists, plus a local code for macrocalcifications (no equivalent SNOMED concept)."
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/screening-breast-finding-vs"
* ^experimental = true

* $sct#129797000 "Mammographic skin thickening of breast"
* $sct#129792006 "Architectural distortion of breast"
* screening-breast-finding-cs#src-find-3 "Makrokalsinatlar"
* $sct#129788004 "Mammographic breast mass"
* $sct#89164003 "Breast lump"
* $sct#129789007 "Focal asymmetric breast tissue"
* $sct#59441001 "Structure of lymph node"
* $sct#12402003 "Scar"
* $sct#30285000 "Verruca"
