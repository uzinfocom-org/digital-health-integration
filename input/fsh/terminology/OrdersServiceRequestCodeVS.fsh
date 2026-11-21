ValueSet: OrdersServiceRequestCodeVS
Id: orders-service-request-code-vs
Title: "Orders service request code"
Description: "Additional referral codes used by Orders alongside the inherited UZ Core service request binding."
* insert IntegrationsValueSet(orders-service-request-code-vs)
* ^status = #draft
* ^experimental = true
* $sct#310449005 "Referral to hospital"
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(OrdersSnomedSupplementCS)
