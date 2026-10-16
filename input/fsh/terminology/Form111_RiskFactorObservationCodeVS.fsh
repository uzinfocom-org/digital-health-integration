ValueSet: Form111_RiskFactorObservationCodeVS
Id: form111-risk-factor-observation-code-vs
Title: "Form 111 Risk Factor Observation Code ValueSet"
Description: "Form 111 Risk Factor Observation Code ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."

* insert IntegrationsValueSet(form111-risk-factor-observation-code-vs)

* ^experimental = true
* ^status = #draft

* include codes from system form111-risk-factor-observation-code-cs

* $loinc#92016-5 "Maternal pregnancy risk factors Document"