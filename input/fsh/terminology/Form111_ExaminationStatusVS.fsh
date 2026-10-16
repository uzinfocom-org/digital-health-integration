ValueSet: Form111_ExaminationStatusVS
Id: form111-examination-status-vs
Title: "Form 111 Examination Status ValueSet"
Description: "Form 111 Examination Status ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert IntegrationsValueSet(form111-examination-status-vs)   

* ^experimental = true
* ^status = #draft

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_BreastConditionCS)

* $sct#17621005 "Normal"
* $sct#263654008 "Abnormal"