ValueSet: Form111_SocialObservationCodeVS
Id: form111-social-observation-code-vs
Title: "Form 111 Social Observation Code ValueSet"
Description: "Form 111 Social Observation Code ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."

* insert IntegrationsValueSet(form111-social-observation-code-vs)

* ^experimental = true
* ^status = #draft

* include codes from system form111-social-observation-code-cs

* $loinc#80427-8 "Employer name [Identifier]"