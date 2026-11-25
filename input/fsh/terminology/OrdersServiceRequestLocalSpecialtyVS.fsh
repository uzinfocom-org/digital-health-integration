ValueSet: OrdersServiceRequestLocalSpecialtyVS
Id: orders-service-request-local-specialty-vs
Title: "ServiceRequest local specialty"
Description: "All local clinical specialty codes for ServiceRequest, the source of the mapping to SNOMED CT"
* insert IntegrationsValueSet(orders-service-request-local-specialty-vs)
* ^experimental = true
* include codes from system orders-service-request-specialty-cs

* ^status = #draft
