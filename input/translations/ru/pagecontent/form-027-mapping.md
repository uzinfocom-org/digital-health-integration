<style>
/* Per-form mapping-table column widths (027: long UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 20%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 20%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 24%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 14%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 22%; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Форма 027 - Выписка из медицинской карты больного

На этой странице описано сопоставление полей Формы 027 (Выписка из медицинской карты больного, амбулаторного или стационарного / Tibbiy muassasadagi bemorning tibbiy kartasidan ko'chirma (ambulator/statsionar)) с ресурсами FHIR. Форма утверждена приказом Министерства здравоохранения № 399 от 26.12.2025; номера пунктов ниже (1-26b) соответствуют официальному бланку.

---

### Обзор

Форма 027 - выписка, которую лечащий врач выдаёт по завершении амбулаторного приёма или стационарного лечения: идентификация пациента, направившее учреждение, диагнозы, жалобы и анамнез, данные осмотра, диагностика, лечение, рецепты, рекомендации, последующие мероприятия (наблюдение, диспансеризация, госпитализация) и ответственные лица. Амбулаторная (`ambulator`) и стационарная (`statsionar`) выписки используют один профиль и различаются через `Encounter.class`. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 027 Composition](StructureDefinition-form-027-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Полный пример экземпляра см. в разделе [Пример Формы 027](Bundle-example-form-027.html).

Форма 027-1 (выписка из медицинской карты больного со злокачественным новообразованием) - отдельная форма, данный профиль её не охватывает.

---

### Сопоставление полей

### Регистрационные данные

| UZ-027 (пункт) | RU-027 | Путь FHIR | Код / значения | Пример / примечания |
|--------|--------|-----------|---------------|-----------------|
| Muassasa nomi (шапка) | Наименование учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).name, ссылка из Composition.custodian | - | 7-semeynaya poliklinika; Organization.identifier содержит код учреждения (`.../sid/uz/organization-code`) |
| Bemorning ro'yxatdan o'tish raqami (1) | Регистрационный номер пациента | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[healthCardId].value | HC | MED-000123. Печатная форма, формируемая DMED, выводит одно и то же значение в пунктах 1 и 6 (`patient.number_med_card`); путь `Encounter.identifier.value` из таблицы сопоставления поэтому не используется - см. Проектные решения |
| Bemor turi (2) | Тип пациента | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).class | `AMB` амбулаторный / `IMP` стационарный | v3-ActCode, обязательная привязка UZCoreEncounter |
| Chiqarilgan sana (3) | Дата выписки | Encounter.actualPeriod.end | - | 2026-07-14 |
| Murojaat sanasi (4) | Дата обращения | Encounter.actualPeriod.start | - | 2026-07-01 |

### Личные данные

| UZ-027 (пункт) | RU-027 | Путь FHIR | Код / значения | Пример / примечания |
|--------|--------|-----------|---------------|-----------------|
| Bemor JSHSHIR (5) | ПИНФЛ | Patient.identifier[nationalId].value | NI | 41234567890127 |
| Med ID raqami (6) | Медицинский идентификационный номер | Patient.identifier[healthCardId].value | HC | MED-000123 |
| Familiyasi (7) | Фамилия | Patient.name.family | - | Fozilova |
| Ismi (8) | Имя | Patient.name.given[0] | - | Xadicha |
| Otasining ismi (9) | Отчество | Patient.name.given[1] | - | Alisherovna; Patient.name.text содержит полное имя |
| Tug'ilgan sanasi (10) | Дата рождения | Patient.birthDate | - | 1999-04-20 |
| Jinsi (11) | Пол | Patient.gender | `male` Erkak / `female` Ayol | Расширение gender-other используется только когда значение не male/female |
| Fuqaroligi (12, 11a) | Гражданство (код / наименование) | Patient.extension[citizenship] | ISO 3166-1 alpha-2 | `UZ`; display кода содержит название страны (11a). В примере опущено только потому, что публикатор не может проверить коды ISO 3166 локально |
| Pasport seriyasi va № (13) | Серия и № паспорта (если нет ПИНФЛ) | Patient.identifier[passportLocal] / [passportInternational] / [passportForeign] | PPN | Зависит от типа документа; только при отсутствии ПИНФЛ |

### Адрес и контакты

| UZ-027 (пункт) | RU-027 | Путь FHIR | Код / значения | Пример / примечания |
|--------|--------|-----------|---------------|-----------------|
| Yashab kelayotgan manzili (14) | Адрес проживания (фактический) | Patient.address[uzAddress].text / .line | - | Kutakaul 228, Ulugnor tumani, Andijon viloyati; структурированные части (state/district/city), когда DMED их передаёт |
| Telefon (15) | Телефон | Patient.telecom (system `phone`).value | - | +998909875679 |
| Email (16) | Email | Patient.telecom (system `email`).value | - | khadicha.fozilova@example.uz |

### Направление и диагноз

| UZ-027 (пункт) | RU-027 | Путь FHIR | Код / значения | Пример / примечания |
|--------|--------|-----------|---------------|-----------------|
| Yo'llagan muassasa kodi (16) | Код направившего учреждения | Encounter.admission.origin -> Organization.identifier | `.../sid/uz/organization-code` | 70 |
| Yo'llagan muassasa nomi (17) | Наименование направившего учреждения | Encounter.admission.origin -> Organization.name | - | Semeynaya poliklinika No. 70 |
| Asosiy tashxis kodi (17) | Код основного диагноза | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code.coding.code, section[diagnosis].section[main] | МКБ-10 | Z99.8; Condition.category = `diagnosis-role#main` |
| Asosiy tashxis nomi (17a) | Наименование основного диагноза | Condition.code.coding.display | display МКБ-10 | Dependence on other enabling machines and devices |
| Asorati (18/18a, 19/19a) | Осложнение | Condition.code.coding.code / .display, section[diagnosis].section[complication] | МКБ-10 | Condition.category = `diagnosis-role#complication`; моделируется как Condition, а не `Procedure.complication` - см. Проектные решения |
| Yo'ldosh kasallik (18/18a, 19/19a) | Сопутствующее заболевание | Condition.code.coding.code / .display, section[diagnosis].section[concomitant] | МКБ-10 | Z99.9; Condition.category = `diagnosis-role#concomitant` |
| (нет на бланке) Fon kasallik, Raqobat tashxis | Фоновый, конкурирующий диагноз | section[diagnosis].section[background] / [competing] | МКБ-10 | Захватываются виджетом диагнозов DMED; допускаются для полноты данных, на бланке не печатаются |

### Клинические данные

| UZ-027 (пункт) | RU-027 | Путь FHIR | Код / значения | Пример / примечания |
|--------|--------|-----------|---------------|-----------------|
| Shikoyatlar (20) | Жалобы | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString, section[chiefComplaint] | LOINC `10154-3` | Bosh og'rig'i va umumiy holsizlik; та же Observation указана в Encounter.reason.value |
| Anamnez (20) | Анамнез | Observation.valueString, section[anamnesis] | LOINC `11329-0` | Kasallik 3 kun oldin boshlangan. DMED хранит пункт «Shikoyatlar va anamnez» одним текстовым полем (`complaints_anamnesis`); если текст не разделён, он целиком помещается в section[chiefComplaint], а section[anamnesis] опускается |
| Ko'rik (21) | Осмотр | Observation.valueString, section[clinicalExamination] | LOINC `29545-1` | Umumiy holati qoniqarli, tana harorati 36.6 |
| Diagnostik tekshiruv (22) | Диагностическое обследование | DiagnosticReport.conclusion (или Observation.valueString), section[diagnostics] | LOINC-код отчёта/исследования | Umumiy qon tahlili me'yorda; необязательный раздел |

### Лечение и рекомендации

| UZ-027 (пункт) | RU-027 | Путь FHIR | Код / значения | Пример / примечания |
|--------|--------|-----------|---------------|-----------------|
| Davolash (23) | Лечение | CarePlan.activity.performedActivity.concept.text, section[treatmentPlan] | - | Dorivor davo. Путь `activity.detail.code` из таблицы относится к R4 и отсутствует в R5 |
| Tavsiyalar (24) | Рекомендации | CarePlan.note.text | - | Kuzatuvda bo'lish, 1 hafta ichida qayta ko'rikka kelish tavsiya etiladi |
| Retsept (24) | Рецепт | MedicationRequest.medication.concept, .dosageInstruction (способ, кратность, доза), .dispenseRequest (количество, период), .note | SNOMED CT / ATC | Paracetamol 500 mg, 3 раза в день 5 дней. Источник - отдельный модуль DMED «Рецепты», а не экран приёма - см. Проектные решения |

### Последующие мероприятия

| UZ-027 (пункт) | RU-027 | Путь FHIR | Код / значения | Пример / примечания |
|--------|--------|-----------|---------------|-----------------|
| Kuzatuv (25) | Наблюдение | CarePlan.note.text | - | `follow_up_activities` в DMED - одно свободнотекстовое поле; его содержимое и есть план наблюдения |
| Dispanserizatsiya (25) | Диспансеризация | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episodeofcare.html).type[serviceType] | `episode-of-care-type-cs` | Диспансерный учёт - отдельная запись DMED («Д-учёт»), не извлекается из текста |
| Shifoxonaga yotqazish (25) | Госпитализация | ServiceRequest (code SNOMED CT `306206005` Referral to service), .reason.concept | [HospitalizationPurposeVS](ValueSet-hospitalization-purpose-vs.html) | Госпитализация - это само направление; его цель (Diagnostika / Konsultativ / Davolash / Ko'rik / D-nazorat / Tug'ruq / Boshqa) - поле направления DMED, которое на бланке не печатается |

### Ответственные лица

| UZ-027 (пункт) | RU-027 | Путь FHIR | Код / значения | Пример / примечания |
|--------|--------|-----------|---------------|-----------------|
| Davolovchi shifokor F.I.O. (26a) | Лечащий врач (Ф.И.О.) | Composition.author -> [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) -> [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html).name.text | `position-and-profession-cs` | Talipova Muhlisa, `2211.6` Врач-специалист |
| Davolovchi shifokor imzosi (26a) | Лечащий врач (подпись) | Provenance.signature, agent.type `author` | ISO-ASTM `1.2.840.10065.1.12.1.1` | Provenance ссылается на документ Bundle; agent.who / signature.who -> PractitionerRole |
| Mas'ul shaxs F.I.O. (26b) | Ответственное лицо (Ф.И.О.) | section[responsiblePersons].entry -> PractitionerRole -> Practitioner.name.text | `position-and-profession-cs` | Karimov Alisher, `1342.18` Заведующий отделением; DMED печатает как «Bo'lim mudiri» |
| Mas'ul shaxs imzosi (26b) | Ответственное лицо (подпись) | Provenance.signature, agent.type `attester` | ISO-ASTM `1.2.840.10065.1.12.1.5` | Второй экземпляр Provenance |

### Проектные решения

- **Пункт 1 - идентификатор пациента, а не приёма.** Таблица сопоставления (версии 2026-08-17 и 2026-09-17) относит «Bemorning ro'yxatdan o'tish raqami» к `UZCoreEncounter.identifier.value`; печатная форма, сформированная DMED для реального направления, выводит в пунктах 1 и 6 одно и то же значение (`patient.number_med_card`), поэтому оба пункта сопоставлены с `Patient.identifier[healthCardId]`. `Encounter.identifier` по-прежнему содержит номер медицинской карты приёма из DMED (`.../sid/doc/uz/medical-record-number`).
- **Код и наименование основного диагноза.** В версиях таблицы 2026-08-17 и 2026-09-17 «Asosiy tashxis kodi» (код) сопоставлен с `Condition.code.coding.display`, а «Asosiy tashxis nomi» (наименование) - с `.code.coding.code`, то есть наоборот. Версия 2026-07-14 и данный профиль относят код к `.code`, наименование - к `.display`, в соответствии с семантикой FHIR.
- **Осложнение моделируется как Condition, а не `Procedure.complication`.** Таблица относит «Asorati» к `Procedure.complication`; официальный бланк представляет пункты 18 и 19 как поля-диагнозы (код МКБ-10 + наименование, «осложнение или сопутствующее заболевание, подчеркнуть»), по форме идентичные основному диагнозу. Форма 066 уже моделирует осложнения как `UZCoreCondition` с `diagnosis-role#complication`; профиль переиспользует этот подход.
- **Подразделы диагнозов покрывают все 5 ролей DMED, а не только 3 печатных слота.** Виджет диагнозов направления на госпитализацию в DMED предлагает main / concomitant / background / complication / competing (проверено вживую 2026-09-18). `section[diagnosis].section` допускает все пять, как в Форме 066; обязателен только `main`.
- **Направившее учреждение - через `Encounter.admission.origin`.** `Encounter.serviceProvider` (путь из таблицы 2026-07-14) - организация текущего приёма; направившее учреждение (пункты 16-17) - это `admission.origin`, который UZCoreEncounter ограничивает до UZCoreLocation или UZCoreOrganization.
- **Один профиль для амбулаторной и стационарной выписки.** Бланк охватывает оба варианта (пункт 2), поэтому профиль и его канонический URL не привязаны к амбулаторному приёму, в отличие от раннего черновика `Form027OutpatientComposition`.
- **Тип документа LOINC `34133-9` "Summary of episode note".** Выписка из медицинской карты обобщает эпизод помощи; `34764-1` "General medicine Consult note" (ранний черновик) описывает ответ консультанта на направление.
- **Автор и ответственное лицо - `UZCorePractitionerRole`**, как в Форме 066: роль содержит должность (`position-and-profession-cs`) и организацию, и именно на неё должен ссылаться `Provenance.agent.who`.
- **Данные рецепта берутся из модуля DMED «Рецепты»** (собственный API, собственный процесс подписания/отмены), а не с экрана приёма. Запись содержит МНН, форму выпуска, дозу, кратность, способ применения, длительность, период и количество отпуска, примечания - они заполняют `dosageInstruction` и `dispenseRequest`. Бизнес-идентификатор рецепта здесь намеренно не моделируется: он принадлежит интеграции рецептов и не должен получать второе пространство имён из этой формы.
- **`CarePlan.activity.performedActivity.concept`** заменяет `CarePlan.activity.detail.code` из таблицы - этот путь удалён в FHIR R5.

- **UZ Core 0.11.1.** Диагностические отчёты и направления на госпитализацию используют `UZCoreDiagnosticReport` и `UZCoreServiceRequest`. В примере общий анализ крови кодируется LOINC `58410-2`; LOINC `30954-2` остаётся кодом раздела диагностики Composition.

### Открытые вопросы

- **Терминология цели госпитализации.** [HospitalizationPurposeCS](CodeSystem-hospitalization-purpose-cs.html) воспроизводит семь значений чекбоксов DMED; ни одна кодовая система UZ Core не покрывает этот список (`encounter-type-cs` содержит три понятия, `encounter-purpose-cs` - одно). Узбекские названия следуют существующей терминологии репозитория, но не подтверждены DHP, поэтому кодовая система в статусе draft.
- **Захват подписи.** Путь FHIR есть (`Provenance.signature`), но печатная форма DMED показывает пустые поля подписи; реальный механизм (цифровая подпись, биометрия, скан) неизвестен, поэтому в примере используются общие типы подписи ISO-ASTM (автор/верификация).
- **Прикреплённые файлы.** В карточке направления DMED есть раздел «Файлы»; кандидат - `DocumentReference`, связанный с ServiceRequest; не реализуется до согласования.
- **Контактный телефон врача.** Обязательное поле направления DMED (`phone`) не печатается на официальном бланке формы 027 и поэтому не входит в объём профиля.
- **Поля DMED, отсутствующие на бланке** (`main_contingent`, место работы, витальные показатели, `medical_care_form`, `onset_disease_date`, `note`), вне объёма формы по принятому принципу «только то, что печатается на официальном бланке»; `note` может передаваться как `ServiceRequest.note`.

### Структура Bundle

Документ Формы 027 структурирован как FHIR Bundle, содержащий Composition [Form027Composition](StructureDefinition-form-027-composition.html):

```
Bundle (document)
├── Composition (Form027Composition)
│   ├── subject         → Patient
│   ├── encounter       → Encounter
│   ├── author          → PractitionerRole (лечащий врач, 26a)
│   ├── custodian       → Organization (учреждение)
│   ├── section[chiefComplaint]        → Observation (жалобы, 20)
│   ├── section[anamnesis]             → Observation (анамнез, 20)
│   ├── section[clinicalExamination]   → Observation (осмотр, 21)
│   ├── section[diagnosis]             (17-19)
│   │   ├── section[main]              → Condition (основной диагноз)
│   │   ├── section[complication]      → Condition (осложнение)
│   │   ├── section[concomitant]       → Condition (сопутствующее заболевание)
│   │   ├── section[background]        → Condition (не печатается)
│   │   └── section[competing]         → Condition (не печатается)
│   ├── section[diagnostics]           → DiagnosticReport / Observation (22)
│   ├── section[treatmentPlan]         → CarePlan, MedicationRequest,
│   │                                     EpisodeOfCare, ServiceRequest (23-25)
│   └── section[responsiblePersons]    → PractitionerRole (ответственное лицо, 26b)
├── Patient            (UZCorePatient)
├── Encounter          (UZCoreEncounter, admission.origin → направившая Organization)
├── Organization       (UZCoreOrganization - учреждение)
├── Organization       (UZCoreOrganization - направившее учреждение)
├── Practitioner       (UZCorePractitioner - лечащий врач)
├── Practitioner       (UZCorePractitioner - ответственное лицо)
├── PractitionerRole   (UZCorePractitionerRole x2)
├── Observation        (UZCoreObservation x3: жалобы, анамнез, осмотр)
├── Condition          (UZCoreCondition x2: основной диагноз, сопутствующее заболевание)
├── DiagnosticReport   (диагностическое обследование)
├── CarePlan           (лечение, рекомендации, наблюдение)
├── MedicationRequest  (рецепт)
├── EpisodeOfCare      (UZCoreEpisodeOfCare - диспансеризация)
├── ServiceRequest     (госпитализация)
└── Provenance         (x2: подписи автора и удостоверяющего)
```

### Пример

Полный пример FHIR-документа см. в разделе [Пример Формы 027](Bundle-example-form-027.html).
