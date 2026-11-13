> Этот текст переведён автоматически.

Профиль основан на [UZ Core Observation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-observation.html) и описывает предтрансфузионную оценку получателя и результаты биологической пробы в одном Observation на протокол переливания. Используйте существующие ресурсы пациента и визита. Код оценки всегда SNOMED CT `252314007` (Blood transfusion test).

### Обязательные и поддерживаемые элементы

Обязательные элементы должны присутствовать. Элементы Must Support должны поддерживаться реализациями, даже если они необязательны в отдельном экземпляре.

#### Обязательные данные Blood Transfusion Assessment Observation

Статус, фиксированный код оценки и ссылка на получателя. Каждый переданный компонент содержит свой фиксированный код.

#### Поддерживаемые данные Blood Transfusion Assessment Observation

- Бизнес-идентификаторы, если присвоены, вместе с системой.
- Получатель, визит и ответственный специалист или организация.
- Время оценки, публикации результата и необязательные пояснения.
- Шесть именованных компонентов и их кодированные значения.

### Срезы component

Каждый срез необязателен и может встретиться один раз. Все шесть срезов используют значения CodeableConcept; фиксированный код компонента определяет нужный ValueSet. Биологическая проба передаётся в шестом компоненте. Компонент даты направления не определён, поскольку среди шести предоставленных типов для него нет кода. Коды SNOMED CT результатов биологической пробы остаются кандидатами до проверки в используемой редакции.

| Slice | Component code | Значение |
| --- | --- | --- |
| `aboCompatibility` (Совместимость ABO) | `bldcomp-0001-00001` | Результат совместимости |
| `rhHrCompatibility` (Совместимость Rh-Hr) | `bldcomp-0001-00002` | Результат совместимости |
| `transfusionHistory` (Трансфузионный анамнез) | `bldcomp-0001-00003` | Категория трансфузионного анамнеза |
| `obstetricHistory` (Акушерский анамнез) | `bldcomp-0001-00004` | Категория акушерского анамнеза |
| `preliminaryAboGroup` (Предварительная группа ABO) | `bldcomp-0001-00005` | Группа ABO из UZ Core |
| `biologicalSpecimen` (Результат биологической пробы) | `bldcomp-0001-00006` | Положительный или отрицательный SNOMED CT |

### Пошаговое формирование JSON

Минимальная оценка: срезы component необязательны.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "252314007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-transfusion-assessment-recipient"
  }
}
```

Совместимость ABO определяется фиксированным кодом компонента.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "252314007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-transfusion-assessment-recipient"
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00001"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-value-cs",
            "code": "bldcomp-0002-00001"
          }
        ]
      }
    }
  ]
}
```

Биологическая проба передаётся отдельным компонентом вместе с проверками совместимости.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "252314007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-transfusion-assessment-recipient"
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00001"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-value-cs",
            "code": "bldcomp-0002-00001"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00006"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "260385009"
          }
        ]
      }
    }
  ]
}
```

[Полный пример](Observation-example-blood-transfusion-assessment.html) содержит все шесть срезов и ссылки на примеры получателя, визита и специалиста.

[Быстрое начало работы](#quick-start)
