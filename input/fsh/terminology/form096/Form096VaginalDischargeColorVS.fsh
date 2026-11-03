ValueSet: Form096VaginalDischargeColorVS
Id: vaginal-discharge-color-vs
Title: "Form 096 Vaginal Discharge Color"
Description: "Observation.valueCodeableConcept for the Form 096 vaginal discharge colour field (Observation.code SNOMED CT 271939006 \"Vaginal discharge\"). A colour not listed here is sent as valueCodeableConcept.text."
* insert IntegrationsValueSet(vaginal-discharge-color-vs)
* ^status = #draft
* ^experimental = true

* $sct#289547007 "Bloodstained vaginal discharge"
* $sct#289556004 "Brown vaginal discharge"
* $sct#289554001 "Yellow vaginal discharge"
* $sct#289552002 "White vaginal discharge"
* $sct#289555000 "Green vaginal discharge"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
