ValueSet: Form096PositiveNegativeResultVS
Id: positive-negative-result-vs
Title: "Form 096 Positive / Negative Result"
Description: "Observation.valueCodeableConcept for the Form 096 admission tests with a positive or negative result (blood group antibodies, RW, gonococcus), the same codes as Form 111."
* insert IntegrationsValueSet(positive-negative-result-vs)
* ^status = #draft
* ^experimental = true

* $sct#10828004 "Positive"
* $sct#260385009 "Negative"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)
