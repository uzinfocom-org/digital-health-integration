ValueSet: DocRefComStatusVS
Id: doc-ref-com-status-vs
Title: "Document Reference Status ValueSet"
Description: "Defines the consent state codes in Russian and Uzbek"
* ^url = "https://terminology.dhp.uz/ValueSet/doc-ref-com-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DocRefComStatusCS)

* include codes from system $drcs