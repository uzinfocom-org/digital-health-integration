Volume 4 is the facility pharmacy - calculating drug need, requisitioning stock, recording receipts and issues to departments, and the financial accounting of medicines. It is logistics and inventory rather than patient-level clinical data.

This is an [operational](forms-overview.html#scope-for-integration) volume. It is largely out of scope for the core clinical integration, though a system that tracks dispensing may map parts of it.

### How this volume maps to FHIR

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Need calculation | 131 | Out of clinical scope (planning) |
| Requisition and receipt | 132, 133, 134, 137 | `SupplyRequest`, R5 inventory resources |
| Issue to departments | 135, 136, 139 | `SupplyDelivery` |
| Financial turnover and balance | 138, 140, 141 | Out of clinical scope (accounting) |

None of these forms carry per-patient clinical content. Where a medicine reaches a patient, the clinical record is a `MedicationRequest` / `MedicationDispense` in the prescribing workflow, not these stock forms.

### Sample flow

<div>{% include forms-vol04-flow.svg %}</div><br clear="all"/>

### Forms in this volume

| Form | Title |
|------|-------|
| 131 | Monthly average drug need by bed-count and nosology |
| 132 | Pharmacy quantitative receipt report |
| 133 | Standing commission acceptance act |
| 134 | Requisition / waybill for drugs, devices and reagents |
| 135 | Daily quantitative expense |
| 136 | Drugs issued to departments report |
| 137 | Drug stock accounting sheet |
| 138 | Turnover statement by financing source |
| 139 | Daily quantitative expense document |
| 140 | Turnover table column notes |
| 141 | Drug balance (per period) |
