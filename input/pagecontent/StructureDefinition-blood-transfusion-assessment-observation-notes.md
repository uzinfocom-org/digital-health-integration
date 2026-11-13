### Quick Start {#quick-start}

Use a valid JWT in the Authorization header. Replace `[base]` with the server FHIR base URL. Encode the identifier separator `|` as `%7C` in URLs.

Read by id or search by recipient and assessment code:

```http
GET [base]/Observation/[id]
GET [base]/Observation?subject=Patient/example-transfusion-assessment-recipient
GET [base]/Observation?code=http://snomed.info/sct%7C252314007
```

Create using the complete example. To correct results, update the existing resource, retain the actual assessment time and use an appropriate status such as amended. Supply the current ETag to protect against concurrent changes.

```http
POST [base]/Observation
Content-Type: application/fhir+json
```

```http
PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Confirm supported operations and search parameters in the [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/CapabilityStatement-DHPCapabilityStatement.html). These examples use standard FHIR R5 search parameters.

### Related

- [BloodTransfusionAssessmentVS](ValueSet-blood-transfusion-assessment-vs.html)
- [BloodTransfusionValueVS](ValueSet-blood-transfusion-value-vs.html)
- [BloodTransfusionHistoryVS](ValueSet-blood-transfusion-history-vs.html)
- [ObstetricHistoryVS](ValueSet-obstetric-history-vs.html)
- [SpecimenResVS](ValueSet-specimen-res-vs.html)
