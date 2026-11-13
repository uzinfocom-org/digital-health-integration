> Это машинный перевод английской страницы.

### Быстрый старт {#quick-start}

Используйте действительный JWT. Замените `[base]` адресом FHIR-сервера; кодируйте `|` как `%7C` в URL.

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

### Связанные материалы

- [Соответствие полей анкеты донора](donor-questionnaire-mapping.html)
- [Questionnaire](StructureDefinition-donor-questionnaire.html)
- [QuestionnaireResponse](StructureDefinition-donor-questionnaire-response.html)
- [Questionnaires](forms.html)
