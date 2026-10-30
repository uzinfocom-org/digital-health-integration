ValueSet: MuscleToneStatusVS
Id: muscle-tone-status-vs
Title: "Form097 Muscle Tone Status ValueSet"
Description: "ValueSet for muscle tone status, Form097 newborn development record."
* insert IntegrationsValueSet(muscle-tone-status-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form097SnomedSupplementCS)
* ^experimental = true

* include $sct#827065006 "Normal tone in skeletal muscle"
* include $sct#398151007 "Decreased muscle tone"
