ValueSet: Form096MaternalLaboratoryAndBloodCodeVS
Id: maternal-laboratory-and-blood-code-vs
Title: "Form 096 Admission Laboratory Test Codes"
Description: "Observation.code for the Form 096 admission laboratory fields: blood group, Rh factor, hemoglobin, blood group antibodies, complete blood count, RW (syphilis), HBsAg, toxoplasmosis, urinalysis, vaginal smear, stool for ova and parasites, HIV (1+2, 1, 2 and rapid test), gonococcus, and any other analysis. Codes shared with Form 111 are the same as in Form 111. Results go in Observation.value[x]: the UZ Core blood-group-vs, the UZ Core blood-rh-vs, positive-negative-result-vs, or valueString when the result is free text."
* insert IntegrationsValueSet(maternal-laboratory-and-blood-code-vs)
* ^status = #draft
* ^experimental = true

* $loinc#883-9 "ABO group [Type] in Blood"
* $loinc#10331-7 "Rh [Type] in Blood"
* $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* $loinc#890-4 "Blood group antibody screen [Presence] in Serum or Plasma"
* $loinc#58410-2 "CBC panel - Blood by Automated count"
* $loinc#22461-8 "Reagin Ab [Presence] in Serum"
* $loinc#5195-3 "Hepatitis B virus surface Ag [Presence] in Serum"
* $loinc#22577-1 "Toxoplasma gondii Ab [Presence] in Serum"
* $loinc#24356-8 "Urinalysis complete panel - Urine"
* $loinc#14361-0 "Microscopic observation [Identifier] in Vaginal fluid by Gram stain"
* $loinc#10704-5 "Ova and parasites identified in Stool by Light microscopy"
* $loinc#7918-6 "HIV 1+2 Ab [Presence] in Serum"
* $loinc#7917-8 "HIV 1 Ab [Presence] in Serum"
* $loinc#30361-0 "HIV 2 Ab [Presence] in Serum or Plasma by Immunoassay"
* $loinc#80387-4 "HIV 1+2 Ab [Presence] in Serum, Plasma or Blood by Rapid immunoassay"
* $form111-analysis-test-code-cs#chr-0001-00001 "Gonokokk"
* $form111-analysis-test-code-cs#chr-0001-00006 "Boshqa tahlil"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096LoincSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111LoincSupplementCS)
