> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Профиль основан на Encounter, поэтому используйте конечную точку Encounter. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](https://dhp.uz/fhir/core/ru/api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](https://dhp.uz/fhir/core/ru/api-access.html#endpoints); `|` отделяет систему от значения и должен быть URL-кодирован как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/Encounter/[id]
```

**Поиск вызовов СМП** (по номеру карты вызова, пациенту и дате, организации СМП, поводу)

```
GET [base]/Encounter?identifier=https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card%7C01.CM5742/26
GET [base]/Encounter?patient=Patient/[id]&class=http://terminology.hl7.org/CodeSystem/v3-ActCode%7CEMER
GET [base]/Encounter?patient=Patient/[id]&date=ge2026-03-01
GET [base]/Encounter?service-provider=Organization/[id]&date=2026-03-01
GET [base]/Encounter?reason-code=http://hl7.org/fhir/sid/icd-10%7CI10
```

**Создание**

```
POST [base]/Encounter
{
  "resourceType": "Encounter",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5742/26" }
  ],
  "status": "in-progress",
  ...
}
```

**Обновление** (например, чтобы установить `status` в `completed` и добавить исход по завершении вызова) - отправьте PUT с полным ресурсом:

```
PUT [base]/Encounter/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](https://dhp.uz/fhir/core/ru/CapabilityStatement-DHPCapabilityStatement.html#Encounter1-7).

### Связанные материалы

- [UZ Core Encounter](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-encounter.html)
- [Must Support](https://dhp.uz/fhir/core/ru/must-support.html) &middot; [Общие рекомендации](https://dhp.uz/fhir/core/ru/general-guidance.html)
