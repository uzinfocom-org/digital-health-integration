ValueSet: Form096MaternalExaminationObservationCodeVS
Id: maternal-examination-observation-code-vs
Title: "Form 096 Maternal and Fetal Examination Codes"
Description: "Observation.code for the Form 096 general, obstetric and fetal examination fields on admission: general condition, heart, pulse, blood pressure, respiratory and digestive systems, height, weight, temperature, pelvimetry, abdominal circumference, fundal height, and per fetus the lie, position, presentation, site of heart sounds, heart rate and estimated weight. Pelvimetry is one Observation with the Form 111 codes chr-0035-00002 to chr-0035-00008 and chr-0023-00002. General condition values come from satisfactory-status-vs, lie from fetal-lie-vs and presentation from fetal-presentation-vs."
* insert IntegrationsValueSet(maternal-examination-observation-code-vs)
* ^status = #draft
* ^experimental = true

* $form111-assessment-obs-cs#chr-0005-00003 "Umumiy ahvoli"
* $loinc#8702-3 "Physical findings of Heart"
* $loinc#8867-4 "Heart rate"
* $loinc#85354-9 "Blood pressure panel with all children optional"
* $loinc#11412-4 "Physical findings of Respiratory system Narrative"
* $loinc#11399-3 "Physical findings of Gastrointestinal system Narrative"
* $loinc#8302-2 "Body height"
* $loinc#29463-7 "Body weight"
* $loinc#8310-5 "Body temperature"
* $form111-general-obs-cs#chr-0035-00002 "Chanoq o'lchovlari"
* $form111-general-obs-cs#chr-0035-00003 "Distantia spinarum (D.sp)"
* $form111-general-obs-cs#chr-0035-00004 "Distantia cristarum (D.Cr)"
* $form111-general-obs-cs#chr-0035-00005 "Distantia trochanterica (D.troch)"
* $form111-general-obs-cs#chr-0035-00006 "Conjugata externa (C.ext)"
* $form111-general-obs-cs#chr-0035-00007 "Conjugata diagonalis (C.diag)"
* $form111-general-obs-cs#chr-0035-00008 "Conjugata vera (C.vera)"
* $form111-pregnancy-monitoring-cs#chr-0023-00002 "Chanoq aylanasi"
* $sct#396552003 "Abdominal circumference"
* $loinc#11881-0 "Uterus Fundal height Tape measure"
* $sct#249062004 "Lie of fetus"
* $sct#364607000 "Position of fetus"
* $sct#271692001 "Presentation of fetus"
* $sct#373720003 "Site of loudest fetal heart sounds"
* $loinc#55283-6 "Fetal Heart rate"
* $loinc#11727-5 "Fetal Body weight estimated by US"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096LoincSupplementCS)
