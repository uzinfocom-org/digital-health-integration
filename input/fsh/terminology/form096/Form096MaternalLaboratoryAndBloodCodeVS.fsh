ValueSet: Form096MaternalLaboratoryAndBloodCodeVS
Id: maternal-laboratory-and-blood-code-vs
Title: "Form 096 Admission Laboratory Test Codes"
Description: "Observation.code for the Form 096 admission laboratory fields: blood group, Rh factor, hemoglobin, blood group antibodies, RW (syphilis), gonococcus and other analyses such as the urine test. Syphilis, gonococcus and other analysis use the same codes as Form 111. Results go in Observation.value[x]: the UZ Core blood-group-vs, the UZ Core blood-rh-vs or positive-negative-result-vs."
* insert IntegrationsValueSet(maternal-laboratory-and-blood-code-vs)
* ^status = #draft
* ^experimental = true

* $loinc#883-9 "ABO group [Type] in Blood"
* $loinc#10331-7 "Rh [Type] in Blood"
* $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* $loinc#890-4 "Blood group antibody screen [Presence] in Serum or Plasma"
* $loinc#22461-8 "Reagin Ab [Presence] in Serum"
* $form111-analysis-test-code-cs#chr-0001-00001 "Gonokokk"
* $form111-analysis-test-code-cs#chr-0001-00006 "Boshqa tahlil"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096LoincSupplementCS)
