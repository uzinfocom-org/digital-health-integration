This profile defines the donor interview published as a [multilingual questionnaire](Questionnaire-donor-questionnaire.html). It follows the [source spreadsheet](https://docs.google.com/spreadsheets/d/1SFVk1U3Z4mQ-SYf6bX28hfKYHE3UL2Rz2bMEyQDzPeI/edit) and records medical history, exposures, consent and declarations before donation.

### Mandatory and Must Support data elements

A questionnaire has a canonical URL, title, publication status, Patient subject type, a blood service program context and at least one source question. It supports all 33 questions and their translations. Date, text and boolean answers follow the source table. Questions are optional because the source does not specify mandatory or sex-dependent rules.

### Building the JSON, step by step

Start with one date question, add a coded boolean question, then retrieve the complete definition with all 33 items. The profile supplies the blood service context and fixes each slice's question type and reason code.

```json
{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/donor-questionnaire"
    ]
  },
  "url": "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire",
  "version": "1.0.0",
  "status": "draft",
  "title": "Donor questionnaire",
  "subjectType": [
    "Patient"
  ],
  "useContext": [
    {
      "code": {
        "system": "http://terminology.hl7.org/CodeSystem/usage-context-type",
        "code": "program"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/integration-area-cs",
            "code": "blood-service"
          }
        ]
      }
    }
  ],
  "item": [
    {
      "linkId": "last-donation",
      "type": "date",
      "code": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
          "code": "donrsn-0001-00006"
        }
      ]
    }
  ]
}
```

```json
{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/donor-questionnaire"
    ]
  },
  "url": "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire",
  "version": "1.0.0",
  "status": "draft",
  "title": "Donor questionnaire",
  "subjectType": [
    "Patient"
  ],
  "useContext": [
    {
      "code": {
        "system": "http://terminology.hl7.org/CodeSystem/usage-context-type",
        "code": "program"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/integration-area-cs",
            "code": "blood-service"
          }
        ]
      }
    }
  ],
  "item": [
    {
      "linkId": "last-donation",
      "type": "date",
      "code": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
          "code": "donrsn-0001-00006"
        }
      ]
    },
    {
      "linkId": "tattoo-piercing",
      "type": "boolean",
      "code": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
          "code": "donrsn-0001-00001"
        }
      ]
    }
  ]
}
```

```http
GET [base]/Questionnaire/donor-questionnaire
```

[Complete questionnaire definition](Questionnaire-donor-questionnaire.html). [Quick Start](#quick-start).
