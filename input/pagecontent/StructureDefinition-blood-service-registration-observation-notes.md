### Quick Start {#quick-start}

Common API interactions for this profile. It is built on Observation, so use the Observation endpoint. Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/en/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/en/api-access.html#endpoints); `|` separates a system from its value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Observation/[id]
```

**Find blood service registrations** (by number, patient and type, donor category, encounter)

```
GET [base]/Observation?identifier=https://dhp.uz/fhir/core/sid/doc/uz/blood-registration%7CBD-2026-004517
GET [base]/Observation?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs%7Cbsobs-0001-00001
GET [base]/Observation?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs%7Cbsobs-0001-00002
GET [base]/Observation?component-value-concept=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs%7Cbdcat-0001-00002
GET [base]/Observation?encounter=Encounter/[id]
```

**Create**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00001"
      }
    ]
  },
  "subject": { "reference": "Patient/[id]" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  ...
}
```

**Record a change** (for example, when a reserve donor becomes a staff donor) - POST a new Observation with the new donor category component and the date of the change in `effectiveDateTime`. The earlier record stays as the history of the registration; the latest `effectiveDateTime` is the current category.

**Correct an error** - PUT the full resource back with the corrected value:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

See the [CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html#Observation1-9) for the full list of supported search parameters.

### Related

- [Blood service forms](forms-volume-08-blood-service.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/en/must-support.html) &middot; [General guidance](https://dhp.uz/fhir/core/en/general-guidance.html)
