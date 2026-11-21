ValueSet: OrdersTaskStatusReasonVS
Id: orders-task-status-reason-vs
Title: "Task status reasons"
Description: "Task status reason codes used in Uzbekistan healthcare workflow."
* insert IntegrationsValueSet(orders-task-status-reason-vs)
* ^experimental = true
* include codes from system orders-task-status-reason-cs
* ^status = #draft
