> Этот текст переведен автоматически.

### Быстрое начало работы {#quick-start}

Передавайте действующий JWT в заголовке Authorization. Замените `[base]` базовым URL FHIR сервера.
В URL поиска кодируйте разделитель идентификатора `|` как `%7C`.

Чтение запроса:

```http
GET [base]/ServiceRequest/[id]
```

Поиск по идентификатору, общему коду услуги или донору:

```http
GET [base]/ServiceRequest?identifier=[system]%7C[value]
GET [base]/ServiceRequest?code=http://snomed.info/sct%7C108252007
GET [base]/ServiceRequest?subject=Patient/example-blood-donor
```

Создание запроса по одному из примеров:

```http
POST [base]/ServiceRequest
Content-Type: application/fhir+json
```

Обновление с указанием текущей версии для защиты от параллельных изменений:

```http
PUT [base]/ServiceRequest/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Примеры используют стандартные параметры поиска FHIR R5. Проверьте поддержку сервера по
[UZ Core CapabilityStatement](https://dhp.uz/fhir/core/CapabilityStatement-DHPCapabilityStatement.html).

### Связанные материалы

- [Формы службы крови](forms-volume-08-blood-service.html)
- [Лабораторные исследования и операции переработки](ValueSet-bld-lab-codes-vs.html)
- [Локальные операции переработки](CodeSystem-processing-operation-cs.html)
