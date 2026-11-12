> Этот текст переведён автоматически.

Профиль описывает оценку временного или пожизненного отвода донора на основе [UZ Core Observation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-observation.html). Он ссылается на существующие ресурсы донора, визита и специалиста. Один Observation представляет один тип отвода; несколько причин этого типа передаются в component.

### Обязательные и поддерживаемые элементы

Обязательные элементы должны присутствовать. Элементы Must Support должны поддерживаться реализациями, даже если они необязательны в отдельном экземпляре.

#### Обязательные данные Blood Donor Deferral Observation

Статус, тип отвода и ссылка на донора. Каждый переданный компонент должен содержать код причины.

#### Поддерживаемые данные Blood Donor Deferral Observation

- Бизнес-идентификаторы, если присвоены, вместе с системой.
- Донор, визит и ответственный специалист или организация.
- Время оценки, время публикации версии и необязательные пояснения.
- Причины и необязательная неотрицательная длительность временного отвода в днях.

### Запись причин отвода

Длительность временного отвода необязательна и передаётся целым числом дней; ноль допустим. Для пожизненного отвода длительность не передаётся. Если нужно записать оба типа, создаются отдельные Observation. Причина сама по себе не определяет тип отвода и клинический срок. Значения длительности ниже иллюстративные и не являются клиническими рекомендациями. Категория необязательна и подчиняется унаследованным правилам слайсинга UZ Core.

### Пошаговое формирование JSON

Минимальная оценка временного отвода без необязательных компонентов.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-deferral-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs",
        "code": "tmpdf-0001-00001"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-deferral-donor"
  }
}
```

Временный отвод с причиной и иллюстративной длительностью 180 дней.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-deferral-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs",
        "code": "tmpdf-0001-00001"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-deferral-donor"
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
            "code": "donrsn-0001-00003"
          }
        ]
      },
      "valueInteger": 180
    }
  ]
}
```

Пожизненный отвод с причиной без длительности.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-deferral-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs",
        "code": "lldf-0001-00001"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-deferral-donor"
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
            "code": "donrsn-0001-00013"
          }
        ]
      }
    }
  ]
}
```

Полные примеры: [временный отвод](Observation-example-blood-donor-temporary-deferral.html) и [пожизненный отвод](Observation-example-blood-donor-lifelong-deferral.html).

[Быстрое начало работы](#quick-start)
