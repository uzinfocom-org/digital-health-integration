ValueSet: Form111_BreastConditionVS
Id: form111-breast-condition-vs
Title: "Form 111 Breast Condition ValueSet"
Description: "Form 111 Breast Condition ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."

* insert IntegrationsValueSet(form111-breast-condition-vs)

* ^experimental = true
* ^status = #draft

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_BreastConditionCS)

* $sct#17621005 "Normal"
* $sct#263654008 "Abnormal"