> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](https://dhp.uz/fhir/core/ru/api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](https://dhp.uz/fhir/core/ru/api-access.html#endpoints); `|` отделяет кодовую систему от значения и должен быть URL-кодирован как `%7C`.

**Чтение запроса по серверному id и его предыдущих версий**

```
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest/[id]/_history
```

**Поиск**

```
GET [base]/ServiceRequest?identifier=https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request%7C[value]
GET [base]/ServiceRequest?requisition=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7C[value]
GET [base]/ServiceRequest?code-concept=http://loinc.org%7C1975-2&patient=Patient/[id]
GET [base]/ServiceRequest?subject=Location/[id]&status=active
GET [base]/ServiceRequest?encounter=Encounter/[id]
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/ServiceRequest?specimen=Specimen/[id]
```

**Получение лабораторных назначений одной донации вместе с результатами**

```
GET [base]/ServiceRequest?requisition=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7C[value]&_revinclude=DiagnosticReport:based-on
```

**Создание запроса**

```
POST [base]/ServiceRequest
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest" ] },
  "status": "active",
  "intent": "order",
  "requisition": { "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation", "value": "[donation number]" },
  "code": { "concept": { "coding": [ { "system": "http://loinc.org", "code": "1975-2" } ] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "authoredOn": "2026-11-10T09:05:00+05:00",
  ...
}
```

**Обновление существующего запроса** (например, установить `status` в `completed`, когда операция переработки подтверждена)

```
PUT [base]/ServiceRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ServiceRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest" ] },
  "status": "completed",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](https://dhp.uz/fhir/core/ru/CapabilityStatement-DHPCapabilityStatement.html#ServiceRequest1-13).

### Связанные разделы

- [UZ Core ServiceRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Specimen](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-specimen.html) &middot; [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html) &middot; [UZ Core Location](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-location.html)
- [Blood Service](blood-service.html) &middot; [Формы службы крови](forms-volume-08-blood-service.html) &middot; [Лабораторные исследования и операции переработки](ValueSet-blood-lab-codes-vs.html) &middot; [Операции переработки](CodeSystem-blood-component-processing-cs.html) &middot; [Номер запроса службы крови](NamingSystem-blood-service-request-number-system.html)
- [Рабочий процесс лабораторного исследования](https://dhp.uz/fhir/core/ru/workflow-lab.html) &middot; [Must Support](https://dhp.uz/fhir/core/ru/must-support.html) &middot; [Общие рекомендации](https://dhp.uz/fhir/core/ru/general-guidance.html)
