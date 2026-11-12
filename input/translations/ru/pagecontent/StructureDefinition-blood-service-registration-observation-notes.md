> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Профиль основан на Observation, поэтому используйте конечную точку Observation. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](https://dhp.uz/fhir/core/ru/api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](https://dhp.uz/fhir/core/ru/api-access.html#endpoints); `|` отделяет систему от значения и должен быть URL-кодирован как `%7C`.

**Чтение по идентификатору сервера**

```
GET [base]/Observation/[id]
```

**Поиск регистраций в службе крови** (по номеру, пациенту и типу, категории донора, Encounter)

```
GET [base]/Observation?identifier=https://dhp.uz/fhir/core/sid/doc/uz/blood-registration%7CBD-2026-004517
GET [base]/Observation?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs%7Cbsobs-0001-00001
GET [base]/Observation?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs%7Cbsobs-0001-00002
GET [base]/Observation?component-value-concept=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs%7Cbdcat-0001-00002
GET [base]/Observation?encounter=Encounter/[id]
```

**Создание**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00001"
      }
    ]
  },
  "subject": { "reference": "Patient/[id]" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  ...
}
```

**Изменение категории** (например, когда резервный донор становится кадровым) - отправьте POST с новым Observation, указав новый компонент категории донора и дату изменения в `effectiveDateTime`. Прежняя запись остаётся историей регистрации; текущая категория - запись с самым поздним `effectiveDateTime`.

**Исправление ошибки** - отправьте PUT с полным ресурсом и исправленным значением:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](https://dhp.uz/fhir/core/ru/CapabilityStatement-DHPCapabilityStatement.html#Observation1-9).

### Связанные материалы

- [Формы службы крови](forms-volume-08-blood-service.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/ru/must-support.html) &middot; [Общие рекомендации](https://dhp.uz/fhir/core/ru/general-guidance.html)
