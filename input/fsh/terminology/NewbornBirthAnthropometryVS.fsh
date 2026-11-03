ValueSet: NewbornBirthAnthropometryVS
Id: newborn-birth-and-anthropometry-code-vs
Title: "Form097 Newborn Birth And Anthropometry ValueSet"
Description: "ValueSet for newborn birth and anthropometry, Form097 newborn development record."
* insert IntegrationsValueSet(newborn-birth-and-anthropometry-code-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form097SnomedSupplementCS)
* ^experimental = true

* include codes from system newborn-birth-anthropometry-cs
* include $sct#248366000 "Chest circumference"
