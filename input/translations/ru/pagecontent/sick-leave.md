<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.sl-badge { display: inline-block; padding: 1px 10px; border-radius: 999px; border: 1px solid; font-size: 0.85em; font-weight: 600; line-height: 1.6; white-space: nowrap; }
.sl-opened { background: #DCFCE7; color: #166534; border-color: #16A34A; }
.sl-extended { background: #DBEAFE; color: #1E40AF; border-color: #2563EB; }
.sl-closed { background: #E5E7EB; color: #1F2937; border-color: #4B5563; }
.sl-cancelled { background: #FEE2E2; color: #991B1B; border-color: #DC2626; }
.sl-grid { display: grid; grid-template-columns: minmax(0, 1fr) minmax(0, 1fr); gap: 12px; margin: 8px 0 20px; }
.sl-grid pre { max-height: 460px; overflow: auto; font-size: 12px; margin: 0 0 8px; }
.sl-label { font-weight: 600; font-size: 0.85em; margin: 0 0 4px; color: #4B5563; }
.sl-label.sl-fhir { color: #2563EB; }
@media (max-width: 900px) { .sl-grid { grid-template-columns: minmax(0, 1fr); } }
.sl-check ul { list-style: none; padding-left: 0; }
.sl-check li { padding-left: 1.8em; text-indent: -1.8em; margin-bottom: 6px; }
.sl-check li::before { content: "\2610"; color: #2563EB; font-size: 1.15em; margin-right: 0.6em; }
.sl-callout { border-left: 4px solid; border-radius: 6px; padding: 12px 16px; margin: 16px 0; }
.sl-callout > :last-child { margin-bottom: 0; }
.sl-info { background: #EFF6FF; border-color: #2563EB; }
.sl-alert { background: #FFFBEB; border-color: #D97706; }
.sl-callout-title { font-weight: 700; margin-bottom: 6px; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

На этой странице описано, как листок нетрудоспособности (ЛН) из сервиса больничных листов DHP представляется в виде ресурсов FHIR.

<div class="sl-callout sl-info" markdown="1">
<div class="sl-callout-title">Построено на API больничных листов DHP v3</div>

Соответствие на этой странице построено по версии 3 API больничных листов DHP, включая изменения от 18 августа 2026 года (полный адрес организации и названия предварительного и итогового диагнозов). Каждое поле в столбцах «API больничных листов» ниже - это поле объекта больничного листа, который возвращает этот API; структура этого объекта с примером описана в [wiki DHP](https://wiki.dhp.uz/s/guide/doc/sickleave-JaIdi0iUkW).
</div>

<div class="sl-callout sl-alert" id="auto-close" markdown="1">
<div class="sl-callout-title">У закрытого листка может не быть одного из диагнозов</div>

Врачи не всегда закрывают больничные листы, и часть из них оставалась бы открытой бессрочно. Чтобы такого не было, незакрытый больничный лист автоматически закрывается через 5 дней после окончания последнего периода нетрудоспособности. У листка, закрытого таким образом, может быть только предварительный диагноз без итогового - или наоборот, только итоговый без предварительного. Потребители не должны рассчитывать на то, что закрытый (`closed`) листок ссылается на оба [диагноза](#recording-the-diagnoses-condition).
</div>

### Обзор

Листок нетрудоспособности фиксирует период временной нетрудоспособности пациента: на каком основании он выдан, диагноз, периоды нетрудоспособности, кто его выдал и жизненный цикл случая. Сервис больничных листов оформляет пять видов документов с одинаковой структурой: сам листок нетрудоспособности, справки о нетрудоспособности по уходу за больным ребёнком (138/х), для лиц, получающих образование (095/х), и по состоянию алкогольного опьянения (094/х), а также направление в МСЭК. Данные добавляются в DHP в виде отдельных, атомарных FHIR-ресурсов. Ресурсы соответствуют профилям листка нетрудоспособности, ссылки на которые приведены в каждом разделе, а в остальных случаях - профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Тип документа, статус и причина специфичны для узбекского листка и не имеют стандартных эквивалентов, поэтому они используют локальные коды, хранящиеся в собственной CodeSystem с узбекскими, русскими и английскими обозначениями; коды типа документа и статуса совпадают с кодами, которые передаёт API больничных листов. Там, где существует стандартное понятие, оно используется напрямую: SNOMED CT для кода наблюдения, ICD-10 для диагнозов и HL7 `condition-ver-status`, чтобы отличать предварительный диагноз от итогового. В каждом разделе ниже приведены управляющий профиль, пример ресурса и таблица соответствия каждого поля API больничных листов месту его хранения.

Типичная запись связывает воедино: [случай нетрудоспособности](#opening-a-sick-leave-case-careplan), который и является самим листком, его [диагнозы](#recording-the-diagnoses-condition), [дополнительные атрибуты](#recording-additional-attributes-observation), зафиксированные по нему, и - если документ его предусматривает - [связанное лицо](#family-care-the-person-cared-for-relatedperson). Случай указывает [пациента](#supporting-resources), которому выдан листок, медицинских работников, которые его выдали и утвердили, и выдавшую его организацию.

<div>{% include sick-leave-model-ru.svg %}</div><br clear="all"/>

| Сценарий | Пример |
| :--- | :--- |
| Листок по заболеванию, один раз продлён и закрыт; предварительный диагноз уточнён | [sick-leave-extended](CarePlan-sick-leave-extended.html) |
| Открытый листок по уходу за больным членом семьи, оформленный не по месту жительства | [sick-leave-family-care](CarePlan-sick-leave-family-care.html) |
| Справка о нетрудоспособности для учащегося (095/х), отменена | [sick-leave-cancelled](CarePlan-sick-leave-cancelled.html) |

### Поток данных {#data-flow}

Сервис больничных листов записывает ресурсы в DHP в порядке их ссылок: ресурс записывается после ресурсов, на которые он ссылается. Patient, Practitioner и Organization уже есть в DHP, и на них ссылаются как есть. Каждое изменение листка - новая версия того же CarePlan.

<div>{% include sick-leave-flow-ru.svg %}</div><br clear="all"/>

### Открытие случая нетрудоспособности (CarePlan) {#opening-a-sick-leave-case-careplan}

Сам листок. CarePlan представляет случай нетрудоспособности на протяжении всего его жизненного цикла; `addresses` содержит причину нетрудоспособности и ссылки на диагнозы, а статус жизненного цикла отслеживается в расширении workflow-status.

Профиль: [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html)

Пример: [sick-leave-extended](CarePlan-sick-leave-extended.html)

| Записываемая информация | API больничных листов | Справочник | Пример | Где хранится |
| :--- | :--- | :--- | :--- | :--- |
| Идентификатор в сервисе больничных листов | `id` | - | `550e8400-e29b-41d4-a716-446655440000` | `id` |
| Номер больничного листа (обязателен) | `code` | - | `02QR008593426` | `identifier[code]`, система [`https://dhp.uz/fhir/core/sid/doc/uz/sickleave`](NamingSystem-sick-leave-number-system.html) |
| Тип документа | `type` | [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html) | `sick-leave-category-cs#SL` (Листок нетрудоспособности) | `category` |
| Причина | `reason` | [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html) | `care-plan-reason-cs#DIS` (Заболевание) | `addresses[reason]` |
| Предварительный и итоговый диагноз | `diagnosis` | - | ссылка на [SickLeaveCondition](#recording-the-diagnoses-condition) | `addresses[diagnosis]` |
| Статус жизненного цикла | `status` | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | `care-plan-status-local-cs#closed` | `extension[workflowStatus]` + базовый `status` (оба заполняются всегда) |
| История статусов | `statuses[]` | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | по одной записи на статус, с его периодом | `extension[statusHistory]` |
| Периоды нетрудоспособности | `dates[]` | - | с `2026-08-04` по `2026-08-06` | `extension[incapacityPeriod]`, по одному на период |
| Общий период | `dates[]` | - | с `2026-08-04` по `2026-08-12` | `period`, от начала первого до конца последнего периода |
| Дата создания | `createdAt` | - | `2026-08-04T09:15:32+05:00` | `created` |
| Дата последнего изменения | `updatedAt` | - | `2026-08-12T16:42:11+05:00` | `meta.lastUpdated` |
| Версия | `versionId` | - | `3` | `meta.versionId` |
| Пациент | `patient` | - | ссылка на [Patient](#supporting-resources) | `subject` |
| Выдавший врач | `practitioner` | - | ссылка на [Practitioner](#supporting-resources) | `contributor` |
| Главный врач | `headPractitioner` | - | ссылка на [Practitioner](#supporting-resources) | `extension[headPractitioner]` |
| Выдавшая организация | `organization` | - | ссылка на [Organization](#supporting-resources) | `custodian` |
| Связанное лицо | `relatedPerson` | - | ссылка на [RelatedPerson](#family-care-the-person-cared-for-relatedperson) | `extension[relatedPerson]` |

Коды `type` API больничных листов являются кодами [SickLeaveCategoryCS](CodeSystem-sick-leave-category-cs.html):

| `type` | Документ |
| :--- | :--- |
| `SL` | Листок нетрудоспособности |
| `CC` | Справка о нетрудоспособности по уходу за больным ребёнком (138/х) |
| `ED` | Справка о нетрудоспособности для лиц, получающих образование (095/х) |
| `IT` | Справка о нетрудоспособности по состоянию алкогольного опьянения (094/х) |
| `MSEC` | Направление в МСЭК |

Коды `reason` API больничных листов являются кодами [CarePlanReasonCS](CodeSystem-care-plan-reason-cs.html):

| `reason` | Причина |
| :--- | :--- |
| `DIS` | Заболевание |
| `INJ` | Травма с временной утратой трудоспособности |
| `MAT` | Отпуск по беременности и родам |
| `FMC` | Уход за больным членом семьи |
| `PRO` | Протезирование в условиях стационара протезно-ортопедического предприятия |
| `SAN` | Санаторно-курортное или амбулаторно-курортное лечение |
| `QRT` | Карантин |
| `NBC` | Уход за новорождённым |

`extension[headPractitioner]` и `extension[relatedPerson]` заполняются, только если они есть у больничного листа.

#### Запись статуса жизненного цикла {#recording-the-lifecycle-status}

Каждая запись несёт сразу два статуса: обобщённый стандартный `CarePlan.status`, который требует FHIR, и собственный статус больничного листа в `extension[workflowStatus]`, обязательный в этом профиле (`1..1`). `extension[workflowStatus]` содержит `status`, который передаёт API больничных листов, в виде кода из [CarePlanStatusVS](ValueSet-care-plan-status-vs.html); каждый из них соответствует ровно одному стандартному `status`, поэтому потребитель, игнорирующий расширение, всё равно получает корректное обобщённое состояние.

| `status` | `extension[workflowStatus]` | `CarePlan.status` |
| :--- | :--- | :--- |
| <span class="sl-badge sl-opened">opened</span> | `care-plan-status-local-cs#opened` | `active` |
| <span class="sl-badge sl-extended">extended</span> | `care-plan-status-local-cs#extended` | `active` |
| <span class="sl-badge sl-closed">closed</span> | `care-plan-status-local-cs#closed` | `completed` |
| <span class="sl-badge sl-cancelled">cancelled</span> | `care-plan-status-local-cs#cancelled` | `revoked` |

<div>{% include sick-leave-lifecycle-ru.svg %}</div><br clear="all"/>

Жизненный цикл листка: из `opened` он продлевается, закрывается или отменяется; продлевать можно несколько раз.

Каждый элемент `statuses` становится одной записью `extension[statusHistory]`, где `statuses[].type` хранится в `extension[status]`, а его `start` и `end` - в `extension[period]`, так что вся хронология сохраняется (opened → extended → closed). Текущий статус - последняя запись истории.

`extension[statusHistory]` и `extension[incapacityPeriod]` - разные вещи: история фиксирует, когда листок менял состояние, а `extension[incapacityPeriod]` - когда пациент был нетрудоспособен. У листка, продлённого несколько раз, по одному периоду нетрудоспособности на каждое продление, а закрытый листок сохраняет свои периоды, как в [примере с продлением](CarePlan-sick-leave-extended.html).

<div>{% include sick-leave-timeline-ru.svg %}</div><br clear="all"/>

[Пример с продлением](CarePlan-sick-leave-extended.html) на временной шкале: история статусов и периоды нетрудоспособности не обязаны совпадать, общий `period` охватывает все периоды.

### Запись диагнозов (Condition) {#recording-the-diagnoses-condition}

Предварительный и итоговый диагнозы - каждый отдельный Condition, на который ссылается `addresses[diagnosis]`. Их различает статус верификации: `provisional` для предварительного диагноза и `confirmed` для итогового. Если итоговый диагноз совпадает с предварительным, достаточно одного Condition со статусом `confirmed`.

Профиль: [SickLeaveCondition](StructureDefinition-sick-leave-condition.html)

Примеры: [предварительный](Condition-sick-leave-extended-diagnosis-preliminary.html) и [итоговый](Condition-sick-leave-extended-diagnosis-final.html) диагноз [продлённого листка](CarePlan-sick-leave-extended.html)

| Записываемая информация | API больничных листов | Справочник | Пример | Где хранится |
| :--- | :--- | :--- | :--- | :--- |
| Предварительный диагноз | `diagnosis.preliminary` | [ICD10VS](ValueSet-icd-10-vs.html) | `ICD-10#J06.9` | `code.coding` Condition с `verificationStatus` = `provisional` |
| Название предварительного диагноза | `diagnosis.preliminaryDisplay` | - | `Acute upper respiratory infection, unspecified` | `code.text` того же Condition |
| Итоговый диагноз | `diagnosis.final` | [ICD10VS](ValueSet-icd-10-vs.html) | `ICD-10#J18.9` | `code.coding` Condition с `verificationStatus` = `confirmed` |
| Название итогового диагноза | `diagnosis.finalDisplay` | - | `Pneumonia, unspecified` | `code.text` того же Condition |
| Пациент | `patient` | - | ссылка на [Patient](#supporting-resources) | `subject` |

`clinicalStatus` обязателен в FHIR: `active`, пока листок открыт, `resolved` после его закрытия.

У закрытого листка не всегда есть оба диагноза: у листка, [закрытого автоматически](#auto-close), может быть только предварительный или только итоговый, поэтому `addresses[diagnosis]` может содержать любой из них по отдельности.

### Запись дополнительных атрибутов (Observation) {#recording-additional-attributes-observation}

Атрибуты больничного листа сверх самого случая фиксируются в одном Observation, который `basedOn` на CarePlan. Каждый атрибут - один `component`, определяемый своим кодом из [SickLeaveComponentVS](ValueSet-sick-leave-component-vs.html).

Профиль: [SickLeaveObservation](StructureDefinition-sick-leave-observation.html)

Пример: [sick-leave-family-care-observation](Observation-sick-leave-family-care-observation.html)

| Записываемая информация | API больничных листов | Справочник | Пример | Где хранится |
| :--- | :--- | :--- | :--- | :--- |
| Код наблюдения | - | - | `SNOMED CT#224459001` (On sick leave from work) | `code` |
| Случай, к которому относится | - | - | ссылка на [SickLeaveCarePlan](#opening-a-sick-leave-case-careplan) | `basedOn` |
| Пациент | `patient` | - | ссылка на [Patient](#supporting-resources) | `subject` |
| Городской житель | `patient.isUrban` | - | `true` (boolean): городской, `false`: сельский | `component[urbanResident]` |
| Оформлен не по месту жительства | `isNonLocal` | - | `true` (boolean) | `component[nonLocal]` |
| Эпидемиологический анамнез | `epidemiologicalHistory` | - | `No contact with infectious patients in the last 21 days` (string) | `component[epidemiologicalHistory]` |

Компоненты необязательны - заполняйте только те, для которых у больничного листа есть значение.

### Связанное лицо (RelatedPerson) {#family-care-the-person-cared-for-relatedperson}

Если документ касается лица, связанного с пациентом - законного представителя, опекуна, родителя, ребёнка, другого члена семьи или другого лица, сведения о котором нужны для оформления документа, - это лицо записывается как RelatedPerson, на которое ссылается `extension[relatedPerson]` случая. Наличие связанного лица зависит от типа документа и причины нетрудоспособности.

Профиль: [SickLeaveRelatedPerson](StructureDefinition-sick-leave-related-person.html)

Пример: [sick-leave-related-person-mother](RelatedPerson-sick-leave-related-person-mother.html), на которое ссылается случай ухода за членом семьи [sick-leave-family-care](CarePlan-sick-leave-family-care.html)

| Записываемая информация | Справочник | Пример | Где хранится |
| :--- | :--- | :--- | :--- |
| ФИО | - | `Mother Patient` | `name` |
| Пол | [administrative-gender](https://hl7.org/fhir/R5/valueset-administrative-gender.html) | `female` | `gender` |
| Уточнение пола (при `other`) | [gender-other-vs](https://dhp.uz/fhir/core/ValueSet-gender-other-vs.html) | - | `gender.extension[otherGender]` |
| Дата рождения | - | `1962-03-15` | `birthDate` |
| Пациент | - | ссылка на [Patient](#supporting-resources) | `patient` |

`gender.extension[otherGender]` используется только для уточнения административного пола, когда `gender` равен `other`.

### Вспомогательные ресурсы {#supporting-resources}

На эти ресурсы ссылаются записи выше.

| API больничных листов | Ресурс | Пример | Соответствие |
| :--- | :--- | :--- | :--- |
| `patient` | [UZ Core Patient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) | [sick-leave-patient](Patient-sick-leave-patient.html) | `identifierType` `ni` вместе с `identifierValue` - это `identifier[nationalId]`; `phone` - `telecom`; `lastName` - `name.family`, `firstName` и `middleName` - `name.given`; `birthdate` и `gender` - `birthDate` и `gender` |
| `practitioner` | [UZ Core Practitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | [sick-leave-practitioner](Practitioner-sick-leave-practitioner.html) | идентификатор и ФИО - как у пациента |
| `headPractitioner` | [UZ Core Practitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | [sick-leave-head-practitioner](Practitioner-sick-leave-head-practitioner.html) | как у `practitioner` |
| `organization` | [UZ Core Organization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | [sick-leave-organization](Organization-sick-leave-organization.html) | `identifierType` `tax` вместе с `identifierValue` - это `identifier[taxId]`; `name` - `name`; `state`, `district`, `city` и `line` - `contact.address.state`, `.district`, `.city` и `.line` |

### От ответа API к FHIR {#from-the-api-response-to-fhir}

Ответ API для [продлённого листка](CarePlan-sick-leave-extended.html), разбитый на группы. Слева - фрагмент ответа API больничных листов, справа - элементы FHIR, в которые попадают те же данные. Фрагменты сокращены; полные ресурсы - на страницах примеров и в [таблицах соответствия](#opening-a-sick-leave-case-careplan) выше.

#### 1. Идентификация и тип {#api-identity}

`id` становится id ресурса, `code` - обязательным номером листка, `type` - `category`.

<div class="sl-grid"><div><p class="sl-label">API больничных листов</p><pre><code class="language-json">{
  &quot;id&quot;: &quot;550e8400-e29b-41d4-a716-446655440000&quot;,
  &quot;code&quot;: &quot;02QR008593426&quot;,
  &quot;type&quot;: &quot;SL&quot;
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;CarePlan&quot;,
  &quot;id&quot;: &quot;550e8400-e29b-41d4-a716-446655440000&quot;,
  &quot;identifier&quot;: [
    {
      &quot;system&quot;: &quot;https://dhp.uz/fhir/core/sid/doc/uz/sickleave&quot;,
      &quot;value&quot;: &quot;02QR008593426&quot;
    }
  ],
  &quot;intent&quot;: &quot;plan&quot;,
  &quot;category&quot;: [
    {
      &quot;coding&quot;: [
        {
          &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs&quot;,
          &quot;code&quot;: &quot;SL&quot;
        }
      ]
    }
  ]
}</code></pre></div></div>

#### 2. Статус {#api-status}

`status` попадает в `extension[workflowStatus]` и определяет стандартный `status`; каждый элемент `statuses` - одна запись `extension[statusHistory]`.

<div class="sl-grid"><div><p class="sl-label">API больничных листов</p><pre><code class="language-json">{
  &quot;status&quot;: &quot;closed&quot;,
  &quot;statuses&quot;: [
    {
      &quot;type&quot;: &quot;opened&quot;,
      &quot;start&quot;: &quot;2026-08-04&quot;,
      &quot;end&quot;: &quot;2026-08-06&quot;
    },
    {
      &quot;type&quot;: &quot;extended&quot;,
      &quot;start&quot;: &quot;2026-08-07&quot;,
      &quot;end&quot;: &quot;2026-08-12&quot;
    },
    {
      &quot;type&quot;: &quot;closed&quot;,
      &quot;start&quot;: &quot;2026-08-12&quot;,
      &quot;end&quot;: &quot;2026-08-12&quot;
    }
  ]
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;status&quot;: &quot;completed&quot;,
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status&quot;,
      &quot;valueCode&quot;: &quot;closed&quot;
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history&quot;,
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;status&quot;,
          &quot;valueCode&quot;: &quot;opened&quot;
        },
        {
          &quot;url&quot;: &quot;period&quot;,
          &quot;valuePeriod&quot;: {
            &quot;start&quot;: &quot;2026-08-04&quot;,
            &quot;end&quot;: &quot;2026-08-06&quot;
          }
        }
      ]
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history&quot;,
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;status&quot;,
          &quot;valueCode&quot;: &quot;extended&quot;
        },
        {
          &quot;url&quot;: &quot;period&quot;,
          &quot;valuePeriod&quot;: {
            &quot;start&quot;: &quot;2026-08-07&quot;,
            &quot;end&quot;: &quot;2026-08-12&quot;
          }
        }
      ]
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history&quot;,
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;status&quot;,
          &quot;valueCode&quot;: &quot;closed&quot;
        },
        {
          &quot;url&quot;: &quot;period&quot;,
          &quot;valuePeriod&quot;: {
            &quot;start&quot;: &quot;2026-08-12&quot;,
            &quot;end&quot;: &quot;2026-08-12&quot;
          }
        }
      ]
    }
  ]
}</code></pre></div></div>

#### 3. Даты и версия {#api-dates}

Каждый элемент `dates` - один `extension[incapacityPeriod]`, а `period` охватывает их все; `versionId`, `createdAt` и `updatedAt` попадают в `meta` и `created`.

<div class="sl-grid"><div><p class="sl-label">API больничных листов</p><pre><code class="language-json">{
  &quot;dates&quot;: [
    {
      &quot;start&quot;: &quot;2026-08-04&quot;,
      &quot;end&quot;: &quot;2026-08-06&quot;
    },
    {
      &quot;start&quot;: &quot;2026-08-07&quot;,
      &quot;end&quot;: &quot;2026-08-12&quot;
    }
  ],
  &quot;versionId&quot;: 3,
  &quot;createdAt&quot;: &quot;2026-08-04T09:15:32+05:00&quot;,
  &quot;updatedAt&quot;: &quot;2026-08-12T16:42:11+05:00&quot;
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;meta&quot;: {
    &quot;versionId&quot;: &quot;3&quot;,
    &quot;lastUpdated&quot;: &quot;2026-08-12T16:42:11+05:00&quot;
  },
  &quot;created&quot;: &quot;2026-08-04T09:15:32+05:00&quot;,
  &quot;period&quot;: {
    &quot;start&quot;: &quot;2026-08-04&quot;,
    &quot;end&quot;: &quot;2026-08-12&quot;
  },
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period&quot;,
      &quot;valuePeriod&quot;: {
        &quot;start&quot;: &quot;2026-08-04&quot;,
        &quot;end&quot;: &quot;2026-08-06&quot;
      }
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period&quot;,
      &quot;valuePeriod&quot;: {
        &quot;start&quot;: &quot;2026-08-07&quot;,
        &quot;end&quot;: &quot;2026-08-12&quot;
      }
    }
  ]
}</code></pre></div></div>

#### 4. Причина и диагнозы {#api-diagnosis}

`reason` - это `addresses[reason]`; каждый диагноз - отдельный Condition, различаемый по `verificationStatus`, на который ссылается `addresses[diagnosis]`.

<div class="sl-grid"><div><p class="sl-label">API больничных листов</p><pre><code class="language-json">{
  &quot;reason&quot;: &quot;DIS&quot;,
  &quot;diagnosis&quot;: {
    &quot;preliminary&quot;: &quot;J06.9&quot;,
    &quot;preliminaryDisplay&quot;: &quot;Acute upper respiratory infection, unspecified&quot;,
    &quot;final&quot;: &quot;J18.9&quot;,
    &quot;finalDisplay&quot;: &quot;Pneumonia, unspecified&quot;,
    &quot;reason&quot;: null
  }
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;addresses&quot;: [
    {
      &quot;concept&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs&quot;,
            &quot;code&quot;: &quot;DIS&quot;
          }
        ]
      }
    },
    {
      &quot;reference&quot;: {
        &quot;reference&quot;: &quot;Condition/sick-leave-extended-diagnosis-preliminary&quot;
      }
    },
    {
      &quot;reference&quot;: {
        &quot;reference&quot;: &quot;Condition/sick-leave-extended-diagnosis-final&quot;
      }
    }
  ]
}</code></pre><p class="sl-label sl-fhir">Condition</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;Condition&quot;,
  &quot;clinicalStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-clinical&quot;,
        &quot;code&quot;: &quot;resolved&quot;
      }
    ]
  },
  &quot;verificationStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-ver-status&quot;,
        &quot;code&quot;: &quot;provisional&quot;
      }
    ]
  },
  &quot;code&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://hl7.org/fhir/sid/icd-10&quot;,
        &quot;code&quot;: &quot;J06.9&quot;
      }
    ],
    &quot;text&quot;: &quot;Acute upper respiratory infection, unspecified&quot;
  },
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  }
}</code></pre><p class="sl-label sl-fhir">Condition</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;Condition&quot;,
  &quot;clinicalStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-clinical&quot;,
        &quot;code&quot;: &quot;resolved&quot;
      }
    ]
  },
  &quot;verificationStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-ver-status&quot;,
        &quot;code&quot;: &quot;confirmed&quot;
      }
    ]
  },
  &quot;code&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://hl7.org/fhir/sid/icd-10&quot;,
        &quot;code&quot;: &quot;J18.9&quot;
      }
    ],
    &quot;text&quot;: &quot;Pneumonia, unspecified&quot;
  },
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  }
}</code></pre></div></div>

