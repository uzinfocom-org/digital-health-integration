> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Blood Donor Eligibility Flag фиксирует, может ли донор сдавать кровь. Это [UZ Core Flag](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-flag.html) на [Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html) донора с кодом `blood-donation-eligible`, `blood-donation-deferred-temporary` или `blood-donation-deferred-permanent`. Отвод содержит одну [причину отвода](ValueSet-donor-deferral-reason-vs.html) в расширении [workflow-reason](https://hl7.org/fhir/extensions/StructureDefinition-workflow-reason.html), которое может ссылаться на её основание, например на [Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html) с результатом анализа, DiagnosticReport или Condition; у допуска причины нет. Донор, отведённый по двум причинам, получает два флага. У временного отвода есть `period.end` - дата, с которой донор снова может сдавать кровь; у постоянного отвода `period.end` нет. Временный флаг остаётся `active`, пока его не переведут в `inactive`, поэтому, чтобы понять, действует ли отвод, читайте `period.end` вместе со `status`. Когда фиксируется отвод, действующий флаг допуска донора переводится в `inactive` с `period.end` на этот момент. [Blood Service](blood-service.html#eligibility) показывает место допуска и отводов в работе службы крови.

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](https://dhp.uz/fhir/core/ru/must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый Blood Donor Eligibility Flag должен содержать

Каждый флаг должен содержать `status`, код `blood-donation-eligible`, `blood-donation-deferred-temporary` или `blood-donation-deferred-permanent`, донора (`subject`) и начало допуска или отвода (`period.start`). Отвод должен содержать одну причину отвода в расширении `workflow-reason` (`concept`); у допуска её быть не должно.

#### Каждый Blood Donor Eligibility Flag должен поддерживать

- для отвода - причину и её основание, например результат анализа, отчёт или заболевание (`workflow-reason`);
- статус флага (active / inactive / entered-in-error): `active`, пока допуск или отвод действует;
- вид флага (`category`: `admin` для допуска, `clinical` для медицинского отвода);
- код допуска или отвода (`code`) и донора (`subject`);
- начало допуска или отвода и, для временного отвода, его окончание (`period`);
- кто его зафиксировал (`author`).

### Сборка JSON, шаг за шагом

Примеры ниже идут от допуска к постоянному отводу с результатом, который к нему привёл. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры - [допуск](Flag-example-blood-donor-eligible.html), [временный отвод](Flag-example-blood-donor-temporary-deferral.html) и [постоянный отвод](Flag-example-blood-donor-permanent-deferral.html).

#### Наименьший Blood Donor Eligibility Flag

Базовый ресурс требует `status`, `code` и `subject`, этот профиль требует `period.start`, и каждый ресурс указывает свой профиль в `meta.profile`. Этот допуск проходит валидацию:

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "status": "active",
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-eligible"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-09-24T09:30:00+05:00" }
}
```

#### Временный отвод

Отводу нужна ещё и причина. Этот временный отвод проходит валидацию:

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "extension": [ {
    "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason",
    "valueCodeableReference": {
      "concept": { "coding": [ {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
        "code": "donrsn-0001-00001"
      } ] }
    }
  } ],
  "status": "active",
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-deferred-temporary"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-11-10T10:00:00+05:00", "end": "2027-05-09T10:00:00+05:00" }
}
```

#### Временный отвод с категорией и автором

Добавьте категорию флага HL7 и того, кто зафиксировал отвод. Коды категорий HL7 сохраняют исходную систему; медицинский отвод относится к `clinical`.

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "extension": [ {
    "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason",
    "valueCodeableReference": {
      "concept": { "coding": [ {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
        "code": "donrsn-0001-00001"
      } ] }
    }
  } ],
  "status": "active",
  "category": [ { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/flag-category", "code": "clinical" } ] } ],
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-deferred-temporary"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "author": { "reference": "PractitionerRole/[id]" },
  "period": { "start": "2026-11-10T10:00:00+05:00", "end": "2027-05-09T10:00:00+05:00" }
}
```

#### Постоянный отвод с основанием

У постоянного отвода нет `period.end`. `reference` причины указывает на подтверждённый положительный результат, который привёл к отводу; он может указывать и на DiagnosticReport или Condition.

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "extension": [ {
    "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason",
    "valueCodeableReference": {
      "concept": { "coding": [ {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
        "code": "donrsn-0001-00013"
      } ] },
      "reference": { "reference": "Observation/[id]" }
    }
  } ],
  "status": "active",
  "category": [ { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/flag-category", "code": "clinical" } ] } ],
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-deferred-permanent"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "author": { "reference": "PractitionerRole/[id]" },
  "period": { "start": "2026-11-13T12:00:00+05:00" }
}
```

Примеры вызовов API см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
