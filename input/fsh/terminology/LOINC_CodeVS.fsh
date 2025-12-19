Alias: $loinc_code = http://loinc.org
Alias: $valueset-supplement = http://hl7.org/fhir/StructureDefinition/valueset-supplement

ValueSet: LOINC_CodesVS
Id: loinc-codes-vs
Title: "LOINC ValueSet"
Description: "Subset of LOINC codes"
* ^url = "https://terminology.dhp.uz/ValueSet/loinc-codes-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(LOINC_CodesCS)

* include $loinc_code#9272-6 "Apgar score at 1 minute"
* include $loinc_code#9274-2 "Apgar score at 5 minutes"
* include $loinc_code#8339-4 "Birth weight"
* include $loinc_code#8302-2 "Birth length (height)"
* include $loinc_code#76516-4 "Gestational age at birth (weeks)"
* include $loinc_code#8287-5 "Head circumference at birth"
* include $loinc_code#80616-6 "Time of birth"