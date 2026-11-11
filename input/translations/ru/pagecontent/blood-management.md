<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>


> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

На этой странице описано, как служба крови фиксирует путь донорской крови ресурсами FHIR: от регистрации донора до трансфузии реципиенту. Описание следует Техническому проекту Blood Management (V1.2).

### Обзор {#overview}

Почти на каждом шаге профиль [UZ Core](https://dhp.uz/fhir/core/ru/artifacts.html) используется без изменений. Это руководство добавляет один профиль, [Blood Donor Category Observation](StructureDefinition-blood-donor-category-observation.html), для регистрационных данных, которых нет в UZ Core Patient: зарегистрирован ли человек как донор или как реципиент, категория донора, оплата и вид донации, группа крови, резус-фактор и диагноз реципиента. Бумажные формы, стоящие за этими шагами, описаны в разделе [8.0 Служба крови](forms-volume-08-blood-service.html).

| Шаг | Сценарий Технического проекта | Ресурс | Профиль |
| :--- | :--- | :--- | :--- |
| [Регистрация донора или реципиента](#registering) | U6.1, U5.1 | Patient, Observation | [UZ Core Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html), [Blood Donor Category Observation](StructureDefinition-blood-donor-category-observation.html) |
| [Допуск или отвод](#eligibility) | U6.2 | Flag | UZ Core Flag (следующий выпуск UZ Core) |
| [Обследование крови донора](#testing) | U7 | Observation, DiagnosticReport, Specimen | [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html), [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-diagnostic-report.html), [UZ Core Specimen](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-specimen.html) |
| [Забор донации](#collecting) | U4.2, U8.2 | Procedure, BiologicallyDerivedProduct | [UZ Core Procedure](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-procedure.html), [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Переработка на компоненты](#processing) | U8.3 | BiologicallyDerivedProduct | [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Учёт запасов](#stock) | U9 | InventoryItem, InventoryReport | [UZ Core InventoryItem](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-inventoryitem.html), UZ Core InventoryReport (следующий выпуск UZ Core) |
| [Запрос и поставка компонентов](#supplying) | U3 | SupplyRequest, SupplyDelivery | [UZ Core SupplyRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-supply-request.html), [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-supply-delivery.html) |
| [Трансфузия реципиенту](#transfusing) | U5.3, U5.4 | ServiceRequest, BiologicallyDerivedProductDispense, Procedure, AdverseEvent | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-servicerequest.html), базовый [BiologicallyDerivedProductDispense](https://hl7.org/fhir/R5/biologicallyderivedproductdispense.html), [UZ Core Procedure](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-procedure.html), [UZ Core AdverseEvent](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-adverse-event.html) |

<div>{% include blood-management-model-ru.svg %}</div><br clear="all"/>

### Регистрация доноров и реципиентов {#registering}

И доноры, и реципиенты - это записи [UZ Core Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html); ничто в Patient не отмечает человека как донора. Сама регистрация - это [Blood Donor Category Observation](StructureDefinition-blood-donor-category-observation.html), `code` которого указывает, как зарегистрирован человек.

| Что фиксируется | Справочник | Пример кода или значения | Где хранится |
| :--- | :--- | :--- | :--- |
| Зарегистрирован как | [Blood patient type](ValueSet-blood-patient-type-vs.html) | `SNOMED CT#105470007` (донор крови) / `SNOMED CT#116154003` (пациент) | `code` |
| Категория донора | [Donor category](ValueSet-donor-category-vs.html) | `donor-category-cs#bdcat-0001-00001` (кадровый донор) | `category[donorCategory]` |
| Платная или безвозмездная донация | [Donation compensation](ValueSet-donation-compensation-vs.html) | `donation-compensation-cs#bdcomp-0001-00001` (безвозмездная) | `valueCodeableConcept` |
| Вид донации | [Donation type](ValueSet-donation-type-vs.html) | `donation-type-cs#bdtype-0001-00002` (плазмаферез) | `component[donationType]` |
| Группа крови | [Blood group](https://dhp.uz/fhir/core/ru/ValueSet-blood-group-vs.html) | `SNOMED CT#112144000` (группа A) | `component[bloodGroup]` |
| Резус-фактор | [Rh factor](https://dhp.uz/fhir/core/ru/ValueSet-blood-rh-vs.html) | `SNOMED CT#165747007` (RhD положительный) | `component[rhFactor]` |
| Диагноз реципиента | МКБ-10 | `D64.9` | `component[diagnosis]` |
| Дата регистрации | - | `2026-09-23T10:30:00+05:00` | `effectiveDateTime` |

Примеры: [кадровый донор](Observation-example-blood-donor-category-observation.html), [резервный донор](Observation-example-blood-donor-category-observation-reserve.html), [реципиент](Observation-example-blood-recipient-category-observation.html).

### Допуск и отводы {#eligibility}

Может ли донор сдавать кровь, фиксируется ресурсом Flag на его Patient: допуск к донации или медицинский отвод. Профиль UZ Core Flag для этого, вместе с кодами допуска доноров, войдёт в следующий выпуск UZ Core. `status` флага описывает сам флаг: флаг отвода в статусе `active` означает, что отвод действует.

### Обследование крови донора {#testing}

Каждый результат обследования перед донацией (группа крови, резус-фактор, гемоглобин, ВИЧ, гепатиты B и C, сифилис) - это [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html) донора, выполненное по образцу [UZ Core Specimen](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-specimen.html). [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-diagnostic-report.html) объединяет результаты одного обследования. Положительный маркер инфекции ведёт к флагу отвода и утилизации уже заготовленных единиц.

### Забор донации {#collecting}

Забор - это [UZ Core Procedure](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-procedure.html) донора. В результате появляется [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html) для единицы цельной крови либо для плазмы или тромбоцитов, полученных аферезом.

| Что фиксируется | Пример кода или значения | Где хранится |
| :--- | :--- | :--- |
| Номер единицы | система `https://dhp.uz/fhir/core/sid/prd/uz/blood/unit`, значение `BB-DON-2026-00123` | `identifier` |
| Номер донации | система `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation`, значение `DON-2025-0088231` | `biologicalSourceEvent` |
| Продукт | `SNOMED CT#88487009` (Human whole blood product) | `productCode` |
| Донор | ссылка на Patient | `collection.source` |
| Кем заготовлено | ссылка на Practitioner или PractitionerRole | `collection.collector` |
| Группа крови | тип `SNOMED CT#63915006`, значение из [blood group](https://dhp.uz/fhir/core/ru/ValueSet-blood-group-vs.html) | `property[aboGroup]` |
| Резус-фактор | тип `SNOMED CT#115678000`, значение из [Rh factor](https://dhp.uz/fhir/core/ru/ValueSet-blood-rh-vs.html) | `property[rhdType]` |

Пример: [донация цельной крови](https://dhp.uz/fhir/core/ru/BiologicallyDerivedProduct-example-blood-donation-product.html).

Номер донации ([NamingSystem](https://dhp.uz/fhir/core/ru/NamingSystem-uzb-blood-donation-number.html)) связывает все продукты, полученные из одной донации. Номер единицы ([NamingSystem](https://dhp.uz/fhir/core/ru/NamingSystem-uzb-blood-unit-number.html)) идентифицирует каждый контейнер.

### Переработка на компоненты {#processing}

Каждый компонент, выделенный из донации (эритроциты, плазма, криопреципитат и др.), - отдельный BiologicallyDerivedProduct. Его `parent` ссылается на продукт, из которого он получен, а номер донации сохраняется от исходной донации. У донаций афереза родителя нет.

Пример: [эритроциты, обеднённые лейкоцитами](https://dhp.uz/fhir/core/ru/BiologicallyDerivedProduct-example-blood-component-product.html), полученные из единицы цельной крови выше.

### Учёт запасов {#stock}

[UZ Core InventoryItem](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-inventoryitem.html) описывает вид компонента, который служба крови держит в запасе (пример: [эритроциты](https://dhp.uz/fhir/core/ru/InventoryItem-example-inventory-item-rbc.html)). Остатки по компонентам, группам крови и местам хранения - это InventoryReport; профиль UZ Core InventoryReport войдёт в следующий выпуск UZ Core.

### Запрос и поставка компонентов {#supplying}

Больница запрашивает компоненты через [UZ Core SupplyRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-supply-request.html). Именной запрос для конкретного пациента заполняет `deliverFor` и ссылается на назначение трансфузии через `basedOn`. Когда служба крови отправляет единицы, [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-supply-delivery.html) ссылается на запрос через `basedOn`, а каждый `suppliedItem.itemReference` указывает на доставленную единицу.

Примеры: [запрос на поставку](https://dhp.uz/fhir/core/ru/SupplyRequest-example-supply-request.html), [поставка компонентов крови](https://dhp.uz/fhir/core/ru/SupplyDelivery-example-blood-product-supply-delivery.html).

### Трансфузия реципиенту {#transfusing}

| Шаг | Ресурс | Ключевые элементы |
| :--- | :--- | :--- |
| Назначение трансфузии | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-servicerequest.html) | `subject` - реципиент |
| Выдача единицы реципиенту | [BiologicallyDerivedProductDispense](https://hl7.org/fhir/R5/biologicallyderivedproductdispense.html) (профиля UZ Core пока нет) | `product` - единица, `patient` - реципиент, `basedOn` - назначение |
| Выполненная трансфузия | [UZ Core Procedure](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-procedure.html) | `basedOn` - назначение, `used` - единица |
| Реакция на трансфузию | [UZ Core AdverseEvent](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-adverse-event.html) | `suspectEntity.instanceReference` - единица |

Вместе с номером донации эти ссылки позволяют проследить единицу от донора, сдавшего кровь, до реципиента, получившего её.

### Поиск записей человека в службе крови {#queries}

Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](https://dhp.uz/fhir/core/ru/api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](https://dhp.uz/fhir/core/ru/api-access.html#endpoints); `|` отделяет систему от значения и должен быть URL-кодирован как `%7C`.

```
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C105470007
GET [base]/Flag?patient=Patient/[id]&status=active
GET [base]/Observation?patient=Patient/[id]
GET [base]/Procedure?patient=Patient/[id]
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7C[donation-number]
GET [base]/BiologicallyDerivedProductDispense?patient=Patient/[id]
GET [base]/AdverseEvent?subject=Patient/[id]
```

У BiologicallyDerivedProduct нет параметра поиска по донору, поэтому единицы донора находят по номеру донации.
