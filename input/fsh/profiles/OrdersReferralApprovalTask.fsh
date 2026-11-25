Invariant: orders-task-1
Description: "If Task.status is not completed, cancelled, or failed, and requestedPeriod.end is in the past, businessStatus should be set to overdue for SLA monitoring"
Severity: #warning
Expression: "(status != 'completed' and status != 'cancelled' and status != 'failed' and requestedPeriod.end.exists() and requestedPeriod.end < now()) implies businessStatus.coding.exists(code = 'overdue')"

Profile: OrdersReferralApprovalTask
Parent: Task
Id: orders-referral-approval-task
Title: "Orders Referral Approval Task"
Description: "Orders referral approval Task profile, used to track workflow steps of the state-insurance referral and hospitalization approval process (Annex 1 to Resolution of the Cabinet of Ministers No. 694, 04.11.2025)"
* ^experimental = true
* ^status = #draft
* ^date = "2026-06-18"
* ^publisher = "Uzinfocom"

* identifier 0..1 MS
* identifier.system 1..1
* identifier.value 1..1
* identifier ^short = "Identifiers assigned to this task"

* code MS
* code ^short = "Task category"
* code from TaskCodesVS (required)

* basedOn 1..1 MS
* basedOn ^short = "Request under which this task was completed"
* basedOn only Reference(OrdersServiceRequest)

* partOf MS
* partOf ^short = "Composite Task"
* partOf only Reference(OrdersReferralApprovalTask)

* status MS
* status ^short = "Task Status"
* status from TaskStatusVS (required)

* statusReason MS
* statusReason from OrdersTaskStatusReasonVS (extensible)

* businessStatus MS
* businessStatus ^short = "Business status of task"
* businessStatus from OrdersTaskBusinessStatusVS (required)

* intent MS
* intent ^short = "Task completion level"
* intent from TaskIntentVS (required)

* focus 1..1 MS
* focus ^short = "On which task the action is being performed"
* focus only Reference(OrdersServiceRequest)

* for MS
* for ^short = "For whom this task is performed"
* for only Reference(UZCorePatient)

* owner MS
* owner ^short = "Task responsible person"
* owner only Reference(UZCoreOrganization or UZCorePractitionerRole)

* performer MS
  * actor MS
  * actor only Reference(UZCorePractitionerRole)

* requestedPeriod MS
  * ^short = "When execution is required"
  * start and end MS
* executionPeriod MS
  * ^short = "Actual start and end time"
  * start and end MS

* authoredOn MS

* requester MS
* requester only Reference(UZCoreOrganization)

* requestedPerformer MS
* requestedPerformer only CodeableReference(UZCoreOrganization)

* note MS

* obeys orders-task-1
