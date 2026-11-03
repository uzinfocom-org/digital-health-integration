ValueSet: Form111_GeneralObservationCodeVS
Id: form111-general-observation-code-vs
Title: "Form 111 General Observation Code ValueSet"
Description: "Form 111 General Observation Code ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert IntegrationsValueSet(form111-general-observation-code-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111LoincSupplementCS)

* include codes from system form111-general-observation-code-cs
// Legacy risk duplicates retain their meanings but are not used for new observations.
* exclude form111-general-observation-code-cs#chr-0035-00022
* exclude form111-general-observation-code-cs#chr-0035-00023

// Standard codes replacing the former local concepts.
* $sct#228456002 "Age became sexually active"
* $loinc#49033-4 "Menstrual History - Reported"
* $loinc#80427-8 "Employer name [Identifier]"

* ^experimental = true
* ^status = #draft
