> Tarjima avtomatik tayyorlangan; tafovut bo'lsa inglizcha asl nusxadan foydalaning.

### Tez boshlash {#quick-start}

So'rovlar JWT talab qiladi. `[base]` — FHIR serverining asosiy manzili, `%7C` tizim va qiymat ajratgichi. [UZ Core API](https://dhp.uz/fhir/core/uz/api-access.html) ga qarang.

```http
GET [base]/Task/[id]
GET [base]/Task/[id]/_history
GET [base]/Task?identifier=[system]%7C[value]
GET [base]/Task?code=https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs%7Capprove-specialist
GET [base]/Task?focus=ServiceRequest/example-orders-hospitalization-referral
```

Create:

```http
POST [base]/Task
Content-Type: application/fhir+json
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
  }
}
```

Update with the ETag returned by the last read:

```http
PUT [base]/Task/example-orders-record
If-Match: W/"3"
Content-Type: application/fhir+json
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
  "id": "example-orders-record"
}
```

See the [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html) for the supported search parameters.

### Tegishli materiallar

- [Orders workflow](orders.html)
- [Orders ServiceRequest](StructureDefinition-orders-servicerequest.html)
- [Orders Referral Approval Task](StructureDefinition-orders-referral-approval-task.html)
