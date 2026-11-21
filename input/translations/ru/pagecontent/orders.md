> Перевод подготовлен автоматически; при расхождениях используйте английский оригинал.

Orders описывает обмен направлениями, основаниями государственного финансирования и задачами согласования госпитализации. Профили [Orders ServiceRequest](StructureDefinition-orders-servicerequest.html) и [Orders Referral Approval Task](StructureDefinition-orders-referral-approval-task.html) содержат правила интеграции отдельно от UZ Core.

### Рабочий процесс

1. Зафиксируйте диагноз и льготы пациента ресурсами UZ Core.
2. Создайте Orders ServiceRequest с целью направления, специальностью и запрашиваемой услугой.
3. При необходимости укажите основание лечения в `orderDetail.parameter[basis]` и критерий SBDL в `reason[sbdl]`.
4. Каждая задача согласования ссылается на направление через `basedOn` и `focus`; `partOf` связывает этапы.
5. Возврат на доработку, передачу комиссиям, выбор учреждения, госпитализацию и выписку отражайте в `businessStatus`, причину статуса — в `statusReason`.

### Представление данных и терминология

| Artifact | Use |
|---|---|
| [Orders ServiceRequest](StructureDefinition-orders-servicerequest.html) | Referral, specialty, treatment basis and SBDL |
| [Orders Referral Approval Task](StructureDefinition-orders-referral-approval-task.html) | Approval workflow |
| [Referral purpose](ValueSet-orders-service-request-referral-purpose-vs.html) | `category[referralPurpose]` |
| [Specialty](ValueSet-orders-service-request-specialty-vs.html) | `category[specialty]` |
| [Treatment basis](ValueSet-orders-service-request-basis-vs.html) | `orderDetail.parameter[basis].valueCodeableConcept` |
| [SBDL](ValueSet-orders-sbdl-vs.html) | `reason[sbdl]` |
| [Task business status](ValueSet-orders-task-business-status-vs.html) | `Task.businessStatus` |
| [Task status reason](ValueSet-orders-task-status-reason-vs.html) | `Task.statusReason` |
| [Funding resolution](ValueSet-orders-funding-resolution-vs.html) | `extension[fundingResolution]` |
| [Discharge sections](ValueSet-orders-discharge-summary-section-vs.html) | `Composition.section.code` |
| [Local specialty mapping](ConceptMap-orders-service-request-specialty-to-snomed-cm.html) | Legacy specialty codes → SNOMED CT |

Тип оплаты UZ Core сохраняется в `extension[paymentType]`. Постановления 5199 и 311 передаются как дополнительные правовые основания в [Orders funding resolution](StructureDefinition-orders-funding-resolution.html), в `extension[fundingResolution]`. Кодовая система UZ Core при этом не изменяется.

Диагноз МКБ-10 и критерий SBDL передаются отдельными повторениями `reason`. UZ Core 0.12.0 фиксирует систему каждого кодирования внутри `reason[icd10]` как МКБ-10, поэтому SBDL внутри этого среза нарушал бы родительский профиль. Льготы оформляются UZ Core Socioeconomic Observation со ссылкой из `supportingInfo`.

OrdersReferralApprovalTask наследуется от FHIR Task: обязательный набор businessStatus в UZ Core 0.12.0 не содержит этапов Orders. Профиль сохраняет национальные роли, жизненный цикл и ограничения ссылок на пациента и организации, а businessStatus включает коды ядра и дополнительные коды Orders.

### Examples

[Hospitalization referral](ServiceRequest-example-orders-hospitalization-referral.html) · [Returned for revision](Task-example-orders-task-specialist-returned.html) · [Hospitalization and discharge](Task-example-orders-task-hospitalization.html) · [Benefit observation](Observation-example-orders-nodira-benefits.html) · [Discharge sections](Composition-example-orders-discharge-summary.html)

### Источник и перенос

Источник — PR UZ Core [#402](https://github.com/uzinfocom-org/digital-health-ig/pull/402), коммит `cc439937e85a91b2ec5c1d94a6676ef242a0b2ee`. PR [#468](https://github.com/uzinfocom-org/digital-health-ig/pull/468) удаляет эту функциональность интеграции из UZ Core. Имена и идентификаторы перенесённых артефактов имеют префикс Orders, канонические адреса используют пространство Integrations. Идентификаторы, базовые кодовые системы, типы оплаты и коды действий задач UZ Core переиспользуются.

Большие справочники SBDL и оснований лечения хранятся готовыми JSON в `input/vocabulary/`, исходники FSH — в `input/manual-fsh/`. Сохранены коды, переводы, соответствия МКБ-10, уровни организаций и сроки действия. ConceptMap специальностей сохраняет исходные локальные коды; новые направления используют SNOMED CT при точном соответствии и локальные специальности в остальных случаях.
