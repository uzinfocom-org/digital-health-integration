> Перевод подготовлен автоматически; при расхождениях используйте английский оригинал.

Orders ServiceRequest расширяет UZ Core ServiceRequest для направлений и госпитализации в интеграции Orders. Задачи согласования ссылаются на него через `basedOn` и `focus`. Перед созданием нового направления ищите существующее по идентификатору.

### Обязательные элементы и Must Support

Must Support means the system must populate the element when the data is available and process it when received; it does not make every element mandatory. See [Must Support](https://dhp.uz/fhir/core/en/must-support.html).

#### Each ServiceRequest Must Have

Каждое направление содержит `status`, `intent` и UZ Core Patient или Location в `subject`. Если идентификатор указан, обязательны система и значение. Параметр основания лечения, если передаётся, имеет код LOINC 86947-9 и значение CodeableConcept.

#### Each ServiceRequest Must Support

Поддерживайте унаследованные элементы UZ Core, а также цели направления, специальность, основание лечения, исполнителя, критерий SBDL и правовое основание оплаты. Элементы необязательны, если иное не задано кардинальностью или наличием исходных данных.

### Пошаговое построение JSON

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-servicerequest"
    ]
  },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-orders-patient"
  }
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-servicerequest"
    ]
  },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-orders-patient"
  },
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-service-request-referral-purpose-cs",
          "code": "purpose-0001-0003"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "394612005"
        }
      ]
    }
  ],
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "310449005"
        }
      ]
    }
  }
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-servicerequest"
    ]
  },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-orders-patient"
  },
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-service-request-referral-purpose-cs",
          "code": "purpose-0001-0003"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "394612005"
        }
      ]
    }
  ],
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "310449005"
        }
      ]
    }
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/payment-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs",
            "code": "paytype-0001-0004"
          }
        ]
      }
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/orders-funding-resolution",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-funding-resolution-cs",
            "code": "paytype-0001-0006"
          }
        ]
      }
    }
  ],
  "orderDetail": [
    {
      "parameter": [
        {
          "code": {
            "coding": [
              {
                "system": "http://loinc.org",
                "code": "86947-9"
              }
            ]
          },
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-service-request-basis-cs",
                "code": "basis-0001-00001"
              }
            ]
          }
        }
      ]
    }
  ],
  "reason": [
    {
      "concept": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/sid/icd-10",
            "code": "N20.0"
          }
        ]
      }
    },
    {
      "concept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-sbdl-cs",
            "code": "SBDL-000001-0"
          }
        ]
      }
    }
  ]
}
```

Диагноз МКБ-10 и критерий SBDL передаются отдельными повторениями `reason`. UZ Core 0.12.0 фиксирует систему каждого кодирования внутри `reason[icd10]` как МКБ-10, поэтому SBDL внутри этого среза нарушал бы родительский профиль. Льготы оформляются UZ Core Socioeconomic Observation со ссылкой из `supportingInfo`.

Тип оплаты UZ Core сохраняется в `extension[paymentType]`. Постановления 5199 и 311 передаются как дополнительные правовые основания в [Orders funding resolution](StructureDefinition-orders-funding-resolution.html), в `extension[fundingResolution]`. Кодовая система UZ Core при этом не изменяется.

[Complete example](ServiceRequest-example-orders-hospitalization-referral.html) · [Orders workflow](orders.html) · [Quick Start](#quick-start)
