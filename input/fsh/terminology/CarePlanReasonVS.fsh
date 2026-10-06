ValueSet: CarePlanReasonVS
Id: care-plan-reason-vs
Title: "Care Plan Reason ValueSet"
Description: "Reasons for temporary incapacity sent by the DHP sick leave API"
* insert SickLeaveContact
* insert IntegrationsValueSet(care-plan-reason-vs)
* ^experimental = true

* include codes from system care-plan-reason-cs
