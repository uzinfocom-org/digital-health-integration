ValueSet: OrdersServiceRequestBasisVS
Id: orders-service-request-basis-vs
Title: "ServiceRequest treatment bases"
Description: "ServiceRequest basis codes used in Uzbekistan healthcare workflow."
* insert IntegrationsValueSet(orders-service-request-basis-vs)
* ^experimental = true
* include codes from system orders-service-request-basis-cs
* ^status = #draft
