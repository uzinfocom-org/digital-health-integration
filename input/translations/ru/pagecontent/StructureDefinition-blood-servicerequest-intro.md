> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Blood ServiceRequest - это запрос службы крови на одно лабораторное исследование или панель исследований донора либо на одну операцию вторичной переработки компонента крови (отмывание, облучение, замораживание или размораживание). Он основан на [UZ Core ServiceRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-servicerequest.html) и фиксирует только сам запрос, а не выполненную работу. Лабораторное назначение указывает донора ([Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html)), визит донации ([Encounter](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-encounter.html)) и образцы донора для исследования ([Specimen](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-specimen.html)); запрос на переработку служба крови оформляет для собственного запаса, поэтому он указывает место службы крови ([Location](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-location.html)) и ссылается на компонент крови ([BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html)). Каждое исследование, панель или операция - это отдельный запрос, а запросы одной донации объединены её номером. Место этих запросов в работе службы крови показано на странице [Blood Service](blood-service.html), а исходные формы - на странице [Формы службы крови](forms-volume-08-blood-service.html).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](https://dhp.uz/fhir/core/ru/must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый Blood ServiceRequest должен содержать

Каждый запрос должен содержать `status`, намерение `order`, запрашиваемую услугу (`code`) ровно с одной кодировкой из набора [лабораторных исследований и операций переработки](ValueSet-blood-lab-codes-vs.html) и `subject`: донора для лабораторного исследования или место службы крови для переработки компонента. Если передаётся номер назначения или номер донации, он должен содержать `value`.

#### Каждый Blood ServiceRequest должен поддерживать

- номер назначения (`identifier`) и номер донации, связывающий запросы одной донации (`requisition`), каждый со своей фиксированной `system`;
- статус запроса (draft / active / on-hold / revoked / completed / entered-in-error / unknown);
- принимающую лабораторию (`category`), например гематологическую, биохимическую или иммунологическую;
- срочность (`priority`: routine / urgent / asap / stat) и признак того, что услугу выполнять нельзя (`doNotPerform`);
- запрашиваемое исследование, панель или операцию переработки (`code`);
- донора или место службы крови (`subject`) и визит донации (`encounter`);
- когда услуга должна быть выполнена (`occurrence[x]`) и когда запрос был оформлен (`authoredOn`);
- кто оформил запрос (`requester`), кто должен его выполнить (`performer`) и где (`location`);
- зачем нужна услуга (`reason`), как она оплачивается (расширение типа оплаты) и страховое покрытие (`insurance`);
- образцы донора для исследования (`specimen`) и компонент крови для переработки (`focus`);
- прочие сведения в поддержку запроса (`supportingInfo`), комментарии (`note`) и инструкции для донора (`patientInstruction`).

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего валидного запроса к запросу на переработку компонента. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры - лабораторные назначения одной донации ([билирубин](ServiceRequest-example-blood-laboratory-order.html), [АЛТ](ServiceRequest-example-blood-alt-laboratory-order.html), [группа ABO](ServiceRequest-example-blood-immunology-laboratory-order.html), [резус](ServiceRequest-example-blood-rh-laboratory-order.html), [гепатит C](ServiceRequest-example-blood-transfusion-infections-laboratory-order.html), [сифилис](ServiceRequest-example-blood-syphilis-laboratory-order.html), [HBsAg](ServiceRequest-example-blood-hbsag-laboratory-order.html), [ВИЧ](ServiceRequest-example-blood-hiv-laboratory-order.html), [бруцеллёз](ServiceRequest-example-blood-bacteriology-laboratory-order.html), [малярия](ServiceRequest-example-blood-malaria-laboratory-order.html) и [общий анализ крови](ServiceRequest-example-blood-hematology-laboratory-order.html)), а также запросы на [отмывание](ServiceRequest-example-blood-component-processing-order.html), [облучение](ServiceRequest-example-blood-component-irradiation-order.html), [замораживание](ServiceRequest-example-blood-component-freezing-order.html) и [размораживание](ServiceRequest-example-blood-component-thawing-order.html).

#### Наименьший Blood ServiceRequest

Базовый ресурс требует `status`, `intent` и `subject`, этот профиль требует `code`, а каждый ресурс указывает свой профиль в `meta.profile`. Этого достаточно для прохождения валидации:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "status": "active",
  "intent": "order",
  "code": {
    "concept": { "coding": [ { "system": "http://loinc.org", "code": "1975-2" } ] }
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

Профиль фиксирует `intent` как `order`. `code` имеет тип `CodeableReference`, поэтому кодировка находится внутри `concept` и содержит один код из набора [лабораторных исследований и операций переработки](ValueSet-blood-lab-codes-vs.html). Следующие примеры добавляют, кто, где и зачем.

#### Лабораторное исследование донора

Врач службы крови во время визита донации назначает биохимической лаборатории исследование общего билирубина по образцу цельной крови донора:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request",
      "value": "XON-SR-2026-0001",
      "assigner": { "reference": "Organization/xonobod-medical-association" }
    }
  ],
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-categories-cs",
          "code": "lab-category-04",
          "display": "Biokimyo"
        }
      ]
    }
  ],
  "priority": "routine",
  "code": {
    "concept": { "coding": [ { "system": "http://loinc.org", "code": "1975-2" } ] }
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-blood-donation-encounter" },
  "authoredOn": "2026-11-10T09:05:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "specimen": [ { "reference": "Specimen/example-blood-whole-blood-specimen" } ]
}
```

Создавайте отдельный запрос для каждого исследования или панели: исследование АЛТ по тому же образцу - это [второй запрос](ServiceRequest-example-blood-alt-laboratory-order.html) со своим номером назначения и тем же `requisition`. `requisition` содержит номер донации в фиксированной системе донаций UZ Core, поэтому все запросы одной донации можно найти вместе. `identifier` использует фиксированную систему [номеров запросов службы крови](NamingSystem-blood-service-request-number-system.html), а `assigner` указывает организацию, выдавшую номер. `category` указывает принимающую лабораторию кодом из национального перечня лабораторных разделов, у которых узбекские наименования, поэтому в ресурсе `language` равен `uz`. Лабораторные коды остаются кандидатами до подтверждения методики и образца. Если лаборатория получает несколько пробирок донора, перечислите каждую в `specimen`.

#### Запрос на переработку компонента

Служба крови запрашивает облучение эритроцитарного компонента из своего запаса:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "priority": "urgent",
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-component-processing-cs",
          "code": "bcproc-0001-00002",
          "display": "Nurlantirish"
        }
      ]
    }
  },
  "subject": { "reference": "Location/example-blood-service-laboratory" },
  "authoredOn": "2026-11-10T10:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "focus": [ { "reference": "BiologicallyDerivedProduct/example-blood-component-product" } ]
}
```

Создавайте один запрос на каждую операцию и указывайте в `focus` компонент ([BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html)). Пациента нет, поэтому `subject` - это место службы крови ([Location](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-location.html)), а `category` не передаётся. Отмывание, замораживание и размораживание используют SNOMED CT `58059003`, `71643009` и `35382002`; для облучения нет процедуры SNOMED CT, поэтому используется локальный код [операции переработки](CodeSystem-blood-component-processing-cs.html). Держите запрос в статусе `active`, пока операция не подтверждена, затем переведите его в `completed`.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
