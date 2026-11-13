ValueSet: BldAboGroupVS
Id: bld-abo-group-vs
Title: "Blood ABO groups"
Description: "ABO blood groups for blood transfusion assessment"

* insert IntegrationsValueSet(bld-abo-group-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = $blood-group-cs

* include $sct#58460004
* include $sct#112144000
* include $sct#112149005
* include $sct#165743006

