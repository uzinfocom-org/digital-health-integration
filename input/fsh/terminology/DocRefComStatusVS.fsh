ValueSet: DocRefComStatusVS
Id: doc-ref-com-status-vs
Title: "Document Reference Status ValueSet"
Description: "Defines the consent state codes in Uzbek and Russian"
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/doc-ref-com-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DocRefComStatusCS)

* include $drcs#registered
* include $drcs#partial
* include $drcs#preliminary
* include $drcs#final
* include $drcs#amended
* include $drcs#corrected
* include $drcs#appended
* include $drcs#cancelled
* include $drcs#entered-in-error
* include $drcs#deprecated
* include $drcs#unknown