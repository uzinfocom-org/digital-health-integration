ValueSet: ScreeningPlanClosureReasonVS
Id: screening-plan-closure-reason-vs
Title: "Screening Plan Closure Reasons (Proposal)"
Description: "Draft screening plan closure reasons used with the standard request-statusReason extension. Reason-to-status mapping requires agreement before production use."
* insert IntegrationsValueSet(screening-plan-closure-reason-vs)
* ^status = #draft
* ^experimental = true
* include codes from system ScreeningPlanClosureReasonCS
