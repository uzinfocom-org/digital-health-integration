ValueSet: Form096InterventionEffectivenessVS
Id: intervention-effectiveness-vs
Title: "Form 096 Intervention Effectiveness"
Description: "Procedure.outcome of the Form 096 labor support field, and Observation.valueCodeableConcept of the pain relief effect field."
* insert IntegrationsValueSet(intervention-effectiveness-vs)
* ^status = #draft
* ^experimental = true

* $sct#385669000 "Successful"
* $sct#385670004 "Partially successful"
* $sct#385671000 "Unsuccessful"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
