> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Sick Leave CarePlan - это сам листок нетрудоспособности: один CarePlan на каждый листок из сервиса больничных листов DHP (API v3) на протяжении всего его жизненного цикла. Он фиксирует тип документа, причину нетрудоспособности, текущий статус и его историю, периоды нетрудоспособности, а также кто выдал и утвердил листок. Он ссылается на [Patient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html), которому выдан листок, на [диагнозы](StructureDefinition-sick-leave-condition.html) и - если документ его предусматривает - на [связанное лицо](StructureDefinition-sick-leave-related-person.html); [дополнительные атрибуты](StructureDefinition-sick-leave-observation.html) ссылаются на него через `basedOn`. Страница [листка нетрудоспособности](sick-leave.html) сопоставляет каждое поле API месту его хранения.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](https://dhp.uz/fhir/core/must-support.html)) - не все они обязательны, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемое резюме; формальные представления ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый Sick Leave CarePlan обязан иметь

- статус: `active` для открытого или продлённого листка, `completed` для закрытого, `revoked` для отменённого, и intent `plan`;
- собственный статус листка в `extension[workflowStatus]` - код `status` из API;
- тип документа в `category` - код `type` из API;
- пациента в `subject`;
- номер листка в `identifier[code]` - `code` из API.

#### Каждый Sick Leave CarePlan должен поддерживать (Must Support)

- версию и время последнего изменения в `meta.versionId` и `meta.lastUpdated`;
- причину в `addresses[reason]` и до двух диагнозов в `addresses[diagnosis]`;
- историю статусов в `extension[statusHistory]`, периоды нетрудоспособности в `extension[incapacityPeriod]` и их общий интервал в `period`;
- время создания в `created`;
- выдавшего врача в `contributor`, главного врача в `extension[headPractitioner]` и выдавшую организацию в `custodian`;
- связанное лицо в `extension[relatedPerson]`.

> `status` и `extension[workflowStatus]` всегда передаются вместе: `opened` и `extended` - с `active`, `closed` - с `completed`, `cancelled` - с `revoked`.

### Построение JSON, шаг за шагом

Приведённые ниже примеры идут от наименьшего экземпляра, который примет сервер, до полного листка. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры приведены в виде ссылок внизу страницы.

#### Наименьший Sick Leave CarePlan, который вам следует отправлять

Шесть элементов являются обязательными: `identifier[code]`, `status`, `intent`, `category`, `subject` и `extension[workflowStatus]`. Каждый ресурс также должен указывать профиль, которому он заявляет соответствие, в `meta.profile`. Уже этого достаточно для прохождения валидации:

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
    ]
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
      "valueCode": "opened"
    }
  ],
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/sickleave",
      "value": "02QR008600001"
    }
  ],
  "status": "active",
  "intent": "plan",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs",
          "code": "SL"
        }
      ]
    }
  ],
  "subject": {
    "reference": "Patient/sick-leave-patient"
  }
}
```

`category` имеет связку `required` с [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html) (`SL`, `CC`, `ED`, `IT`, `MSEC`), `extension[workflowStatus]` - с [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) (`opened`, `extended`, `closed`, `cancelled`). `subject` ссылается на UZ Core Patient.

#### Закрытый листок с историей

На практике вы передаёте всё, что есть в API: версию, причину, ссылки на диагнозы, по одному `extension[statusHistory]` на каждый элемент `statuses`, по одному `extension[incapacityPeriod]` на каждый элемент `dates`, общий `period`, а также участвующих лиц и организацию. Это листок по заболеванию, один раз продлённый и закрытый:

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "versionId": "3",
    "lastUpdated": "2026-08-12T16:42:11+05:00",
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
    ]
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
      "valueCode": "closed"
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "opened"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-04",
            "end": "2026-08-06"
          }
        }
      ]
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "extended"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-07",
            "end": "2026-08-12"
          }
        }
      ]
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "closed"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-12",
            "end": "2026-08-12"
          }
        }
      ]
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period",
      "valuePeriod": {
        "start": "2026-08-04",
        "end": "2026-08-06"
      }
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period",
      "valuePeriod": {
        "start": "2026-08-07",
        "end": "2026-08-12"
      }
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-head-practitioner",
      "valueReference": {
        "reference": "Practitioner/sick-leave-head-practitioner"
      }
    }
  ],
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/sickleave",
      "value": "02QR008593426"
    }
  ],
  "status": "completed",
  "intent": "plan",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs",
          "code": "SL"
        }
      ]
    }
  ],
  "subject": {
    "reference": "Patient/sick-leave-patient"
  },
  "period": {
    "start": "2026-08-04",
    "end": "2026-08-12"
  },
  "created": "2026-08-04T09:15:32+05:00",
  "custodian": {
    "reference": "Organization/sick-leave-organization"
  },
  "contributor": [
    {
      "reference": "Practitioner/sick-leave-practitioner"
    }
  ],
  "addresses": [
    {
      "concept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs",
            "code": "DIS"
          }
        ]
      }
    },
    {
      "reference": {
        "reference": "Condition/sick-leave-extended-diagnosis-preliminary"
      }
    },
    {
      "reference": {
        "reference": "Condition/sick-leave-extended-diagnosis-final"
      }
    }
  ]
}
```

`addresses` содержит и причину, и диагнозы: причина - это `concept` из [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html) (`DIS`, `INJ`, `MAT`, `FMC`, `PRO`, `SAN`, `QRT`, `NBC`), каждый диагноз - `reference` на [Sick Leave Condition](StructureDefinition-sick-leave-condition.html). `contributor` принимает только UZ Core Practitioner, `custodian` - только UZ Core Organization.

#### Листок со связанным лицом

Если документ касается лица, связанного с пациентом, например члена семьи, за которым пациент ухаживает, укажите ссылку на [Sick Leave RelatedPerson](StructureDefinition-sick-leave-related-person.html) в `extension[relatedPerson]`:

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
    ]
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
      "valueCode": "opened"
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-related-person",
      "valueReference": {
        "reference": "RelatedPerson/sick-leave-related-person-mother"
      }
    }
  ],
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/sickleave",
      "value": "02QR008600112"
    }
  ],
  "status": "active",
  "intent": "plan",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs",
          "code": "SL"
        }
      ]
    }
  ],
  "subject": {
    "reference": "Patient/sick-leave-patient"
  },
  "addresses": [
    {
      "concept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs",
            "code": "FMC"
          }
        ]
      }
    }
  ]
}
```

Эталонные экземпляры: [продлён и закрыт](CarePlan-sick-leave-extended.html), [уход за членом семьи](CarePlan-sick-leave-family-care.html), [отменён](CarePlan-sick-leave-cancelled.html).
