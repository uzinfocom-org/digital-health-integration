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
| Trustee | Receives medication for the patient. The existing source determines whether the trustee is a relative or a patronage nurse. |
| State Health Insurance Fund | Defines reimbursement diagnoses, medicines, quantity and duration limits, clinic budgets and contracted pharmacies. |
| DMED | Executes the clinical workflow and sends validated FHIR resources. |
| DHP | Validates, stores and exposes resources according to access-control policy. |

## Conformance resources

| Resource | Integration profile | Purpose |
|---|---|---|
| Medication | [PrescriptionMedication](StructureDefinition-prescription-medication.html) | Medication selected from the DMED medication dictionary. |
| MedicationRequest | [PrescriptionMedicationRequest](StructureDefinition-prescription-medication-request.html) | The electronic prescription and dosage instructions. |
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

1. DMED business processes are the source of truth. This integration selects existing data for transmission and maps it to DHP; it does not introduce new DMED workflow restrictions or mandatory data capture.
2. One prescribed medication is represented by one MedicationRequest. Repeated delivery is idempotent by the DMED identifier.
3. An initially unsigned prescription is not sent to DHP. A later edit under the same identifier must preserve version and signature history; the availability of complete change events is still to be confirmed.
4. Dose and quantity use coded units. The dose, prescribed total and dispensed quantity use the agreed local piece unit; pack codes are not quantities.
5. Course duration and prescription validity are distinct. Course days map to timing.repeat.boundsDuration and course dates to effectiveDosePeriod; validityPeriod is taken from DMED and does not exceed the agreed 90-day limit.
6. An ordinary prescription may be partially dispensed. DMED may round up to a whole pack; DHP preserves the reported quantity rather than rejecting the event solely for exceeding the prescribed amount. DMED owns the remaining-quantity calculation.
7. A reimbursement prescription is dispensed in full, in whole packs; there is no partial reimbursement dispense in the existing workflow. Eligibility and funding limits belong to the existing DMED and Reimbursement processes.
8. Only Prescription writes MedicationRequest and MedicationDispense. Reimbursement writes Claim and ClaimResponse. The signed request exists before Claim is created; Prescription adds its insurance reference asynchronously.
9. Prescription validity and the reimbursement authorization window are stored separately. Reimbursement uses the sale amount in ChargeItem and keeps the reimbursement benefit separately in ClaimResponse.
10. Deleted erroneous dispense lines are represented by entered-in-error on both MedicationDispense and ChargeItem, retaining history.
11. Renewal uses a new DMED identifier. DMED does not retain the relationship to the previous prescription, so priorPrescription and basedOn are not inferred.
12. MedicationAdministration records a DMED treatment course independently of electronic prescriptions; request and encounter are not populated.
13. The pharmacy receives only the data needed for its existing dispensing workflow. Trustee identity fields selected for DHP are reviewed separately from DMED's external pharmacy API response.

## Overall process

1. The prescriber opens the patient from an outpatient encounter or inpatient record.
2. The prescriber starts `+ Prescription` and selects A or R.
3. DMED obtains the medication from INN and pharmaceutical master data.
4. The prescriber enters route, dose, frequency, course duration, total quantity and patient instructions.
5. The prescriber selects the patient or a trustee as the receiver.
6. DMED validates required fields, medication coding, regimen, validity, clinician authority and reimbursement eligibility.
7. The prescriber signs the prescription.
8. An ordinary prescription becomes available for dispensing. A reimbursement prescription remains hidden from pharmacies.
9. The reviewer approves the reimbursement prescription or requests revision.
10. The pharmacy searches for an available prescription and records `MedicationDispense`.
11. Healthcare personnel record MedicationAdministration under a treatment course, independently of the electronic prescription.
12. `Provenance` and `AuditEvent` preserve signature, authorship and access history.

## Ordinary prescription

### Preconditions

- The prescriber is authenticated and has an active PractitionerRole.
- The patient and prescriber are resolved; MedicationRequest.encounter is not populated.
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
- Initially unsigned prescriptions are not sent to DHP; draft is not used. A signed ordinary prescription is active. Later return to unsigned depends on the available source event mapping.
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
5. The reviewer approves or requests revision.
6. After approval, the prescription becomes visible to contracted pharmacies.

### Acceptance criteria

- Before approval, the pharmacy cannot find the prescription.
- The approval or revision event is recorded in Provenance and AuditEvent.
- Partial dispensing is rejected with a stable PrescriptionErrorCS code.

