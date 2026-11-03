ValueSet: Form096AmnioticFluidObservationCodeVS
Id: amniotic-fluid-observation-code-vs
Title: "Form 096 Amniotic Fluid Appearance Code"
Description: "Observation.code for the Form 096 amniotic fluid appearance field, with the value from amniotic-fluid-characteristic-vs."
* insert IntegrationsValueSet(amniotic-fluid-observation-code-vs)
* ^status = #draft
* ^experimental = true

* $loinc#1887-9 "Appearance of Amniotic fluid"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096LoincSupplementCS)
