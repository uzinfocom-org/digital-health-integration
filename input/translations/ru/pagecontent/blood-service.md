<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>


> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

На этой странице описано, как служба крови фиксирует путь донорской крови ресурсами FHIR: от регистрации донора до трансфузии реципиенту.

### Обзор {#overview}

Почти на каждом шаге профиль [UZ Core](https://dhp.uz/fhir/core/ru/artifacts.html) используется без изменений. Это руководство добавляет пять профилей. [Blood Service Registration Observation](StructureDefinition-blood-service-registration-observation.html) фиксирует регистрационные данные, которых нет в UZ Core Patient: зарегистрирован ли человек как донор или как реципиент, регистрационный номер, категория донора, оплата и вид донации и диагноз реципиента. [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html) оформляет лабораторные назначения донору и запросы на переработку компонента. [Blood Donor Eligibility Flag](StructureDefinition-blood-donor-eligibility-flag.html) фиксирует, может ли донор сдавать кровь или он отведён. [Blood Recipient History Observation](StructureDefinition-blood-recipient-history-observation.html) и [Blood Transfusion Assessment Observation](StructureDefinition-blood-transfusion-assessment-observation.html) фиксируют анамнез реципиента и пробы на совместимость перед трансфузией. Бумажные формы, стоящие за этими шагами, описаны в разделе [8.0 Служба крови](forms-volume-08-blood-service.html).

| Шаг | Ресурс | Профиль |
| :--- | :--- | :--- |
| [Регистрация донора или реципиента](#registering) | Patient, Observation | [UZ Core Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html), [Blood Service Registration Observation](StructureDefinition-blood-service-registration-observation.html) |
| [Опрос донора](#interviewing) | Questionnaire, QuestionnaireResponse | [UZ Core QuestionnaireResponse](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-questionnaire-response.html) |
| [Допуск или отвод](#eligibility) | Flag | [Blood Donor Eligibility Flag](StructureDefinition-blood-donor-eligibility-flag.html) на основе [UZ Core Flag](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-flag.html) |
| [Обследование крови донора](#testing) | ServiceRequest, Observation, DiagnosticReport, Specimen | [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html), [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html), [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-diagnostic-report.html), [UZ Core Specimen](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-specimen.html) |
| [Забор донации](#collecting) | Procedure, BiologicallyDerivedProduct | [UZ Core Procedure](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-procedure.html), [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Переработка на компоненты](#processing) | ServiceRequest, BiologicallyDerivedProduct | [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html), [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Учёт запасов](#stock) | InventoryItem, InventoryReport | [UZ Core InventoryItem](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-inventoryitem.html), [UZ Core InventoryReport](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-inventoryreport.html) |
| [Запрос и поставка компонентов](#supplying) | SupplyRequest, SupplyDelivery | [UZ Core SupplyRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-supply-request.html), [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-supply-delivery.html) |
| [Трансфузия реципиенту](#transfusing) | ServiceRequest, Observation, BiologicallyDerivedProductDispense, Procedure, AdverseEvent | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-servicerequest.html), [Blood Recipient History Observation](StructureDefinition-blood-recipient-history-observation.html), [Blood Transfusion Assessment Observation](StructureDefinition-blood-transfusion-assessment-observation.html), [UZ Core BiologicallyDerivedProductDispense](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologicallyderivedproductdispense.html), [UZ Core Procedure](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-procedure.html), [UZ Core AdverseEvent](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-adverse-event.html) |

<div>{% include blood-service-model-ru.svg %}</div><br clear="all"/>

### Регистрация доноров и реципиентов {#registering}

И доноры, и реципиенты - это записи [UZ Core Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html); ничто в Patient не отмечает человека как донора. Сама регистрация - это [Blood Service Registration Observation](StructureDefinition-blood-service-registration-observation.html), `code` которого указывает, как зарегистрирован человек. Группа крови и резус-фактор не входят в регистрацию: они записываются как [результаты обследования](#testing).

| Информация для записи | Набор значений | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Зарегистрирован как | [Blood service registration type](ValueSet-blood-service-registration-type-vs.html) | `blood-service-observation-type-cs#bsobs-0001-00001` (регистрация донора) / `blood-service-observation-type-cs#bsobs-0001-00002` (регистрация реципиента) | `code` |
| Регистрационный номер | [NamingSystem](NamingSystem-blood-registration-number-system.html) | system `https://dhp.uz/fhir/core/sid/doc/uz/blood-registration`, значение `BD-2026-004517` | `identifier[registrationNumber]` |
| Категория донора | [Donor category](ValueSet-donor-category-vs.html) | `SNOMED CT#275561000` (кадровый донор) / `donor-category-cs#bdcat-0001-00002` (резервный донор) | `component[donorCategory]` |
| Платная или безвозмездная донация | [Donation compensation](ValueSet-donation-compensation-vs.html) | `donation-compensation-cs#bdcomp-0001-00001` (безвозмездная) | `component[compensation]` |
| Вид донации | [Donation type](ValueSet-donation-type-vs.html) | `SNOMED CT#20720000` (плазмаферез) | `component[donationType]` |
| Диагноз реципиента | МКБ-10 | `D64.9` | `component[diagnosis]` |
| Дата регистрации | - | `2026-09-23T10:30:00+05:00` | `effectiveDateTime` |

Примеры: [кадровый донор](Observation-example-blood-donor-registration-staff.html), [резервный донор](Observation-example-blood-donor-registration-reserve.html), [реципиент](Observation-example-blood-recipient-registration.html).

### Опрос донора {#interviewing}

Перед каждой донацией донор отвечает на [анкету донора](forms.html?form=donor-questionnaire); ответы фиксируются ресурсом [UZ Core QuestionnaireResponse](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-questionnaire-response.html) на Patient донора ([пример](QuestionnaireResponse-example-donor-questionnaire-response.html)). Ни один ответ сам по себе не означает отвод: врач рассматривает ответы и фиксирует отвод ресурсом [Flag](#eligibility).

В таблице указан ответ, который может привести к отводу, и соответствующий [код причины](ValueSet-donor-deferral-reason-vs.html). `item.code` каждого вопроса обозначает, о чём он спрашивает, кодом LOINC или SNOMED CT, если подходящий код есть; кода причины в вопросе нет.

| Вопрос | Ответ, ведущий к отводу | Код причины |
| :--- | :--- | :--- |
| Когда вы в последний раз сдавали кровь? (`last-donation`) | Недавняя дата | `donrsn-0001-00006` Дата последней сдачи крови |
| Хорошо ли вы себя чувствуете сегодня? (`feeling-well`) | Нет | `donrsn-0001-00026` Плохое самочувствие в день визита |
| Есть ли у вас хронические заболевания (например, эпилепсия, диабет, онкологические или другие длительные заболевания)? (`chronic-disease`) | Да | `donrsn-0001-00009` Хроническое заболевание |
| Получаете ли вы в настоящее время регулярное лечение? (`regular-treatment`) | Да | `donrsn-0001-00005` Приём лекарств или постоянное лечение (последняя неделя) |
| Регулярно ли принимаете какие-либо процедуры или таблетки? (`medication-procedures`) | Да | `donrsn-0001-00005` Приём лекарств или постоянное лечение (последняя неделя) |
| Болели ли вы когда-либо гепатитом или бруцеллёзом? (`hepatitis-brucellosis`) | Да | `donrsn-0001-00018` Перенесённый гепатит или бруцеллёз |
| Проводились ли вам стоматологические процедуры за последнее время (в течение последних 2 недель)? (`dental-procedure`) | Да | `donrsn-0001-00010` Стоматологическая процедура (последние 2 недели) |
| Болели ли малярией за последние 3 недели? (`malaria-illness`) | Да | `donrsn-0001-00011` Посещение региона риска малярии или связанное с малярией состояние |
| Делали ли вам прививки в течение последнего месяца? (`vaccination`) | Да | `donrsn-0001-00019` Вакцинация |
| Были ли у вас в течение последних 3 месяцев ночная потливость, необъяснимая потеря веса, озноб, диарея или увеличение лимфатических узлов? (`recent-symptoms`) | Да | `donrsn-0001-00020` Ночная потливость, потеря веса, озноб, диарея или увеличение лимфоузлов за последние 3 месяца |
| Были в контакте с человеком, заражённым гепатитом или ВИЧ/СПИД? (`infected-contact`) | Да | `donrsn-0001-00021` Контакт с человеком, инфицированным ВИЧ или гепатитом |
| Были ли у вас случайные незащищённые половые контакты в течение последних 6 месяцев? (`unprotected-sex`) | Да | `donrsn-0001-00022` Случайный незащищённый половой контакт (последние 6 месяцев) |
| Переносили ли вы хирургическое вмешательство, медицинскую процедуру или эндоскопическое исследование в течение последних 6 месяцев? (`surgery`) | Да | `donrsn-0001-00012` Хирургическое или медицинское вмешательство (последние 6 месяцев) |
| Получали ли вы когда-либо переливание крови или её компонентов? (`blood-transfusion`) | Да | `donrsn-0001-00003` Переливание крови или её компонентов |
| Проходили лечение от венерических инфекций: сифилис, гонорея, хламидиоз, генитальные язвы, герпес? (`sti-treatment`) | Да | `donrsn-0001-00023` Лечение инфекций, передающихся половым путём (последние 6 месяцев) |
| Использовали общие иглы, шприцы или скарификаторы? (`shared-needles`) | Да | `donrsn-0001-00024` Использование общих игл или шприцев (последние 6 месяцев) |
| За последние 6 месяцев: тату, пирсинг или иглоукалывание? (`tattoo-piercing`) | Да | `donrsn-0001-00001` Татуировка, пирсинг или иглоукалывание |
| Были в местах лишения свободы? (`incarceration`) | Да | `donrsn-0001-00025` Пребывание в местах лишения свободы |
| Даёте согласие на тестирование крови на ВИЧ/СПИД, гепатит, сифилис? (`testing-consent`) | Нет | `donrsn-0001-00027` Отказ от согласия на тестирование крови |
| В последнее время: грипп, ОРВИ или ангина? (`flu-arvi`) | Да | `donrsn-0001-00004` Грипп, ОРВИ или ангина |
| За последние 3 недели: температура или посещение регионов с малярией? (`malaria-exposure`) | Да | `donrsn-0001-00011` Посещение региона риска малярии или связанное с малярией состояние |
| Вы беременны? (`pregnancy`) | Да | `donrsn-0001-00007` Беременность |
| За последние 6 месяцев были роды или выкидыш? (`postpartum-miscarriage`) | Да | `donrsn-0001-00017` Период после родов или выкидыша (последние 6 месяцев) |
| В настоящее время кормите ли вы грудью? (`breastfeeding`) | Да | `donrsn-0001-00008` Грудное вскармливание |
| Подтверждаю, что в течение последних 48 часов не употреблял(а) алкоголь, а в течение последних 72 часов не принимал(а) аспирин или другие анальгетики. (`alcohol-medication-declaration`) | Нет | - |
| Подтверждаете, что поняли данные вопросы, причину их задавания, и ответили добросовестно? (`declaration`) | Нет | `donrsn-0001-00028` Декларация не подтверждена |

Ответ «Нет» на `testing-consent` или `declaration` означает административную остановку, а не медицинский отвод: донация в этот день не проводится, флаг отвода не создаётся. У ответа «Нет» на `alcohol-medication-declaration` нет собственного кода причины; врач указывает подходящую причину.

Дату фиксирует только `last-donation`. Остальные вопросы не спрашивают, когда произошло событие, поэтому флаг отвода начинается с даты опроса, а дату окончания устанавливает врач; ответы её не определяют.

`gender` определяет, задаются ли вопросы о беременности. `last-doctor-visit`, `last-doctor-visit-reason`, `advised-not-to-donate`, `hospitalization`, `travel-abroad` и `additional-health` дают врачу контекст для оценки, а `regular-donation-preference` и `contact-consent` фиксируют пожелания донора. Ни один из них не ведёт к отводу.

Все вопросы обязательны, кроме `last-donation`, который первичный донор оставляет пустым, и открытых `last-doctor-visit`, `last-doctor-visit-reason` и `additional-health`. Вопросы о беременности обязательны, только когда они показаны.

Пример: рассмотрев [пример ответа](QuestionnaireResponse-example-donor-questionnaire-response.html), где донор сообщает о недавней татуировке, врач фиксирует [флаг временного отвода](Flag-example-donor-questionnaire-deferral.html), у которого расширение `workflow-reason` содержит причину `donrsn-0001-00001`.

### Допуск и отводы {#eligibility}

Может ли донор сдавать кровь, фиксируется ресурсом [Blood Donor Eligibility Flag](StructureDefinition-blood-donor-eligibility-flag.html) на его Patient, основанным на [UZ Core Flag](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-flag.html). В `code` указан `blood-donation-eligible`, `blood-donation-deferred-temporary` или `blood-donation-deferred-permanent`. `status` флага описывает сам флаг: флаг в статусе `active` означает, что допуск или отвод действует. Когда фиксируется отвод, действующий флаг допуска донора переводится в `inactive` с `period.end` на этот момент.

У отвода расширение [workflow-reason](https://hl7.org/fhir/extensions/StructureDefinition-workflow-reason.html) содержит [причину отвода](ValueSet-donor-deferral-reason-vs.html) и может ссылаться на её основание, например на положительный результат анализа. Донор, отведённый по двум причинам, получает два флага. `period.start` показывает начало отвода. У временного отвода есть `period.end` - дата, с которой донор снова может сдавать кровь; у постоянного отвода `period.end` нет. Временный флаг остаётся `active`, пока его не переведут в `inactive`, поэтому, чтобы понять, действует ли отвод, читайте `period.end` вместе со `status`.

Примеры: [допуск](Flag-example-blood-donor-eligible.html), [временный отвод](Flag-example-blood-donor-temporary-deferral.html), [постоянный отвод](Flag-example-blood-donor-permanent-deferral.html) причина которого ссылается на [подтверждённый положительный результат на ВИЧ](Observation-example-blood-donor-hiv-result.html).

### Обследование крови донора {#testing}

Каждый результат обследования перед донацией (группа крови, резус-фактор, гемоглобин, ВИЧ, гепатиты B и C, сифилис) - это [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html) донора, выполненное по образцу [UZ Core Specimen](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-specimen.html). [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-diagnostic-report.html) объединяет результаты одного обследования. Положительный маркер инфекции ведёт к флагу отвода и утилизации уже заготовленных единиц.

Врач службы крови создаёт [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html) для каждого исследования или панели, указывая услугу в `code.concept`. Назначения одной донации содержат общий номер в `requisition`; `category` определяет принимающую лабораторию. Результаты и отчёты ссылаются на назначения через `basedOn`.

### Забор донации {#collecting}

Забор - это [UZ Core Procedure](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-procedure.html) донора. В результате появляется [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html) для единицы цельной крови либо для плазмы или тромбоцитов, полученных аферезом.

| Информация для записи | Пример кода | Хранится в |
| :--- | :--- | :--- |
| Номер единицы | система `https://dhp.uz/fhir/core/sid/prd/uz/blood/unit`, значение `BB-DON-2026-00123` | `identifier` |
| Номер донации | система `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation`, значение `DON-2025-0088231` | `biologicalSourceEvent` |
| Продукт | `SNOMED CT#88487009` (Human whole blood product) | `productCode` |
| Донор | ссылка на Patient | `collection.source` |
| Кем заготовлено | ссылка на Practitioner или PractitionerRole | `collection.collector` |
| Группа крови | тип `SNOMED CT#63915006`, значение из [blood group](https://dhp.uz/fhir/core/ru/ValueSet-blood-group-vs.html) | `property[aboGroup]` |
| Резус-фактор | тип `SNOMED CT#115678000`, значение из [Rh factor](https://dhp.uz/fhir/core/ru/ValueSet-blood-rh-vs.html) | `property[rhdType]` |
| Объём | тип `SNOMED CT#118565006`, значение в мл | `property[volume]` |
| Гематокрит | тип `LOINC#4544-3`, значение в % | `property[hematocrit]` |

Пример: [донация цельной крови](https://dhp.uz/fhir/core/ru/BiologicallyDerivedProduct-example-blood-donation-product.html).

Реакция во время или после донации, например обморок, указывается в `complication` процедуры взятия крови с кодом из [осложнений процедуры](https://dhp.uz/fhir/core/ru/ValueSet-procedure-complication-vs.html) (пример: [донация с обмороком](https://dhp.uz/fhir/core/ru/Procedure-example-blood-donation-procedure.html)).

Номер донации ([NamingSystem](https://dhp.uz/fhir/core/ru/NamingSystem-uzb-blood-donation-number.html)) связывает все продукты, полученные из одной донации. Номер единицы ([NamingSystem](https://dhp.uz/fhir/core/ru/NamingSystem-uzb-blood-unit-number.html)) идентифицирует каждый контейнер.

### Переработка на компоненты {#processing}

Каждый компонент, выделенный из донации (эритроциты, плазма, криопреципитат и др.), - отдельный BiologicallyDerivedProduct. Его `parent` ссылается на продукт, из которого он получен, а номер донации сохраняется от исходной донации. У донаций афереза родителя нет.

Вторичная переработка компонента (отмывание, облучение, замораживание или размораживание) запрашивается через [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html), у которого `focus` - этот компонент.

Пример: [эритроциты, обеднённые лейкоцитами](https://dhp.uz/fhir/core/ru/BiologicallyDerivedProduct-example-blood-component-product.html), полученные из единицы цельной крови выше.

### Учёт запасов {#stock}

[UZ Core InventoryItem](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-inventoryitem.html) описывает вид компонента, который служба крови держит в запасе (пример: [эритроциты](https://dhp.uz/fhir/core/ru/InventoryItem-example-inventory-item-rbc.html)). Остатки и движение запасов - это [UZ Core InventoryReport](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-inventoryreport.html): `countType` показывает, инвентаризация это (`snapshot`) или изменение (`difference`), `operationType` и `operationTypeReason` - что произошло, например поступление или списание, а каждый `inventoryListing` считает единицы в одном `location` с одним `itemStatus` (пример: [поступление на склад](https://dhp.uz/fhir/core/ru/InventoryReport-example-inventory-report-medication-receipt.html)).

### Запрос и поставка компонентов {#supplying}

Больница запрашивает компоненты через [UZ Core SupplyRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-supply-request.html). Именной запрос для конкретного пациента заполняет `deliverFor` и ссылается на назначение трансфузии через `basedOn`. Когда служба крови отправляет единицы, [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-supply-delivery.html) ссылается на запрос через `basedOn`, а каждый `suppliedItem.itemReference` указывает на доставленную единицу. Запросы, оформленные вместе, например эритроциты и плазма для одного пациента, имеют общий [групповой идентификатор](https://dhp.uz/fhir/core/ru/StructureDefinition-supplyrequest-group-identifier.html), а расширение [deliver from](https://dhp.uz/fhir/core/ru/StructureDefinition-supplydelivery-deliver-from.html) в поставке указывает, откуда отправлены единицы.

Примеры: [запрос на поставку](https://dhp.uz/fhir/core/ru/SupplyRequest-example-supply-request.html), групповые запросы [эритроцитов](https://dhp.uz/fhir/core/ru/SupplyRequest-example-supply-request-group-red-cells.html) и [плазмы](https://dhp.uz/fhir/core/ru/SupplyRequest-example-supply-request-group-plasma.html), [поставка компонентов крови](https://dhp.uz/fhir/core/ru/SupplyDelivery-example-blood-product-supply-delivery.html).

### Трансфузия реципиенту {#transfusing}

| Шаг | Ресурс | Ключевые элементы |
| :--- | :--- | :--- |
| Назначение трансфузии | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-servicerequest.html) | `subject` - реципиент |
| Трансфузионный и акушерский анамнез реципиента | [Blood Recipient History Observation](StructureDefinition-blood-recipient-history-observation.html) | `code` - вид анамнеза, `subject` - реципиент |
| Пробы на совместимость с единицей | [Blood Transfusion Assessment Observation](StructureDefinition-blood-transfusion-assessment-observation.html) | `focus` - единица, `derivedFrom` - анамнез и группа крови ABO |
| Выдача единицы реципиенту | [UZ Core BiologicallyDerivedProductDispense](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologicallyderivedproductdispense.html) | `product` - единица, `patient` - реципиент, `basedOn` - назначение, `status` - `issued` или `returned`, `whenHandedOver` - время выдачи из банка крови |
| Выполненная трансфузия | [UZ Core Procedure](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-procedure.html) | `basedOn` - назначение, `used` - единица, `supportingInfo` - выдача, `complication` - реакция из [осложнений трансфузии](https://dhp.uz/fhir/core/ru/ValueSet-blood-transfusion-complication-vs.html) |
| Реакция на трансфузию | [UZ Core AdverseEvent](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-adverse-event.html) | `suspectEntity.instanceReference` - единица |

Результаты проб на совместимость записываются в Blood Transfusion Assessment Observation, а не в `matchStatus` выдачи. Реакция фиксируется в `complication` процедуры трансфузии; AdverseEvent добавляется, когда о реакции сообщают для расследования. Примеры: [единица выдана](https://dhp.uz/fhir/core/ru/BiologicallyDerivedProductDispense-example-bdp-dispense-issued.html), [единица возвращена](https://dhp.uz/fhir/core/ru/BiologicallyDerivedProductDispense-example-bdp-dispense-returned.html).

Вместе с номером донации эти ссылки позволяют проследить единицу от донора, сдавшего кровь, до реципиента, получившего её.

### Поиск записей человека в службе крови {#queries}

Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](https://dhp.uz/fhir/core/ru/api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](https://dhp.uz/fhir/core/ru/api-access.html#endpoints); `|` отделяет систему от значения и должен быть URL-кодирован как `%7C`.

```
GET [base]/Observation?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs%7Cbsobs-0001-00001
GET [base]/Flag?patient=Patient/[id]&status=active
GET [base]/Flag?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs%7Cblood-donation-eligible
GET [base]/Observation?patient=Patient/[id]
GET [base]/ServiceRequest?patient=Patient/[id]&code-concept=http://loinc.org%7C1975-2
GET [base]/Procedure?patient=Patient/[id]
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7C[donation-number]
GET [base]/BiologicallyDerivedProductDispense?patient=Patient/[id]
GET [base]/AdverseEvent?subject=Patient/[id]
```

У BiologicallyDerivedProduct нет параметра поиска по донору, поэтому единицы донора находят по номеру донации.
