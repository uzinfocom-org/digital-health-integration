> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Ambulance Encounter фиксирует один вызов скорой медицинской помощи (СМП): к кому была вызвана бригада, какой службой СМП, по какому поводу, когда бригада находилась с пациентом, что было выявлено и куда пациент был направлен после оказания помощи. Профиль основан на [UZ Core Encounter](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-encounter.html), поэтому для чтения и поиска используйте конечную точку Encounter. Субъект - [UZ Core Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html), поставщик услуги - организация СМП ([UZ Core Organization](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-organization.html)), а адрес вызова - [UZ Core Location](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-location.html). Каждый вызов идентифицируется номером карты вызова в МИС СМП: перед созданием Encounter выполните поиск по этому номеру, чтобы повторно отправленный вызов обновил существующую запись, а не создал дубликат.

### Обязательные элементы данных и элементы Must Support

Перечисленные ниже элементы должны присутствовать всегда (обязательные) или должны поддерживаться, когда данные доступны ([Must Support](https://dhp.uz/fhir/core/ru/must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый Ambulance Encounter должен иметь

Каждый Ambulance Encounter должен содержать ровно один идентификатор - номер карты вызова с его системой, - а также status, национальный тип встречи, subject - [Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html), к которому была вызвана бригада, serviceProvider - организацию СМП, ответственную за вызов, фактический период от начала до окончания вызова и ровно одно location - место, куда была вызвана бригада. Если передаются сведения admission, они должны включать исход (dischargeDisposition). Для каждого участника должен быть указан actor.

#### Каждый Ambulance Encounter должен поддерживать

- класс (экстренный) и приоритет вызова;
- состояние пациента во время вызова (например, в сознании / без сознания);
- участников - медицинских работников или их должности в бригаде СМП, а также родственников - с их ролью;
- повод вызова и медицинскую причину в виде кода МКБ-10 или ссылки на Condition, Observation, Procedure или DiagnosticReport;
- диагнозы, установленные во время вызова;
- сведения admission: откуда был взят пациент, повторный вызов, куда пациент был доставлен и исход (например, госпитализирован / отказ от госпитализации);
- запрос, на основании которого выполнен вызов, и встречу, частью которой он является;
- период пребывания бригады на месте вызова;
- остальные элементы Must Support, унаследованные от UZ Core Encounter.

### Пошаговое построение JSON

Приведённые ниже примеры идут от минимальной встречи, которую примет сервер, до полного вызова, а затем вызова, завершившегося госпитализацией. Скопируйте пример и адаптируйте его - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр - [вызов по поводу гипертонического криза](Encounter-example-ambulance-call-encounter.html).

#### Минимальная встреча, которую следует отправлять

Вся запись держится на семи элементах: номер карты вызова в `identifier`, `status`, национальный `type` встречи, `subject`, `serviceProvider`, `actualPeriod` и `location`. Тип встречи берётся из локальной кодовой системы, поэтому его `display` указан на узбекском языке в соответствии с `language` ресурса:

```json
{
  "resourceType": "Encounter",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5742/26" }
  ],
  "status": "completed",
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-ambulance-cs",
          "code": "emer5-0006-1",
          "display": "Birlamchi"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "serviceProvider": { "reference": "Organization/xonobod-medical-association" },
  "actualPeriod": { "start": "2026-03-01T09:30:00+05:00", "end": "2026-03-01T10:15:00+05:00" },
  "location": [ { "location": { "reference": "Location/example-ambulance-call-location" } } ]
}
```

`subject`, `serviceProvider` и `location.location` - обычные `Reference`, поэтому цель указывается непосредственно в `reference`. `system` идентификатора фиксирован: идентификатор с любой другой системой отклоняется.

#### Полный вызов

Полная запись добавляет класс и приоритет, состояние пациента, бригаду СМП в `participant`, повод вызова и диагноз. `reason.use` содержит повод вызова из справочника поводов вызова СМП; `reason.value` и `diagnosis.condition` имеют тип `CodeableReference`, поэтому код указывается в `concept`, а ссылка на Condition - в `reference`:

```json
{
  "resourceType": "Encounter",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5742/26" }
  ],
  "status": "completed",
  "class": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "EMER" } ] }
  ],
  "priority": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority", "code": "EM" } ]
  },
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-ambulance-cs",
          "code": "emer5-0006-1",
          "display": "Birlamchi"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "subjectStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-subject-status-cs",
        "code": "gencl-0003-00002",
        "display": "Hushsiz"
      }
    ]
  },
  "serviceProvider": { "reference": "Organization/xonobod-medical-association" },
  "participant": [
    {
      "type": [
        { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType", "code": "ATND" } ] }
      ],
      "actor": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "reason": [
    {
      "use": [
        {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-ambulance-cs",
              "code": "emer103054",
              "display": "Qon bosimining sezilarli darajada o'zgarishi"
            }
          ]
        }
      ],
      "value": [
        { "concept": { "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "I10" } ] } }
      ]
    }
  ],
  "actualPeriod": { "start": "2026-03-01T09:30:00+05:00", "end": "2026-03-01T10:15:00+05:00" },
  "diagnosis": [
    {
      "condition": [
        { "concept": { "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "I10" } ] } }
      ]
    }
  ],
  "location": [
    {
      "location": { "reference": "Location/example-ambulance-call-location" },
      "period": { "start": "2026-03-01T09:42:00+05:00", "end": "2026-03-01T10:05:00+05:00" }
    }
  ]
}
```

#### Вызов, завершившийся госпитализацией

Если бригада доставляет пациента, добавьте `admission`. `admitSource` указывает, откуда был взят пациент (коды мест SNOMED CT, например `257630004` House), `destination` ссылается на [Location](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-location.html) или [Organization](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-organization.html) больницы, а `dischargeDisposition`, обязательный при передаче `admission`, указывает исход вызова:

```json
{
  "resourceType": "Encounter",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5743/26" }
  ],
  "status": "completed",
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-ambulance-cs",
          "code": "emer5-0006-1",
          "display": "Birlamchi"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "serviceProvider": { "reference": "Organization/xonobod-medical-association" },
  "actualPeriod": { "start": "2026-03-01T09:30:00+05:00", "end": "2026-03-01T10:15:00+05:00" },
  "location": [ { "location": { "reference": "Location/example-ambulance-call-location" } } ],
  "admission": {
    "admitSource": { "coding": [ { "system": "http://snomed.info/sct", "code": "257630004" } ] },
    "destination": { "reference": "Location/example-location" },
    "dischargeDisposition": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-discharge-disposition-home-cs",
          "code": "mserv-0004-00001",
          "display": "Kasalxonaga yotqizildi"
        }
      ]
    }
  }
}
```

#### Идентификатор {#identifier-slices}

Номер карты вызова - единственный идентификатор, и его `system` фиксирован:

| Идентификатор | `system` |
|---|---|
| Номер карты вызова | `https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card` |

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу страницы.
