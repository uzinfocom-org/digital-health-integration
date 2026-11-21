> Tarjima avtomatik tayyorlangan; tafovut bo'lsa inglizcha asl nusxadan foydalaning.

### Tez boshlash {#quick-start}

So'rovlar JWT talab qiladi. `[base]` — FHIR serverining asosiy manzili, `%7C` tizim va qiymat ajratgichi. [UZ Core API](https://dhp.uz/fhir/core/uz/api-access.html) ga qarang.

```http
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest/[id]/_history
GET [base]/ServiceRequest?identifier=urn:ietf:rfc:3986%7Curn:uuid:90cae480-b963-469d-a2d0-5c5af6b00318
GET [base]/ServiceRequest?code-concept=http://snomed.info/sct%7C310449005
GET [base]/ServiceRequest?subject=Patient/example-orders-patient
```

Create:

```http
POST [base]/ServiceRequest
Content-Type: application/fhir+json
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-servicerequest"
    ]
  },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-orders-patient"
  }
}
```

Update with the ETag returned by the last read:

```http
PUT [base]/ServiceRequest/example-orders-record
If-Match: W/"3"
Content-Type: application/fhir+json
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-servicerequest"
    ]
  },
  "language": "uz",
  "status": "completed",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-orders-patient"
  },
  "id": "example-orders-record"
}
```

See the [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html) for the supported search parameters.

### Tegishli materiallar

- [Orders workflow](orders.html)
- [Orders ServiceRequest](StructureDefinition-orders-servicerequest.html)
- [Orders Referral Approval Task](StructureDefinition-orders-referral-approval-task.html)
