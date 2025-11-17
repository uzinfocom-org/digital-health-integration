ValueSet: LOINCVS
Id: loinc-vs
Title: "LOINC's ValueSet"
Description: "Defines the consent state codes in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/loinc-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = $loinc

* include $loinc#9272-6
* include $loinc#9274-2
* include $loinc#8339-4
* include $loinc#8302-2
* include $loinc#76516-4
* include $loinc#8287-5
* include $loinc#80616-6