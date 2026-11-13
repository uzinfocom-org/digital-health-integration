> Это машинный перевод английской страницы.

Профиль сохраняет ответы на [анкету донора](Questionnaire-donor-questionnaire.html). Один `linkId` обозначает один вопрос на узбекском, русском и английском языках. Заполненная анкета служит для оценки врачом и сама по себе не устанавливает допуск или отвод.

### Mandatory and Must Support data elements

Ответ содержит canonical анкеты, статус, ссылку на донора, время заполнения и хотя бы один элемент вопроса. Поддерживаются автор, источник, визит и ответы. Каждый вопрос встречается не более одного раза; переданный ответ имеет тип date, string или boolean согласно вопросу.

### Построение JSON по шагам

Начните с даты, добавьте boolean, затем используйте полный пример. Ответы отражают заявления донора; код причины в вопросе не означает подтверждённое состояние.

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

[Complete response example](QuestionnaireResponse-example-donor-questionnaire-response.html). [Быстрый старт](#quick-start).
