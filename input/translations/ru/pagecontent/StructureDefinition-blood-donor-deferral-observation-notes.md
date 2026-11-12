> Этот текст переведён автоматически.

### Быстрое начало работы {#quick-start}

Передавайте действующий JWT в заголовке Authorization. Замените `[base]` базовым URL FHIR сервера. В URL кодируйте разделитель идентификатора `|` как `%7C`.

Чтение по id, поиск по донору или типу отвода:

```http
GET [base]/Observation/[id]
GET [base]/Observation?subject=Patient/example-deferral-donor
GET [base]/Observation?code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs%7Ctmpdf-0001-00001
```

Создавайте ресурс по одному из примеров; при обновлении передавайте текущий ETag для защиты от параллельных изменений:

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

- [Причины отвода](ValueSet-donor-deferral-reason-vs.html)
- [Типы отвода](ValueSet-donor-deferral-type-vs.html)
