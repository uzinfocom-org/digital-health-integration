ValueSet: DocRefStatusVS
Id: doc-ref-status-vs
Title: "Document Reference Status ValueSet"
Description: "Defines the consent state codes in Uzbek and Russian"
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/doc-ref-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DocRefStatusCS)

* include $drs#current
* include $drs#superseded
* include $drs#entered-in-error