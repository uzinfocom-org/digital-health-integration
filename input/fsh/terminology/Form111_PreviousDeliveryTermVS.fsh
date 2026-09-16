ValueSet: Form111_PreviousDeliveryTermVS
Id: form111-previous-delivery-term-vs
Title: "Form 111 Previous Delivery Term ValueSet"
Description: "Form 111 Previous Delivery Term ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399. Covers the term of a previous delivery: premature, term, or post-term birth."
* insert IntegrationsValueSet(form111-previous-delivery-term-vs)

* include codes from system form111-previous-delivery-term-cs
* $sct#367494004 "Premature birth of newborn"
* $sct#21243004 "Term birth of newborn"

* ^experimental = true
* ^status = #draft
