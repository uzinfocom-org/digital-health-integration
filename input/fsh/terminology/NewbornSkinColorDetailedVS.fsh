ValueSet: NewbornSkinColorDetailedVS
Id: newborn-skin-color-detailed-vs
Title: "Form097 Newborn Skin Color Detailed ValueSet"
Description: "ValueSet for newborn skin color detailed, Form097 newborn development record."
* insert IntegrationsValueSet(newborn-skin-color-detailed-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form097SnomedSupplementCS)
* ^experimental = true

* include codes from system newborn-skin-color-detailed-cs
* include $sct#304230005 "Pink skin"
* include $sct#398979000 "Pale complexion"
* include $sct#406128001 "Mottling of skin"
* include $sct#387712008 "Neonatal jaundice"
* include $sct#3415004 "Cyanosis"
* include $sct#25003006 "Acrocyanosis"
* include $sct#271807003 "Eruption"
