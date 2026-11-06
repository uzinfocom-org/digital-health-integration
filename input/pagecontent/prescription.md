# Prescription Integration

## Scope

This integration describes how DMED exchanges electronic prescriptions with the Digital Health Platform using FHIR R5. It covers ordinary prescriptions, reimbursement prescriptions, reviewer approval, pharmacy dispensing, medication administration by healthcare personnel, audit and reporting.

The functional Prescription specification is normative for business behaviour. The FSH profiles in this guide are normative for the exchanged FHIR representation. Where business terminology used by DMED has no direct FHIR status, the integration keeps the clinical resource status and the DMED workflow status separate.

Self-administration by a patient at home is not recorded as a `MedicationAdministration`. That resource is created when healthcare personnel administer the medication, including injections, infusions and other administrations during an encounter or inpatient stay.

## Actors

| Actor | Responsibility |
|---|---|
| Prescriber | Selects the patient and medication, enters the regimen, validates and signs the prescription. |
| Prescription reviewer | Approves a reimbursement prescription or requests revision. Typical reviewers include a deputy chief physician or a department head. |
| Pharmacist | Finds an available prescription, checks the permitted data and records the actual dispense. |
| Nurse or other administering practitioner | Records medication administered to the patient. |
| Patient | Receives the prescribed medication. |
| Trustee | Receives medication for the patient. A relative may be used for either prescription type; a patronage nurse is permitted for reimbursement prescriptions. |
| State Health Insurance Fund | Defines reimbursement diagnoses, medicines, quantity and duration limits, clinic budgets and contracted pharmacies. |
| DMED | Executes the clinical workflow and sends validated FHIR resources. |
| DHP | Validates, stores and exposes resources according to access-control policy. |

## Conformance resources

| Resource | Integration profile | Purpose |
|---|---|---|
| Medication | [PrescriptionMedication](StructureDefinition-prescription-medication.html) | Medication selected from the DMED medication dictionary. |
| MedicationRequest | [PrescriptionMedicationRequest](StructureDefinition-prescription-medication-request.html) | The electronic prescription and dosage instructions. |
| Task | [PrescriptionApprovalTask](StructureDefinition-prescription-approval-task.html) | Stateful reviewer workflow for reimbursement prescriptions. |
| MedicationDispense | [PrescriptionMedicationDispense](StructureDefinition-prescription-medication-dispense.html) | Medication actually handed over by the pharmacy. |
| MedicationAdministration | [PrescriptionMedicationAdministration](StructureDefinition-prescription-medication-administration.html) | Medication administered by healthcare personnel. |
| Provenance | [PrescriptionProvenance](StructureDefinition-prescription-provenance.html) | Signature, authorship and completed workflow actions. |
| MeasureReport | [PrescriptionMeasureReport](StructureDefinition-prescription-measure-report.html) | Prescription activity, fulfilment and quality reporting. |
| AuditEvent | UZ Core AuditEvent | Access, search, update, cancellation and dispense audit. |

Patient, Encounter, Practitioner, PractitionerRole, Organization, Location, Condition and RelatedPerson use the applicable UZ Core profiles. The Core `trustee` extension is reused; this IG does not define a duplicate extension.

## Prescription types

| Prefix | Type | DMED API value | Behaviour |
|---|---|---|---|
| `A` | Ordinary | `simple` | Paid ordinary prescription. It becomes available after successful signing. |
| `R` | Reimbursement | `reimbursement` | Covered by the reimbursement programme. It is hidden from pharmacies until reviewer approval. |

