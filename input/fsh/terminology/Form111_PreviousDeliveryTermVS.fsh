ValueSet: Form111_PreviousDeliveryTermVS
Id: form111-previous-delivery-term-vs
Title: "Form 111 Previous Delivery Term ValueSet"
Description: "Form 111 Previous Delivery Term ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399. Covers the term of a previous delivery: premature or term birth."
* insert IntegrationsValueSet(form111-previous-delivery-term-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)

* $sct#367494004 "Premature birth of newborn"
* $sct#21243004 "Term birth of newborn"

* ^experimental = true
* ^status = #draft
