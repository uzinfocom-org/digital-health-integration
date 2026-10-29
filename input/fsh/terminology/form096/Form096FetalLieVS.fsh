ValueSet: Form096FetalLieVS
Id: fetal-lie-vs
Title: "Form 096 Fetal Lie"
Description: "Observation.valueCodeableConcept for the Form 096 fetal lie field (Observation.code SNOMED CT 249062004 \"Lie of fetus\"), one Observation per fetus."
* insert IntegrationsValueSet(fetal-lie-vs)
* ^status = #draft
* ^experimental = true

* $sct#249063009 "Longitudinal lie"
* $sct#73161006 "Transverse lie"
* $sct#63750008 "Oblique lie"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
