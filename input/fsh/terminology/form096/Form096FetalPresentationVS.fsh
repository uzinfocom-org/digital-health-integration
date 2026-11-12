ValueSet: Form096FetalPresentationVS
Id: fetal-presentation-vs
Title: "Form 096 Fetal Presentation"
Description: "Observation.valueCodeableConcept for the Form 096 fetal presentation field (Observation.code SNOMED CT 271692001 \"Presentation of fetus\"), one Observation per fetus, or one for all fetuses when the source keeps a single examination, and for the presentation of each newborn at birth. Cephalic, breech and uncertain use the same codes as Form 111. Transverse is a lie, not a presentation, and goes to fetal-lie-vs. DMED values map as: cephalic 1209182005, occipital 70028003, facial 21882006, frontal 8014007, anterior_cephalic 1209182005, breech 6096002, mixed and complete 49168004, incomplete 38049006, knee 249098007, full_leg 249097002, not_defined 871479001; transverse goes to fetal-lie-vs as 73161006."
* insert IntegrationsValueSet(fetal-presentation-vs)
* ^status = #draft
* ^experimental = true

* $sct#1209182005 "Cephalic fetal presentation"
* $sct#70028003 "Vertex presentation"
* $sct#21882006 "Face presentation of fetus"
* $sct#8014007 "Brow presentation"
* $sct#6096002 "Breech presentation"
* $sct#49168004 "Complete breech presentation"
* $sct#38049006 "Incomplete breech presentation"
* $sct#249098007 "Knee presentation"
* $sct#249097002 "Footling breech presentation"
* $sct#871479001 "Uncertain presentation of fetus"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)
