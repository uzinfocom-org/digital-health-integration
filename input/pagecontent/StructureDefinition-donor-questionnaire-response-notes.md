### Quick Start {#quick-start}

Use a valid JWT access token. Replace `[base]` with the FHIR endpoint; encode `|` as `%7C` in URLs.

```http
GET [base]/QuestionnaireResponse/example-donor-questionnaire-response
GET [base]/QuestionnaireResponse?questionnaire=https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire
GET [base]/QuestionnaireResponse?subject=Patient/example-donor-questionnaire-patient
POST [base]/QuestionnaireResponse
Content-Type: application/fhir+json

PUT [base]/QuestionnaireResponse/example-donor-questionnaire-response
Content-Type: application/fhir+json
If-Match: W/"1"
```

See the [CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html#QuestionnaireResponse1-11) for the full list of supported search parameters.

### Related

- [Donor questionnaire field mapping](donor-questionnaire-mapping.html)
- [Questionnaire](StructureDefinition-donor-questionnaire.html)
- [QuestionnaireResponse](StructureDefinition-donor-questionnaire-response.html)
- [Interactive forms](forms.html)
