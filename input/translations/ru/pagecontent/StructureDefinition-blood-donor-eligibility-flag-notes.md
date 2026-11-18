> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](https://dhp.uz/fhir/core/ru/api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](https://dhp.uz/fhir/core/ru/api-access.html#endpoints); `|` отделяет кодовую систему от значения и должен быть URL-кодирован как `%7C`.

**Чтение флага по серверному id и его предыдущих версий**

```
GET [base]/Flag/[id]
GET [base]/Flag/[id]/_history
```

**Поиск**

```
GET [base]/Flag?patient=Patient/[id]&_profile=https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag&status=active&date=ge2026-11-17
GET [base]/Flag?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs|blood-donation-deferred-temporary,https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs|blood-donation-deferred-permanent
GET [base]/Flag?patient=Patient/[id]&_profile=https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag
GET [base]/Flag?encounter=Encounter/[id]
GET [base]/Flag?author=PractitionerRole/[id]&date=ge2026-11-01
```

Первый запрос находит допуск и отводы донора, действующие на 2026-11-17. `date` ищет по `period`, а флаг без `period.end` считается продолжающимся, поэтому запрос возвращает допуск, постоянные отводы и временные, которые не закончились до этого дня. Временный флаг остаётся `active` и после `period.end`, пока его не переведут в `inactive`, поэтому один `status=active` вернул бы и истёкшие отводы. Второй запрос использует параметр поиска UZ Core [`code`](https://dhp.uz/fhir/core/ru/SearchParameter-uz-core-flag-code.html) и возвращает только отводы донора.

У Flag нет параметра поиска по причине; читайте причину из полученных флагов.

**Создание флага**

```
POST [base]/Flag
{
  "resourceType": "Flag",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag" ] },
  "extension": [ { "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason", "valueCodeableReference": { ... } } ],
  "status": "active",
  "code": { "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
                          "code": "blood-donation-deferred-temporary" } ] },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-11-10T10:00:00+05:00", "end": "2027-05-09T10:00:00+05:00" },
  ...
}
```

**Досрочное завершение отвода** (установить `status` в `inactive` и `period.end` в дату окончания)

```
PUT [base]/Flag/[id]
If-Match: W/"2"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Flag",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag" ] },
  "status": "inactive",
  ...
}
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](https://dhp.uz/fhir/core/ru/CapabilityStatement-DHPCapabilityStatement.html#Flag1-42).

### Связанные разделы

- [UZ Core Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html) &middot; [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html)
- [Blood Service](blood-service.html) &middot; [Причины отвода](ValueSet-donor-deferral-reason-vs.html) &middot; [workflow-reason](https://hl7.org/fhir/extensions/StructureDefinition-workflow-reason.html)
- [Must Support](https://dhp.uz/fhir/core/ru/must-support.html) &middot; [Общие рекомендации](https://dhp.uz/fhir/core/ru/general-guidance.html)
