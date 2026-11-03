ValueSet: Form111_SocialObservationCodeVS
Id: form111-social-observation-code-vs
Title: "Social Observation Code ValueSet"
Description: "Form 111 Social Observation Code ValueSet"
* insert IntegrationsValueSet(form111-social-observation-code-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111LoincSupplementCS)

* include codes from system form111-social-observation-code-cs

// Standard codes replacing the former local concepts.
* $loinc#80427-8 "Employer name [Identifier]"

* ^experimental = true
* ^status = #draft
