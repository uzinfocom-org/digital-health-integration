Volume 4 is the hospital or clinic pharmacy - keeping medicines in stock and accounting for them. It is about logistics and money rather than treating patients, which is why most of it sits outside the clinical record.

### What a facility pharmacy does

A pharmacy inside a hospital is a small warehouse. Its job is to make sure the right medicines are on the shelf when a ward needs them, and to account for every item, because medicines are expensive and some are tightly controlled. The work is a cycle:

- Work out what is needed. Based on how many beds the hospital has and what conditions it treats, the pharmacy estimates how much of each medicine it will use.
- Order and receive stock. It requisitions medicines from a supplier and records what arrives.
- Issue to the wards. Departments request medicines, and the pharmacy hands them out and records it.
- Account for everything. Daily expense, balances and financial turnover are tracked so the books add up.

None of these forms describe a specific patient. They are stock and accounting records.

### How the forms relate

The forms follow the supply cycle in order: a need estimate (131) justifies a requisition (134), goods are received and booked into stock (132, 137), issued out to departments (135, 136, 139), and the remaining balance and financial turnover are reconciled (138, 140, 141). It is a straightforward in-and-out ledger.

### A sample cycle

Each month the pharmacy estimates its needs from bed numbers and the conditions it treats (131) and sends a requisition to its supplier (134). When the delivery arrives it is counted and booked into stock (132). Through the month, wards request medicines and the pharmacy issues them, recording each handover (136). At month end the daily expenses are totalled and the remaining balance is reconciled against the books (139, 141).

<div>{% include forms-vol04-flow.svg %}</div><br clear="all"/>

### How this volume maps to FHIR

For implementers: these forms carry no per-patient clinical content, so most are out of clinical-integration scope. Where a medicine actually reaches a patient, the clinical record is a `MedicationRequest` / `MedicationDispense` in the prescribing workflow, not these stock forms.

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Need calculation | 131 | Out of clinical scope (planning) |
| Requisition and receipt | 132, 133, 134, 137 | `SupplyRequest`, R5 inventory resources |
| Issue to departments | 135, 136, 139 | `SupplyDelivery` |
| Financial turnover and balance | 138, 140, 141 | Out of clinical scope (accounting) |

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