#### 5. Дополнительные атрибуты {#api-attributes}

`patient.isUrban` и `isNonLocal` становятся компонентами Observation; `epidemiologicalHistory` здесь `null`, поэтому его компонент не передаётся.

<div class="sl-grid"><div><p class="sl-label">API больничных листов</p><pre><code class="language-json">{
  &quot;isNonLocal&quot;: false,
  &quot;epidemiologicalHistory&quot;: null,
  &quot;patient&quot;: {
    &quot;isUrban&quot;: true
  }
}</code></pre></div><div><p class="sl-label sl-fhir">Observation</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;Observation&quot;,
  &quot;status&quot;: &quot;final&quot;,
  &quot;basedOn&quot;: [
    {
      &quot;reference&quot;: &quot;CarePlan/550e8400-e29b-41d4-a716-446655440000&quot;
    }
  ],
  &quot;code&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;224459001&quot;
      }
    ]
  },
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  },
  &quot;component&quot;: [
    {
      &quot;code&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs&quot;,
            &quot;code&quot;: &quot;urban-resident&quot;
          }
        ]
      },
      &quot;valueBoolean&quot;: true
    },
    {
      &quot;code&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs&quot;,
            &quot;code&quot;: &quot;non-local&quot;
          }
        ]
      },
      &quot;valueBoolean&quot;: false
    }
  ]
}</code></pre></div></div>

