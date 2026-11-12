> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Blood Donor Category Observation фиксирует, как человек зарегистрирован в службе крови: как донор крови или как реципиент. Для донора оно содержит категорию донора (кадровый или резервный), сведения о том, является ли донация возмездной или безвозмездной, и вид донации; и для доноров, и для реципиентов оно может передавать группу крови по системе AB0, резус-фактор, а для реципиента - диагноз. Профиль основан на [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html), поэтому для чтения и поиска используйте конечную точку Observation. Субъект - [UZ Core Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html); запись может ссылаться на [Encounter](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-encounter.html) регистрации и на медицинского работника, который зарегистрировал человека. Как профиль сочетается с профилями UZ Core в работе службы крови, от регистрации донора до трансфузии, описано на странице [Blood Management](blood-management.html).

### Обязательные элементы данных и элементы Must Support

Перечисленные ниже элементы должны присутствовать всегда (обязательные) или должны поддерживаться, когда данные доступны ([Must Support](https://dhp.uz/fhir/core/ru/must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое Blood Donor Category Observation должно иметь

Каждое Blood Donor Category Observation должно содержать status, code, указывающий, зарегистрирован ли человек как *Blood donor* (донор) или как *Patient* (реципиент) (SNOMED CT), subject - регистрируемого [Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html) (1..1), и effectiveDateTime - время регистрации (1..1).

#### Каждое Blood Donor Category Observation должно поддерживать

- категорию донора (кадровый донор / резервный донор) в срезе category `donorCategory`;
- оплату донации (возмездная / безвозмездная) в `valueCodeableConcept`;
- срезы component для вида донации (цельная кровь / плазмаферез / тромбоцитаферез), группы крови AB0, резус-фактора и диагноза;
- визит регистрации и исполнителя - медицинского работника или его должность (PractitionerRole), зарегистрировавшего человека;
- идентификатор и примечания, если они доступны;
- остальные элементы Must Support, унаследованные от UZ Core Observation.

> Каждый срез component выбирается по его `code`, который также определяет набор значений для `valueCodeableConcept`. Передавайте только те компоненты, для которых у вас есть данные.

### Построение JSON, шаг за шагом

Примеры ниже идут от наименьшего экземпляра, который примет сервер, до полностью заполненной записи донора, а затем показан реципиент. Скопируйте пример и адаптируйте его - каждое показанное значение проходит валидацию по этому профилю. Полные эталонные экземпляры: [кадровый донор](Observation-example-blood-donor-category-observation.html), [резервный донор](Observation-example-blood-donor-category-observation-reserve.html) и [реципиент](Observation-example-blood-recipient-category-observation.html).

#### Наименьшее наблюдение, которое вам следует отправить

Вся запись держится на четырёх элементах: `status`, `code`, указывающий, что человек зарегистрирован как донор крови (SNOMED CT `105470007`), `subject` (регистрируемый [Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html)) и `effectiveDateTime` регистрации:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00"
}
```

`subject` - это обычная ссылка `Reference`, поэтому цель указывается непосредственно в `reference`.

#### Добавление категории донора и оплаты

Категория донора указывается в `category`, оплата - в `valueCodeableConcept`. Оба кода взяты из локальных кодовых систем, поэтому их `display` указан на узбекском языке в соответствии с `language` ресурса:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs",
          "code": "bdcat-0001-00001",
          "display": "Kadr donor"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "performer": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
        "code": "bdcomp-0001-00001",
        "display": "Bepul"
      }
    ]
  }
}
```

Код категории выбирает срез `donorCategory`; категории из других систем можно передавать рядом с ним.

#### Полная запись донора

Вид донации, группа крови и резус-фактор указываются каждый в своём срезе `component`. `code` выбирает срез, а значение должно быть взято из набора значений этого среза:

| Срез | `code` | `valueCodeableConcept` из |
|---|---|---|
| `donationType` | `bdobs-0001-00001` | [Вид донации](ValueSet-donation-type-vs.html) |
| `bloodGroup` | `bdobs-0001-00002` | [Группа крови](https://dhp.uz/fhir/core/ru/ValueSet-blood-group-vs.html) (SNOMED CT) |
| `rhFactor` | `bdobs-0001-00003` | [Резус-фактор](https://dhp.uz/fhir/core/ru/ValueSet-blood-rh-vs.html) (SNOMED CT) |
| `diagnosis` | LOINC `29308-4` | МКБ-10 |

Первые три кода находятся в `https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs`:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs",
          "code": "bdcat-0001-00001",
          "display": "Kadr donor"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "performer": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
        "code": "bdcomp-0001-00001",
        "display": "Bepul"
      }
    ]
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00001",
            "display": "Donatsiya turi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-type-cs",
            "code": "bdtype-0001-00002",
            "display": "Plazmaferez"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00002",
            "display": "Qon guruhi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://snomed.info/sct", "code": "112144000" }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00003",
            "display": "Rezus-omil"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://snomed.info/sct", "code": "165747007" }
        ]
      }
    }
  ]
}
```

#### Реципиент

Для реципиента используется код SNOMED CT `116154003` (Patient), а категория донора и оплата не указываются. Диагноз передаётся в срезе `diagnosis` с кодом LOINC `29308-4` и значением из МКБ-10. Эта запись также ссылается на визит регистрации (`encounter`) и на регистрирующего медицинского работника:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "116154003", "display": "Patient" }
    ]
  },
  "subject": { "reference": "Patient/example-patient-john" },
  "encounter": { "reference": "Encounter/example-blood-recipient-registration-encounter" },
  "effectiveDateTime": "2026-09-25T11:00:00+05:00",
  "performer": [ { "reference": "Practitioner/example-blood-recipient-registrar" } ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00002",
            "display": "Qon guruhi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://snomed.info/sct", "code": "112144000" }
        ]
      }
    },
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

#### Срезы идентификаторов {#identifier-slices}

Регистрационный идентификатор службы крови выбирается по URI `system`, поэтому он должен совпадать в точности:

| Срез | `system` |
|---|---|
| `bloodId` | `https://dhp.uz/fhir/core/sid/prd/uz/blood` |

Примеры вызовов API см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
