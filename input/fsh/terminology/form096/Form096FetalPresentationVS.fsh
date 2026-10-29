ValueSet: Form096FetalPresentationVS
Id: fetal-presentation-vs
Title: "Form 096 Fetal Presentation"
Description: "Observation.valueCodeableConcept for the Form 096 fetal presentation field (Observation.code SNOMED CT 271692001 \"Presentation of fetus\"), one Observation per fetus, and for the presentation of each newborn at birth. Cephalic, breech and uncertain use the same codes as Form 111."
* insert IntegrationsValueSet(fetal-presentation-vs)
* ^status = #draft
* ^experimental = true

* $sct#1209182005 "Cephalic fetal presentation"
* $sct#6096002 "Breech presentation"
* $sct#249097002 "Footling breech presentation"
* $sct#871479001 "Uncertain presentation of fetus"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)