#### 6. Люди и организация {#api-people}

Пациент, медицинские работники и организация - ссылки на ресурсы в DHP, найденные по их идентификаторам; `relatedPerson` равен `null`, поэтому `extension[relatedPerson]` нет.

<div class="sl-grid"><div><p class="sl-label">API больничных листов</p><pre><code class="language-json">{
  &quot;patient&quot;: {
    &quot;identifierType&quot;: &quot;ni&quot;,
    &quot;identifierValue&quot;: &quot;12345678901112&quot;,
    &quot;firstName&quot;: &quot;TEST&quot;,
    &quot;lastName&quot;: &quot;PATIENT&quot;,
    &quot;middleName&quot;: null
  },
  &quot;practitioner&quot;: {
    &quot;identifierType&quot;: &quot;ni&quot;,
    &quot;identifierValue&quot;: &quot;12345678901113&quot;,
    &quot;firstName&quot;: &quot;TEST&quot;,
    &quot;lastName&quot;: &quot;DOCTOR&quot;,
    &quot;middleName&quot;: null
  },
  &quot;headPractitioner&quot;: {
    &quot;identifierType&quot;: &quot;ni&quot;,
    &quot;identifierValue&quot;: &quot;12345678901114&quot;,
    &quot;firstName&quot;: &quot;TEST&quot;,
    &quot;lastName&quot;: &quot;HEADDOCTOR&quot;,
    &quot;middleName&quot;: null
  },
  &quot;organization&quot;: {
    &quot;identifierType&quot;: &quot;tax&quot;,
    &quot;identifierValue&quot;: &quot;1234556&quot;,
    &quot;name&quot;: &quot;Test medical organization&quot;,
    &quot;state&quot;: &quot;1726&quot;
  },
  &quot;relatedPerson&quot;: null
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  },
  &quot;contributor&quot;: [
    {
      &quot;reference&quot;: &quot;Practitioner/sick-leave-practitioner&quot;
    }
  ],
  &quot;custodian&quot;: {
    &quot;reference&quot;: &quot;Organization/sick-leave-organization&quot;
  },
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-head-practitioner&quot;,
      &quot;valueReference&quot;: {
        &quot;reference&quot;: &quot;Practitioner/sick-leave-head-practitioner&quot;
      }
    }
  ]
}</code></pre></div></div>

