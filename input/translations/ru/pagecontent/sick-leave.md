<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

На этой странице описано, как листок нетрудоспособности (ЛН) представляется в виде ресурсов FHIR.

### Обзор

Листок нетрудоспособности фиксирует период временной нетрудоспособности пациента: на каком основании он выдан, лежащий в основе диагноз, как долго он действует, кто его выдал и жизненный цикл случая. Данные поступают из системы электронных медицинских документов и добавляются в DHP в виде отдельных, атомарных FHIR-ресурсов. Ресурсы соответствуют профилям листка нетрудоспособности, ссылки на которые приведены в каждом разделе, а в остальных случаях - [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) или стандартным профилям FHIR.

Большинство понятий, которые несёт листок нетрудоспособности, специфичны для узбекского документа (основание, категория, городская принадлежность, место происшествия, степень родства, нарушения режима, заключения) и не имеют стандартных эквивалентов, поэтому они используют локальные коды, хранящиеся в собственной CodeSystem с узбекскими, русскими и английскими обозначениями. Там, где существует стандартное понятие, оно используется напрямую: SNOMED CT для кода наблюдения, ICD-10 для диагноза, HL7 `request-status` для статуса жизненного цикла и HL7 `v3-ActCode` для режима лечения - каждое доступно через справочник, привязанный к соответствующему полю. В каждом разделе ниже приведены управляющий профиль, конкретный пример ресурса и таблица со справочником и примером кода для каждого поля, содержащего код.

