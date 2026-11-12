ValueSet: BldLabCodesVS
Id: bld-lab-codes-vs
Title: "Blood laboratory tests and processing operations"
Description: "Laboratory tests and local blood component processing operations selectable in blood service orders. Laboratory codes are candidates pending confirmation of local methods and specimens."
* insert IntegrationsValueSet(bld-lab-codes-vs)
* ^status = #draft
* ^experimental = true

// Reuse existing Uzbek and Russian translations for the included LOINC codes.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096LoincSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111LoincSupplementCS)

// Candidate laboratory codes from the integration specification.
// Confirm method and specimen compatibility before production use.
* include $loinc#1975-2
* include $loinc#1742-6
* include $loinc#883-9
* include $loinc#10331-7
* include $loinc#16128-1
* include $loinc#20507-0
* include $loinc#5195-3
* include $loinc#95523-7
* include $loinc#30202-6
* include $loinc#32700-7
* include $loinc#58410-2

* include codes from system ProcessingOperationCS
