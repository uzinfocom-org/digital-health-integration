Alias: $loinc_code = http://loinc.org

ValueSet: LOINC_CodesVS
Id: loinc-codes-vs
Title: "LOINC ValueSet"
Description: "Subset of LOINC codes"
* ^url = "https://terminology.dhp.uz/ValueSet/loinc-codes-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(LOINC_CodesCS)

* include codes from system $loinc_code