ValueSet: SickLeaveDiagnosisStatusVS
Id: sick-leave-diagnosis-status-vs
Title: "Sick Leave Diagnosis Status"
Description: "Verification statuses that tell the preliminary diagnosis of a sick leave certificate (provisional) from the final one (confirmed)"
* insert SickLeaveContact
* insert IntegrationsValueSet(sick-leave-diagnosis-status-vs)
* ^experimental = true

* $condition-ver-status#provisional "Provisional"
* $condition-ver-status#confirmed "Confirmed"