### Один листок, три версии {#one-sick-leave-three-versions}

Сервис больничных листов при каждом изменении передаёт листок целиком со следующим `versionId`. В FHIR каждое изменение - новая версия того же CarePlan, записанная целиком (`PUT CarePlan/{id}`), поэтому `meta.versionId` растёт вместе с `versionId` из API. Ниже - [пример с продлением](CarePlan-sick-leave-extended.html) после каждого шага; изменения между версиями показаны в виде diff.

#### <span class="sl-badge sl-opened">opened</span> Версия 1 - открыт 4 августа {#version-1}

Врач открывает листок на три дня с предварительным диагнозом. В истории статусов одна запись без окончания, период нетрудоспособности один.

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "versionId": "1",
    "lastUpdated": "2026-08-04T09:15:32+05:00",
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
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "opened"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-04"
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
  "period": {
    "start": "2026-08-04",
    "end": "2026-08-06"
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
    }
  ]
}
```

#### <span class="sl-badge sl-extended">extended</span> Версия 2 - продлён 7 августа {#version-2}

Листок продлевается до 12 августа. Запись `opened` получает окончание, добавляются запись `extended` и второй период нетрудоспособности, сдвигается `period.end`.

```diff
@@ -2,6 +2,6 @@
   "resourceType": "CarePlan",
   "meta": {
-    "versionId": "1",
-    "lastUpdated": "2026-08-04T09:15:32+05:00",
+    "versionId": "2",
+    "lastUpdated": "2026-08-07T10:02:45+05:00",
     "profile": [
       "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
@@ -11,5 +11,5 @@
     {
       "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
-      "valueCode": "opened"
+      "valueCode": "extended"
     },
     {
@@ -23,5 +23,21 @@
           "url": "period",
           "valuePeriod": {
-            "start": "2026-08-04"
+            "start": "2026-08-04",
+            "end": "2026-08-06"
+          }
+        }
+      ]
+    },
+    {
+      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
+      "extension": [
+        {
+          "url": "status",
+          "valueCode": "extended"
+        },
+        {
+          "url": "period",
+          "valuePeriod": {
+            "start": "2026-08-07"
           }
         }
@@ -33,4 +49,11 @@
         "start": "2026-08-04",
         "end": "2026-08-06"
+      }
+    },
+    {
+      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period",
+      "valuePeriod": {
+        "start": "2026-08-07",
+        "end": "2026-08-12"
       }
     },
