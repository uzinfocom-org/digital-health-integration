# Интеграция Prescription

## Область применения

Настоящая интеграция описывает обмен электронными рецептами между DMED и Цифровой платформой здравоохранения в формате FHIR R5. Документ охватывает обычные и реимбурсируемые рецепты, согласование реимбурсации, отпуск лекарств аптекой, введение лекарств медицинским работником, аудит и отчётность.

Функциональная спецификация Prescription является источником истины для бизнес-поведения. FSH-профили настоящего руководства определяют нормативное FHIR-представление обмена. Если бизнес-статус DMED не имеет прямого аналога среди статусов FHIR, статус клинического ресурса и статус процесса DMED передаются раздельно.

Самостоятельный приём лекарства пациентом дома не регистрируется как `MedicationAdministration`. Этот ресурс создаётся, когда лекарство вводит медицинский работник, включая инъекции, инфузии и иные введения в рамках обращения или стационарного лечения.

## Участники

| Участник | Ответственность |
|---|---|
| Назначающий врач | Выбирает пациента и лекарство, указывает схему лечения, проверяет и подписывает рецепт. |
| Согласующий | Одобряет реимбурсируемый рецепт либо возвращает его на доработку. Обычно это заместитель главного врача или заведующий отделением. |
| Фармацевт | Находит доступный рецепт, проверяет разрешённые сведения и регистрирует фактический отпуск. |
| Медицинская сестра или иной исполнитель | Регистрирует введение лекарства пациенту. |
| Пациент | Получает назначенное лекарство. |
| Доверенное лицо | Получает лекарство за пациента. Родственник допускается для обоих типов рецептов; патронажная медсестра — для реимбурсируемого рецепта. |
| Фонд государственного медицинского страхования | Определяет диагнозы, лекарства, ограничения количества и длительности, бюджеты поликлиник и договорные аптеки программы реимбурсации. |
| DMED | Выполняет клинический процесс и отправляет проверенные FHIR-ресурсы. |
| DHP | Проверяет, хранит и предоставляет ресурсы согласно политике доступа. |

## Ресурсы соответствия

| Ресурс | Интеграционный профиль | Назначение |
|---|---|---|
| Medication | [PrescriptionMedication](StructureDefinition-prescription-medication.html) | Лекарство, выбранное из справочника DMED. |
| MedicationRequest | [PrescriptionMedicationRequest](StructureDefinition-prescription-medication-request.html) | Электронный рецепт и схема применения. |
| MedicationDispense | [PrescriptionMedicationDispense](StructureDefinition-prescription-medication-dispense.html) | Лекарство, фактически выданное аптекой. |
| MedicationAdministration | [PrescriptionMedicationAdministration](StructureDefinition-prescription-medication-administration.html) | Лекарство, введённое медицинским работником. |
| Provenance | [PrescriptionProvenance](StructureDefinition-prescription-provenance.html) | Подпись, авторство и завершённые действия процесса. |
| MeasureReport | [PrescriptionMeasureReport](StructureDefinition-prescription-measure-report.html) | Отчётность по назначению, исполнению и качеству. |
| AuditEvent | UZ Core AuditEvent | Аудит поиска, доступа, изменения, отмены и отпуска. |

Для Patient, Encounter, Practitioner, PractitionerRole, Organization, Location, Condition и RelatedPerson применяются соответствующие профили UZ Core. Повторно используется расширение Core `trustee`; отдельное дублирующее расширение в Integration IG не создаётся.

## Типы рецептов

| Префикс | Тип | Значение API DMED | Поведение |
|---|---|---|---|
| `A` | Обычный | `simple` | Платный обычный рецепт. Становится доступным после успешного подписания. |
| `R` | Реимбурсируемый | `reimbursement` | Рецепт по программе реимбурсации. До согласования скрыт от аптек. |

