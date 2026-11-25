Orders Referral Approval Task records one approval or hospitalization step for an Orders ServiceRequest. It links the national actors and task action codes to the integration's additional business statuses.

### Mandatory and Must Support data elements

Must Support means the system must populate the element when the data is available and process it when received; it does not make every element mandatory. See [Must Support](https://dhp.uz/fhir/core/en/must-support.html).

#### Each Task Must Have

Each task requires `status`, `intent`, exactly one `basedOn` and a `focus`, both referencing Orders ServiceRequest. `partOf`, when present, references another Orders Referral Approval Task.

#### Each Task Must Support

Support the action code, patient, owner, performer, requester, requested performer, authored date, requested and actual periods, business status, status reason and notes. An overdue non-terminal task is expected to carry the core `overdue` business status.

### Building the JSON, step by step

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-referral-approval-task"
    ]
  },
  "basedOn": [
    {
      "reference": "ServiceRequest/example-orders-hospitalization-referral"
    }
  ],
  "language": "uz",
  "status": "requested",
  "intent": "order",
  "focus": {
    "reference": "ServiceRequest/example-orders-hospitalization-referral"
  }
}
```

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-referral-approval-task"
    ]
  },
  "basedOn": [
    {
      "reference": "ServiceRequest/example-orders-hospitalization-referral"
    }
  ],
  "language": "uz",
  "status": "completed",
  "intent": "order",
  "focus": {
    "reference": "ServiceRequest/example-orders-hospitalization-referral"
  },
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-specialist"
      }
    ]
  },
  "businessStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-task-business-status-cs",
        "code": "bstatus-0001-00001"
      }
    ]
  },
  "statusReason": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-task-status-reason-cs",
        "code": "reason-0001-00005"
      }
    ]
  },
  "for": {
    "reference": "Patient/example-orders-patient"
  },
  "owner": {
    "reference": "Organization/example-orders-hospital"
  }
}
```

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-referral-approval-task"
    ]
  },
  "basedOn": [
    {
      "reference": "ServiceRequest/example-orders-hospitalization-referral"
    }
  ],
  "language": "uz",
  "status": "requested",
  "intent": "order",
  "focus": {
    "reference": "ServiceRequest/example-orders-hospitalization-referral"
  },
  "businessStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs",
        "code": "overdue"
      }
    ]
  },
  "requestedPeriod": {
    "end": "2026-03-07T18:00:00+05:00"
  }
}
```

OrdersReferralApprovalTask derives from FHIR Task because UZ Core 0.12.0 restricts `businessStatus` to a required set that does not contain the Orders stages. The profile preserves the national task roles, lifecycle and patient/organization reference restrictions, and binds business status to the core codes plus Orders codes.

[Complete example](Task-example-orders-task-specialist-returned.html) · [Orders workflow](orders.html) · [Quick Start](#quick-start)
