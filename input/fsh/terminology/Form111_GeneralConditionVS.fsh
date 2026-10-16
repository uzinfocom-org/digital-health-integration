ValueSet: Form111_GeneralConditionVS
Id: form111-general-condition-vs
Title: "Form 111 General Condition ValueSet"
Description: "Form 111 General Condition ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."

* insert IntegrationsValueSet(form111-general-condition-vs)

* ^experimental = true
* ^status = #draft

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_GeneralConditionCS)

* $sct#162669003 "Patient's condition satisfactory"
* $sct#162667001 "Patient's condition poor"