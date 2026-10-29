ValueSet: NormalAbnormalStatusVS
Id: normal-abnormal-status-vs
Title: "Form097 Normal Abnormal Status ValueSet"
Description: "ValueSet for normal abnormal status, Form097 newborn development record."
* insert IntegrationsValueSet(normal-abnormal-status-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)
* ^experimental = true

* include $sct#17621005 "Normal"
* include $sct#263654008 "Abnormal"
