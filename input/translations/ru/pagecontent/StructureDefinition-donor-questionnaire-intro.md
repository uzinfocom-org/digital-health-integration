> Это машинный перевод английской страницы.

Профиль описывает анкету донора, опубликованную как [многоязычный опросник](Questionnaire-donor-questionnaire.html). [Исходная таблица](https://docs.google.com/spreadsheets/d/1SFVk1U3Z4mQ-SYf6bX28hfKYHE3UL2Rz2bMEyQDzPeI/edit) содержит анамнез, сведения о рисках, согласия и подтверждения перед донацией.

### Mandatory and Must Support data elements

Анкета содержит canonical URL, заголовок, статус публикации, тип субъекта Patient, контекст программы службы крови и хотя бы один вопрос. Поддерживаются все 33 вопроса и их переводы. Типы ответов соответствуют таблице: дата, текст и boolean. Вопросы необязательны: источник не задаёт обязательность и правила показа по полу.

### Построение JSON по шагам

Начните с вопроса о дате, добавьте кодированный вопрос boolean, затем получите полное определение из 33 вопросов. Профиль фиксирует контекст службы крови, типы вопросов и коды причин.

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

[Complete questionnaire definition](Questionnaire-donor-questionnaire.html). [Быстрый старт](#quick-start).