Every prescription has `MedicationRequest.category` `outpatient` ([MedicationRequestAdminLocationVS](https://build.fhir.org/ig/uzinfocom-org/digital-health-ig/en/ValueSet-medicationrequest-admin-location-vs.html)). A reimbursement prescription also has the UZ Core reimbursable order code `rembr-0001-00001`; a prescription without it is ordinary.

## General business rules

1. One prescribed medication is represented by one `MedicationRequest`. Several items may be sent in one atomic transaction, but they remain separate requests.
2. Medication selection starts with INN. DMED then presents registered product templates and trade names from the pharmaceutical master data.
3. A signed prescription has a stable DMED business identifier. Repeating the same command must not create a duplicate.
4. Dose and quantity include a numeric value, display unit, system and code.
5. The total quantity may be calculated from dose, frequency and duration. The prescriber may correct the calculated quantity when the real regimen requires it.
6. An ordinary prescription has a maximum validity of 90 days. Its planned treatment duration is 30, 60 or at most 90 days in the described DMED workflow.
7. A reimbursement prescription takes any treatment duration from 1 to 90 days, like an ordinary one; DMED sets its validity to 30 days.
8. Only one reimbursement prescription for the same INN is allowed during a rolling 30-day period.
9. No more than four reimbursement INNs may be prescribed to one patient in one calendar month. Each INN retains its own 30-day blocking period.
10. An ordinary dispense may be smaller than the prescribed amount but must never exceed it.
11. A reimbursement prescription is dispensed only in complete packs. Partial reimbursement dispense is forbidden.
12. Physical deletion is forbidden. Cancellation uses `MedicationRequest.status = cancelled`, a reason and audit records.
13. An approved prescription is not edited in place. Renewal cancels the previous request, creates a new request and preserves the relationship between them.
14. A pharmacy only receives information required for dispensing and does not receive the complete medical record.

Rules 8, 9, 10 and 11 require server-side validation across resources and time periods. They cannot be guaranteed by a StructureDefinition invariant alone.

## Overall process

1. The prescriber opens the patient from an outpatient encounter or inpatient record.
2. The prescriber starts `+ Prescription` and selects A or R.
3. DMED obtains the medication from INN and pharmaceutical master data.
4. The prescriber enters route, dose, frequency, course duration, total quantity and patient instructions.
5. The prescriber selects the patient or a trustee as the receiver.
6. DMED validates required fields, medication coding, regimen, validity, clinician authority and reimbursement eligibility.
7. The prescriber signs the prescription.
8. An ordinary prescription becomes available for dispensing. A reimbursement prescription creates an approval Task and remains hidden from pharmacies.
9. The reviewer approves the reimbursement prescription or requests revision.
10. The pharmacy searches for an available prescription and records `MedicationDispense`.
11. Healthcare personnel record `MedicationAdministration` when they administer a prescribed dose.
12. `Provenance` and `AuditEvent` preserve signature, authorship and access history.

## Ordinary prescription

### Preconditions

- The prescriber is authenticated and has an active PractitionerRole.
- Patient and encounter context are resolved.
- Medication and terminology services are available.

### Scenario

1. Select type A.
2. Select INN, product, dose form and strength.
3. Enter the regimen and quantity.
4. Select the receiver when the patient will not collect the medicine.
5. Validate and sign.
6. Create the PrescriptionMedicationRequest and its PrescriptionProvenance atomically.

### Acceptance criteria

- The DMED prescription identifier begins with A and is unique.
- `MedicationRequest.status` is `draft` before signing and `active` after signing.
- Expected supply duration and validity do not exceed 90 days.
- The prescription is visible to authorized pharmacies after signing.

## Reimbursement prescription

### Preconditions

- The prescriber is a family doctor.
- The patient is on the dispensary register with a diagnosis included in the Fund programme.
- The selected medication is allowed for that diagnosis.
- Quantity, duration, monthly INN limit and clinic budget permit the prescription.

### Scenario

1. Select type R.
2. DMED validates eligibility and limits.
3. Select a medication from the Fund list and enter the treatment duration.
4. Sign the prescription.
5. Create a `PrescriptionApprovalTask` with `businessStatus = review-pending`.
6. The reviewer approves or requests revision.
7. After approval, the prescription becomes visible to contracted pharmacies.

### Acceptance criteria

- Before approval, the pharmacy cannot find the prescription.
- Approval state is held in `Task.businessStatus`, not in `MedicationRequest.status`.
- The approval or revision event is recorded in Provenance and AuditEvent.
- Partial dispensing is rejected with a stable PrescriptionErrorCS code.

## Status model

The values below were verified against the live DMED list filter and its `status` query parameter on 17 September 2026. DMED combines prescription, approval and dispensing states in one source field; FHIR keeps those concerns in `MedicationRequest`, approval `Task` and `MedicationDispense`.

| DMED API code | DMED label | MedicationRequest.status | Approval Task |
|---|---|---|---|
| `not_signed` | Not signed | `draft` | none |
| `created` | Not issued | `active` | completed when approval was required |
| `awaiting_confirmation` | Awaiting confirmation | `active` | `requested` / `review-pending` |
| `revision` | Revision requested | `on-hold` | `completed` / `revision-requested` |
| `approve` | Approved | `active` | `completed` / `approved` |
| `partially_issued` | Partially issued | `active` | completed when approval was required |
| `issued` | Issued | `completed` | completed when present |
| `expired` | Expired | `ended` | completed or cancelled when present |
| `canceled` | Cancelled | `cancelled`; `ended` when the DMED expiry job cancelled it (no cancellation reason) | cancelled when present |

`approved` is not a valid FHIR R5 MedicationRequest status. Implementations must not add local strings to the required FHIR status binding.

## Receiver and trustee

When the patient collects the medicine, `MedicationDispense.receiver` references the Patient. When another person collects it, the prescription uses the UZ Core `trustee` extension and the dispense receiver references the same RelatedPerson or PractitionerRole.

A relative is represented by UZ Core RelatedPerson. A patronage nurse is represented by UZ Core PractitionerRole and is only allowed for reimbursement prescriptions. Safe codes and identity evidence are not placed in narrative text, logs or unrestricted audit details.

## Dispensing

The pharmacist may find an available prescription by QR code, patient PINFL plus safe code, or prescription ID plus safe code and patient date of birth. The search mode must match the prescription type.

Before dispensing, the pharmacist verifies the prescription, medication, INN, dose form, dose, route, duration and permitted quantity. The actual trade product, batch/serial details, expiration date, quantity and price are captured by the pharmacy workflow. The FHIR clinical event is `PrescriptionMedicationDispense` linked through `authorizingPrescription`.

For an ordinary prescription, a quantity lower than requested is allowed and the remaining amount is calculated from all completed dispense resources. For reimbursement, the server rejects a quantity that does not fulfil the complete-pack rule.

## Medication administration

`PrescriptionMedicationAdministration` is created only for administration by healthcare personnel. It references the prescription through `request`, the patient through `subject`, the clinical encounter and the administering PractitionerRole. `occurenceDateTime` is the R5 element spelling used by the base resource.

## Update, renewal and cancellation

An editable prescription may be updated using version-aware FHIR update. The client sends `If-Match` with the last known version and handles version conflicts.

An approved prescription is renewed by cancelling the previous MedicationRequest, creating a new business identifier, copying permitted clinical data and linking the new request to the previous request. The selected relationship (`priorPrescription` or `basedOn`) must be used consistently by all implementations.

Cancellation requires a reason, changes status to `cancelled`, never deletes the resource and produces audit records.

## Observed DMED API contract

The source contract below was captured read-only from the authenticated DMED Prescription screen on 17 September 2026. Authentication tokens, device identifiers, safe codes and personal data are deliberately not published in this guide.

| Method and endpoint | Purpose |
|---|---|
| `GET /api/prescriptions/v1/prescriptions` | Paginated list; observed parameters: `page`, `per_page`, `type`, `doctor_id`, `status`. |
| `GET /api/prescriptions/v1/prescriptions/{uuid}` | Prescription detail. |
| `GET /api/prescriptions/v1/prescriptions/{uuid}/patient` | Patient context displayed in the detail view. |
| `GET /api/prescriptions/v1/prescriptions/dispensaries` | Dispensary information used by the detail view. |
| `GET /api/prescriptions/v1/prescriptions/statistics?clinic_id={id}` | Reimbursement budget and issuance statistics. |
| `GET /api/prescriptions/v1/prescriptions/export/by-clinic-reimbursement` | Excel export; transport tokens and device identifiers are not FHIR data. |

The list and detail endpoints return the same prescription object at their core. This data-minimized JSON preserves the fields needed by the FHIR mapping; identity/display-only fields and pagination link URLs are omitted.

```json
{
  "data": [
    {
      "id": 12076,
      "uuid": "<prescription-uuid>",
      "safe_code": "<secret-not-exchanged>",
      "number": "<DMED-business-number>",
      "status": "not_signed",
      "type": "simple",
      "expiration_date": "2026-12-13",
      "cancellation_reason": null,
      "cancellation_comment": null,
      "signed_type": null,
      "distribution_type": "with-recipe",
      "created_at": "2026-09-14T09:00:00+05:00",
      "cancelled_at": null,
      "approved_at": null,
      "drug_appointment": {
        "start_date": "2026-09-14",
        "end_date": "2026-09-18",
        "single_dose": "0.5",
        "administration_frequency": 2,
        "administration_frequency_measure": "day",
        "patient_uuid": "<patient-uuid>",
        "count_days": 5,
        "doctor_id": 38059,
        "total_amount": 5,
        "remaining": null,
        "receive_mode": null,
        "inn": { "id": 1, "title": "<INN display>", "code": null, "is_combination": false },
        "medication": [
          { "id": 1, "title": "<medication display>", "code": null, "is_combination": false }
        ],
        "substance_dosage": {
          "id": 1,
          "dosage": 200,
          "title": "200 milligram",
          "measurement_unit": { "id": 2, "title": "milligram" },
          "combination_components": []
        },
        "dosage_form": { "id": 1157, "title": "Drops" },
        "drug_administration_route": { "id": 4, "title": "Ocular" },
        "drug_administration_times": [],
        "issues": []
      },
      "revision": null,
      "dispensaries": [],
      "confidant": null,
      "cancelled_by": null,
      "cancelled_clinic": null,
      "cancelled_pharmacy": null
    }
  ],
  "meta": { "current_page": 1, "per_page": 12, "total": 1, "has_more_pages": false }
}
```

The reimbursement statistics response has this observed shape:

```json
{
  "total_budget": 0,
  "balance": 0,
  "issue_sum": 0,
  "issued_count": 0,
  "approve_sum": 0,
  "approve_count": 0
}
```

## DMED to FHIR mapping

### MedicationRequest

| DMED field | FHIR path |
|---|---|
| `number` | `MedicationRequest.identifier[dmedPrescription]` |
| `uuid` | `MedicationRequest.identifier[dmedPrescriptionUUID]` |
| `type` (`simple` / `reimbursement`) | `MedicationRequest.category`: `outpatient`, plus `rembr-0001-00001` for `reimbursement` |
| `status` | `MedicationRequest.status` plus approval Task and dispense state |
| `drug_appointment.inn` and `drug_appointment.medication` | `MedicationRequest.medication` / referenced Medication |
| `drug_appointment.patient_uuid` | `MedicationRequest.subject` |
| Trustee | `MedicationRequest.extension[trustee]` |
| Encounter | `MedicationRequest.encounter` |
| `drug_appointment.doctor_id` | `MedicationRequest.requester` |
| reimbursement diagnosis/eligibility context | `MedicationRequest.reason` |
| `drug_appointment.start_date` / `end_date` | `MedicationRequest.effectiveDosePeriod` |
| `administration_frequency`, `administration_frequency_measure`, `drug_administration_times` | `MedicationRequest.dosageInstruction.timing` |
| `drug_administration_route.id` | `MedicationRequest.dosageInstruction.route` through ConceptMap |
| `single_dose`, `substance_dosage.measurement_unit` | `MedicationRequest.dosageInstruction.doseAndRate.doseQuantity` |
| `total_amount` | `MedicationRequest.dispenseRequest.quantity` |
| `count_days` | `MedicationRequest.dispenseRequest.expectedSupplyDuration` |
| `created_at`, `expiration_date` | `MedicationRequest.dispenseRequest.validityPeriod` |
| `cancellation_reason`, `cancellation_comment` | `MedicationRequest.statusReason` and `note` according to access policy |
| `safe_code` | Not placed in a FHIR clinical resource, narrative or log. |

### MedicationDispense

| DMED field | FHIR path |
|---|---|
| Dispense ID | `MedicationDispense.identifier` |
| Actual medication | `MedicationDispense.medication` |
| Prescription | `MedicationDispense.authorizingPrescription` |
| Patient | `MedicationDispense.subject` |
| Pharmacist | `MedicationDispense.performer.actor` |
| Actual quantity | `MedicationDispense.quantity` |
| Handover time | `MedicationDispense.whenHandedOver` |
| Receiver | `MedicationDispense.receiver` |

### MedicationAdministration

| DMED field | FHIR path |
|---|---|
| Administration ID | `MedicationAdministration.identifier` |
| Prescription | `MedicationAdministration.request` |
| Medication | `MedicationAdministration.medication` |
| Patient | `MedicationAdministration.subject` |
| Encounter | `MedicationAdministration.encounter` |
| Performed time | `MedicationAdministration.occurenceDateTime` |
| Performer | `MedicationAdministration.performer.actor` |
| Route and dose | `MedicationAdministration.dosage` |

## Terminology

The integration reuses UZ Core INN, dose-form, route, medication status, request status, dispense status and unit ValueSets. It defines only prescription-specific types, workflow actions, workflow business statuses, errors and DMED source values.

DMED local values are translated through versioned ConceptMaps. A missing INN, dose form, route or unit mapping is a validation failure; the display text is never used as a substitute code. Only mappings without doubt are published; a source value that has none yet is rejected with `terminology-crosswalk-not-found` until it is reviewed and added.

| DMED field | ConceptMap | Target | Mapped |
|---|---|---|---|
| `type` | [DMED prescription type](ConceptMap-dmed-prescription-type-to-medication-request-category.html) | `outpatient` and UZ Core reimbursable order | 2 of 2 |
| `status` | [DMED prescription status](ConceptMap-dmed-prescription-status-to-medication-request-status.html) | MedicationRequest status | 8 of 9; `not_signed` is never sent |
| `inn_id` | [DMED INN to medication classification](ConceptMap-dmed-prescription-inn-to-medication-classification-cm.html) | UZ Core INN, otherwise WHO ATC | 1 006 INN and 236 ATC of 2 752 single-substance INNs; combinations are coded per component |
| `dosage_form_id` | [DMED dose form](ConceptMap-dmed-prescription-dose-form-to-medication-doseform-cm.html) | UZ Core dose form | 369 of 372 |
| `drug_administration_route_id` | [DMED route](ConceptMap-dmed-prescription-route-to-fhir-route.html) | SNOMED CT route | 23 of 56 |
| `receive_mode` | [DMED intake timing](ConceptMap-dmed-prescription-receive-mode-to-event-timing.html) | `timing.repeat.when` | 6 of 7; `at_any_time` sends no `when` |
| `administration_frequency_measure` | [DMED frequency period](ConceptMap-dmed-prescription-frequency-period-to-units-of-time.html) | `timing.repeat.periodUnit` | 4 of 4 |
| `cancellation_reason` | [DMED cancellation reason](ConceptMap-dmed-prescription-cancellation-reason-to-status-reason.html) | UZ Core status reason | 2 of 2 |
| `administration_method` (treatment course) | [DMED administration method](ConceptMap-dmed-administration-method-to-fhir-route.html) | `MedicationAdministration.dosage.method`, SNOMED CT or UZ Core route | 19 of 21 |

The dose form and route identifiers come from the DMED test environment dictionaries of 2026-11-03, the INN identifiers from the DMED export of 2026-10-05. The INN map is built from the Pharmaceutical Committee registry export of 2026-11-02: an INN code is taken only when every registry package of the INN's trade names names the same code, or when the registry substance has the same name, and an ATC code only when it is a level-5 code shared by all trade names. The older Core DMED route CodeSystem uses textual codes and is not treated as the source system for the numeric Prescription API field.

## FHIR exchange

Creation uses a transaction Bundle when Medication, MedicationRequest, approval Task and Provenance must be stored atomically. Conditional create is performed using the stable identifier. Updates are version-aware. A successful transaction returns a transaction-response Bundle; a failed transaction returns OperationOutcome.

Prescription-specific business errors are carried in `OperationOutcome.issue.details.coding` using [PrescriptionErrorCS](CodeSystem-prescription-error-cs.html) (allowed codes: [PrescriptionErrorVS](ValueSet-prescription-error-vs.html)). `OperationOutcome.issue.code` remains a code from the required FHIR IssueType ValueSet. Field errors include `issue.expression` with a FHIRPath expression.

See the generated examples:

- [ordinary prescription](MedicationRequest-example-ordinary-prescription.html);
- [reimbursement prescription](MedicationRequest-example-reimbursement-prescription.html);
- [approval Task](Task-example-prescription-approval-task.html);
- [dispense](MedicationDispense-example-prescription-dispense.html);
- [administration](MedicationAdministration-example-prescription-administration.html);
- [signature Provenance](Provenance-example-prescription-signature.html);
- [transaction Bundle](Bundle-example-prescription-transaction.html);
- [business-rule OperationOutcome](OperationOutcome-example-prescription-operation-outcome.html).

## Validation checklist

- Validate every resource against its declared `meta.profile`.
- Resolve every Bundle reference.
- Validate terminology codes and ConceptMap versions.
- Reject unknown local codes and naked quantities without `system` and `code`.
- Enforce identifier idempotency.
- Enforce reimbursement cross-resource limits server-side.
- Verify signature data against the exact resource version or Bundle being signed.
- Record search, read, update, cancellation, approval and dispense audit events without logging the safe code in clear text.
