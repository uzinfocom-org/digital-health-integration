ValueSet: Form096CervicalDilationMeasurementCodeVS
Id: cervical-dilation-measurement-code-vs
Title: "Form 096 Cervical Dilation Code"
Description: "Observation.code for the Form 096 cervical dilation field, with the dilation in Observation.valueQuantity in cm. Full dilation is sent as 10 cm at the time it was reached."
* insert IntegrationsValueSet(cervical-dilation-measurement-code-vs)
* ^status = #draft
* ^experimental = true

* $sct#289825001 "Diameter of cervical dilatation"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