## Status model

The values below were verified against the live DMED list filter and its `status` query parameter on 17 September 2026. DMED combines prescription, approval and dispensing states in one source field; FHIR keeps those concerns in `MedicationRequest` and `MedicationDispense`.

| DMED API code | DMED label | MedicationRequest.status |
|---|---|---|
| `not_signed` | Not signed | Not sent initially; no draft resource. Later edits require existing-resource event mapping. |
| `created` | Not issued | `active` |
| `awaiting_confirmation` | Awaiting confirmation | `active` |
| `revision` | Revision requested | `on-hold` |
| `approve` | Approved | `active` |
| `partially_issued` | Partially issued | `active` |
| `issued` | Issued | `completed` |
| `expired` | Expired | `ended` |
| `canceled` | Cancelled | `cancelled`; `ended` when the DMED expiry job cancelled it (no cancellation reason) |

`approved` is not a valid FHIR R5 MedicationRequest status. Implementations must not add local strings to the required FHIR status binding.

## Receiver and trustee

When the patient collects the medicine, `MedicationDispense.receiver` references the Patient. When another person collects it, the prescription uses the UZ Core `trustee` extension and the dispense receiver references the same RelatedPerson or PractitionerRole.

A relative is represented by UZ Core RelatedPerson. A patronage nurse is represented by UZ Core PractitionerRole when that trustee type is supplied by DMED. Safe codes and identity evidence are not placed in narrative text, logs or unrestricted audit details.

## Dispensing

The pharmacist uses the existing DMED search and dispensing workflow. One source drug_issues line is one MedicationDispense and one ChargeItem; repeated transmission does not create duplicates.

Medication references the actual trade product. GTIN is in identifier[globalTradeItemID], and each reported Asl Belgisi package code has its own identifier[markingID]. Only identifier[dmedDispense] is the event key; GTIN, package codes and lot numbers must not be used to update or deduplicate dispenses.

When the batch is known, MedicationDispense.medication references a separate Medication of that batch (batch.lotNumber, batch.expirationDate), shared by all dispenses of the batch.

The full sale amount from sale_price is in UZ Core ChargeItem.totalPriceComponent (type base, UZS), linked to the dispense. This is separate from the reimbursement benefit in ClaimResponse. Erroneous source lines mark both the dispense and charge entered-in-error.

Ordinary dispensing may be partial and includes the source's whole-pack rounding. Reimbursement dispensing is full, in whole packs. These describe the existing source process.

For the external pharmacy mass_issue channel, the complete source batch, GTIN and package-code data is included in the DHP exchange contract. For web dispensing, transmit only the trustworthy package codes retained by DMED; the list may be incomplete. Do not infer quantity, sale amount or reimbursement from the code count, reject a dispense solely for missing package codes, or split a full reimbursement dispense to collect codes.

## Medication administration

PrescriptionMedicationAdministration is based on UZ Core MedicationAdministration and records administration by healthcare personnel under a DMED treatment course. It records the patient, time and administering PractitionerRole. request and encounter are not populated. occurenceDateTime is the R5 element spelling. Self-administration at home is outside this profile.

## Update, renewal and cancellation

Use version-aware updates and preserve the history of the same DMED prescription. DMED may return a signed request to unsigned, edit it and sign it again; DHP does not require a ban on that workflow. A prior signature must not be represented as signing changed content. Complete change data and the re-signing event must be confirmed from existing DMED data before that mapping is treated as implemented. Correct existing dispenses and charges are retained.

Renewal creates a new prescription with a new DMED identifier. DMED has no link to the earlier prescription, so priorPrescription and basedOn are not inferred.

Manual cancellation maps to cancelled; expiry, including the expiry job's cancellation without a reason, maps to ended. Resources and their history are retained.