Типичная запись связывает воедино: [случай нетрудоспособности](#opening-a-sick-leave-case-careplan), который и является самим листком, [дополнительные атрибуты](#recording-additional-attributes-observation), зафиксированные по нему, и - для листков по уходу за членом семьи - [лицо, за которым осуществляется уход](#family-care-the-person-cared-for-relatedperson). Случай указывает [пациента](#supporting-resources), которому выдан листок, и медицинских работников, которые его выдали.

### Открытие случая нетрудоспособности (CarePlan) {#opening-a-sick-leave-case-careplan}

Сам листок. CarePlan представляет случай нетрудоспособности на протяжении всего его жизненного цикла; `addresses` содержит и основание для выдачи листка, и диагноз по ICD-10, а статус жизненного цикла отслеживается в расширении workflow-status.

Профиль: [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html)

Пример: [SickLeaveCarePlanExample](CarePlan-SickLeaveCarePlanExample.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Номер листка | - | `01ТШ 005591125` | `identifier[series]` |
| Категория | [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html) | `sick-leave-category-cs#mserv-0005-00001` (Лист нетрудоспособности) | `category` |
| Основание | [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html) | `care-plan-reason-cs#emdoc-0001-0001` (заболевание) | `addresses[reason]` |
| Диагноз (ICD-10) | [ICD10VS](ValueSet-icd-10-vs.html) | `ICD-10#J11.0` | `addresses[diagnosis]` |
| Статус жизненного цикла | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | `request-status#completed` (Закрыт) | `extension[workflowStatus]` + базовый `status` (заполняются оба) |
| История статусов | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | по одной записи на каждый прошедший статус с периодом его действия | `extension[statusHistory]` |
| Тип диагноза | [diagnosis-type-vs](https://dhp.uz/fhir/core/ValueSet-diagnosis-type-vs.html) | `diagnosis-type-cs#gencl-0001-00008` (заключительный диагноз) | `extension[diagnosisUse]` |
| Дата открытия | - | `2025-08-20` | `created` |
| Период действия | - | с `2025-08-20` по `2025-08-24` | `period` |
| Выдавший врач | - | ссылка на [Practitioner](#supporting-resources) | `contributor` |
| Заведующий отделением | - | ссылка на [Practitioner](#supporting-resources) | `custodian` |
| Пациент | - | ссылка на [Patient](#supporting-resources) | `subject` |
| Лицо, за которым осуществляется уход | - | ссылка на [RelatedPerson](#family-care-the-person-cared-for-relatedperson) | `extension[relatedPerson]` |

Основание и диагноз различаются по кодовой системе, из которой они берутся: основания - из `care-plan-reason-cs`, диагнозы - из ICD-10. `extension[relatedPerson]` и `extension[diagnosisUse]` заполняются только тогда, когда это уместно (уход за членом семьи и типизация диагноза соответственно). Как записывается статус жизненного цикла случая, описано далее.

#### Запись статуса жизненного цикла

Случай нетрудоспособности проходит несколько шагов рабочего процесса между открытием и закрытием. Каждая запись содержит оба статуса одновременно: укрупнённый стандартный `CarePlan.status`, которого требует FHIR - `draft`, `active`, `revoked`, `completed`, `entered-in-error` - и точный узбекский шаг рабочего процесса в `extension[workflowStatus]`, который в этом профиле обязателен (`1..1`) и поэтому всегда заполнен. Оба берут коды из [CarePlanStatusVS](ValueSet-care-plan-status-vs.html), который объединяет стандартные коды `request-status` с локальными шагами [care-plan-status-local-cs](CodeSystem-care-plan-status-local-cs.html). Когда текущий шаг является одним из пяти стандартных состояний, `workflowStatus` просто повторяет стандартный код; более детальные шаги (отправлен на утверждение, возвращён, направлен во ВТЭК, дополнен данными ВТЭК, продлён) не имеют стандартного эквивалента и присутствуют только в `workflowStatus`.

Каждый `workflowStatus` сопоставляется ровно с одним стандартным `status`, поэтому потребитель, игнорирующий расширение, всё равно прочитает корректное укрупнённое состояние. Полное сопоставление:

| Шаг рабочего процесса | `workflowStatus` | `status` (базовый) |
| :--- | :--- | :--- |
| Черновик | `request-status#draft` | `draft` |
| Открыт / действует | `request-status#active` | `active` |
| Деактивирован | `request-status#revoked` | `revoked` |
| Закрыт / завершён | `request-status#completed` | `completed` |
| Введено по ошибке | `request-status#entered-in-error` | `entered-in-error` |
| Отправлен на утверждение | `care-plan-status-local-cs#emdoc-0002-0004` | `draft` |
| Возвращён | `care-plan-status-local-cs#emdoc-0002-0005` | `draft` |
| Направлен во ВТЭК | `care-plan-status-local-cs#emdoc-0002-0002` | `draft` |
| Дополнен данными ВТЭК | `care-plan-status-local-cs#emdoc-0002-0003` | `draft` |
| Продлён | `care-plan-status-local-cs#emdoc-0002-0001` | `active` |

Локальные шаги сводятся к `draft`, пока листок ещё находится в работе (ожидает утверждения, возвращён на исправление, рассматривается ВТЭК); только *Продлён* сохраняет случай в состоянии `active`. Для пяти стандартных состояний `status` и `workflowStatus` содержат один и тот же код.

`CarePlan.status` и `extension[workflowStatus]` всегда содержат текущее состояние случая. При каждой смене статуса добавляется запись `extension[statusHistory]` для только что завершившегося шага - с его кодом и `period`, в течение которого он действовал - так что сохраняется вся хронология (отправлен на утверждение → открыт → закрыт). В [примере](CarePlan-SickLeaveCarePlanExample.html) эта история записана.

### Запись дополнительных атрибутов (Observation) {#recording-additional-attributes-observation}

Дополнительные атрибуты, которые несёт листок нетрудоспособности помимо самого случая - городская принадлежность, место происшествия, режим лечения, нарушения режима, заключения и так далее - фиксируются как единый Observation, который связан с CarePlan через `basedOn`. Каждый атрибут - это один `component`, определяемый своим кодом из [SickLeaveComponentVS](ValueSet-sick-leave-component-vs.html); тип значения различается в зависимости от компонента (кодируемый, логический или dateTime).

Профиль: [SickLeaveObservation](StructureDefinition-sick-leave-observation.html)

Пример: [sickleave-observation-01](Observation-sickleave-observation-01.html)

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Код наблюдения | - | `SNOMED CT#224459001` (On sick leave from work) | `code` |
| Случай, к которому относится | - | ссылка на [SickLeaveCarePlan](#opening-a-sick-leave-case-careplan) | `basedOn` |
| Городская принадлежность | [CarePlanBelongingVS](ValueSet-care-plan-belonging-vs.html) | `care-plan-belonging-cs#emdoc-0003-0001` (городская принадлежность) | `component[cityBelonging]` |
| Место происшествия | [PlaceOfIncidentVS](ValueSet-place-of-incident-vs.html) | `place-of-incident-cs#emdoc-0004-0002` (в повседневной жизни) | `component[placeOfIncident]` |
| Прибыл из другого города | - | `false` (boolean) | `component[fromAnotherCity]` |
| Инфекционный контакт | - | `false` (boolean) | `component[infectiousContact]` |
| Степень родства | [RelationDegreeVS](ValueSet-relation-degree-vs.html) | `relation-degree-cs#emdoc-0005-0001` (мать) | `component[kinshipDegree]` |
| Режим лечения | [EncounterClassVS](ValueSet-encounter-class-vs.html) | `v3-ActCode#AMB` (амбулаторный) | `component[regime]` |
| Нарушение режима | [RegimenViolationVS](ValueSet-regimen-violation-vs.html) | `regimen-violation-cs#emdoc-0007-0005` (другие нарушения) | `component[regimenViolation]` |
| Дата временного перевода на другую работу | - | `2025-08-25` (dateTime) | `component[tempJobTransfer]` |
| Заключения | [ConclusionsVS](ValueSet-conclusions-vs.html) | `conclusions-cs#emdoc-0008-0001` | `component[conclusions]` |
| Дата верификации | - | `2025-08-22` (dateTime) | `component[verificationDate]` |

Режим лечения использует HL7 `v3-ActCode` (`AMB`, `IMP`) там, где стандарт подходит, и добавляет локальные коды для режимов, которые стандарт не покрывает (например, санаторный); все остальные кодируемые компоненты используют локальный код, поскольку эти понятия специфичны для узбекского листка. Компоненты необязательны - заполняйте только те, которые записаны в листке.

### Уход за членом семьи: лицо, за которым осуществляется уход (RelatedPerson) {#family-care-the-person-cared-for-relatedperson}

Когда листок нетрудоспособности выдан для ухода за больным членом семьи (например, за ребёнком до 14 лет или ребёнком-инвалидом), лицо, за которым осуществляется уход, записывается как RelatedPerson, связанный со случаем через `extension[relatedPerson]`.

Профиль: [SickLeaveRelatedPerson](StructureDefinition-sick-leave-related-person.html)

Пример: [relatedperson-01](RelatedPerson-relatedperson-01.html), на который ссылается случай ухода за членом семьи [SickLeaveFamilyCareExample](CarePlan-SickLeaveFamilyCareExample.html) через `extension[relatedPerson]`

| Записываемая информация | Справочник | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| ФИО | - | `Boltayev Damir Ketmonovich` | `name` |
| Пол | [administrative-gender](https://hl7.org/fhir/R5/valueset-administrative-gender.html) | `male` | `gender` |
| Уточнение пола (когда `other`) | [gender-other-vs](https://dhp.uz/fhir/core/ValueSet-gender-other-vs.html) | - | `gender.extension[otherGender]` |
| Дата рождения | - | `1950-01-01` | `extension[birthdate]` |
| Пациент, за которым осуществляется уход | - | ссылка на [Patient](#supporting-resources) | `patient` |

`gender.extension[otherGender]` используется только для уточнения административного пола, когда `gender` имеет значение `other`.

### Вспомогательные ресурсы {#supporting-resources}

На эти ресурсы ссылаются записи выше. `subject` ограничен профилем UZ Core Patient; ссылки на медицинских работников не профилированы, а `contributor` / `custodian` также допускают PractitionerRole, Organization или CareTeam.

| Ресурс | Как указывается | Пример | Роль |
| :--- | :--- | :--- | :--- |
| Patient | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) | [example](Patient-example.html) | Лицо, которому выдан листок нетрудоспособности (`subject`) |
| Practitioner | `Practitioner` (или PractitionerRole / Organization / CareTeam) | [examplePractitioner](Practitioner-examplePractitioner.html) | Врач, выдавший листок (`contributor`) |
| Practitioner | `Practitioner` (или PractitionerRole / Organization / CareTeam) | [exampleCustodian](Practitioner-exampleCustodian.html) | Заведующий отделением, ответственный за листок (`custodian`) |
