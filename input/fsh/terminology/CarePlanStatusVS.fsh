ValueSet: CarePlanStatusVS
Id: care-plan-status-vs
Title: "Care Plan Status ValueSet"
Description: "ValueSet including both local and official care plan statuses in Uzbekistan healthcare system"
* ^url = "https://terminology.dhp.uz/ValueSet/care-plan-status-vs"
* ^experimental = true

* include codes from system care-plan-status-local-cs

* include $request-status#draft "Draft"
* include $request-status#active "Active"
* include $request-status#revoked "Revoked"
* include $request-status#completed "Completed"
* include $request-status#entered-in-error "Entered in Error"