У каждого рецепта `MedicationRequest.category` = `outpatient` ([MedicationRequestAdminLocationVS](https://build.fhir.org/ig/uzinfocom-org/digital-health-ig/en/ValueSet-medicationrequest-admin-location-vs.html)). У реимбурсируемого рецепта есть ещё код реимбурсационного заказа UZ Core `rembr-0001-00001`; рецепт без него обычный.

## Общие бизнес-правила

1. Используем существующие бизнес-процессы DMED: выбираем имеющиеся данные для передачи и определяем их представление в DHP. Новые ограничения и обязательный сбор данных в DMED не вводим.
2. Одно назначенное лекарство — один MedicationRequest. Повторная передача идемпотентна по идентификатору DMED.
3. Впервые неподписанный рецепт в DHP не передаётся. Изменения того же рецепта сохраняют версии и историю подписей; полноту события изменения ещё требуется подтвердить.
4. Разовая доза, назначенное количество и количество отпуска передаются в согласованных штуках лекарственной формы; коды упаковок не являются количеством.
5. Длительность курса и срок рецепта различаются: count_days — в timing.repeat.boundsDuration, даты курса — в effectiveDosePeriod. validityPeriod берём из DMED с согласованным пределом 90 дней.
6. Обычный рецепт допускает частичную выдачу и округление до целой упаковки по правилам DMED. DHP сохраняет фактическое количество и не отклоняет событие только из-за превышения назначенного. Остаток рассчитывает DMED.
7. Льготный рецепт отпускается полностью, целыми упаковками. Частичного льготного отпуска нет. Проверки права и лимитов относятся к существующим процессам DMED и Reimbursement.
8. MedicationRequest и MedicationDispense записывает Prescription; Claim и ClaimResponse — Reimbursement. Подписанный рецепт передаётся до Claim, затем Prescription асинхронно добавляет insurance.
9. Срок рецепта и окно финансирования хранятся отдельно. Фактическая стоимость продажи — в ChargeItem, сумма возмещения — отдельно в ClaimResponse.
10. Ошибочная удалённая строка отпуска переводит MedicationDispense и ChargeItem в entered-in-error с сохранением истории.
11. Продление имеет новый ID DMED. Связь с прежним рецептом DMED не хранит, поэтому priorPrescription и basedOn не выводим самостоятельно.
12. MedicationAdministration фиксирует введение по курсу лечения, независимо от электронного рецепта; request и encounter не заполняются.
13. Состав данных доверенного лица для DHP выбирается из имеющихся сведений. Текущий ответ внешнему аптечному API проверяется отдельно.

## Общий процесс

1. Врач открывает пациента из амбулаторного обращения или стационарной истории.
2. Врач запускает действие `+ Рецепт` и выбирает тип A или R.
3. DMED получает лекарство из справочников МНН и фармацевтических препаратов.
4. Врач указывает путь введения, дозу, частоту, длительность курса, общее количество и инструкцию пациенту.
5. Врач выбирает получателя: пациента или доверенное лицо.
6. DMED проверяет обязательные поля, кодирование лекарства, схему, срок действия, полномочия врача и право на реимбурсацию.
7. Врач подписывает рецепт.
8. Обычный рецепт становится доступным для отпуска. Реимбурсируемый рецепт остаётся скрытым от аптек.
9. Согласующий одобряет рецепт либо возвращает его на доработку.
10. Аптека находит доступный рецепт и регистрирует `MedicationDispense`.
11. Медицинский работник регистрирует MedicationAdministration по курсу лечения независимо от электронного рецепта.
12. `Provenance` и `AuditEvent` сохраняют сведения о подписи, авторстве и истории доступа.

## Обычный рецепт

### Предусловия

- Врач аутентифицирован и имеет действующий PractitionerRole.
- Определены пациент и назначивший врач; MedicationRequest.encounter не заполняется.
- Доступны сервисы лекарственных и терминологических справочников.

### Сценарий

1. Выбрать тип A.
2. Выбрать МНН, препарат, лекарственную форму и дозировку.
3. Указать схему и количество.
4. Выбрать получателя, если лекарство получает не пациент.
5. Проверить и подписать.
6. Атомарно создать PrescriptionMedicationRequest и PrescriptionProvenance.

### Критерии приёмки

- Идентификатор рецепта DMED начинается с A и уникален.
- Впервые неподписанный рецепт в DHP не передаётся; draft не используется. Подписанный обычный рецепт передаётся как active. Последующий возврат в неподписанное состояние требует маппинга доступного события.
- Ожидаемая длительность отпуска и срок действия не превышают 90 дней.
- После подписания рецепт виден уполномоченным аптекам.

## Реимбурсируемый рецепт

### Предусловия

- Назначающий врач является семейным врачом.
- Пациент состоит на диспансерном учёте с диагнозом, включённым в программу Фонда.
- Выбранное лекарство разрешено для данного диагноза.
- Количество, длительность, месячный лимит МНН и бюджет поликлиники позволяют выписать рецепт.

### Сценарий

1. Выбрать тип R.
2. DMED проверяет право пациента и ограничения.
3. Выбрать лекарство из списка Фонда и указать длительность лечения.
4. Подписать рецепт.
5. Согласующий одобряет рецепт либо возвращает его на доработку.
6. После одобрения рецепт становится доступным договорным аптекам.

### Критерии приёмки

- До согласования аптека не может найти рецепт.
- Одобрение или возврат на доработку фиксируется в Provenance и AuditEvent.
- Частичный отпуск отклоняется со стабильным кодом PrescriptionErrorCS.

## Модель статусов

Значения ниже проверены 17 сентября 2026 года по реальному фильтру списка DMED и query-параметру `status`. DMED объединяет состояния рецепта, согласования и отпуска в одном исходном поле; в FHIR они разделены между `MedicationRequest` и `MedicationDispense`.

| Код DMED API | Подпись DMED | MedicationRequest.status |
|---|---|---|
| `not_signed` | Не подписан | Первоначально не передаётся, draft не создаётся; поздние изменения требуют маппинга события существующего рецепта |
| `created` | Не выдан | `active` |
| `awaiting_confirmation` | Ожидает подтверждения | `active` |
| `revision` | На доработку | `on-hold` |
| `approve` | Подтвержден | `active` |
| `partially_issued` | Частично выдан | `active` |
| `issued` | Выдан | `completed` |
| `expired` | Срок истек | `ended` |
| `canceled` | Отменен | `cancelled`; `ended`, если рецепт отменил крон истечения срока DMED (без причины отмены) |

`approved` не является допустимым статусом MedicationRequest в FHIR R5. Реализации не должны добавлять локальные строки в обязательную привязку статуса FHIR.

## Получатель и доверенное лицо

Если лекарство получает пациент, `MedicationDispense.receiver` ссылается на Patient. Если лекарство получает другой человек, в рецепте используется расширение UZ Core `trustee`, а получатель отпуска ссылается на тот же RelatedPerson или PractitionerRole.

Родственник представляется профилем UZ Core RelatedPerson. Патронажная медсестра представляется UZ Core PractitionerRole при передаче такого типа доверенного лица из DMED. Код безопасности и документы, подтверждающие личность, не помещаются в narrative, журналы или неограниченные поля аудита.

## Отпуск лекарства

Сохраняем существующий процесс поиска и выдачи DMED. Одна строка drug_issues — один MedicationDispense и один ChargeItem; повторная передача не создаёт дубликат.

Medication указывает фактический ТН. GTIN передаётся в identifier[globalTradeItemID], каждый код Асл белгиси — отдельным identifier[markingID]. Ключ выдачи — только identifier[dmedDispense]; GTIN, маркировка и серия не используются для обновления или объединения выдач.

Серия и срок годности находятся в [расширении партии отпуска](StructureDefinition-prescription-dispense-batch.html). Можно передать одно или оба значения; пустая группа не передаётся. Отдельный Medication партии только ради этих полей не создаём. Расширение повторяется для каждой достоверно переданной партии внутри той же строки. Строка остаётся одной выдачей и одним ChargeItem, без распределения общей суммы между партиями. Группы перечисляют партии; сами по себе они не задают количество по партиям и связь каждого кода упаковки с партией. Отсутствие кодов упаковок или расхождение их числа с количеством сами по себе не являются причиной отклонения выдачи.

Полная сумма sale_price строки передаётся в UZ Core ChargeItem.totalPriceComponent (тип base, UZS) со ссылкой на выдачу. Сумма возмещения отдельно хранится в ClaimResponse. Ошибочная строка переводит выдачу и стоимость в entered-in-error.

Обычная выдача может быть частичной и учитывает округление до упаковки в DMED. Льготная — полная, целыми упаковками. Это описание существующего процесса источника.

Внешний аптечный канал mass_issue передаёт в DHP полный набор серии, срока, GTIN и кодов упаковок. Для веб-выдачи передаём только достоверные коды, сохранившиеся в DMED; список может быть неполным. Количество, стоимость и возмещение не выводим из числа кодов, выдачу только из-за неполного списка не отклоняем и полную льготную выдачу ради кодов не дробим.

## Введение лекарства

PrescriptionMedicationAdministration основан на UZ Core MedicationAdministration и фиксирует введение медицинским работником по курсу лечения DMED. Передаются пациент, время и исполнивший PractitionerRole; request электронного рецепта и encounter не заполняются. Элемент времени FHIR R5 — occurenceDateTime. Самостоятельный приём дома не передаётся как введение.

## Изменение, продление и отмена

Используем контроль версий и сохраняем историю одного рецепта DMED. DMED может вернуть подписанный рецепт в неподписанное состояние, изменить и подписать повторно; запрет такого процесса не требуется. Прежняя подпись не считается подписью изменённого содержания. Полноту данных изменения и повторной подписи необходимо подтвердить по имеющимся данным DMED до объявления маппинга реализованным. Ранее совершённые корректные выдачи и стоимость сохраняются.

Продление создаёт новый рецепт с новым идентификатором DMED. Связи с предыдущим рецептом DMED не хранит, поэтому priorPrescription и basedOn не выводим самостоятельно.

Ручная отмена — cancelled; истечение срока, в том числе отмена кроном без причины, — ended. Ресурсы и история сохраняются.

MedicationRequest записывает только Prescription. Reimbursement создаёт Claim со ссылкой на уже переданный подписанный рецепт и ClaimResponse; Prescription асинхронно добавляет insurance. validityPeriod остаётся по DMED, окно финансирования хранится отдельно в ClaimResponse.preAuthPeriod. Отказ в финансировании не удаляет рецепт и сам по себе не меняет клинический статус. Причина отказа поступает текстом и записывается Reimbursement в ClaimResponse.disposition.

## Проверенный контракт DMED API

Контракт ниже получен 17 сентября 2026 года в режиме только чтения из авторизованного экрана Prescription в DMED. Токены аутентификации, идентификаторы устройства, защитные коды и персональные данные намеренно не публикуются в руководстве.

| Метод и endpoint | Назначение |
|---|---|
| `GET /api/prescriptions/v1/prescriptions` | Постраничный список; проверены параметры `page`, `per_page`, `type`, `doctor_id`, `status`. |
| `GET /api/prescriptions/v1/prescriptions/{uuid}` | Карточка рецепта. |
| `GET /api/prescriptions/v1/prescriptions/{uuid}/patient` | Контекст пациента, показываемый в карточке. |
| `GET /api/prescriptions/v1/prescriptions/dispensaries` | Информация о диспансерном учёте для карточки. |
| `GET /api/prescriptions/v1/prescriptions/statistics?clinic_id={id}` | Бюджет и статистика отпуска по реимбурсации. |
| `GET /api/prescriptions/v1/prescriptions/export/by-clinic-reimbursement` | Экспорт Excel; транспортные token и device ID не являются FHIR-данными. |

Список и карточка содержат один и тот же объект рецепта. Следующий минимизированный JSON сохраняет поля, необходимые для FHIR-маппинга; идентификационные/display-поля и URL пагинации исключены.

```json
{
  "data": [
    {
      "id": 12076,
      "uuid": "<prescription-uuid>",
      "safe_code": "<secret-not-exchanged>",
      "number": "<DMED-business-number>",
      "status": "not_signed",
      "type": "simple",
      "expiration_date": "2026-12-13",
      "cancellation_reason": null,
      "cancellation_comment": null,
      "signed_type": null,
      "distribution_type": "with-recipe",
      "created_at": "2026-09-14T09:00:00+05:00",
      "cancelled_at": null,
      "approved_at": null,
      "drug_appointment": {
        "start_date": "2026-09-14",
        "end_date": "2026-09-18",
        "single_dose": "0.5",
        "administration_frequency": 2,
        "administration_frequency_measure": "day",
        "patient_uuid": "<patient-uuid>",
        "count_days": 5,
        "doctor_id": 38059,
        "total_amount": 5,
        "remaining": null,
        "receive_mode": null,
        "inn": { "id": 1, "title": "<INN display>", "code": null, "is_combination": false },
        "medication": [
          { "id": 1, "title": "<medication display>", "code": null, "is_combination": false }
        ],
        "substance_dosage": {
          "id": 1,
          "dosage": 200,
          "title": "200 milligram",
          "measurement_unit": { "id": 2, "title": "миллиграмм" },
          "combination_components": []
        },
        "dosage_form": { "id": 1157, "title": "Капли" },
        "drug_administration_route": { "id": 4, "title": "Окулярный" },
        "drug_administration_times": [],
        "issues": []
      },
      "revision": null,
      "dispensaries": [],
      "confidant": null,
      "cancelled_by": null,
      "cancelled_clinic": null,
      "cancelled_pharmacy": null
    }
  ],
  "meta": { "current_page": 1, "per_page": 12, "total": 1, "has_more_pages": false }
}
```

Проверенная структура ответа статистики реимбурсации:

```json
{
  "total_budget": 0,
  "balance": 0,
  "issue_sum": 0,
  "issued_count": 0,
  "approve_sum": 0,
  "approve_count": 0
}
```

## Маппинг DMED в FHIR

### MedicationRequest

| Поле DMED | Путь FHIR |
|---|---|
| `number` | `MedicationRequest.identifier[dmedPrescription]` |
| `uuid` | `MedicationRequest.identifier[dmedPrescriptionUUID]` |
| `type` (`simple` / `reimbursement`) | `MedicationRequest.category`: `outpatient`, для `reimbursement` ещё `rembr-0001-00001` |
| `status` | `MedicationRequest.status` плюс состояние отпуска |
| `drug_appointment.inn` и `drug_appointment.medication` | `MedicationRequest.medication` / связанный Medication |
| `drug_appointment.patient_uuid` | `MedicationRequest.subject` |
| Доверенное лицо | `MedicationRequest.extension[trustee]` |
| Обращение | Не заполняется |
| `drug_appointment.doctor_id` | `MedicationRequest.requester` |
| диагноз/контекст права на реимбурсацию | `MedicationRequest.reason` |
| `drug_appointment.start_date` / `end_date` | `MedicationRequest.effectiveDosePeriod` |
| `administration_frequency`, `administration_frequency_measure`, `drug_administration_times` | `MedicationRequest.dosageInstruction.timing` |
| `drug_administration_route.id` | `MedicationRequest.dosageInstruction.route` через ConceptMap |
| `single_dose`, `substance_dosage.measurement_unit` | `MedicationRequest.dosageInstruction.doseAndRate.doseQuantity` |
| `total_amount` | `MedicationRequest.dispenseRequest.quantity` |
| `count_days` | `MedicationRequest.dosageInstruction.timing.repeat.boundsDuration` |
| `created_at`, `expiration_date` | `MedicationRequest.dispenseRequest.validityPeriod` |
| `cancellation_reason`, `cancellation_comment` | `MedicationRequest.statusReason` и `note` согласно политике доступа |
| `safe_code` | Не помещается в клинический FHIR-ресурс, narrative или лог. |

### MedicationDispense

| Поле DMED | Путь FHIR |
|---|---|
| Идентификатор отпуска | `MedicationDispense.identifier` |
| Фактически отпущенное лекарство | `MedicationDispense.medication` |
| Рецепт | `MedicationDispense.authorizingPrescription` |
| Пациент | `MedicationDispense.subject` |
| Фармацевт | `MedicationDispense.performer.actor` |
| Фактическое количество | `MedicationDispense.quantity` |
| Время передачи | `MedicationDispense.whenHandedOver` |
| Получатель | `MedicationDispense.receiver` |

### MedicationAdministration

| Поле DMED | Путь FHIR |
|---|---|
| Идентификатор введения | `MedicationAdministration.identifier` |
| Электронный рецепт | Не заполняется: введение относится к курсу лечения |
| Лекарство | `MedicationAdministration.medication` |
| Пациент | `MedicationAdministration.subject` |
| Обращение | Не заполняется |
| Время введения | `MedicationAdministration.occurenceDateTime` |
| Исполнитель | `MedicationAdministration.performer.actor` |
| Путь введения и доза | `MedicationAdministration.dosage` |

## Терминология

Интеграция повторно использует из UZ Core наборы МНН, лекарственных форм, путей введения, статусов лекарств, статусов назначений, статусов отпуска и единиц измерения. В Integration IG определяются только типы рецептов, действия процесса, бизнес-статусы согласования, ошибки и исходные значения DMED.

Локальные значения DMED переводятся через версионированные ConceptMap. Отсутствие маппинга МНН, лекарственной формы, пути введения или единицы измерения является ошибкой валидации; текст `display` не заменяет код. Публикуются только бесспорные соответствия; исходное значение без соответствия отклоняется с ошибкой `terminology-crosswalk-not-found`, пока его не проверят и не добавят.

| Поле DMED | ConceptMap | Куда | Сопоставлено |
|---|---|---|---|
| `type` | [Тип рецепта DMED](ConceptMap-dmed-prescription-type-to-medication-request-category.html) | `outpatient` и реимбурсационный заказ UZ Core | 2 из 2 |
| `status` | [Статус рецепта DMED](ConceptMap-dmed-prescription-status-to-medication-request-status.html) | статус MedicationRequest | 8 из 9; `not_signed` не передаётся |
| `inn_id` | [МНН DMED → классификация препаратов](ConceptMap-dmed-prescription-inn-to-medication-classification-cm.html) | код МНН UZ Core, иначе WHO ATC | 1 006 МНН и 2 781 ATC: все МНН с действующими ТН, кроме 8, которым не подходит ни один код ATC; компоненты комбинации кодируются своими МНН |
| `dosage_form_id` | [Лекарственная форма DMED](ConceptMap-dmed-prescription-dose-form-to-medication-doseform-cm.html) | лекарственная форма UZ Core | 369 из 372 |
| `drug_administration_route_id` | [Путь введения DMED](ConceptMap-dmed-prescription-route-to-fhir-route.html) | путь введения SNOMED CT или UZ Core, иначе `dosageInstruction.method` | 51 из 56; остальные 5 обозначают способ и идут в `method` |
| `receive_mode` | [Режим приёма DMED](ConceptMap-dmed-prescription-receive-mode-to-event-timing.html) | `timing.repeat.when` | 6 из 7; для `at_any_time` `when` не передаётся |
| `administration_frequency_measure` | [Период кратности DMED](ConceptMap-dmed-prescription-frequency-period-to-units-of-time.html) | `timing.repeat.periodUnit` | 4 из 4 |
| `cancellation_reason` | [Причина отмены DMED](ConceptMap-dmed-prescription-cancellation-reason-to-status-reason.html) | SNOMED CT, иначе `statusReason.text` | 1 из 2; для `other` передаётся только текст |
| `administration_method` (курс лечения) | [Способ введения DMED](ConceptMap-dmed-administration-method-to-fhir-route.html) | `MedicationAdministration.dosage.method`, путь введения SNOMED CT или UZ Core | 19 из 21 |

Идентификаторы лекарственных форм и путей введения взяты из справочников тестовой среды DMED от 03.11.2026, идентификаторы МНН — из выгрузки DMED от 05.10.2026. Маппинг МНН построен по выгрузке реестра Фармкомитета от 02.11.2026: код МНН берётся, только если все упаковки реестра у торговых наименований этого МНН указывают один код или вещество реестра называется так же, а всем остальным МНН с действующими торговыми наименованиями, включая комбинации, — самый частый среди них код ATC, который есть в текущем WHO ATC. Старый Core CodeSystem путей DMED использует текстовые коды и не считается исходной системой для числового поля Prescription API.

## FHIR-обмен

Для атомарного сохранения Medication, MedicationRequest и Provenance используется транзакционный Bundle. Условное создание выполняется по стабильному идентификатору. Обновления учитывают версию ресурса. Успешная транзакция возвращает Bundle типа `transaction-response`, неуспешная — OperationOutcome.

Специфические бизнес-ошибки рецептов передаются в `OperationOutcome.issue.details.coding` с кодом из [PrescriptionErrorCS](CodeSystem-prescription-error-cs.html) (допустимые коды: [PrescriptionErrorVS](ValueSet-prescription-error-vs.html)). `OperationOutcome.issue.code` остаётся кодом обязательного FHIR-набора IssueType. Для ошибки поля `issue.expression` содержит FHIRPath.

Опубликованные примеры:

- [обычный рецепт](MedicationRequest-example-ordinary-prescription.html);
- [реимбурсируемый рецепт](MedicationRequest-example-reimbursement-prescription.html);
- [отпуск](MedicationDispense-example-prescription-dispense.html);
- [введение](MedicationAdministration-example-prescription-administration.html);
- [Provenance подписи](Provenance-example-prescription-signature.html);
- [транзакционный Bundle](Bundle-example-prescription-transaction.html);
- [OperationOutcome бизнес-правила](OperationOutcome-example-prescription-operation-outcome.html).

## Чек-лист валидации

- Проверить каждый ресурс по профилю из `meta.profile`.
- Разрешить все ссылки внутри Bundle.
- Проверить коды терминологии и версии ConceptMap.
- Отклонять неизвестные локальные коды и Quantity без `system` и `code`.
- Обеспечить идемпотентность по идентификаторам.
- Проверять межресурсные ограничения реимбурсации на сервере.
- Проверять подпись по точной версии ресурса или Bundle, который был подписан.
- Регистрировать поиск, чтение, изменение, отмену, согласование и отпуск в аудите, не записывая код безопасности открытым текстом.
