### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/en/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/en/api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a request by server id, and its earlier versions**

```
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest/[id]/_history
```

**Search**

```
GET [base]/ServiceRequest?identifier=https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request%7C[value]
GET [base]/ServiceRequest?requisition=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7C[value]
GET [base]/ServiceRequest?code-concept=http://loinc.org%7C1975-2&patient=Patient/[id]
GET [base]/ServiceRequest?subject=Location/[id]&status=active
GET [base]/ServiceRequest?encounter=Encounter/[id]
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/ServiceRequest?specimen=Specimen/[id]
```

**Fetch the laboratory requests of one donation with their results**

```
GET [base]/ServiceRequest?requisition=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7C[value]&_revinclude=DiagnosticReport:based-on
```

**Create a request**

```
POST [base]/ServiceRequest
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest" ] },
  "status": "active",
  "intent": "order",
  "requisition": { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation", "value": "[donation number]" },
  "code": { "concept": { "coding": [ { "system": "http://loinc.org", "code": "1975-2" } ] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "authoredOn": "2026-11-10T09:05:00+05:00",
  ...
}
```

**Update an existing request** (e.g. set `status` to `completed` once the processing operation is confirmed)

```
PUT [base]/ServiceRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ServiceRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest" ] },
  "status": "completed",
  ...
}
```

See the [CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html#ServiceRequest1-13) for the full list of supported search parameters.

### Related

- [UZ Core ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Specimen](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-specimen.html) &middot; [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html) &middot; [UZ Core Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html)
- [Blood Service](blood-service.html) &middot; [Blood service forms](forms-volume-08-blood-service.html) &middot; [Laboratory tests and processing operations](ValueSet-blood-lab-codes-vs.html) &middot; [Processing operations](CodeSystem-blood-component-processing-cs.html) &middot; [Blood service request number](NamingSystem-blood-service-request-number-system.html)
- [Laboratory workflow](https://dhp.uz/fhir/core/en/workflow-lab.html) &middot; [Must Support](https://dhp.uz/fhir/core/en/must-support.html) &middot; [General guidance](https://dhp.uz/fhir/core/en/general-guidance.html)
