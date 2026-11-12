### Quick Start {#quick-start}

Use a valid JWT in the Authorization header. Replace `[base]` with the server FHIR base URL.
Encode the identifier separator `|` as `%7C` in query URLs.

Read a request:

```http
GET [base]/ServiceRequest/[id]
```

Search by identifier, overall service code or donor:

```http
GET [base]/ServiceRequest?identifier=[system]%7C[value]
GET [base]/ServiceRequest?code=http://snomed.info/sct%7C108252007
GET [base]/ServiceRequest?subject=Patient/example-blood-donor
```

Create a request using one of the examples:

```http
POST [base]/ServiceRequest
Content-Type: application/fhir+json
```

Update using the current version to prevent concurrent changes:

```http
PUT [base]/ServiceRequest/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

The searches above use standard FHIR R5 search parameters. Confirm server support against the
[UZ Core CapabilityStatement](https://dhp.uz/fhir/core/CapabilityStatement-DHPCapabilityStatement.html).

### Related

- [Blood service forms](forms-volume-08-blood-service.html)
- [Laboratory tests and processing operations](ValueSet-bld-lab-codes-vs.html)
- [Local processing operations](CodeSystem-processing-operation-cs.html)
