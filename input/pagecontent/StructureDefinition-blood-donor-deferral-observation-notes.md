### Quick Start {#quick-start}

Use a valid JWT in the Authorization header. Replace `[base]` with the server FHIR base URL. Encode the identifier separator `|` as `%7C` in URLs.

Read by id, search by donor or by deferral type:

```http
GET [base]/Observation/[id]
GET [base]/Observation?subject=Patient/example-deferral-donor
GET [base]/Observation?code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs%7Ctmpdf-0001-00001
```

Create using one of the examples; update with the current ETag to protect against concurrent changes:

```http
POST [base]/Observation
Content-Type: application/fhir+json
```

```http
PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Confirm supported operations and search parameters in the [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/CapabilityStatement-DHPCapabilityStatement.html). The examples use standard FHIR R5 search parameters.

### Related

- [Deferral reasons](ValueSet-donor-deferral-reason-vs.html)
- [Deferral types](ValueSet-donor-deferral-type-vs.html)
