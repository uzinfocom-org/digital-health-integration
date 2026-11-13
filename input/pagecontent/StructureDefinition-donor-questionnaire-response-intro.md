This profile records answers to the [donor questionnaire](Questionnaire-donor-questionnaire.html). Each `linkId` identifies the same question across Uzbek, Russian and English. Answers support clinical review; completing the interview does not establish eligibility or a donor deferral.

### Mandatory and Must Support data elements

Each response has a questionnaire canonical, status, donor reference, authored time and at least one question item. It supports author, source, encounter and answers. Each question occurs at most once; when an answer is present, its value is a date, string or boolean according to that question.

### Building the JSON, step by step

Start with one dated answer, add a boolean answer, then use the complete example. Answer values are donor statements; a reason code attached to a question is not a confirmed finding.

```json
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/donor-questionnaire-response"
    ]
  },
  "questionnaire": "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire|1.0.0",
  "status": "in-progress",
  "subject": {
    "reference": "Patient/example-donor-questionnaire-patient"
  },
  "authored": "2026-11-13T09:30:00+05:00",
  "item": [
    {
      "linkId": "last-donation",
      "answer": [
        {
          "valueDate": "2026-01-10"
        }
      ]
    }
  ]
}
```

```json
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/donor-questionnaire-response"
    ]
  },
  "questionnaire": "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire|1.0.0",
  "status": "in-progress",
  "subject": {
    "reference": "Patient/example-donor-questionnaire-patient"
  },
  "authored": "2026-11-13T09:30:00+05:00",
  "item": [
    {
      "linkId": "last-donation",
      "answer": [
        {
          "valueDate": "2026-01-10"
        }
      ]
    },
    {
      "linkId": "tattoo-piercing",
      "answer": [
        {
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

```http
GET [base]/QuestionnaireResponse/example-donor-questionnaire-response
```

[Complete response example](QuestionnaireResponse-example-donor-questionnaire-response.html). [Quick Start](#quick-start).
