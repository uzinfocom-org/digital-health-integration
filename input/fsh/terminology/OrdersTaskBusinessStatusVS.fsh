ValueSet: OrdersTaskBusinessStatusVS
Id: orders-task-business-status-vs
Title: "Orders task business status"
Description: "Core task business statuses and additional Orders workflow statuses."
* insert IntegrationsValueSet(orders-task-business-status-vs)
* ^status = #draft
* ^experimental = true
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs
* include codes from system OrdersTaskBusinessStatusCS