@@ -65,5 +88,5 @@
   "period": {
     "start": "2026-08-04",
-    "end": "2026-08-06"
+    "end": "2026-08-12"
   },
   "created": "2026-08-04T09:15:32+05:00",
```

#### <span class="sl-badge sl-closed">closed</span> Версия 3 - закрыт 12 августа {#version-3}

Листок закрывается: `status` становится `completed`, добавляется запись `closed` и ссылка на итоговый диагноз. Одновременно создаётся итоговый Condition, а предварительный становится `resolved`. Эта версия - пример [sick-leave-extended](CarePlan-sick-leave-extended.html).

```diff
@@ -2,6 +2,6 @@
   "resourceType": "CarePlan",
   "meta": {
-    "versionId": "2",
-    "lastUpdated": "2026-08-07T10:02:45+05:00",
+    "versionId": "3",
+    "lastUpdated": "2026-08-12T16:42:11+05:00",
     "profile": [
       "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
@@ -11,5 +11,5 @@
     {
       "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
-      "valueCode": "extended"
+      "valueCode": "closed"
     },
     {
@@ -39,5 +39,22 @@
           "url": "period",
           "valuePeriod": {
-            "start": "2026-08-07"
+            "start": "2026-08-07",
+            "end": "2026-08-12"
+          }
+        }
+      ]
+    },
+    {
+      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
+      "extension": [
+        {
+          "url": "status",
+          "valueCode": "closed"
+        },
+        {
+          "url": "period",
+          "valuePeriod": {
+            "start": "2026-08-12",
+            "end": "2026-08-12"
           }
         }
@@ -71,5 +88,5 @@
     }
   ],
