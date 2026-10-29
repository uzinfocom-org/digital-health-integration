ValueSet: Form111_GynecologicalExaminationObservationCodeVS
Id: form111-gynecological-examination-observation-code-vs
Title: "Form 111 Gynecological Examination Observation Code ValueSet"
Description: "Form 111 Gynecological Examination Observation Code ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert IntegrationsValueSet(form111-gynecological-examination-observation-code-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111LoincSupplementCS)

* include codes from system form111-gynecological-examination-observation-code-cs

// Standard codes replacing the former local concepts.
* $loinc#10193-1 "Physical findings of Breasts Narrative"

* ^experimental = true
* ^status = #draft
