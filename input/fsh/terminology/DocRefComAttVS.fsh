ValueSet: DocRefComAttVS
Id:  doc-ref-com-att-vs
Title: "Document Reference Composition Attestattion"
Description: "Defines the consent state codes in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/ValueSet/doc-ref-com-att-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DocRefComAttCS)

* include $drca#personal
* include $drca#professional
* include $drca#legal
* include $drca#official