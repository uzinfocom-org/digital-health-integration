### Quick Start {#quick-start}

Common API interactions for this profile. It is built on Encounter, so use the Encounter endpoint. Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/en/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/en/api-access.html#endpoints); `|` separates a system from its value and must be URL-encoded as `%7C`.

**Read by server id**

```
GET [base]/Encounter/[id]
```

**Find ambulance calls** (by call card number, patient and date, ambulance organization, reason)

```
GET [base]/Encounter?identifier=https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card%7C01.CM5742/26
GET [base]/Encounter?patient=Patient/[id]&class=http://terminology.hl7.org/CodeSystem/v3-ActCode%7CEMER
GET [base]/Encounter?patient=Patient/[id]&date=ge2026-03-01
GET [base]/Encounter?service-provider=Organization/[id]&date=2026-03-01
GET [base]/Encounter?reason-code=http://hl7.org/fhir/sid/icd-10%7CI10
```

**Create**

```
POST [base]/Encounter
{
  "resourceType": "Encounter",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5742/26" }
  ],
  "status": "in-progress",
  ...
}
```

**Update** (for example, to set `status` to `completed` and add the outcome when the call ends) - PUT the full resource back:

```
PUT [base]/Encounter/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

See the [CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html#Encounter1-7) for the full list of supported search parameters.

### Related

- [UZ Core Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html)
- [Must Support](https://dhp.uz/fhir/core/en/must-support.html) &middot; [General guidance](https://dhp.uz/fhir/core/en/general-guidance.html)
