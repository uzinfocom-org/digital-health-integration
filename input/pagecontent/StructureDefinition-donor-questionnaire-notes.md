### Quick Start {#quick-start}

Use a valid JWT access token. Replace `[base]` with the FHIR endpoint; encode `|` as `%7C` in URLs.

```http
GET [base]/Questionnaire/donor-questionnaire
GET [base]/Questionnaire?url=https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire
POST [base]/Questionnaire
Content-Type: application/fhir+json

PUT [base]/Questionnaire/donor-questionnaire
Content-Type: application/fhir+json
If-Match: W/"1"
```

See the [CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html#Questionnaire1-10) for the full list of supported search parameters.

### Related

- [Donor questionnaire field mapping](donor-questionnaire-mapping.html)
- [Questionnaire](StructureDefinition-donor-questionnaire.html)
- [QuestionnaireResponse](StructureDefinition-donor-questionnaire-response.html)
- [Interactive forms](forms.html)
