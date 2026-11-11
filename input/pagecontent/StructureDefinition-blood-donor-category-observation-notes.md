### Quick Start {#quick-start}

Common API interactions for this profile. It is built on Observation, so use the Observation endpoint. Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/en/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/en/api-access.html#endpoints); `|` separates a system from its value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Observation/[id]
```

**Find a patient's blood service registrations**

```
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C105470007
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C116154003
GET [base]/Observation?category=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs%7Cbdcat-0001-00002
GET [base]/Observation?encounter=Encounter/[id]
```

**Create**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" } ]
  },
  "subject": { "reference": "Patient/[id]" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  ...
}
```

**Update** (for example, when a reserve donor becomes a staff donor) - PUT the full resource back with the new `category`:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

See the [CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html#Observation1-9) for the full list of supported search parameters.

### Related

- [Blood Management](blood-management.html) &middot; [Blood service forms](forms-volume-08-blood-service.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/en/must-support.html) &middot; [General guidance](https://dhp.uz/fhir/core/en/general-guidance.html)