-  "status": "active",
+  "status": "completed",
   "intent": "plan",
   "category": [
@@ -114,4 +131,9 @@
         "reference": "Condition/sick-leave-extended-diagnosis-preliminary"
       }
+    },
+    {
+      "reference": {
+        "reference": "Condition/sick-leave-extended-diagnosis-final"
+      }
     }
   ]
```

### Чеклист интегратора {#integrator-checklist}

Перед отправкой листков в DHP проверьте, что:

<div class="sl-check" markdown="1">

- Patient, Practitioner и Organization листка [есть в DHP](#supporting-resources), и CarePlan на них ссылается;
- у CarePlan есть номер листка в `identifier[code]` - [он обязателен](StructureDefinition-sick-leave-careplan.html);
- `category` - это `type` из API по [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html), а `addresses[reason]` - `reason` из API по [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html);
- `extension[workflowStatus]` и `status` [согласованы](#recording-the-lifecycle-status): `opened` и `extended` - это `active`, `closed` - `completed`, `cancelled` - `revoked`;
- каждый элемент `statuses` - запись `extension[statusHistory]`, каждый элемент `dates` - `extension[incapacityPeriod]`, а `period` охватывает все периоды;
- каждый диагноз - [SickLeaveCondition](#recording-the-diagnoses-condition): `provisional` для предварительного, `confirmed` для итогового, `resolved` после закрытия листка;
- [Observation](#recording-additional-attributes-observation) ссылается на CarePlan через `basedOn` и содержит только компоненты со значением;
- [RelatedPerson](#family-care-the-person-cared-for-relatedperson) записывается до ссылающегося на него CarePlan и только если он есть в документе;
- каждое изменение - [новая версия](#one-sick-leave-three-versions) всего CarePlan с `meta.versionId` и `meta.lastUpdated` из API;
- ресурсы проходят валидацию по профилям этого руководства, например [валидатором HL7 FHIR](https://confluence.hl7.org/spaces/FHIR/pages/35718580/Using+the+FHIR+Validator).

</div>

### Ответственная команда {#responsible-team}

Профили, расширения и терминологию листка нетрудоспособности сопровождает рабочая группа **DHP SickLeave**. Вопросы, ошибки в соответствии и запросы на изменения направляйте:

| Канал | Контакт |
| :--- | :--- |
| Рабочая группа | DHP SickLeave |
| Эл. почта | [rustam.sadikov17@gmail.com](mailto:rustam.sadikov17@gmail.com) |
| Telegram | [@roosyabuddy](https://t.me/roosyabuddy) |

Этот же контакт указан в `contact` каждого профиля, расширения, кодовой системы, набора значений и системы именования листка нетрудоспособности.
