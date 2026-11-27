# Проверка покрытия формы 003 — 23 ноября 2026 года

> Исторический снимок проверки таблицы от 23 ноября. Уточнения по приложенному бланку, принятые решения и валидация неполных документов на 24 ноября — в [новой сверке](form-003-paper-review-2026-11-24.ru.md). Выводы этого снимка о причине госпитализации, годовом итоге, категориях времени и датах заменены уточнениями новой сверки.

Сверены 157 записей листа Proposed Mapping, включая группы, повторы, заголовки и исключённые строки. Номер в колонке «Исходник» взят из Source row. Номер в колонке «Лист» — фактическая строка Google Sheets. Процент готовности интеграции из количества строк не вычисляется, поскольку строка таблицы не равна отдельному полю API или ресурсу FHIR.

## Актуализация вопросов на 25 ноября 2026 года

Ниже сохранены исходные таблицы и результаты аудита 23 ноября. Они не являются текущим списком обязательных доработок. Основания актуализации: решения пользователя 23–25 ноября, приложенный бланк 003, [последующая сверка](form-003-paper-review-2026-11-24.ru.md) и [маппинг PR #160](https://github.com/uzinfocom-org/digital-health-integration/pull/160).

| Исходный вопрос | Текущее решение / остаток |
|---|---|
| 1. Причина госпитализации | Решён: отдельный Observation с исходными disease / injury / car_accident / planned; срочность общего Encounter берётся из 066. |
| 2. Дата больничного диагноза | Исходная дата сохраняется рядом с диагнозом в тексте раздела; она не объявляется Condition.recordedDate. Подтверждать их равенство для текущего варианта не требуется. |
| 3. Даты осмотра и дневника | Даты сохраняются с исходным текстом, когда такой источник передаётся. Отдельные осмотры и дневники из других модулей исключены из согласованной выгрузки 003. |
| 4. Побочные эффекты и работа/учёба/инвалидность | Решён: два отдельных подписанных текста личного раздела, без автоматического разбиения. Сохранение и повторное чтение обоих полей проверены в тестовом UI 24 ноября. |
| 5. Лекарства, исполнения, температурные ряды, жидкость, диета и подписи | Данные отсутствующих в самой форме разделов не получаем из соседних модулей. Подпись — механизм 066; отсутствующую фактическую подпись не создаём. Источник подписи остаётся вопросом реализации при передаче реальной подписи. |
| 6. Точные лабораторные коды | Метаданные для точных LOINC RW/ВИЧ не установлены; в текущем объёме сохраняем исходный код DMED и результат. Это ограничение кодирования, а не требование придумать соответствие. |
| 7. Единица времени и нормализация результатов | UI ввода и приложенный бланк не указывают единицу time_to_admission; печатный компонент DMED подписывает его daqiqa. Актуальный маппинг передаёт исходное число без единицы измерения, категорий 6/7/24 и округления. Свободный результат анализа сохраняется текстом; код Positive/Negative присваивается только при однозначном исходном значении. |
| 8. Годовое количество госпитализаций | Решён пользователем: то же заболевание, текущий календарный год, текущая госпитализация включена. Отсутствующее значение и API-ноль по умолчанию не превращаются в клинический итог. |

Последующее решение по койко-дням: округлённое вверх число дней DMED передаётся в Encounter.length (UCUM d); исходные даты и время поступления/выписки сохраняются в Encounter.actualPeriod. Это заменяет прежнее решение сохранять счётчик только текстом.

Полная сборка head 2784d7f PR #160, SUSHI и проверка версий завершились успешно. Предоставленный integration-003.md обновлён до v0.8 по согласованным решениям. XLSX пользователь исключил из текущего объёма. Этот исторический аудит не заменяет интеграционный документ.

## Основания проверки

- [Google Sheets, Proposed Mapping](https://docs.google.com/spreadsheets/d/1CXSvDHxpE-muRfZx7JSXRPEVZWVXuAudPTRDrPof_Ec/edit?gid=1191159141) — A1:L158, прочитано 23.11.2026.
- [Маппинг IG из PR #12](https://github.com/icmrnbw/digital-health-integration/blob/93e6821e7364c1ee2b955000a269922685de8f0c/input/pagecontent/form-003-mapping.md), профиль, пример и ConceptMap той же ветки — база проверки. Подготовленные в этой рабочей ветке исправления учтены ниже.
- Локальный Chrome, тестовая госпитализация 20760. Получены схемы ответов hospitalization, medical-case и title-page. Проверены загруженные компоненты index-o6hpBtP8.js и index.scss_vue_type_style_index_0_src_true_lang-D1off4SS.js. Печатный компонент показывает time_to_admission в daqiqa, title-page.number как Shartnoma №.
- В UI открыты разделы госпитализации и связанный демо-курс лечения. В дневнике и назначениях просмотренного демо-курса данных нет. Из одного тестового случая не выводится отсутствие этих данных во всём DMED.
- Определения [LOINC 22461-8](https://loinc.org/22461-8) и [LOINC 56888-1](https://loinc.org/56888-1) сверены с официальным каталогом 23.11.2026. Они определяют более конкретные исследования, чем установлено по названиям DMED.
- Передача 003-027-handoff-2026-11-23.md и решения Эрнеста в чате от 23.11.2026.

## Подготовленные изменения

1. В кодовую систему анализов добавлены 17 отсутствовавших токенов текущего UI, всего текущий список содержит 18 токенов с учётом уже существовавшего pediculosis. Старые токены сохранены.
2. RW I и RW II сохраняются раздельными исходными кодами; для LOINC 22461-8 ещё нужны аналит и материал исследования. Текущий stool-culture добавлен к существующему соответствию бакпосева кала.
3. Автоматическое разделение одного legacy blood на два самостоятельных результата заменено noMap. Для rw-1/rw-2 и hiv/hiv_II/hiv_express конкретный LOINC не назначается без подтверждения лабораторного источника. Исходные коды доступны в source CodeSystem и могут использоваться в Observation.code.
4. Описаны analyses[].result и analyses[].date_of_conduct, свободный текст результата и ограничение на присвоение положительного/отрицательного кода.
5. Метод обезболивания перенесён в Procedure.note.text соответствующей операции. В примере отдельная процедура анестезии заменена примечанием операции.
6. В примере маппинга идентификатор госпитализации заменён на hospitalization.id.
7. Описаны минуты time_to_admission: 6/7/24 часа соответствуют 360/420/1440 минутам. Правило для промежутка между 6 и 7 часами не задано справочником. Это основано на подписи печатного компонента; в UI ввода единица отсутствует.
8. Зафиксированы исключение отдельного city/village и подпись тем же механизмом, что для 066, по решению пользователя.

## Решения и вопросы вне этой проверки 003

- 027 отправляется при сохранении, file_ids пока отложены. Больница в п. 17 проверена как адресат направления, ServiceRequest.performer.
- Пользователь выбрал одну систему идентификаторов для направления и госпитализации. Вопрос medical_case_id текущего приёма и hospitalization.id назначенной госпитализации остаётся отдельным, поскольку это разные последовательности номеров.
- Для типа назначенной госпитализации проверяется ServiceRequest.orderDetail.parameter. Конкретный код параметра и значений пока не внесён.
- Изменение статуса направления означает, например, переход created → approved, rejected или completed. Решение «отправлять при сохранении» принято. Обновление статуса ServiceRequest отдельно от сохранения выписки ещё не согласовано.
- Время отправки 003 относительно 066 влияет на доступность и согласованность общей карты. Данные 066 могут быть прочитаны непосредственно в DMED до её отправки в DHP; отправленная 066 не является обязательным техническим условием формирования 003.

## Результат по строкам


| Статус проверки DMED | Записей |
|---|---|
| UI подтверждён; контракт API требует проверки | 31 |
| Группирующая строка | 1 |
| Два источника операций требуют сопоставления | 2 |
| Исключено в источнике | 2 |
| Источник DMED не установлен | 32 |
| Маппинг не определён | 1 |
| Правило 066 согласовано | 4 |
| Правило расчёта требует сверки | 1 |
| Пробел таблицы IG | 1 |
| Производное значение | 2 |
| Процесс согласован; поля подписи не проверены | 12 |
| Семантика требует подтверждения | 4 |
| Структурная строка | 5 |
| Схема подтверждена | 33 |
| Схема частично подтверждена | 26 |

Наличие FHIR-пути и наличие подтверждённого источника DMED оцениваются отдельно. «Источник не установлен» означает предел этой проверки.

| Лист | Исходник | Поле | В Google Sheets | FHIR в IG / результат сверки | Источник DMED | Проверка |
|---|---|---|---|---|---|---|
| 2 | 2 | Наименование учреждения | UZCoreOrganization.name | Organization.name | hospitalization.clinic | Схема подтверждена |
| 3 | 3 | Медицинская карта стационарного больного | UZCorePatient.identifier:healthCardId.value | Encounter.identifier | hospitalization.id; medical-record-number | Схема подтверждена |
| 4 | 4 | Дата поступления в стацинар | UZCoreEncounter.actualPeriod.start | Encounter.actualPeriod.start | hospitalization.start_at | Схема подтверждена |
| 5 | 5 | Время поступления в стационар | UZCoreEncounter.actualPeriod.start | Encounter.actualPeriod.start | hospitalization.start_at | Схема подтверждена |
| 6 | 6 | Дата выписти из стационара | UZCoreEncounter.actualPeriod.end | Encounter.actualPeriod.end | hospitalization.end_at | Схема подтверждена |
| 7 | 7 | Время выписки из стационара | UZCoreEncounter.actualPeriod.end | Encounter.actualPeriod.end | hospitalization.end_at | Схема подтверждена |
| 8 | 8 | Отделение стационара | UZCoreEncounter.location:ward.location -> Reference(UZCoreLocation) | Encounter.location → Location | hospitalization.department; правила 066 | Схема частично подтверждена |
| 9 | 9 | Номер палаты | UZCoreLocation.identifier.value / name (form=room) | Location.identifier[unit] | hospitalization.chamber | Схема подтверждена |
| 10 | 10 | Переведен в отделение | UZCoreEncounter.location:transferredWard.location + period | Encounter.location + period | В ответе есть redirections; в тесте пустой массив | Схема частично подтверждена |
| 11 | 11 | Количество проведенных койко-дней | UZCoreEncounter.length.value + unit/system/code | Encounter.length | Период госпитализации; функция расчёта есть в компоненте | Правило расчёта требует сверки |
| 12 | 12 | Виды транспортировки пациента | UZCoreObservation(code=patient-transport-mobility).valueCodeableConcept | Observation.valueCodeableConcept | title-page.transporting_method; CM transporting-method | Схема подтверждена |
| 13 | 13 | Группа крови | UZCoreObservation.code (LOINC 883-9) + valueCodeableConcept | Observation.valueCodeableConcept | title-page.blood_group; CM формы 111 | Схема подтверждена |
| 14 | 14 | Резус-фактор | UZCoreObservation.code (LOINC 10331-7) + valueCodeableConcept | Observation.valueCodeableConcept | title-page.rh_factor; CM формы 111 | Схема подтверждена |
| 15 | 15 | Наименование лекарственного препарата | UZCoreAllergyIntolerance.code | AllergyIntolerance.code / reaction.manifestation | title-page.side_effects_medications — одно текстовое поле | Схема частично подтверждена |
| 16 | 16 | Проявление побочного действия | UZCoreAllergyIntolerance.reaction.manifestation.concept.text | AllergyIntolerance.code / reaction.manifestation | title-page.side_effects_medications — одно текстовое поле | Схема частично подтверждена |
| 17 | 17 | ФИО пациента | UZCorePatient.name:official | Patient.name | hospitalization.patient.name/surname/patronymic | Схема подтверждена |
| 18 | 18 | Дата рождения пациента | UZCorePatient.birthDate | Patient.birthDate | hospitalization.patient.birthdate | Схема подтверждена |
| 19 | 19 | Пол пациента | UZCorePatient.gender | Patient.gender | hospitalization.patient.gender | Схема подтверждена |
| 20 | 20 | Рост пациента | UZCoreObservation(code=LOINC 8302-2).valueQuantity | Observation 8302-2, valueQuantity | title-page.height | Схема подтверждена |
| 21 | 21 | Вес пациента | UZCoreObservation(code=LOINC 29463-7).valueQuantity | Observation 29463-7, valueQuantity | title-page.weight | Схема подтверждена |
| 22 | 22 | Температура пациента | UZCoreObservation(code=LOINC 8310-5).valueQuantity | Observation 8310-5, valueQuantity | title-page.temperature | Схема подтверждена |
| 23 | 23 | Место жительства пациента | UZCorePatient.address:uzAddress[use=home] | Patient.address[uzAddress] | title-page.permanent_residence_address; данные адреса patient | Схема подтверждена |
| 24 | 24 | Адрес по прописке | Omit from CHR-003 profile — field is not present in the official source form | Отдельная строка исключена в исходной таблице | В таблице пометка Remove / not in source document | Исключено в источнике |
| 25 | 25 | Место жительства близких родственников пациента | UZCoreRelatedPerson.address | RelatedPerson.address / telecom | Отдельный контракт родственников на титульном листе не установлен | Источник DMED не установлен |
| 26 | 26 | Номер телефона близких родственников | UZCoreRelatedPerson.telecom[system=phone].value | RelatedPerson.address / telecom | Отдельный контракт родственников на титульном листе не установлен | Источник DMED не установлен |
| 27 | 27–32 | Место работы/учёбы, профессия или инвалидность | UZCoreSocioeconomicObservation (single instance; code selects one variant) | Группа социального анамнеза | В титульном листе одно свободное working_place | Группирующая строка |
| 28 | 27–32.1 | Место работы | UZCoreSocioeconomicObservation(code=workplace).valueString | Observation.valueString, LOINC 80427-8 | title-page.working_place; fallback patient.working_place | Схема подтверждена |
| 29 | 27–32.2 | Профессия или должность | UZCoreSocioeconomicObservation(code=occupation).valueCodeableConcept | Социальные Observation по типу значения | Один текст working_place не подтверждает раздельные профессию, учёбу и инвалидность | Источник DMED не установлен |
| 30 | 27–32.3 | Место учёбы | UZCoreSocioeconomicObservation(code=education-institution).valueString | Социальные Observation по типу значения | Один текст working_place не подтверждает раздельные профессию, учёбу и инвалидность | Источник DMED не установлен |
| 31 | 27–32.4 | Детское учреждение | UZCoreSocioeconomicObservation(code=child-institution).valueString | Социальные Observation по типу значения | Один текст working_place не подтверждает раздельные профессию, учёбу и инвалидность | Источник DMED не установлен |
| 32 | 27–32.5 | Вид инвалидности | UZCoreSocioeconomicObservation(code=disability-type).valueCodeableConcept | Социальные Observation по типу значения | Один текст working_place не подтверждает раздельные профессию, учёбу и инвалидность | Источник DMED не установлен |
| 33 | 27–32.6 | Группа инвалидности | UZCoreSocioeconomicObservation(code=disability-level).valueCodeableConcept | Социальные Observation по типу значения | Один текст working_place не подтверждает раздельные профессию, учёбу и инвалидность | Источник DMED не установлен |
| 34 | 32a | Инвалид войны | UZCoreSocioeconomicObservation(code=war-disability-status).valueBoolean | Социальные Observation по типу значения | Один текст working_place не подтверждает раздельные профессию, учёбу и инвалидность | Источник DMED не установлен |
| 35 | 33 | Кем направлен больной (название лечебного учреждения) | UZCoreEncounter.admission.origin -> Reference(UZCoreOrganization) | Encounter.admission.origin → Organization | hospitalization.sending_clinic | Схема подтверждена |
| 36 | 34 | Пациент доставлен в больницу экстренно | UZCoreEncounter.priority (derived jointly with source row 36) | Encounter.priority | Карта 066 той же госпитализации | Правило 066 согласовано |
| 37 | 35 | Доставлен транспортом скорой медицинской помощи | UZCoreObservation(code=LOINC LP97912-7).valueBoolean | Observation LP97912-7, valueBoolean | delivered_by_ambulance карты 066 | Правило 066 согласовано |
| 38 | 36 | Период от события до госпитализации | UZCoreEncounter.priority | Полное соответствие hospitalization_reason отсутствует | title-page.hospitalization_reason; priority берётся из 066 | Маппинг не определён |
| 39 | 36a | Время от начала заболевания/травмы до госпитализации | UZCoreCondition.onset[x] | Observation.valueCodeableConcept, disease-injury-delay-cs | title-page.time_to_admission; печатная единица daqiqa; категории 6 / 7–24 / более 24 часов; округление между 6 и 7 часами не задано | Схема частично подтверждена |
| 40 | 37 | Диагноз (МКБ-10) указанный в направлении пациента | UZCoreCondition.code + UZCoreEncounter.diagnosis.use=referral | Condition.code / category=referral | hospitalization.disease_codes | Схема подтверждена |
| 41 | 38 | Диагноз (МКБ-10) поставленный в приёмном отделении | UZCoreCondition.code + UZCoreEncounter.diagnosis.use=admission | Condition.code / category=admission | Компонент фильтрует диагнозы source_code=primary_examination_appointment | Схема частично подтверждена |
| 42 | 39 | Диагноз (МКБ-10), поставленный в стационаре | UZCoreCondition.code + recordedDate + recorder; UZCoreEncounter.diagnosis.use=inpatient [repeatable] | Добавлена строка Condition.code / recordedDate | Компонент фильтрует clinical_diagnosis_justification_epicrisis / landmark_epicrisis; поле даты требует уточнения | Схема частично подтверждена |
| 43 | 40 | Дата установления диагноза | UZCoreCondition.recordedDate | Condition.recordedDate | В UI есть дата диагноза; точное имя API-поля не подтверждено | Схема частично подтверждена |
| 44 | 41 | Подпись врача | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 45 | 42 | Окончательный диагноз, поставленный в стационаре | Three repeatable UZCoreCondition entries + UZCoreEncounter.diagnosis.use=[principal\|complication\|comorbidity] | Condition.category + под-section по роли диагноза | Компонент выбирает kind=final; main/critical/остальные; CM 027 покрывает пять ролей | Схема частично подтверждена |
| 46 | 43 | В течение текущего года по данному заболеванию госпитализация | UZCoreEncounter.admission.reAdmission | Encounter.admission.reAdmission | Карта 066 той же госпитализации | Правило 066 согласовано |
| 47 | 44 | Общее количество госпитализаций за год | UZCoreObservation(code=annual-hospitalization-count).valueInteger | Observation.valueInteger, num-previous-hospitalizations | title-page.count_readmission_same_reason; смысл количества за год отдельно не доказан | Семантика требует подтверждения |
| 48 | 45 | Наименование хирургической операции | UZCoreProcedure.code | Procedure.code | surgical_operations[].title — свободный текст; источник кодированного вмешательства отдельно | Схема частично подтверждена |
| 49 | 46 | Дата хирургической операции | UZCoreProcedure.occurrenceDateTime | Procedure.occurrenceDateTime | surgical_operations[].datetime в титульном листе; start_date кодированного вмешательства по принятому решению | Два источника операций требуют сопоставления |
| 50 | 47 | Время хирургической операции | UZCoreProcedure.occurrenceDateTime | Procedure.occurrenceDateTime | surgical_operations[].datetime в титульном листе; start_date кодированного вмешательства по принятому решению | Два источника операций требуют сопоставления |
| 51 | 48 | Методы обезболивания | Separate UZCoreProcedure(code=anesthesia) and/or MedicationAdministration | Procedure.note.text | surgical_operations[].method_anesthesia; согласованное решение | Схема подтверждена |
| 52 | 49 | Послеоперационные осложнения | UZCoreProcedure.complication.concept or .reference(Condition) | Procedure.complication / Condition | surgical_operations[].complications — текст | Схема частично подтверждена |
| 53 | 50 | ФИО врача-хирурга | UZCoreProcedure.performer.actor -> Reference(UZCorePractitionerRole) | Procedure.performer.actor → PractitionerRole | title-page.operating_doctor — текст; идентификатор хирурга в этом поле не установлен | Схема частично подтверждена |
| 54 | 51 | Наименовние других видов лечения | UZCoreProcedure.code | Procedure.code / text | title-page.treatment — текст; SNOMED 71388002 согласован пользователем | Схема подтверждена |
| 55 | 52 | Идентификатор справки нетрудоспособности(болничный лист) | UZCoreComposition.identifier.system + value | SickLeaveCarePlan.identifier | sick_leaves[].number; контракт редактирования титульного листа | Схема подтверждена |
| 56 | 53 | Дата начала открытия больничного листа | UZCoreComposition.event.period.start | CarePlan.period.start | sick_leaves[].start_date | Схема подтверждена |
| 57 | 54 | Дата окончания больничного листа | UZCoreComposition.event.period.end | CarePlan.period.end | sick_leaves[].end_date | Схема подтверждена |
| 58 | 55 | Результат лечения | UZCoreEncounter.admission.dischargeDisposition | Encounter.dischargeDisposition / subjectStatus; Observation death-context | title-page.result_treatment; clinical state из 066 | Схема частично подтверждена |
| 59 | 56 | Переведен в другое учреждение (наименование этого учереждения) | UZCoreEncounter.admission.destination -> Reference(UZCoreOrganization\|UZCoreLocation) | Encounter.admission.destination | title-page.transferred_another_department — текст учреждения | Схема частично подтверждена |
| 60 | 57 | Состояние трудоспособности | UZCoreObservation(code=work-capacity-status).valueCodeableConcept | Observation.valueCodeableConcept | title-page.working_capacity; CM working-capacity | Схема подтверждена |
| 61 | 58 | Заключение для направления на экспертизу | UZCoreComposition.section:expertise-referral-conclusion.text | section[expertiseReferralConclusion].text | title-page.report | Схема подтверждена |
| 62 | 59 | Особые(отдельные) признаки | UZCoreComposition.section:special-marks.text | section[specialMarks].text | title-page.additional_signs | Схема подтверждена |
| 63 | 60 | Осмотр при поступлении | UZCoreComposition.section:admission-screening.entry -> Reference(UZCoreDiagnosticReport \| UZCoreObservation) | section[admissionScreening].entry | analyses[].title/result/date_of_conduct; other_analyses; 18 текущих токенов | Схема подтверждена |
| 64 | 61 | Ф.И.О лечащего врача | UZCoreEncounter.participant.actor -> Reference(UZCorePractitionerRole) | PractitionerRole в responsiblePersons; Composition.author | hospitalization.doctor / department_head_doctor; ПИНФЛ как идентификатор по решению | Схема частично подтверждена |
| 65 | 62 | Подпись лечащего врача | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 66 | 63 | Ф.И.О зав. отделения | UZCoreEncounter.participant.actor -> Reference(UZCorePractitionerRole) | PractitionerRole в responsiblePersons; Composition.author | hospitalization.doctor / department_head_doctor; ПИНФЛ как идентификатор по решению | Схема частично подтверждена |
| 67 | 64 | Подпись  зав. отделения | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 68 | 65 | Лист первичного осмотра пациента в приемном отделении | UZCoreComposition.section:admission-examination.title | section[primaryExamination] | В medical-case есть appointments; primary_examination выбирается компонентом | Структурная строка |
| 69 | 66 | Дата осмотра пациента | UZCoreComposition.date (combined dateTime) | В IG Condition.recordedDate предварительного диагноза | В medical-case.appointments есть date/time; эквивалентность дате диагноза не доказана | Семантика требует подтверждения |
| 70 | 67 | Время осмотра пациента | UZCoreComposition.date (combined dateTime) | В IG Condition.recordedDate предварительного диагноза | В medical-case.appointments есть date/time; эквивалентность дате диагноза не доказана | Семантика требует подтверждения |
| 71 | 68 | ФИО пациента | UZCorePatient.name:official | Patient.name | hospitalization.patient.name/surname/patronymic | Схема подтверждена |
| 72 | 69 | Возраст пациента | Derived age = difference between UZCorePatient.birthDate and examination date | Возраст из Patient.birthDate и даты осмотра | birthdate подтверждён; дата осмотра требует выбора источника | Производное значение |
| 73 | 70 | Пол пациента | Omit duplicate from this section — gender is captured once in source row 19 | Повтор пола исключён в исходной таблице | Patient.gender уже строка 19 | Исключено в источнике |
| 74 | 71 | Метод прибытия пациента: | UZCoreEncounter.admission.admitSource | Encounter.admission.admitSource | has_direction карты 066 | Правило 066 согласовано |
| 75 | 72 | Жалобы | UZCoreEncounter.reason.value.concept or .reference(UZCoreCondition) | Observation жалоб с bodySite/note/effectivePeriod.start | В hospitalization есть complaints_anamnesis; раздельных полей локализации, характера и начала не установлено | Источник DMED не установлен |
| 76 | 73 | Локализация | UZCoreCondition.bodySite | Observation жалоб с bodySite/note/effectivePeriod.start | В hospitalization есть complaints_anamnesis; раздельных полей локализации, характера и начала не установлено | Источник DMED не установлен |
| 77 | 74 | Характер | UZCoreCondition.note.text | Observation жалоб с bodySite/note/effectivePeriod.start | В hospitalization есть complaints_anamnesis; раздельных полей локализации, характера и начала не установлено | Источник DMED не установлен |
| 78 | 75 | Начоло приступа | UZCoreCondition.onsetDateTime | Observation жалоб с bodySite/note/effectivePeriod.start | В hospitalization есть complaints_anamnesis; раздельных полей локализации, характера и начала не установлено | Источник DMED не установлен |
| 79 | 76 | Другие жалобы | UZCoreEncounter.reason.value.concept or .reference(UZCoreCondition) | Observation жалоб с bodySite/note/effectivePeriod.start | В hospitalization есть complaints_anamnesis; раздельных полей локализации, характера и начала не установлено | Источник DMED не установлен |
| 80 | 77 | Анамнез | UZCoreComposition.section:anamnesis.text | section[anamnesis].text | hospitalization.complaints_anamnesis — объединённое поле | Схема частично подтверждена |
| 81 | 78 | Общее текущее состояния(наличие патологических изменений в органах при обследовании) | UZCoreComposition.section:status-praesens.text | section[statusPraesens / statusLocalis].text | hospitalization.clinical_examination; разделение общего и местного состояния не доказано | Схема частично подтверждена |
| 82 | 79 | Местное состояние | UZCoreComposition.section:status-localis.text | section[statusPraesens / statusLocalis].text | hospitalization.clinical_examination; разделение общего и местного состояния не доказано | Схема частично подтверждена |
| 83 | 80 | Предварительный диагноз | UZCoreCondition.code + UZCoreEncounter.diagnosis.use=preliminary | Condition.code + verificationStatus=provisional | Медицинский случай и осмотры есть; точный источник предварительного диагноза не подтверждён | Источник DMED не установлен |
| 84 | 81 | План обследования | UZCoreComposition.section:examination-plan.entry -> Reference(UZCoreDiagnosticReport) | ServiceRequest; результат DiagnosticReport.basedOn | План обследований есть в UI; услуга, врач, дата/время, статус | UI подтверждён; контракт API требует проверки |
| 85 | 82 | Общий анализ крови | UZCoreComposition.section:diagnostic-results.entry -> Reference(UZCoreDiagnosticReport) | DiagnosticReport по виду исследования; ServiceRequest консультации | Раздел анализов и план обследований есть в UI; точные результаты и компоненты не сняты | UI подтверждён; контракт API требует проверки |
| 86 | 83 | Общий анализ мочи | UZCoreComposition.section:diagnostic-results.entry -> Reference(UZCoreDiagnosticReport) | DiagnosticReport по виду исследования; ServiceRequest консультации | Раздел анализов и план обследований есть в UI; точные результаты и компоненты не сняты | UI подтверждён; контракт API требует проверки |
| 87 | 84 | Биохимический анализ (показатели) | UZCoreComposition.section:diagnostic-results.entry -> Reference(UZCoreDiagnosticReport) | DiagnosticReport по виду исследования; ServiceRequest консультации | Раздел анализов и план обследований есть в UI; точные результаты и компоненты не сняты | UI подтверждён; контракт API требует проверки |
| 88 | 85 | Коагулограмма | UZCoreComposition.section:diagnostic-results.entry -> Reference(UZCoreDiagnosticReport) | DiagnosticReport по виду исследования; ServiceRequest консультации | Раздел анализов и план обследований есть в UI; точные результаты и компоненты не сняты | UI подтверждён; контракт API требует проверки |
| 89 | 86 | ЭКГ | UZCoreComposition.section:diagnostic-results.entry -> Reference(UZCoreDiagnosticReport) | DiagnosticReport по виду исследования; ServiceRequest консультации | Раздел анализов и план обследований есть в UI; точные результаты и компоненты не сняты | UI подтверждён; контракт API требует проверки |
| 90 | 87 | Рентгенологическое исследование | UZCoreComposition.section:diagnostic-results.entry -> Reference(UZCoreDiagnosticReport) | DiagnosticReport по виду исследования; ServiceRequest консультации | Раздел анализов и план обследований есть в UI; точные результаты и компоненты не сняты | UI подтверждён; контракт API требует проверки |
| 91 | 88 | УЗИ | UZCoreComposition.section:diagnostic-results.entry -> Reference(UZCoreDiagnosticReport) | DiagnosticReport по виду исследования; ServiceRequest консультации | Раздел анализов и план обследований есть в UI; точные результаты и компоненты не сняты | UI подтверждён; контракт API требует проверки |
| 92 | 89 | ЭФГДС | UZCoreComposition.section:diagnostic-results.entry -> Reference(UZCoreDiagnosticReport) | DiagnosticReport по виду исследования; ServiceRequest консультации | Раздел анализов и план обследований есть в UI; точные результаты и компоненты не сняты | UI подтверждён; контракт API требует проверки |
| 93 | 90 | МСКТ/МРТ | UZCoreComposition.section:diagnostic-results.entry -> Reference(UZCoreDiagnosticReport) [repeat for CT and MRI] | DiagnosticReport по виду исследования; ServiceRequest консультации | Раздел анализов и план обследований есть в UI; точные результаты и компоненты не сняты | UI подтверждён; контракт API требует проверки |
| 94 | 91 | Консультация специалиста | UZCoreServiceRequest.code | DiagnosticReport по виду исследования; ServiceRequest консультации | Раздел анализов и план обследований есть в UI; точные результаты и компоненты не сняты | UI подтверждён; контракт API требует проверки |
| 95 | 92 | Оказанная помощь пациенту | UZCoreComposition.section:care-provided.title | Оказанная помощь входит в medicationSheet / procedureSheet | Курсы лечения есть отдельно от титульного листа | Структурная строка |
| 96 | 93 | Название назначенного лекарственного препарата | MedicationRequest.medication.concept or .reference(UZCoreMedication) | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 97 | 94 | Количество назначенного лекарственного препарата | MedicationRequest.dosageInstruction.doseAndRate.doseQuantity | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 98 | 95 | Способ введения назначенного лекарственного препарата | MedicationRequest.dosageInstruction.route | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 99 | 96 | Время (результат проведенного лечения) | MedicationAdministration.occurrenceDateTime | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 100 | 97 | Врач (результат проведенного лечения) | MedicationAdministration.note.text + note.authorReference -> Reference(UZCorePractitioner) | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 101 | 98 | Медсестра (результат проведенного лечения) | MedicationAdministration.note.text + note.authorReference -> Reference(UZCorePractitioner) | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 102 | 99 | Состояния в динамике | UZCoreObservation(code=clinical-course).valueString | Observation.valueString, LOINC 8648-8 | Дневник осмотров есть в UI, в тесте пустой | UI подтверждён; контракт API требует проверки |
| 103 | 100 | Рекомендации врача | CarePlan.activity.plannedActivityReference -> ServiceRequest/MedicationRequest; note for narrative | CarePlan.description | hospitalization.recommendations существует | Схема частично подтверждена |
| 104 | 101 | Ф.И.О. лечащего врача | UZCoreEncounter.participant.actor -> Reference(UZCorePractitionerRole) | PractitionerRole в responsiblePersons; Composition.author | hospitalization.doctor / department_head_doctor; ПИНФЛ как идентификатор по решению | Схема частично подтверждена |
| 105 | 102 | Ф.И.О лица ответственное за комплекс | UZCoreEpisodeOfCare.careManager -> Reference(UZCorePractitionerRole) | PractitionerRole в responsiblePersons | Отдельный сотрудник, ответственный за комплекс, в полученных ответах не установлен | Источник DMED не установлен |
| 106 | 103 | Осмотр врача отделения (план обследования и лечения) | UZCoreComposition.section:department-examination.title + text | section[departmentExamination].text (+ entry) | Раздел осмотров существует; payload осмотра в тесте пустой | UI подтверждён; контракт API требует проверки |
| 107 | 104 | Список лекарств, назначенных врачом | UZCoreComposition.section:medication-orders.title | section[medicationSheet] | Курсы лечения существуют отдельно | Структурная строка |
| 108 | 105 | Номер карты пациента | UZCorePatient.identifier:healthCardId.value | Patient.identifier[healthCardId] | hospitalization.patient.number_med_card | Схема подтверждена |
| 109 | 106 | ФИО пациента | UZCorePatient.name:official | Patient.name | hospitalization.patient.name/surname/patronymic | Схема подтверждена |
| 110 | 107 | Ф.И.О лечащего врача | UZCoreEncounter.participant.actor -> Reference(UZCorePractitionerRole) | PractitionerRole в responsiblePersons; Composition.author | hospitalization.doctor / department_head_doctor; ПИНФЛ как идентификатор по решению | Схема частично подтверждена |
| 111 | 108 | Отделение стационара | UZCoreEncounter.location:ward.location -> Reference(UZCoreLocation) | Encounter.location → Location | hospitalization.department; правила 066 | Схема частично подтверждена |
| 112 | 109 | Номер палаты | UZCoreLocation.identifier.value / name (form=room) | Location.identifier[unit] | hospitalization.chamber | Схема подтверждена |
| 113 | 110 | Дата назначения лекарства | MedicationRequest.authoredOn | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 114 | 111 | Название назначенного лекарственного препарата | MedicationRequest.medication.concept or .reference(UZCoreMedication) | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 115 | 112 | Количество назначенного лекарственного препарата | MedicationRequest.dosageInstruction.doseAndRate.doseQuantity | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 116 | 113 | Способ введения назначенного лекарственного препарата | MedicationRequest.dosageInstruction.route | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 117 | 114 | Время выполнения лечения | MedicationRequest.dosageInstruction.timing | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 118 | 115 | Источник лекарств и медицинских изделий | MedicationRequest.insurance -> Reference(UZCoreCoverage) (if funding source); otherwise governed extension | MedicationRequest.insurance → Coverage | Правило источника финансирования 066; отдельный manbasi лекарственного листа не подтверждён | Семантика требует подтверждения |
| 119 | 116 | Назначение диетического стола № | NutritionOrder.oralDiet.type | Observation 81663-7, valueCodeableConcept | Отдельное структурированное назначение диеты в проверенных ответах не найдено | Источник DMED не установлен |
| 120 | 117 | Дата исполнения лечения(врачом / медсестрой ) | MedicationAdministration.occurrenceDateTime | MedicationRequest / MedicationAdministration | Демо-курс открывается из госпитализации; записей назначения в просмотренном курсе нет | UI подтверждён; контракт API требует проверки |
| 121 | 118 | Подпись лечащего врача | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 122 | 119 | Подпись дневной медсестры | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 123 | 120 | Подпись дежурной медсестры | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 124 | 121 | Подпись пациента | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 125 | 122 | Назначенное исследование | UZCoreComposition.section:ordered-investigations.entry -> Reference(UZCoreDiagnosticReport) | ServiceRequest / DiagnosticReport в procedureSheet | План обследований существует; точный контракт назначения требует проверки | UI подтверждён; контракт API требует проверки |
| 126 | 123 | Дата проведенного исследоания | UZCoreDiagnosticReport.effectiveDateTime and/or issued | DiagnosticReport.effectiveDateTime | analyses[].date_of_conduct подтверждён для анализов титульного листа; полные лабораторные отчёты отдельно | Схема частично подтверждена |
| 127 | 124 | Подпись  исполняющего обязанности медсестры | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 128 | 125 | Назначенные процедуры | UZCoreServiceRequest.code | ServiceRequest / Procedure.occurrenceDateTime / Procedure.used | В курсе есть вкладки Проведенные процедуры и Расходники; записей в демо нет | UI подтверждён; контракт API требует проверки |
| 129 | 126 | Дата проведенной процедуры | UZCoreProcedure.occurrenceDateTime | ServiceRequest / Procedure.occurrenceDateTime / Procedure.used | В курсе есть вкладки Проведенные процедуры и Расходники; записей в демо нет | UI подтверждён; контракт API требует проверки |
| 130 | 127 | Подпись  исполняющего обязанности медсестры | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 131 | 128 | Используемые материалы | UZCoreProcedure.used.concept or .reference(Device\|Medication\|Substance) | ServiceRequest / Procedure.occurrenceDateTime / Procedure.used | В курсе есть вкладки Проведенные процедуры и Расходники; записей в демо нет | UI подтверждён; контракт API требует проверки |
| 132 | 129 | Дата исполнения | UZCoreProcedure.occurrenceDateTime | ServiceRequest / Procedure.occurrenceDateTime / Procedure.used | В курсе есть вкладки Проведенные процедуры и Расходники; записей в демо нет | UI подтверждён; контракт API требует проверки |
| 133 | 130 | Подпись дневной медсестры | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 134 | 131 | Подпись дежурной медсестры | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 135 | 132 | Подпись пациента | UZCoreProvenance.signature[type,when,who,sigFormat,data] | Provenance.signature | Подпись по механизму 066 согласована пользователем; отдельные подписи врача, сестры и пациента ещё требуют проверки | Процесс согласован; поля подписи не проверены |
| 136 | 133 | Температурный лист | UZCoreComposition.section:temperature-chart.title | section[temperatureChart] | В титульном листе отдельной температурной таблицы нет | Структурная строка |
| 137 | 134 | День болезни пациента | UZCoreObservation(code=day-of-illness).valueInteger | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 138 | 135 | Дни пребывания пациента в стационаре | Derived day-of-stay index from Observation.effectiveDateTime and UZCoreEncounter.actualPeriod.start | День пребывания из actualPeriod и даты измерения | start_at есть; серия измерений не подтверждена | Производное значение |
| 139 | 136 | Утренний пульс пациента (замер производится ) | UZCoreObservation(code=LOINC 8867-4).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 140 | 137 | Вечерний пульс пациента (замер производится ) | UZCoreObservation(code=LOINC 8867-4).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 141 | 138 | Утреннее артериальное давление пациента (замер производится) | UZCoreObservation(code=LOINC 85354-9).component[systolic\|diastolic].valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 142 | 139 | Вечернее артериальное давление пациента (замер производится) | UZCoreObservation(code=LOINC 85354-9).component[systolic\|diastolic].valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 143 | 140 | Утренняя температура пациента (в град.)  (замер производится) | UZCoreObservation(code=LOINC 8310-5).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 144 | 141 | Вечерняя температура пациента (в град.)  (замер производится) | UZCoreObservation(code=LOINC 8310-5).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 145 | 142 | Утренняя частота дыхания | UZCoreObservation(code=LOINC 9279-1).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 146 | 143 | Вечерняя частота дыхания | UZCoreObservation(code=LOINC 9279-1).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 147 | 144 | Утренний вес | UZCoreObservation(code=LOINC 29463-7).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 148 | 145 | Вечерний вес | UZCoreObservation(code=LOINC 29463-7).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 149 | 146 | Выпито жидкости утром | UZCoreObservation(code=fluid-intake-part-of-day).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 150 | 147 | Выпито жидкости  вечером | UZCoreObservation(code=fluid-intake-part-of-day).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 151 | 148 | Суточное количество мочи | UZCoreObservation(code=LOINC 9192-6).valueQuantity | Observation по показателю и времени измерения | Разовых height/weight/temperature/heart_rate недостаточно для утренней/вечерней серии и баланса жидкости | Источник DMED не установлен |
| 152 | 149 | Записи врача | UZCoreComposition.section:diary.text | section[diary].text | Дневник осмотров в UI, в тесте пустой | UI подтверждён; контракт API требует проверки |
| 153 | 150 | Дневник | UZCoreComposition.section:diary.title + repeated diary subsections | section[diary] | Дневник осмотров существует | Структурная строка |
| 154 | 151 | Дата заполнения | Diary entry date context (Composition.date or profiled section extension) | Точного структурированного поля даты записи дневника в маппинге IG нет | Нужен контракт записи дневника; подмена Composition.date не обоснована | Пробел таблицы IG |
| 155 | 152 | Окончательное медицинское заключение о заболевании (после смерти) | UZCoreComposition.type + title + section:postmortem-conclusion.text | section[postmortemConclusion].text + Condition причин смерти | Смертельного случая в проверенной тестовой госпитализации нет | Источник DMED не установлен |
| 156 | 153 | Ф.И.О лечащего враача | UZCoreComposition.author -> Reference(UZCorePractitionerRole) | PractitionerRole в responsiblePersons; Composition.author | hospitalization.doctor / department_head_doctor; ПИНФЛ как идентификатор по решению | Схема частично подтверждена |
| 157 | 154 | Ф.И.О  зав. отделения | UZCoreComposition.attester.party -> Reference(UZCorePractitionerRole) + mode + time | PractitionerRole в responsiblePersons; Composition.author | hospitalization.doctor / department_head_doctor; ПИНФЛ как идентификатор по решению | Схема частично подтверждена |
| 158 | 155 | Ф.И.О заместителя главврача | UZCoreComposition.attester.party -> Reference(UZCorePractitionerRole) + mode + time | PractitionerRole заместителя главврача | Отдельный заместитель главврача в полученных ответах не установлен | Источник DMED не установлен |

## Исторический список содержательных пробелов (23 ноября)

1. hospitalization_reason — полное соответствие для заболевания, травмы, ДТП и плановой госпитализации. Google-таблица связывает строку 36 с priority, но согласовано брать priority из 066.
2. Для больничных диагнозов строки 39 добавлен путь Condition.code / recordedDate; источник кодов установлен в компоненте, имя API-поля даты ещё не проверено.
3. Дата осмотра не доказана равной Condition.recordedDate. Точная дата записи дневника также не имеет отдельного структурированного пути в таблице IG.
4. Совмещённые строки title-page.side_effects_medications и working_place нельзя автоматически разделить на все структурированные поля исходной формы.
5. Источники полного лекарственного листа, исполнений, температурной серии, баланса жидкости, diet и отдельных подписей ещё требуют непустых ответов API.
6. Названия RW не устанавливают аналит и сыворотку для 22461-8; названия ВИЧ — метод и состав исследования для 56888-1. Для точного LOINC нужен лабораторный источник.
7. Правила нормализации произвольных результатов анализов и единица time_to_admission нуждаются в подтверждении контракта backend, если он отличается от текущего UI. Для времени между 6 и 7 часами справочник не задаёт категорию или округление.
8. Количество count_readmission_same_reason не доказано равным числу всех госпитализаций за год.

## Проверка сборки

Окончательная версия: SUSHI 0 ошибок, 1530 одинаковых предупреждений translation 5.4.0 / 5.3.0 из неизменённой конфигурации зависимостей. Проверка версий: все 48 артефактов с явной версией соответствуют SemVer. Проверка терминологии: 0 новых проблем, 49 известных из baseline; также отмечена одна устаревшая запись baseline. git diff --check пройден. Локальная онлайн-проверка терминологии недоступна. Автономный IG Publisher дошёл до Run Template и остановлен на внешней загрузке XSD через Ant Get; итоговый qa.json не сформирован. Полная сборка опубликованного изменения (коммит 9c6244bce3acd3999a01869abe2b11c110f670fa) завершена в GitHub: 0 ошибок, 3 предупреждения, 0 битых ссылок. Все три предупреждения точно совпадают с предыдущим коммитом 93e6821 и касаются повторяющихся HTML id страницы cervical-breast-cancer-screening в en/ru/uz. Итог QA красный из-за порога 0 предупреждений; новых предупреждений формы 003 нет. [Итог сборки](https://github.com/icmrnbw/digital-health-integration/actions/runs/45171501280/job/137681903940). Дополнительный коммит отчёта меняет только этот Markdown-документ, FHIR-артефакты остаются проверенными на 9c6244b. Отдельно проверены все 183 внутренние ссылки примера, номер госпитализации 20760, примечание об анестезии, 21 исходный код анализов и структура таблиц отчёта. Окончательное оформление маппинга en/ru/uz и расширенного отчёта проверено в локальном Chrome. Таблицы отчёта содержат 157 строк покрытия, 31 поле title-page и 18 токенов анализов; горизонтального переполнения на проверенном экране нет. После временной потери подключения проверка завершена в новой вкладке.


## Все поля ответа title-page

В проверенном ответе 31 верхнеуровневое поле. Таблица ниже включает и поля, которых нет отдельной строкой в исходном Google Sheets.

| Поле DMED | Результат проверки |
|---|---|
| `transporting_method` | Observation транспортировки, CM transporting-method |
| `blood_group` | Observation ABO, ConceptMap формы 111 |
| `rh_factor` | Observation Rh, ConceptMap формы 111 |
| `side_effects_medications` | AllergyIntolerance, исходное объединённое описание; разбиение на препарат и проявление требует правила |
| `height` | Observation 8302-2, cm |
| `weight` | Observation 29463-7, kg |
| `temperature` | Observation 8310-5, Cel |
| `working_place` | Observation.valueString; отдельные варианты профессии/учёбы из этого текста не установлены |
| `permanent_residence_areas` | Не передаётся по решению пользователя от 23.11 |
| `permanent_residence_address` | Patient.address.text по существующему правилу |
| `quickly_taken` | Отдельно не меняет Encounter.priority; priority берётся из 066 |
| `transport` | Свободное описание транспорта; отдельное соответствие не установлено. Не подменяет признак скорой из 066 |
| `hospitalization_reason` | Полное соответствие disease/injury/car_accident/planned не определено |
| `time_to_admission` | Observation категории задержки; печатная единица минуты |
| `readmission_same_reason` | Отдельно не меняет reAdmission; берётся из 066 |
| `count_readmission_same_reason` | В IG num-previous-hospitalizations; смысл годового количества требует уточнения |
| `surgical_operations` | Редактируемые строки title/datetime/method_anesthesia/complications; кодированное вмешательство отдельно |
| `operating_doctor` | Текстовое имя в титульном листе; идентификатор хирурга из этого поля не установлен |
| `sick_leaves` | SickLeaveCarePlan.identifier и period из number/start_date/end_date |
| `treatment` | Procedure с текстом; общий код SNOMED 71388002 согласован |
| `result_treatment` | Выписка/clinical state/death-context по согласованному разделению |
| `transferred_another_department` | Текст учреждения в UI; для ссылки на Organization нужен идентификатор из другого источника |
| `working_capacity` | Observation, ConceptMap working-capacity |
| `report` | section[expertiseReferralConclusion].text |
| `additional_signs` | section[specialMarks].text |
| `other_analyses` | Observation other-diseases.valueString по существующему маппингу |
| `comment` | В UI Замечания; отдельный путь в пополевой таблице IG не установлен |
| `created_at` | Метаданные создания титульного листа; фактическое время подписи отдельно |
| `department_head` | Ответственное лицо; фактическая подпись отдельно |
| `number` | Номер договора по печати Shartnoma №; в Encounter.identifier не используется |
| `analyses` | Отдельная запись с title/result/date_of_conduct; текущие токены добавлены в CS |

## Покрытие текущего списка analyses.title

Все 18 текущих токенов представлены в source CodeSystem. Это не означает, что для каждого установлен международный код исследования. Исторические blood, feces_back_seeding и abstract_disease сохраняются отдельно.

| Токен DMED | Название UI | Международное соответствие |
|---|---|---|
| `rw-1` | RW I | noMap; кандидат 22461-8 требует подтверждения аналита и сыворотки |
| `rw-2` | RW II | noMap; кандидат 22461-8 требует подтверждения аналита и сыворотки |
| `hiv` | ВИЧ 1 | noMap; точный LOINC требует лабораторного источника |
| `hiv_II` | ВИЧ 2 | noMap; точный LOINC требует лабораторного источника |
| `hiv_express` | ВИЧ экспресс | noMap; точный LOINC требует лабораторного источника |
| `cbc` | Общий анализ крови | Исходный код добавлен; соответствие лабораторному коду не установлено |
| `hbsAg-1` | Гепатит Б | Исходный код добавлен; состав исследования по названию не установлен |
| `hcv` | Гепатит С | Исходный код добавлен; состав исследования по названию не установлен |
| `gonococcus` | Гонококк | Исходный код добавлен; метод и материал не установлены |
| `toxoplasmosis` | Токсоплазмоз | Исходный код добавлен; состав исследования не установлен |
| `general-urine-analysis` | Общий анализ мочи | Исходный код добавлен; лабораторная панель не установлена |
| `smear-analysis` | Анализ мазка | Исходный код добавлен; материал и состав исследования не установлены |
| `stool-culture` | Бакпосев кала | LOINC 625-4, существующее соответствие для того же названия |
| `stool-analysis` | Анализ кала | Исходный код добавлен; лабораторная панель не установлена |
| `hemoglobin` | Гемоглобин | Исходный код добавлен; материал, свойство и шкала не установлены |
| `antibody-titer` | Титр антител | Исходный код добавлен; вид антител не установлен |
| `pcr-test` | ПЦР тест | Исходный код добавлен; возбудитель и материал не установлены |
| `pediculosis` | Педикулёз | Существующее соответствие SNOMED CT 20848007 |

## Проверка предложения по типу назначенной госпитализации 027

UZCoreServiceRequest поддерживает orderDetail.parameter. В проверенном ServiceRequestOrderDetailParameterVS содержится только Route of administration (SNOMED 410675002), готового параметра «тип назначенной госпитализации» нет. Поэтому добавление такого параметра и его кодов требует отдельного изменения терминологии. Подстановка hospitalization_type направления в класс текущего приёма остаётся несогласованностью PR #13.


## Проверка имён элементов FHIR

В пакете hl7.fhir.r5.core#5.0.0 поле MedicationAdministration называется occurence[x] (именно с таким написанием). Используемый IG путь .occurenceDateTime соответствует этому пакету. В Google-таблице строки 96 и 117 используют .occurrenceDateTime; эти пути требуют исправления при актуализации таблицы. Эта проверка выполнена по snapshot StructureDefinition-MedicationAdministration.json локального пакета FHIR R5.


## Дополнительная сверка README и реестра ValueSets Google Sheets

Дополнительно прочитаны README!A1:F25 и ValueSets!A1:S80. Реестр содержит 79 записей и 36 уникальных ValueSet ID; все 79 записей имеют статус draft / terminology review. Эти статусы описывают предложение таблицы, а не опубликованные связки текущих профилей UZ Core.

- Все 32 разных ValueSet ID, явно указанных в колонке J листа Proposed Mapping, присутствуют в реестре; отсутствующих ID не найдено.
- Четыре набора не указаны в этой колонке: annual-hospitalization-count-vs, chr-003-administration-method-vs, death-context-vs и organizational-structure-vs. Это проверка ссылок одной колонки, а не утверждение, что наборы не упоминаются нигде в документе.
- В строке источника 44 путь содержит annual-hospitalization-count, но колонка ValueSet ссылается на socioeconomic-observation-codes-vs, хотя реестр отдельно определяет annual-hospitalization-count-vs. Это внутренняя несогласованность предложения таблицы; смысл DMED count_readmission_same_reason как годового количества по-прежнему не подтверждён.
- Для строк 146–147 Proposed Mapping требует local part-of-day code, но реестр chr-003-vital-signs-fluid-balance-vs перечисляет стандартные показатели, включая суточное поступление жидкости 9108-2, и не задаёт отдельный код fluid-intake-part-of-day. Готового локального кода из этого реестра перенести нельзя.
- Для 14 разных ValueSet предлагаются адреса /fhir/chr/, отличающиеся от принятого в текущей IG пространства /fhir/integrations/. Перед переносом предложенных артефактов требуется сопоставление с существующими адресами IG; новые артефакты по этим адресам в этой работе не создавались.
- README сообщает 123 Proposed, 20 Clarification required, 5 Approved и 7 Section — всего 155. Фактические 157 строк распределены иначе: 133 со статусом, начинающимся с Proposed, 10 Clarification required, 5 Approved, 7 Section и 2 Remove. Сводные счётчики README не отражают текущий лист.
- README называет группировку RW/ВИЧ свойством исходной бумажной формы. Текущий UI DMED хранит отдельные rw-1/rw-2/hiv/hiv_II/hiv_express, поэтому группировка бумажной строки не является доказательством одного общего результата в актуальном API.
