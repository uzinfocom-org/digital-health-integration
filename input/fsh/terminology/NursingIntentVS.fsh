ValueSet: NursingIntentVS
Id: nursing-intent-vs
Title: "Nursing Intent Value Set"
Description: "Intent codes for NursingCarePlan, carrying Uzbek and Russian designations."
* insert IntegrationsValueSet(nursing-intent-vs)
* ^status = #draft
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(NursingIntentCS)

* $request-intent#proposal "Proposal"
* $request-intent#plan "Plan"
* $request-intent#order "Order"
* $request-intent#option "Option"
* $request-intent#directive "Directive"