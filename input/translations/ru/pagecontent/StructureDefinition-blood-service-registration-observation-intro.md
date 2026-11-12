> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Blood Service Registration Observation фиксирует, что человек зарегистрирован в службе крови как донор крови или как реципиент. Для донора оно содержит категорию донора (кадровый или резервный), сведения о том, является ли донация возмездной или безвозмездной, и вид донации; для реципиента оно может передавать диагноз. Профиль основан на [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html), поэтому для чтения и поиска используйте конечную точку Observation. Субъект - [UZ Core Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html); запись может ссылаться на [Encounter](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-encounter.html) регистрации и на медицинского работника, который зарегистрировал человека. Группа крови и резус-фактор не входят в регистрацию: записывайте их как [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html) с кодами LOINC `883-9` и `10331-7`. Место регистрации в работе службы крови описано на странице [форм службы крови](forms-volume-08-blood-service.html).

### Обязательные элементы данных и элементы Must Support

Перечисленные ниже элементы должны присутствовать всегда (обязательные) или должны поддерживаться, когда данные доступны ([Must Support](https://dhp.uz/fhir/core/ru/must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое Blood Service Registration Observation должно иметь

Каждое Blood Service Registration Observation должно содержать status, code, указывающий, является ли запись *регистрацией донора* или *регистрацией реципиента*, subject - регистрируемого [Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html) (1..1), и effectiveDateTime - время регистрации (1..1). Элемента `value` нет: сведения о регистрации передаются в компонентах.

#### Каждое Blood Service Registration Observation должно поддерживать

- регистрационный номер, присвоенный службой крови;
- для донора: категорию донора (кадровый / резервный донор), оплату донации (возмездная / безвозмездная) и вид донации (цельная кровь / плазмаферез / тромбоцитаферез), каждое в своём компоненте;
- для реципиента: диагноз (МКБ-10) в компоненте;
- Encounter регистрации и исполнителя (performer) - медицинского работника или его роль, зарегистрировавшего человека;
- остальные элементы Must Support, унаследованные от UZ Core Observation.

> Регистрация реципиента не должна содержать компоненты категории донора, оплаты и вида донации.

### Построение JSON шаг за шагом

Примеры ниже идут от наименьшего экземпляра, который примет сервер, до полной записи донора, а затем реципиента. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры: [кадровый донор](Observation-example-blood-donor-registration-staff.html), [резервный донор](Observation-example-blood-donor-registration-reserve.html) и [реципиент](Observation-example-blood-recipient-registration.html).

#### Минимальное наблюдение, которое следует отправлять

Вся запись держится на четырёх элементах: `status`, `code`, указывающий, что это регистрация донора крови, `subject` (регистрируемый [Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html)) и `effectiveDateTime` регистрации. Код взят из локальной кодовой системы, поэтому его `display` на узбекском языке в соответствии с `language` ресурса:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00001",
        "display": "Donor sifatida ro'yxatga olish"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00"
}
```

`subject` - это обычная `Reference`, поэтому цель указывается непосредственно в `reference`.

#### Полная запись донора

Регистрационный номер указывается в `identifier`. Категория донора, оплата и вид донации указываются каждый в своём срезе `component`; `code` выбирает срез, а значение должно быть взято из набора значений этого среза:

| Срез | `code` | `valueCodeableConcept` из |
|---|---|---|
| `donorCategory` | `bsobs-0002-00001` | [Категория донора](ValueSet-donor-category-vs.html) |
| `compensation` | `bsobs-0002-00002` | [Оплата донации](ValueSet-donation-compensation-vs.html) |
| `donationType` | `bsobs-0002-00003` | [Вид донации](ValueSet-donation-type-vs.html) (SNOMED CT) |
| `diagnosis` | LOINC `29308-4` | МКБ-10 |

Коды `bsobs` находятся в `https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs`:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-registration", "value": "BD-2026-004517" }
  ],
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00001",
        "display": "Donor sifatida ro'yxatga olish"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "performer": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
            "code": "bsobs-0002-00001",
            "display": "Donor toifasi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "275561000",
            "display": "Regular blood donor"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
            "code": "bsobs-0002-00002",
            "display": "Donatsiya to'lovi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
            "code": "bdcomp-0001-00001",
            "display": "Bepul"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
            "code": "bsobs-0002-00003",
            "display": "Donatsiya turi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "20720000", "display": "Plasmapheresis" } ]
      }
    }
  ]
}
```

#### Реципиент

Регистрация реципиента использует код `bsobs-0001-00002` и не содержит компонентов донора. Диагноз указывается в срезе `diagnosis` с кодом LOINC `29308-4` и значением из МКБ-10. Эта запись также ссылается на `encounter` регистрации и на зарегистрировавшего медицинского работника:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-registration", "value": "BR-2026-000932" }
  ],
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00002",
        "display": "Retsipiyent sifatida ro'yxatga olish"
      }
    ]
  },
  "subject": { "reference": "Patient/example-patient-john" },
  "encounter": { "reference": "Encounter/example-blood-recipient-registration-encounter" },
  "effectiveDateTime": "2026-09-25T11:00:00+05:00",
  "performer": [ { "reference": "Practitioner/example-blood-recipient-registrar" } ],
  "component": [
    {
      "code": {
        "coding": [ { "system": "http://loinc.org", "code": "29308-4" } ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://hl7.org/fhir/sid/icd-10", "code": "D64.9", "display": "Anaemia, unspecified" }
        ]
      }
    }
  ]
}
```

#### Срезы идентификатора {#identifier-slices}

Регистрационный номер выбирается по URI в `system`, поэтому он должен совпадать точно:

| Срез | `system` |
|---|---|
| `registrationNumber` | `https://dhp.uz/fhir/core/sid/doc/uz/blood-registration` |

Примеры API-вызовов см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
