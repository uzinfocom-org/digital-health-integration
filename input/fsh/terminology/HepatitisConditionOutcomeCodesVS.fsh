ValueSet: HepatitisConditionOutcomeCodesVS
Id: hepatitis-condition-outcome-codes-vs
Title: "Hepatitis Condition Outcome Codes ValueSet"
Description: "Local value set for hepatitis treatment outcomes, with Uzbek and Russian designations."

* insert IntegrationsValueSet(hepatitis-condition-outcome-codes-vs)
* ^experimental = true
* ^language = #uz

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(HepatitisConditionOutcomeCodesCS)

* include codes from system $sct