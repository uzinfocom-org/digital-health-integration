ValueSet: CarePlanStatusVS
Id: care-plan-status-vs
Title: "Care Plan Status ValueSet"
Description: "Sick leave statuses of the DHP sick leave API"
* insert SickLeaveContact
* insert IntegrationsValueSet(care-plan-status-vs)
* ^experimental = true

* include codes from system care-plan-status-local-cs
