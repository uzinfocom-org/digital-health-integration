<style>
/* Per-form mapping-table column widths (003: long UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 23%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 23%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 18%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 19%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 17%; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Форма 003 - Медицинская карта стационарного больного

На этой странице описано сопоставление полей [Формы 003](forms-volume-01-inpatient.html) (Statsionar bemorning tibbiy kartasi / Медицинская карта стационарного больного) с ресурсами FHIR.

---

### Обзор

Форма 003 - это полная медицинская карта стационарного больного, которая ведётся в течение всего пребывания в стационаре: поступление, первичный осмотр, диагнозы, листы назначений и процедур, температурный лист, дневник и исход при выписке. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 003 Inpatient Medical Record Card Composition](StructureDefinition-form-003-inpatient-medical-record-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Там, где в бумажной форме значение разделено на поле даты и поле времени, они объединяются в один FHIR [`dateTime`](https://hl7.org/fhir/R5/datatypes.html#dateTime). Подписи представлены ресурсами [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html); подписывающие должностные лица перечислены в разделе «Ответственные лица» как ссылки PractitionerRole.

Полный пример экземпляра см. в разделе [Пример медицинской карты стационарного больного по Форме 003](Bundle-example-form-003-inpatient-medical-record.html).

---

### Сопоставление значений DMED

Значения титульного листа Формы 003 DMED передаёт своими токенами. Эти ConceptMap задают код, который нужно передать для каждого токена; группа крови и резус-фактор используют те же токены, что и в Форме 111, и переиспользуют её карты.

| Поле DMED | ConceptMap | Куда |
|----|----|----|
| `blood_group` | [dmed-form-111-blood-group-cm](ConceptMap-dmed-form-111-blood-group-cm.html) | значение Observation группы крови (LOINC `883-9`) |
| `rh_factor` | [dmed-form-111-rhesus-factor-cm](ConceptMap-dmed-form-111-rhesus-factor-cm.html) | значение Observation резус-фактора (LOINC `10331-7`) |
| `transporting_method` | [dmed-form-003-transporting-method-cm](ConceptMap-dmed-form-003-transporting-method-cm.html) | значение Observation способа транспортировки пациента |
| `result_treatment` | [dmed-form-003-result-treatment-discharge-disposition-cm](ConceptMap-dmed-form-003-result-treatment-discharge-disposition-cm.html) | Encounter.admission.dischargeDisposition |
| `result_treatment` | [dmed-form-003-result-treatment-death-cm](ConceptMap-dmed-form-003-result-treatment-death-cm.html) | значение Observation контекста смерти: локальный код или SNOMED CT материнской смерти до или после родов |
| `disease-codes[].type` (заключительные диагнозы) | [dmed-form-027-diagnosis-type-cm](ConceptMap-dmed-form-027-diagnosis-type-cm.html) | Condition.category, подраздел заключительного диагноза; те же токены, что в Формах 027 и 066 |
| `working_capacity` | [dmed-form-003-working-capacity-cm](ConceptMap-dmed-form-003-working-capacity-cm.html) | значение Observation состояния трудоспособности |
| `analyses[].title` | [dmed-form-003-analyses-cm](ConceptMap-dmed-form-003-analyses-cm.html) | код Observation или DiagnosticReport обследования при поступлении |

Encounter - тот же, что передаёт Форма 066 по этой госпитализации, с идентификатором госпитализации DMED. Срочность, источник поступления, повторность госпитализации и клиническое состояние (`Encounter.priority`, `admission.admitSource`, `admission.reAdmission`, `subjectStatus`) берутся из карты Формы 066 этой госпитализации по правилам Формы 066, поэтому оба документа передают одинаковые значения. Поля титульного листа `quickly_taken` и `readmission_same_reason` в Encounter не записываются.

Тип оплаты тоже берётся из карты 066 (`payment_type`): он передаётся как `Coverage` (`type` из `coverage-type-cs`, получатель - пациент) в разделе административной информации, по карте типа оплаты Формы 066. `price_list` титульного листа не передаётся.

### Источники DMED, проверенные 23–24 ноября 2026 года

По согласованным границам выгрузки DMED передаём только поля самой формы 003 в DMED и ранее согласованные общие данные Encounter и оплаты из 066. Таблицы ниже описывают также бумажный бланк; они не являются перечнем дополнительных требований к извлечению данных DMED. Лекарственные назначения и исполнения из отдельного модуля курсов лечения для заполнения этого документа не получаем. Полный пример бумажной формы демонстрирует общий профиль, а не состав выгрузки DMED.

На титульном листе есть одно поле `temperature` в градусах Цельсия, а не ряд утренних/вечерних измерений. Значение сохраняется в личной информации по правилу показателей без даты, приведённому ниже. `treatment` («Другие виды лечения») и `comment` — свободный текст. `treatment` сохраняется в `section[surgicalProcedures].text` без придумывания кода процедуры, статуса и времени исполнения. Каждая запись `analyses[]` сохраняет собственные `title`, текстовый `result` и `date_of_conduct` с точностью до даты; время и часовой пояс к такой дате не добавляются. Сохранение и повторное чтение этих полей проверены через тестовый UI. Для незаполненных продолжительности и годового итога API может вернуть ноль, хотя UI показывает отсутствие значения; сам по себе ноль не доказывает заполненность поля. Эти значения по умолчанию не превращаются в зафиксированную нулевую продолжительность или нулевое число госпитализаций.

В проверенном источнике `height`, `weight` и `temperature` титульного листа не содержат собственной даты измерения. Значения без даты и их единицы сохраняются в `section[personalInformation].text`. Структурированное наблюдение жизненного показателя создаём только при установленной исходной дате измерения; дату поступления, создания документа или сохранения вместо неё не подставляем. Стандартные [профили жизненных показателей](https://hl7.org/fhir/R5/observation-vitalsigns.html) требуют `effective[x]`. Проверка официальным ValidationEngine отклоняет наблюдения роста, веса и температуры без даты, но принимает неполный документ с этими значениями в тексте. Текстовый раздел лечения и лабораторный результат с `effectiveDateTime` с точностью до даты также проходят без выдуманной точности.

Остальные текстовые поля титульного листа также сохраняют исходный смысл. `side_effects_medications` — одно объединённое поле препарата и побочных эффектов: сохраняем его в `section[personalInformation].text`, без автоматического выделения кодированной аллергии, препарата или реакции. `working_place` — объединённый текст о работе, учёбе, профессии или инвалидности, а не отдельные кодированные ответы. Его текст сохраняется в личной информации без придумывания отдельных кодов профессии или инвалидности. `report` — заключение для направления на медицинскую экспертизу (`section[expertiseReferralConclusion].text`), а не заключение после смерти. `additional_signs` передаётся в `section[specialMarks].text`, общие замечания `comment` — в `section[administrativeInformation].text`. Текстовое название операции не устанавливает код ICHI; отдельную запись операции ради получения кода для этой выгрузки не запрашиваем.

Документ DMED содержит только имеющиеся данные. Все 20 именованных разделов и все роли заключительного диагноза необязательны. У переданного раздела сохраняются обязательные заголовок, код, допустимые типы ссылок и правила содержимого FHIR; текст, структурированные записи и подразделы используются в пределах правил соответствующего раздела. Требования к заголовку документа и UZ Core сохраняются. Отсутствующие клинические значения и подписи не создаются. См. [пример неполного документа](Bundle-example-form-003-partial-inpatient-medical-record.html). Профиль не заявляет отдельное структурированное покрытие каждого согласия, протокола консилиума и подробного неонатального/почасового листа приложенного бланка.

Титульный лист читается через `GET /api/mis/v2/hospitalizations/{id}/title-page`. Страница также получает госпитализацию и её медицинский случай. Ответ титульного листа содержит только часть полной карты. В UI есть отдельные разделы осмотров, эпикризов, плана обследований, анализов и курсов лечения. Наличие раздела в UI ещё не подтверждает пополевой контракт его выгрузки.

Номер стационарной карты DMED — `hospitalization.number` (например, `38-2026`); он сохраняется в `section[administrativeInformation].text`. Технический идентификатор Encounter остаётся `hospitalization.id` в системе `https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number`, общей с 066. Отдельный Med ID пациента — `patient.number_med_card`; `number` титульного листа — номер договора (`Shartnoma №`). Эти значения не взаимозаменяемы.

Элемент `analyses[]` содержит `title`, `result`, `date_of_conduct`. Результат вводится свободным текстом. `date_of_conduct` передаётся как эффективная дата наблюдения с исходной точностью. `rw-1` и `rw-2` — отдельные записи RW; `hiv`, `hiv_II`, `hiv_express` — отдельные записи ВИЧ. Актуальный токен бакпосева кала — `stool-culture`. Исторические `blood`, `feces_back_seeding`, `abstract_disease` сохранены в кодовой системе для старых данных.

Каждая запись анализа имеет собственный результат. Объединённое историческое название `blood` не подтверждает одновременно результат RW и результат ВИЧ. Названия RW не подтверждают аналит и сыворотку как материал исследования для LOINC `22461-8`. Названия анализов ВИЧ не подтверждают состав антител/антигенов и метод LOINC `56888-1`, поэтому конкретный LOINC пока не назначен. Пока он уточняется, наблюдение может идентифицироваться кодом исходной системы. Положительный и отрицательный результат кодируются существующим `positive-negative-result-vs`, если исходный текст однозначно подтверждает такое значение; исходный текст результата сохраняется. Остальные текстовые результаты можно передавать в `Observation.valueString`.

Метод обезболивания DMED хранит текстом в `surgical_operations[].method_anesthesia`. По решению от 23 ноября он передаётся в `Procedure.note.text` соответствующей операции. Операции на титульном листе являются редактируемыми текстовыми копиями; для кода ICHI отдельно требуется установить источник кодированного вмешательства. Существующий справочник [Anesthesia Method](ValueSet-anesthesia-method-vs.html) сохраняется, но он не подтверждает кодированное значение для этого текстового поля DMED.

Отдельный признак город/село `permanent_residence_areas` исключён из согласованного пейлоада; адрес пациента сохраняется. `hospitalization_reason` передаётся отдельным Observation: код `hospitalization-reason` из [кодов наблюдений 003](CodeSystem-form-003-observation-code-cs.html), значение — из [причин госпитализации DMED](ValueSet-dmed-form-003-hospitalization-reason-vs.html). [Исходная кодовая система](CodeSystem-dmed-form-003-hospitalization-reason-cs.html) сохраняет `disease`, `injury`, `car_accident`, `planned`. Это не переопределяет срочность Encounter из 066.

Годовой итог относится к тому же заболеванию за текущий календарный год и включает текущую госпитализацию: подтверждено Эрнестом 24 ноября 2026 года. Используются код Observation `same-condition-hospitalizations-this-year` из [кодов наблюдений 003](CodeSystem-form-003-observation-code-cs.html) и `valueInteger`; текущую госпитализацию не вычитаем, отсутствующее число не заполняем по умолчанию. Ответ «первично/повторно» титульного листа сохраняется в `section[hospitalizationSummary].text`; повторность общего Encounter по-прежнему берётся из 066.

Бланк содержит собственные дату и время первичного осмотра. Они сохраняются вместе с текстом осмотра в `section[primaryExamination].text`. Это не `Condition.recordedDate`, означающее первое внесение конкретной записи Condition. Таблица диагнозов DMED использует `disease-codes[].date`; исходная дата больничного диагноза сохраняется в `section[admissionInformation].text`, пока не подтверждено её совпадение с первым внесением Condition. В проверенном ответе API больничных диагнозов не было, поэтому такое совпадение не подтверждено.

DMED показывает койко-дни как `ceil((hospitalization_end_date - hospitalization_start_date) / 24 часа)`, если обе даты заполнены. По согласованному правилу DMED этот округлённый счётчик передаётся в `Encounter.length`, UCUM `d`. В `Encounter.actualPeriod` сохраняются исходные даты и время поступления и выписки; они не округляются и не восстанавливаются из счётчика. Здесь `length` — длительность DMED с округлением вверх до дней, поэтому она может отличаться от точного интервала `actualPeriod`. При отсутствии исходных дат счётчик не передаётся. Записи дневника сохраняют собственные исходные дату и время рядом с содержимым в `section[diary].text`. Фронтенд читает `start_at` и при отсутствии показывает `created_at`; проверенный ответ дневника был пустым, заполненный ответ API ещё нужно проверить. Текущее время, подставляемое редактором, не выдаётся за время осмотра или записи дневника.

По подтверждению Эрнеста от 23 ноября 2026 года подпись документа выполняется тем же способом, что и для 066. Для заполнения подписи Provenance нужны фактические данные подписи.


---

### Сопоставление полей

### UZ-003 Медицинская карта стационарного больного - сопоставление с FHIR

---

### Информация о документе

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Hujjat instansiyasi UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:861f9511-f30c-52e5-b827-557766550003 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 003 |
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:760e8400-e29b-41d4-a716-446655440003 |
| Hujjat holati | Статус документа | Composition.status | [Статусы документов](document-statuses.html): `preliminary` во время пребывания, `final` после закрытия истории | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0003` "Patient Medical Record №", plus LOINC `34112-3` "Hospital Note" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" и [Document Category](CodeSystem-document-category-cs.html) `form-003` "Медицинская карта стационарного больного" | - |
| Bemor | Пациент | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Tursunov Alisher Valiyevich |
| Statsionarda yotish | Пребывание в стационаре | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | Пребывание в стационаре |
| Davolovchi shifokor | Лечащий врач | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) | Rasulov B.B. |
| Hujjat sanasi | Дата документа | Composition.date | - | 2026-02-18T09:00:00+05:00 |
| Hujjat egasi | Организация-хранитель документа | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Toshkent shahar klinik shifoxonasi |
| Muassasa STIR | ИНН учреждения | Organization.identifier[taxId] | `https://dhp.uz/fhir/core/sid/org/uz/soliq`, type `TAX` | 202345678 |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 003 - Inpatient Medical Record Card |

---

### Административная информация

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Muassasa nomi | Наименование учреждения | Organization.name | - | Toshkent shahar klinik shifoxonasi |
| Statsionar bemorning tibbiy karta raqami | Медицинская карта стационарного больного | section[administrativeInformation].text | DMED `hospitalization.number` | 38-2026 |
| Kasalxonaga yotqizilgan kun va vaqti | Дата и время поступления в стационар | Encounter.actualPeriod.start | - | 2026-02-08T10:00:00+05:00 |
| Kasalxonadan chiqarilgan kun va vaqti | Дата и время выписки из стационара | Encounter.actualPeriod.end | - | 2026-02-18T09:00:00+05:00 |
| Statsionar bo'limi | Отделение стационара | Encounter.location.location → [Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html) | - | Therapeutic department |
| Statsionar xona raqami | Номер палаты | Location.identifier[unit].value | `type` [Location Kinds](https://dhp.uz/fhir/core/en/CodeSystem-location-kinds-cs.html) `Ward` "Palata" | 214 |
| Ko'chirilgan bo'lim | Переведён в отделение | Encounter.location (repeat) + Encounter.location.period | - | - |
| Yotib davolangan kunlar soni | Количество проведённых койко-дней | Encounter.length | DMED rounded-up day count; UCUM `d` | 10 d |

---

### Личная информация

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Bemorning F.I.Sh. | ФИО пациента | Patient.name:official | - | Tursunov Alisher Valiyevich |
| Bemorning tug'ilgan sanasi | Дата рождения пациента | Patient.birthDate | - | 1990-04-12 |
| Bemorning jinsi | Пол пациента | Patient.gender; Patient.gender.extension[gender-other] | [Administrative Gender](https://dhp.uz/fhir/core/en/ValueSet-administrative-gender-vs.html); `other` requires the [Gender Other](https://dhp.uz/fhir/core/en/StructureDefinition-gender-other.html) extension | male |
| Med ID raqami | Med ID пациента | Patient.identifier[healthCardId].value | DMED `patient.number_med_card` | HC-2026-00042 |
| Bemorning yashash joyi | Место жительства пациента | Patient.address:uzAddress (use = home) | - | Toshkent, Yunusobod, 12-mavze, 15-uy |
| Qon guruhi | Группа крови | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueCodeableConcept | `code` LOINC `883-9` "ABO group [Type] in Blood"<br>`value` [Blood Group](https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs) | A (II) (`112144000`) |
| Rezus mansubligi | Резус-фактор | Observation.valueCodeableConcept | `code` LOINC `10331-7` "Rh [Type] in Blood"<br>`value` [Blood Rh](https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs) | Rh positive (`165747007`) |
| Bemorning bo'yi | Рост пациента | section[personalInformation].text; Observation.valueQuantity only with a source measurement date | LOINC `8302-2` "Body height" | 178 cm |
| Bemorning vazni | Вес пациента | section[personalInformation].text; Observation.valueQuantity only with a source measurement date | LOINC `29463-7` "Body weight" | 82 kg |
| Bemorning harorati | Температура пациента | section[personalInformation].text; Observation.valueQuantity only with a source measurement date | LOINC `8310-5` "Body temperature" | 38.4 Cel |
| Dori vositasining nomi | Наименование лекарственного препарата | [AllergyIntolerance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-allergy-intolerance.html).code | SNOMED CT / INN | Penicillin |
| Nojo'ya ta'sirining ko'rinishi | Проявление побочного действия | AllergyIntolerance.reaction.manifestation.concept.text | free text | Generalised urticaria |
| Yaqin qarindoshning yashash joyi | Место жительства близких родственников | [RelatedPerson](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-relatedperson.html).address | - | Toshkent, Yunusobod |
| Yaqin qarindoshning telefon raqami | Номер телефона близких родственников | RelatedPerson.telecom[phone].value | - | +998901112233 |


---

### Социально-экономическая информация

Строки 27-32 бумажной формы - это одно поле выбора. Каждый заполненный вариант - это один Observation. Кодируемые варианты (профессия, инвалидность) - это [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html) с наблюдаемым объектом SNOMED CT и значением из соответствующего национального ValueSet. Место работы, место учёбы и детское учреждение - свободный текст, поэтому это обычный Observation с `valueString`.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Ish joyi | Место работы | Observation.valueString | LOINC `80427-8` "Employer name [Identifier]" | Yunusobod avtoservis |
| Kasbi yoki lavozimi | Профессия или должность | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | `code` SNOMED `14679004` "Occupation", as in Form 111<br>`value` [Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Car mechanic (`7231.1`) |
| O'qish joyi | Место учёбы | Observation.valueString | LOINC `66280-9` "School Name" | - |
| Bolalar muassasasi | Детское учреждение | Observation.valueString | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `children-institution` "Children's institution" | - |
| Nogironlik turi | Вид инвалидности | UZCoreSocioeconomicObservation.valueCodeableConcept | [Benefits](https://dhp.uz/fhir/core/en/ValueSet-benefits-vs.html) | - |
| Nogironlik guruhi | Группа инвалидности | UZCoreSocioeconomicObservation.valueCodeableConcept | [Disability Levels](https://dhp.uz/fhir/core/en/ValueSet-disability-vs.html) | - |
| Urush nogironi | Инвалид войны | UZCoreSocioeconomicObservation.valueCodeableConcept | [Benefits](https://dhp.uz/fhir/core/en/CodeSystem-benefits-cs.html) `regis0004.00004` "Disabled persons and war participants of 1941-1945, as well as persons treated as such" | - |

---

### Информация о поступлении

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Bemor yuborilgan shifoxona nomi | Кем направлен больной | Encounter.admission.origin → Organization | - | Yunusobod tuman oilaviy poliklinikasi |
| Kasalxonaga shoshilinch tarzda keltirilgan | Пациент доставлен экстренно | Encounter.priority | [ActPriority](https://terminology.hl7.org/ValueSet-v3-ActPriority.html) `EM` "emergency" / `R` "routine" | Emergency |
| Tez tibbiy yordam transportida keldi | Доставлен транспортом скорой помощи | Observation.valueBoolean | LOINC `LP97912-7` "Ambulance transport" | true |
| Kasalxonaga yotqizish sababi | Причина госпитализации | Observation.valueCodeableConcept | `code` [Form 003](CodeSystem-form-003-observation-code-cs.html) `hospitalization-reason`; `value` [DMED reasons](ValueSet-dmed-form-003-hospitalization-reason-vs.html) | disease |
| Kasallik/jarohatdan keyin yotqizishgacha o'tgan vaqt | Время от начала заболевания/травмы до госпитализации | Observation.valueQuantity | LOINC `77977-7` | 390 |
| Bemorni kelish usuli | Метод прибытия пациента | Encounter.admission.admitSource | [Admit Source Local](https://dhp.uz/fhir/core/en/CodeSystem-admit-source-local-cs.html) | `mserv-0006-00004` "Emergency medical service" |
| Bemor yo'llanmasidagi tashxis | Диагноз в направлении | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `referral` "Referring institution diagnosis" | `J18.9` "Pneumonia, unspecified" |
| Qabulxonada qo'yilgan tashxis | Диагноз в приёмном отделении | Condition.code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `admission` "Admission diagnosis" | `J18.9` "Pneumonia, unspecified" |
| Kasalxonada qo'yilgan tashxis | Больничный диагноз (строка 39) | Condition.code; section[admissionInformation].text | ICD-10; компонент DMED выбирает диагнозы с источниками `clinical_diagnosis_justification_epicrisis` и `landmark_epicrisis` | - |
| Tashxis qo'yilgan sana | Дата установления диагноза | section[admissionInformation].text | - | 2026-02-08 |

---

### Осмотр при поступлении

Объединённый блок «осмотр при поступлении» разворачивается в отдельный ресурс на каждое исследование.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Qon RW | RW — отдельные записи DMED | Observation.code; Observation.value[x] | `code` [DMED Form 003 analyses](CodeSystem-dmed-form-003-analyses-cs.html): `rw-1`, `rw-2`; LOINC `22461-8` требует подтверждения аналита и сыворотки как материала исследования<br>`value` [Positive / Negative Result](ValueSet-positive-negative-result-vs.html) при однозначном подтверждении источником; иначе исходный текст | `260385009` "Negative" |
| OITS | ВИЧ — отдельные записи DMED | Observation.code; Observation.value[x] | `code` [DMED Form 003 analyses](CodeSystem-dmed-form-003-analyses-cs.html): `hiv`, `hiv_II`, `hiv_express`; конкретный LOINC требует уточнения метода исследования<br>`value` [Positive / Negative Result](ValueSet-positive-negative-result-vs.html) при однозначном подтверждении источником; иначе исходный текст | `260385009` "Negative" |
| Axlat poshevi | Посев кала | [DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html).code | LOINC `625-4` "Bacteria identified in Stool by Culture" | - |
| Pedikulyoz | Педикулёз | Observation.code; Observation.valueCodeableConcept | `code` [DMED Form 003 analyses](CodeSystem-dmed-form-003-analyses-cs.html) `pediculosis` (screening item)<br>`value` [Positive / Negative Result](ValueSet-positive-negative-result-vs.html) | Negative |
| Mavhum kasalliklar | Прочие заболевания | Observation.valueString | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `other-diseases` "Other diseases" | - |

---

### Лист первичного осмотра

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Bemorni tekshirish sanasi va vaqti | Дата и время осмотра пациента | section[primaryExamination].text | - | 2026-02-08T10:15:00+05:00 |
| Bemorning yoshi | Возраст пациента | derived from Patient.birthDate and the examination date | - | 35 |
| Shikoyatlar / Boshqa shikoyatlar | Жалобы / Другие жалобы | Observation.valueString | LOINC `8661-1` "Chief complaint - Reported" | Cough, fever, dyspnoea |
| Joylashuvi | Локализация | *(same Observation).bodySite* | [Body Site](https://dhp.uz/fhir/core/en/ValueSet-body-site-vs.html) | `266005` "Structure of lower lobe of right lung" |
| Xususiyati | Характер | *(same Observation).note.text* | free text | Acute onset, productive cough |
| Og'riqli xuruj boshlanishi | Начало приступа | *(same Observation).effectivePeriod.start* | - | 2026-02-04T20:00:00+05:00 |
| Anamnez | Анамнез | section[anamnesis].text | LOINC `11329-0` "History general Narrative - Reported" | narrative |
| Umumiy hozirgi holat | Общее текущее состояние | section[statusPraesens].text | LOINC `10210-3` "Physical findings of General status Narrative" | narrative |
| Mahalliy holat | Местное состояние | section[statusLocalis].text | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `status-localis` "Status localis" | narrative |
| Tahminiy tashxis | Предварительный диагноз | Condition.code; Condition.category; Condition.verificationStatus | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `main` "Main diagnosis"<br>`verificationStatus` `provisional` "Provisional" | `J18.9` "Pneumonia, unspecified" |

---

### План обследования

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Tekshiruv rejasi | План обследования | Composition.section[examinationPlan].entry → [ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html); the result points back with `DiagnosticReport.basedOn` | LOINC `18776-5` "Plan of care note" | - |

---

### Результаты диагностических исследований

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Qonning umumiy tahlili | Общий анализ крови | DiagnosticReport.code | [Lab Report Types](https://dhp.uz/fhir/core/en/CodeSystem-lab-report-types-cs.html) `lab-rep-01` "CBC panel" | - |
| Umumiy peshob tahlili | Общий анализ мочи | DiagnosticReport.code | [Lab Report Types](https://dhp.uz/fhir/core/en/CodeSystem-lab-report-types-cs.html) `lab-rep-05` "Urinalysis macro (dipstick) panel" | - |
| Biokimyoviy tahlil | Биохимический анализ | DiagnosticReport.code | [Lab Report Types](https://dhp.uz/fhir/core/en/CodeSystem-lab-report-types-cs.html) `lab-rep-07` "Comprehensive metabolic panel" | - |
| Koagulogramma | Коагулограмма | DiagnosticReport.code | [Lab Report Types](https://dhp.uz/fhir/core/en/CodeSystem-lab-report-types-cs.html) `lab-rep-02` "Coagulation panel" | - |
| EKG | ЭКГ | DiagnosticReport.code + conclusion | LOINC `11524-6` "EKG study" | Sinus tachycardia |
| Rentgenologik tekshiruv | Рентгенологическое исследование | DiagnosticReport.code | LOINC `18782-3` "Radiology Study observation (narrative)" | Right lower-lobe consolidation |
| UZI | УЗИ | DiagnosticReport.code | LOINC `25061-3` "US unspecified body region" | - |
| EFDGS | ЭФГДС | DiagnosticReport.code | SNOMED CT `76009000` "Esophagogastroduodenoscopy" | - |
| MSKT / MRT | МСКТ / МРТ | DiagnosticReport.code | LOINC `25045-6` "CT Unspecified body region" (CT) / `25056-3` "MR Unspecified body region" (MR) | - |
| Mutaxassis maslahati | Консультация специалиста | ServiceRequest.code | SNOMED CT `11429006` "Consultation" | - |

---

### Осмотр врача отделения

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Bo'lim shifokori ko'rigi (tekshiruv va davolash rejasi) | Осмотр врача отделения (план обследования и лечения) | Composition.section[departmentExamination].text (+ entry) | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `department-examination` "Department doctor examination" | narrative |

---

### Заключительный диагноз

Каждый диагноз - это один Condition. Его роль указывается в `Condition.category` кодом из [Diagnosis Role](CodeSystem-diagnosis-role-integration.html), а сам Condition кладётся в [подраздел Composition](StructureDefinition-form-003-inpatient-medical-record-composition.html#k-Composition.section:finalDiagnosis) для этой роли: Основное заболевание → `main`, Осложнение основного заболевания → `complication`, Выявленные сопутствующие заболевания → `concomitant`, Конкурирующее → `competing`, Фоновое → `background`.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Asosiy | Основное заболевание | Condition.code; Condition.verificationStatus | `code` ICD-10<br>`verificationStatus` `confirmed` "Confirmed" | `J15.9` "Bacterial pneumonia, unspecified" |
| Asosiy kasallikning asorati | Осложнение основного заболевания | Condition.code | ICD-10 | `J90` "Pleural effusion, not elsewhere classified" |
| Aniqlangan yo'ldosh kasalliklar | Выявленные сопутствующие заболевания | Condition.code | ICD-10 | `I10` "Essential (primary) hypertension" |

---

### Хирургические вмешательства

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Jarrohlik operatsiyasi nomi | Наименование хирургической операции | [Form 066 Surgical Procedure](StructureDefinition-form-066-surgical-procedure.html).code | [ICHI Codes Accepted by DMED](https://terminology.dhp.uz/fhir/integrations/ValueSet/dmed-ichi-vs) | `JCB.JB.AE` "Percutaneous drainage of pleural cavity" |
| Jarrohlik operatsiyasi sanasi va vaqti | Дата и время хирургической операции | Procedure.occurrenceDateTime | - | 2026-02-10T11:30:00+05:00 |
| Og'riqsizlantirish usullari | Метод анестезии | Procedure.note.text | DMED `surgical_operations[].method_anesthesia`, свободный текст | Local anesthesia |
| Operatsiyadan keyingi asoratlar | Послеоперационные осложнения | Procedure.complication / Condition | SNOMED CT / ICD-10 | - |
| Shifokor F.I.Sh. | ФИО врача-хирурга | Procedure.performer.actor → PractitionerRole | - | Rasulov B.B. |
| Boshqa davolash turlari nomi | Наименование других видов лечения | section[surgicalProcedures].text | DMED `treatment`, free text | - |

---

### Лист назначения лекарственных средств

Только справочное сопоставление бумажного бланка. В проверенной форме 003 DMED этого листа нет, в согласованную выгрузку DMED он не входит. Из отдельного модуля курсов лечения его не заполняем.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Dori-darmonlarni buyurish sanasi | Дата назначения лекарства | [MedicationRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-medicationrequest.html).authoredOn | - | 2026-02-08T11:00:00+05:00 |
| Buyurilgan dori vositalari nomi | Название назначенного препарата | MedicationRequest.medication.concept | SNOMED CT / ATC / INN | `372670001` "Ceftriaxone" |
| Buyurilgan dori vositalari miqdori | Количество назначенного препарата | MedicationRequest.dosageInstruction.doseAndRate.doseQuantity | UCUM | 2 g |
| Buyurilgan dori vositalari yuborish uslubi | Способ введения | MedicationRequest.dosageInstruction.route | [Route Code](https://dhp.uz/fhir/core/en/ValueSet-route-code-vs.html) | `47625008` "Intravenous route" |
| Muolajani bajarish vaqti | Время выполнения лечения | MedicationRequest.dosageInstruction.timing | - | 1x/24h |
| Muolajani bajarish sanasi | Дата исполнения лечения | [MedicationAdministration](https://hl7.org/fhir/R5/medicationadministration.html).occurenceDateTime | - | 2026-02-08T12:00:00+05:00 |
| Natija (shifokor / hamshira) | Результат (врач / медсестра) | MedicationAdministration.note.text + note.authorReference | - | First dose tolerated well |
| Dori-darmon va tibbiy buyum manbasi | Источник лекарств и медицинских изделий | MedicationRequest.insurance → [Coverage](https://hl7.org/fhir/R5/coverage.html) | [Coverage Type](https://dhp.uz/fhir/core/en/ValueSet-coverage-type-vs.html) | State Health Insurance treated case |
| Parhez stoli raqami | Назначение диетического стола № | Observation.valueCodeableConcept | `code` LOINC `81663-7` "Diet [Type]"<br>`value` [Hospital Diet Type](ValueSet-hospital-diet-type-vs.html) | `chr-0042-0024` "Diet table No. 15 (general table, no special restriction)" |

---

### Лист процедур

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Tayinlangan / buyurilgan tekshiruv | Назначенное исследование | Composition.section[procedureSheet].entry → ServiceRequest / DiagnosticReport | [Service Request Code](https://dhp.uz/fhir/core/en/ValueSet-service-request-code-vs.html) | - |
| O'tkazilgan tekshiruv sanasi | Дата проведённого исследования | DiagnosticReport.effectiveDateTime | - | - |
| Buyurilgan muolajalar | Назначенные процедуры | ServiceRequest.code | [Service Request Code](https://dhp.uz/fhir/core/en/ValueSet-service-request-code-vs.html) | - |
| Bajarilgan muolajalar sanasi | Дата проведённой процедуры | Procedure.occurrenceDateTime | - | - |
| Ishlatiladigan materiallar | Используемые материалы | Procedure.used.concept / .reference | SNOMED CT / registry reference | - |

---

### Температурный лист

Приведённые ниже временные ряды относятся к бумажному бланку. В проверенной форме 003 DMED есть разовая температура в антропометрии, отдельного такого листа нет. Ряды пульса, дыхания и жидкости из других модулей для этой выгрузки не требуем и не собираем.

Утренние и вечерние измерения - это одно и то же LOINC-наблюдение, различаемое по `Observation.effectiveDateTime`.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Bemorning kasallik kuni | День болезни пациента | Observation.valueInteger | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `day-of-illness` "Day of illness" | 6 |
| Bemorning kasalxonada bo'lgan kunlari | Дни пребывания в стационаре | derived from Encounter.actualPeriod.start | - | 1..31 |
| Yurak urishi (ertalab / kechqurun) | Пульс (утро / вечер) | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 96 /min |
| Qon bosimi (ertalab / kechqurun) | Артериальное давление (утро / вечер) | Observation.component.valueQuantity | LOINC `85354-9` "Blood pressure panel" + `component` LOINC `8480-6` "Systolic blood pressure" / `8462-4` "Diastolic blood pressure" in `mm[Hg]` | 134 / 84 |
| Harorat (ertalab / kechqurun) | Температура (утро / вечер) | Observation.valueQuantity | LOINC `8310-5` "Body temperature" | 37.6 Cel |
| Nafas olish tezligi | Частота дыхания | Observation.valueQuantity | LOINC `9279-1` "Respiratory rate" | 20 /min |
| Og'irligi | Вес | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 82 kg |
| Qabul qilingan suyuqlik miqdori | Количество принятой жидкости | section[temperatureChart].text | Source amount and interval, if recorded; no assumed 12-hour interval | 600 mL |
| Bir kunlik siydik miqdori | Суточное количество мочи | Observation.valueQuantity | LOINC `9192-6` "Urine output 24 hour" | 1650 mL/(24.h) |

---

### Течение болезни

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Dinamikadagi ahvoli | Состояние в динамике | section[clinicalCourse].text | LOINC `8648-8` "Hospital course note" | Afebrile from day 5, resolving |
| Shifokor tavsiyalari | Рекомендации врача | [CarePlan](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-careplan.html).description | - | Oral antibiotics, GP review in 3 days |
| Kundalik / Shifokor yozuvlari | Дневник / Записи врача | section[diary].text | LOINC `11506-3` "Progress note" | Source date/time + narrative |

---

### Итоги госпитализации

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Mazkur yil davomida shu kasallik bo'yicha kasalxonaga yotishi | Госпитализация по данному заболеванию в текущем году | section[hospitalizationSummary].text | DMED `readmission_same_reason`; Encounter re-admission follows Form 066 | primary |
| Yillik kasalxonaga yotqizilganlarning umumiy soni | Общее количество госпитализаций за год | Observation.valueInteger | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `same-condition-hospitalizations-this-year`; includes current stay, same condition | 1 |

---

### Результат лечения

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Davolash natijasi (chiqarish) | Результат лечения (выписка) | Encounter.admission.dischargeDisposition | [Encounter Discharge Disposition](https://dhp.uz/fhir/core/en/ValueSet-encounter-discharge-disposition-vs.html): discharged `mserv-0004-00004` "Discharged", transferred `other-hcf` "Other healthcare facility", died `exp` "Expired" | `mserv-0004-00004` "Discharged" |
| Davolash natijasi (klinik holat) | Результат лечения (клинический исход) | Encounter.subjectStatus | [Patient status when receiving care inpatient](https://dhp.uz/fhir/core/en/CodeSystem-encounter-local-subject-status-cs.html) | `loc-cs-002` "Improved" |
| Vafot etish holati | Контекст смерти | Observation.valueCodeableConcept | `code` [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `death-context` "Death context"<br>`value` [Death Context](ValueSet-death-context-vs.html), в том числе SNOMED CT `31868001` / `5866003` для материнской смерти до или после родов. Смерть фиксируется только в документе: Patient не обновляется и не содержит `deceased[x]` | - |
| Boshqa muassasaga o'tkazilgan | Переведён в другое учреждение | Encounter.admission.destination → Organization | - | - |
| Ish qobiliyatining holati | Состояние трудоспособности | Observation.valueCodeableConcept | [Work Capacity Status](CodeSystem-work-capacity-status-cs.html) | `chr-0036-0001` "Work capacity fully restored" |
| Ekspertizaga yuborish uchun xulosa | Заключение для направления на экспертизу | section[expertiseReferralConclusion].text | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `expertise-referral-conclusion` "Conclusion for referral to medical expertise" | narrative |
| Alohida belgilar | Особые признаки | section[specialMarks].text | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `special-marks` "Special marks" | narrative |

---

### Временная нетрудоспособность

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Mehnatga yaroqsizlik varog'i raqami | Идентификатор больничного листа | [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html).identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/sickleave` | SL-2026-778812 |
| Ochilgan sana | Дата открытия | CarePlan.period.start | - | 2026-02-08 |
| Yopilgan sana | Дата закрытия | CarePlan.period.end | - | 2026-02-20 |
| Varaqa turi | Вид листка нетрудоспособности | CarePlan.category | [Sick Leave Category](CodeSystem-sick-leave-category-cs.html) | `mserv-0005-00001` "Sick Leave Certificate" |
| Mehnatga layoqatsizlik sababi | Причина нетрудоспособности | CarePlan.addresses[reason].concept | [Care Plan Reason](CodeSystem-care-plan-reason-cs.html) | `emdoc-0001-0001` "disease" |

---

### Посмертное медицинское заключение

Присутствует только при летальном исходе. Каждая причина смерти - это один Condition, его роль указывается в `Condition.category` кодом из [Diagnosis Role](CodeSystem-diagnosis-role-integration.html), а сам Condition кладётся в [подраздел Composition](StructureDefinition-form-003-inpatient-medical-record-composition.html#k-Composition.section:postmortemConclusion) для этой роли: Непосредственная причина смерти → `immediate-cause-of-death`, вызвавшее её заболевание → `underlying-cause-of-death`, Основное заболевание → `main-disease-death`, Другие значимые заболевания → `other-significant-death`.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Kasallik haqidagi yakuniy tibbiy xulosa | Окончательное медицинское заключение о заболевании | section[postmortemConclusion].text | LOINC `47046-8` "Summary of Death Note" | narrative |
| O'limga olib kelgan bevosita sabab | Непосредственная причина смерти | Condition.code | ICD-10 | - |
| Asosiy kasallik | Основное заболевание | Condition.code | ICD-10 | - |

---

### Ответственные лица

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Davolovchi shifokor | Лечащий врач | PractitionerRole.practitioner | [Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) | Rasulov B.B. |
| Bo'lim boshlig'i | Заведующий отделением | PractitionerRole.practitioner | [Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) `1342.18` "Head of department (health institution)" | Qodirov A.A. |
| Bosh shifokor muovini | Заместитель главного врача | PractitionerRole.practitioner | [Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) `1120.185` "Deputy chief physician" | Yusupova N.N. |
| Kompleks uchun mas'ul shaxs | Ответственное лицо за комплекс | PractitionerRole (section[responsiblePersons]) | - | - |
| Shifokor imzosi | Подпись врача | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | [Signature Type](https://dhp.uz/fhir/core/en/ValueSet-signature-type-vs.html) | - |

---

### Структура Bundle

Документ Формы 003 структурирован как FHIR Bundle, содержащий Composition [Form003InpatientMedicalRecordComposition](StructureDefinition-form-003-inpatient-medical-record-composition.html):

```
Bundle (документ)
├── Composition (Form003InpatientMedicalRecordComposition)
├── Patient (демографические данные пациента)
├── Encounter (поступление и выписка из стационара)
├── Organization[] (больница, направившее учреждение)
├── Location[] (отделение, палата)
├── Practitioner[] (лечащий врач, заведующий отделением, заместитель главного врача)
├── PractitionerRole[] (ответственные лица)
├── Condition[] (диагнозы направления, поступления, предварительный и заключительные)
├── Observation[] (витальные показатели, группа крови, соц.-экон., осмотр при поступлении, температурный лист, диетический стол, трудоспособность)
├── AllergyIntolerance (лекарственная реакция)
├── RelatedPerson (близкий родственник)
├── DiagnosticReport[] (лабораторные и инструментальные исследования)
├── ServiceRequest[] (назначенные исследования и процедуры)
├── Procedure[] (операция, анестезия, другие виды лечения)
├── MedicationRequest[] / MedicationAdministration[] (лист назначений)
├── Coverage (источник лекарств / финансирования)
├── CarePlan[] (рекомендации врача, листки нетрудоспособности)
└── Provenance[] (подписи, авторство записи)
```

### Пример

Полный пример FHIR-документа см. в разделе [Пример медицинской карты стационарного больного по Форме 003](Bundle-example-form-003-inpatient-medical-record.html).
