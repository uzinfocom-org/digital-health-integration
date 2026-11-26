ValueSet: CyanosisDistributionVS
Id: cyanosis-distribution-vs
Title: "Form097 Cyanosis Distribution ValueSet"
Description: "ValueSet for cyanosis distribution, Form097 newborn development record."
* insert IntegrationsValueSet(cyanosis-distribution-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form097SnomedSupplementCS)
* ^experimental = true

* include $sct#60132005 "Generalized"
* include $sct#263953004 "Perioral"
* include $sct#25003006 "Acrocyanosis"