Only Prescription writes MedicationRequest. Reimbursement creates Claim referencing the already stored signed request, then ClaimResponse; Prescription asynchronously adds the insurance reference. validityPeriod remains the DMED prescription period, while ClaimResponse.preAuthPeriod is the separate funding window. A funding refusal does not delete the request or automatically change its clinical status. The refusal reason is supplied as text and is recorded in ClaimResponse.disposition by Reimbursement.

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
| `status` | `MedicationRequest.status` plus dispense state |
| `drug_appointment.inn` and `drug_appointment.medication` | `MedicationRequest.medication` / referenced Medication |
| `drug_appointment.patient_uuid` | `MedicationRequest.subject` |
| Trustee | `MedicationRequest.extension[trustee]` |
| Encounter | Not populated |
| `drug_appointment.doctor_id` | `MedicationRequest.requester` |
| reimbursement diagnosis/eligibility context | `MedicationRequest.reason` |
| `drug_appointment.start_date` / `end_date` | `MedicationRequest.effectiveDosePeriod` |
| `administration_frequency`, `administration_frequency_measure`, `drug_administration_times` | `MedicationRequest.dosageInstruction.timing` |
| `drug_administration_route.id` | `MedicationRequest.dosageInstruction.route` through ConceptMap |
| `single_dose`, `substance_dosage.measurement_unit` | `MedicationRequest.dosageInstruction.doseAndRate.doseQuantity` |
| `total_amount` | `MedicationRequest.dispenseRequest.quantity` |
| `count_days` | `MedicationRequest.dosageInstruction.timing.repeat.boundsDuration` |
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
| Electronic prescription | Not populated; administration belongs to a treatment course |
| Medication | `MedicationAdministration.medication` |
| Patient | `MedicationAdministration.subject` |
| Encounter | Not populated |
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
| `inn_id` | [DMED INN to medication classification](ConceptMap-dmed-prescription-inn-to-medication-classification-cm.html) | UZ Core INN, otherwise WHO ATC | 1 006 INN and 2 781 ATC: every INN with active trade names except 8 that no ATC code fits; combination components are coded by their own INN |
| `dosage_form_id` | [DMED dose form](ConceptMap-dmed-prescription-dose-form-to-medication-doseform-cm.html) | UZ Core dose form | 369 of 372 |
| `drug_administration_route_id` | [DMED route](ConceptMap-dmed-prescription-route-to-fhir-route.html) | SNOMED CT or UZ Core route, otherwise `dosageInstruction.method` | 51 of 56; the other 5 name a method and go to `method` |
| `receive_mode` | [DMED intake timing](ConceptMap-dmed-prescription-receive-mode-to-event-timing.html) | `timing.repeat.when` | 6 of 7; `at_any_time` sends no `when` |
| `administration_frequency_measure` | [DMED frequency period](ConceptMap-dmed-prescription-frequency-period-to-units-of-time.html) | `timing.repeat.periodUnit` | 4 of 4 |
| `cancellation_reason` | [DMED cancellation reason](ConceptMap-dmed-prescription-cancellation-reason-to-status-reason.html) | SNOMED CT, otherwise `statusReason.text` | 1 of 2; `other` sends only text |
| `administration_method` (treatment course) | [DMED administration method](ConceptMap-dmed-administration-method-to-fhir-route.html) | `MedicationAdministration.dosage.method`, SNOMED CT or UZ Core route | 19 of 21 |

The dose form and route identifiers come from the DMED test environment dictionaries of 2026-11-03, the INN identifiers from the DMED export of 2026-10-05. The INN map is built from the Pharmaceutical Committee registry export of 2026-11-02: an INN code is taken only when every registry package of the INN's trade names names the same code, or when the registry substance has the same name, and every other INN with active trade names, combinations included, gets the most frequent ATC code among them that is in the current WHO ATC. The older Core DMED route CodeSystem uses textual codes and is not treated as the source system for the numeric Prescription API field.

## FHIR exchange

Creation uses a transaction Bundle when Medication, MedicationRequest and Provenance must be stored atomically. Conditional create is performed using the stable identifier. Updates are version-aware. A successful transaction returns a transaction-response Bundle; a failed transaction returns OperationOutcome.

Prescription-specific business errors are carried in `OperationOutcome.issue.details.coding` using [PrescriptionErrorCS](CodeSystem-prescription-error-cs.html) (allowed codes: [PrescriptionErrorVS](ValueSet-prescription-error-vs.html)). `OperationOutcome.issue.code` remains a code from the required FHIR IssueType ValueSet. Field errors include `issue.expression` with a FHIRPath expression.

See the generated examples:

- [ordinary prescription](MedicationRequest-example-ordinary-prescription.html);
- [reimbursement prescription](MedicationRequest-example-reimbursement-prescription.html);
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
- Apply reimbursement calculations in the responsible component using existing source data, without new restrictions on the DMED workflow.
- Verify signature data against the exact resource version or Bundle being signed.
- Record search, read, update, cancellation, approval and dispense audit events without logging the safe code in clear text.
