ValueSet: Form111_AssessmentObservationCodeVS
Id: form111-assessment-observation-code-vs
Title: "Form 111 Assessment Observation Code ValueSet"
Description: "Form 111 Assessment Observation Code ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert IntegrationsValueSet(form111-assessment-observation-code-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111LoincSupplementCS)

* include codes from system form111-assessment-observation-code-cs

// Standard codes replacing the former local concepts.
* $loinc#8661-1 "Chief complaint - Reported"
* $loinc#18776-5 "Plan of care note"
* $loinc#11488-4 "Consult note"
* $loinc#11421-5 "Physical findings of Cardiovascular system"

* ^experimental = true
* ^status = #draft
