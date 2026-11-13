> Этот текст переведён автоматически.

### Быстрое начало работы {#quick-start}

Передавайте действующий JWT в заголовке Authorization. Замените `[base]` базовым URL FHIR сервера. В URL кодируйте разделитель идентификатора `|` как `%7C`.

Чтение по id или поиск по получателю и коду оценки:

```http
GET [base]/Observation/[id]
GET [base]/Observation?subject=Patient/example-transfusion-assessment-recipient
GET [base]/Observation?code=http://snomed.info/sct%7C252314007
```

Создавайте ресурс по полному примеру. Для исправления результатов обновляйте существующий ресурс, сохраняйте фактическое время оценки и используйте соответствующий статус, например amended. Передавайте текущий ETag для защиты от параллельных изменений.

```http
POST [base]/Observation
Content-Type: application/fhir+json
```

```http
PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Проверьте поддерживаемые операции и параметры поиска в [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/CapabilityStatement-DHPCapabilityStatement.html). В примерах используются стандартные параметры поиска FHIR R5.

### Связанные материалы

- [BloodTransfusionAssessmentVS](ValueSet-blood-transfusion-assessment-vs.html)
- [BloodTransfusionValueVS](ValueSet-blood-transfusion-value-vs.html)
- [BloodTransfusionHistoryVS](ValueSet-blood-transfusion-history-vs.html)
- [ObstetricHistoryVS](ValueSet-obstetric-history-vs.html)
- [SpecimenResVS](ValueSet-specimen-res-vs.html)
