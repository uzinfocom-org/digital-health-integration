<style>
/* Per-form mapping-table column widths (111: many short local-code fields across 15 sections). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 23%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 23%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 18%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 19%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 17%; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Форма 111 - Индивидуальная карта беременной и родильницы

На этой странице описано сопоставление полей [Формы 111](forms-volume-02-ambulatory.html) (Homilador va tuqqan ayolning individual kartasi) с ресурсами FHIR.

---

### Обзор

Форма 111 - это продольная запись дородового/послеродового наблюдения, которую ведёт женская консультация (ayollar maslahatxonasi): постановка на учёт, диагноз, исход беременности, анамнез, осмотры, повторные визиты, подготовка к родам, патронажные визиты, оценка перинатального риска и заключения специалистов. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 111 Pregnant Woman Individual Card Composition](StructureDefinition-form-111-pregnant-woman-individual-card-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Каждый из 17 разделов Composition несёт собственный `section.code` (LOINC, если есть подходящее понятие, иначе локальный код из [Form 111 section codes](ValueSet-form111-vs.html)) и перечисляет ресурсы, относящиеся к этой части формы.

Полный пример экземпляра см. в разделе [Пример индивидуальной карты беременной по Форме 111](Bundle-example-form-111-pregnant-woman-individual-card.html).

---

### Сопоставление полей

### Форма 111 - Индивидуальная карта беременной и родильницы - сопоставление с FHIR

---

### Информация о документе

Эпизод и визиты: беременность - один `EpisodeOfCare`, который несёт номер карты и заканчивается визитом на 35-40 день после родов; каждый визит, включая роды, - `Encounter` со ссылкой `episodeOfCare`. Карта пересылается как новая версия той же Composition (тот же `identifier`) после каждого визита.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Hujjat instansiyasi UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:7e51c0b8-9d34-42a6-b7f1-05c8e2a91111 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 111 |
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:c1f4a9d7-2b60-4e13-9a5c-8d7e6f0b1112 |
| Individual karta raqami | Номер индивидуальной карты | EpisodeOfCare.identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/antenatal-card-number` | 111-2025-000123 |
| Hujjat holati | Статус документа | Composition.status | [Статусы документов](document-statuses.html): `preliminary`, пока карта открыта; `final` после закрытия карты; `amended` для последующих исправлений; `entered-in-error`, если карта отозвана как ошибочная | final |
| Hujjat turi | Тип документа | Composition.type | LOINC `34133-9` "Summary of episode note" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Document Category](CodeSystem-document-category-cs.html) `form-111` "Индивидуальная карта беременной и родильницы" | - |
| Bemor | Пациентка | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Ergasheva N.B. |
| Ayollar maslahatxonasidagi kuzatuv epizodi | Эпизод наблюдения в женской консультации | EpisodeOfCare | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episodeofcare.html) | Antenatal episode |
| Hujjat shakllantirilgan sana | Дата составления документа | Composition.date | - | 2026-07-05 |
| Homiladorlik davri | Период наблюдения беременности | Composition.event.period | - | 2025-10-20 - 2026-05-24 |
| Kartani yurituvchi shifokor va bo'lim boshlig'i | Ведущий врач и заведующий отделением | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) | Yusupova S.T., Abdullayeva G.N. |
| Kartani saqlovchi muassasa | Учреждение, хранящее карту | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Chilonzor tumani ayollar maslahatxonasi |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Homilador va tuqqan ayolning individual kartasi (111-shakl) |
| Shifokor va bo'lim boshlig'i imzosi | Подпись врача и заведующего отделением | Provenance.signature | [Provenance](https://hl7.org/fhir/R5/provenance.html) | Author + Attester |

---

### 1. Регистрация и личные данные

Код раздела: LOINC `45970-1` "Demographic information section".

Уровень образования - один ответ, передаваемый одним `valueCodeableConcept`: в `text` - формулировка с формы, в `coding` - до трёх кодов этого же ответа.

1. UZ Core `education-cs`, всегда: его требует базовый профиль. [Эта ConceptMap](ConceptMap-dmed-form-111-education-type-core-cm.html) даёт код UZ Core для каждого значения DMED `education_type`.
2. Код Формы 111 `chr-0010-*`, если он есть для значения DMED (начальное, среднее общее, бакалавриат), по [этой ConceptMap](ConceptMap-dmed-form-111-education-type-cm.html).
3. Само значение DMED `education_type` из [dmed-form-111-education-type-cs](CodeSystem-dmed-form-111-education-type-cs.html), если код UZ Core менее точен, чем значение DMED. В списке UZ Core нет ординатуры, только "Высшее образование", и нет начального, только "Другое", поэтому для этих значений код DMED передаётся рядом с кодом UZ Core, и ничего не теряется.

Пример: DMED `residency` передаётся как `education-cs` `regis0005.00008` "Высшее образование" плюс `dmed-form-111-education-type-cs` `residency`, без кода Формы 111, так как в `chr-0010-*` нет уровня "ординатура".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Ro'yxatga olingan kun | Дата постановки на учёт | EpisodeOfCare.period.start | - | 2025-10-20 |
| Med ID raqami | Идентификатор медкарты | Patient.identifier[healthCardId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/hc`<br>`type` `HC` | HC-2025-00111 |
| Familiya, ismi, otasining ismi (F.I.Sh) | Фамилия, имя, отчество (Ф.И.О.) | Patient.name | - | Ergasheva Nilufar Baxtiyorovna |
| Tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1997-03-08 |
| Oilaviy sharoiti | Семейное положение | Patient.maritalStatus | `value` [UZ Core Marital Status](https://dhp.uz/fhir/core/en/ValueSet-marital-status-vs.html) по [ConceptMap семейного положения](ConceptMap-dmed-form-111-family-status-cm.html) | Turmush qurgan (`M`) |
| Yashash manzili | Адрес проживания | Patient.address | - | Chilonzor tumani, 7-kvartal, 21-uy |
| Telefon raqami (uy) | Номер домашнего телефона | Patient.telecom | - | +998901112233 |
| Ma'lumoti | Образование | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | `code` SNOMED `105421008` "Educational achievement"<br>`value` [UZ Core Education](https://dhp.uz/fhir/core/en/CodeSystem-education-cs.html) + [Education Level](ValueSet-form111-education-level-vs.html) | O'rta umumiy ta'lim (`regis0005.00004`, `chr-0010-00003`) |
| Ish joyi | Место работы | Observation.valueString (ссылка на Organization только при известном коде организации) | LOINC `80427-8` "Employer name [Identifier]" | 45-son umumta'lim maktabi |
| Ish joyi telefon raqami | Телефон места работы | Observation.valueString | [Social Observation Code](ValueSet-form111-social-observation-code-vs.html) `chr-0029-00004` "Телефон места работы" | +998712345678 |
| Mutaxassisligi | Специальность | UZCoreSocioeconomicObservation.valueCodeableConcept | `code` SNOMED `14679004` "Occupation" + [Social Observation Code](ValueSet-form111-social-observation-code-vs.html) `chr-0029-00005` "Mutaxassisligi"<br>`value` [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) | Boshlang'ich sinflar (kichik) o'qituvchisi (`2341.8`) |
| Lavozimi | Должность | UZCoreSocioeconomicObservation.valueCodeableConcept | `code` SNOMED `14679004` "Occupation" + [Social Observation Code](ValueSet-form111-social-observation-code-vs.html) `chr-0029-00006` "Lavozimi"<br>`value` [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) | O'qituvchi (`2330.9`) |
| Ish sharoiti | Условия труда | Observation.valueString | [Social Observation Code](ValueSet-form111-social-observation-code-vs.html) `chr-0029-00003` "Условия труда" | Yengil mehnat sharoiti |
| Turmush o'rtog'ining F.I.Sh | Ф.И.О. супруга | [RelatedPerson](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-relatedperson.html).name | - | Ergashev Sardor Alisherovich |
| Turmush o'rtog'ining ish joyi | Место работы супруга | Observation.valueString (`focus` = RelatedPerson) | LOINC `80427-8` "Employer name [Identifier]" | Toshkent shahar avtobazasi, haydovchi |
| Turmush o'rtog'ining telefon raqami | Телефон супруга | RelatedPerson.telecom | - | +998903334455 |

---

### 1b. Лабораторные исследования при постановке на учёт

Код раздела: LOINC `30954-2` "Relevant diagnostic tests/laboratory data note".

Результаты анализов (RW I/II, HBsAg I/II, ВИЧ, гонорея, токсоплазмоз) кодируются в `Observation.valueCodeableConcept` как SNOMED `260385009` "Negative" или `10828004` "Positive". Сами анализы кодируются LOINC; гонококк сохраняет локальный код анализа `chr-0001-00001`.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Qon guruhi | Группа крови | Observation.valueCodeableConcept | `code` LOINC `883-9` "ABO group [Type] in Blood"<br>`value` SNOMED по [ConceptMap группы крови](ConceptMap-dmed-form-111-blood-group-cm.html) | A (II) (`112144000`) |
| Homiladorning Rh mansubligi | Резус-принадлежность беременной | Observation.valueCodeableConcept | `code` LOINC `10331-7` "Rh [Type] in Blood"<br>`value` SNOMED по [ConceptMap резус-фактора](ConceptMap-dmed-form-111-rhesus-factor-cm.html) | Rh musbat (`165747007`) |
| Homiladorning turmush o'rtog'ining Rh mansubligi | Резус-принадлежность супруга беременной | Observation.valueCodeableConcept (`focus` = RelatedPerson) | `code` LOINC `10331-7` "Rh [Type] in Blood"<br>`value` SNOMED по [ConceptMap резус-фактора](ConceptMap-dmed-form-111-rhesus-factor-cm.html) | Rh manfiy (`165746003`) |
| WR I | RW I | Observation.valueCodeableConcept | LOINC `22461-8` "Reagin Ab [Presence] in Serum"<br>`value` SNOMED `260385009` "Negative" / `10828004` "Positive" | Manfiy (`260385009`) |
| WR II | RW II | Observation.valueCodeableConcept | LOINC `22461-8` "Reagin Ab [Presence] in Serum"<br>`value` SNOMED `260385009` "Negative" / `10828004` "Positive" | Manfiy (`260385009`) |
| OIV | ВИЧ | Observation.valueCodeableConcept | LOINC `7918-6` "HIV 1+2 Ab [Presence] in Serum"<br>`value` SNOMED `260385009` "Negative" / `10828004` "Positive" | Manfiy (`260385009`) |
| OIV tekshirilgan yil | Год обследования на ВИЧ | *(effectiveDateTime того же Observation)* | - | 2025-10-22 |
| Hbs Ag I | HBsAg I | Observation.valueCodeableConcept | LOINC `5195-3` "Hepatitis B virus surface Ag [Presence] in Serum"<br>`value` SNOMED `260385009` "Negative" / `10828004` "Positive" | Manfiy (`260385009`) |
| Hbs Ag I tekshirilgan yil | Год обследования на HBsAg I | *(effectiveDateTime того же Observation)* | - | 2025-10-22 |
| Hbs Ag II | HBsAg II | Observation.valueCodeableConcept | LOINC `5195-3` "Hepatitis B virus surface Ag [Presence] in Serum"<br>`value` SNOMED `260385009` "Negative" / `10828004` "Positive" | Manfiy (`260385009`) |
| Hbs Ag II tekshirilgan yil | Год обследования на HBsAg II | *(effectiveDateTime того же Observation)* | - | 2026-02-10 |
| Gonokokk | Гонококк | Observation.valueCodeableConcept | [Analysis Test Code](ValueSet-form111-analysis-test-code-vs.html) `chr-0001-00001` "Гонококк"<br>`value` SNOMED `260385009` "Negative" / `10828004` "Positive" | Manfiy (`260385009`) |
| Toksoplazmoz | Токсоплазмоз | Observation.valueCodeableConcept | LOINC `22577-1` "Toxoplasma gondii Ab [Presence] in Serum"<br>`value` SNOMED `260385009` "Negative" / `10828004` "Positive" | Manfiy (`260385009`) |
| Boshqa tekshiruv (siydik tahlili) | Другое обследование (анализ мочи) | Observation.valueString | Analysis Test Code `chr-0001-00006` "Boshqa tahlil" по [ConceptMap названий анализов](ConceptMap-dmed-form-111-analysis-title-cm.html) | Siydik tahlili: me'yor |

---

### 2. Диагноз

Код раздела: LOINC `29308-4` "Diagnosis".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Homiladorlik soni | Количество беременностей | Observation.valueInteger | LOINC `11996-6` "Pregnancies" | 4 |
| Tug'ruq soni | Количество родов | Observation.valueInteger | LOINC `11977-6` "Parity" | 2 |
| Ushbu homiladorlik vaqtidagi asoratlari | Осложнения данной беременности | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | Anemiya, homiladorlikdagi qusish (`O99.0`, `O21.9`) |
| Ekstragenital kasalliklari (diagnoz) | Экстрагенитальные заболевания (диагноз) | Condition.code | ICD-10 | Temir taqchilligi anemiyasi (`D50.9`) |

---

### 3. Исход беременности

Код раздела: LOINC `57074-7` "Labor and delivery process Narrative".

Статус выписки новорождённого - Observation с `valueCodeableConcept`, так как новорождённый не моделируется отдельным Patient; статус выписки матери передаётся в `Encounter.admission.dischargeDisposition`.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Homiladorlikni yakuni | Исход беременности | Observation.valueCodeableConcept | `code` LOINC `63893-2` "Outcome of pregnancy"<br>`value` [Pregnancy Outcome](ValueSet-form111-pregnancy-outcome-vs.html) (SNOMED `3950001` "Birth", or local `chr-0024-*` for maternal/child death) по [ConceptMap исхода беременности](ConceptMap-dmed-form-111-status-cm.html) | Tug'ruq (`3950001`) |
| Sanasi | Дата | Procedure.occurrenceDateTime (delivery) | - | 2026-05-24 |
| Necha haftada yakunlangani | На какой неделе завершилась | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 39 wk |
| Tug'ruqning alohida xususiyatlari | Особенности родов | Observation.valueString | [Form111 General Observation Code](ValueSet-form111-general-observation-code-vs.html) `chr-0035-00012` "Особенности родов" | Tabiiy tug'ruq yo'llari orqali, asoratlarsiz tug'ruq; qon yo'qotish 250 ml |
| Bola tirik/o'lik tug'ilgani | Ребёнок родился живым/мёртвым | Observation.valueCodeableConcept | `code` Form111 General Observation Code `chr-0035-00013` "Ребёнок родился живым/мёртвым"<br>`value` [Newborn Birth Condition](ValueSet-form111-newborn-birth-condition-vs.html) (SNOMED `281050002` "Livebirth", `713202001` "Antepartum stillbirth", `237362003` "Fetal intrapartum death") по [ConceptMap живорождения/мертворождения](ConceptMap-dmed-form-111-child-birth-condition-cm.html) | Tirik tug'ilgan (`281050002`) |
| Bola og'irligi | Вес ребёнка | Observation.valueQuantity | LOINC `8339-4` "Birth weight measured" | 3.35 kg |
| Bola bo'yi | Рост ребёнка | Observation.valueQuantity | LOINC `89269-5` "Body height Measured --at birth" | 52 cm |
| Tug'ruqxonadan chiqarilganda ona holati | Состояние матери при выписке | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).admission.dischargeDisposition | [UZ Core Discharge Disposition](https://dhp.uz/fhir/core/en/CodeSystem-encounter-discharge-disposition-home-cs.html) | Chiqarildi (`mserv-0004-00004`) |
| Tug'ruqxonadan chiqarilganda bola holati | Состояние ребёнка при выписке | Observation.valueCodeableConcept | `value` [UZ Core Discharge Disposition](https://dhp.uz/fhir/core/en/CodeSystem-encounter-discharge-disposition-home-cs.html) | Chiqarildi (`mserv-0004-00004`) |
| Diagnoz | Диагноз | Condition.code | ICD-10 | O'z-o'zidan yakka tug'ruq (`O80`) |

---

### 4. Анамнез

Код раздела: LOINC `11348-0` "History of Past illness note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Boshdan o'tkazgan kasalliklari | Перенесённые заболевания | Condition.code | ICD-10 | Asoratsiz suvchechak (`B01.9`) |
| Ginekologik kasalliklari | Гинекологические заболевания | Condition.code | ICD-10 | Bachadon bo'yni yallig'lanishi (`N72`) |
| Operatsiyalar | Операции | Observation.valueBoolean (fakt) + alohida Observation.valueDateTime (sana) | `code` Form111 General Observation Code `chr-0035-00025` "Перенесённые операции"<br>`code` `chr-0035-00026` "Дата перенесённой операции" | Ha (2018-09-12) |
| Jinsiy hayoti necha yoshdan boshlangani | Возраст начала половой жизни | Observation.valueQuantity | SNOMED `228456002` "Age became sexually active" | 21 yosh |
| Erining sog'ligi | Состояние здоровья супруга | Observation.category[social-history]; Observation.valueCodeableConcept/valueString (`focus` = RelatedPerson) | `code` Social Observation Code `chr-0029-00001` "Состояние здоровья и вредные привычки супруга"<br>`value` [Patient Bad Habit](ValueSet-form111-patient-bad-habit-vs.html) по [ConceptMap вредных привычек](ConceptMap-dmed-form-111-patient-bad-habits-cm.html) | Chekadi (`77176002`), kuniga 5-6 dona |
| Xayz ko'rish necha yoshdan boshlangani | Возраст начала менструации | Observation.valueQuantity | LOINC `42798-9` "Age at menarche" | 13 yosh |
| Xayz ko'rish va uning xususiyatlari | Менструация и её особенности | Observation.valueString | LOINC `49033-4` "Menstrual History - Reported" | Muntazam, 28 kunlik sikl |
| Oxirgi xayz ko'rish sanasi (boshlanish) | Дата последней менструации (начало) | Observation.valueDateTime | LOINC `8665-2` "Last menstrual period start date" | 2025-08-20 |
| Oxirgi xayz ko'rish sanasi (tugash) | Дата последней менструации (окончание) | Observation.valueDateTime | Form111 General Observation Code `chr-0035-00009` "Дата последней менструации (окончание)" | 2025-08-25 |
| Homilaning birinchi qimirlagan sanasi | Дата первого шевеления плода | Observation.valueDateTime | LOINC `57065-5` "Quickening date" | 2026-01-05 |

---

### 5. Исходы предыдущих беременностей

Код раздела: LOINC `10162-6` "History of pregnancies Narrative".

Исход предыдущей беременности - только прерывание или роды; вид и стадия аборта не кодируются.

В примере приведены три предыдущие беременности: 1-я (2019, преждевременные роды), 2-я (2022, срочные роды), 3-я (2024, самопроизвольный выкидыш). Для каждой повторяются следующие поля (Encounter используется только для группировки визита; год передаётся отдельным Observation):

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Yil | Год | Observation.valueDateTime | Form111 General Observation Code `chr-0035-00027` "Год предыдущей беременности" | 2019 / 2022 / 2024 |
| Homiladorlik qachon va qanday yakunlandi | Когда и чем завершилась беременность | Observation.valueCodeableConcept | `code` LOINC `63893-2` "Outcome of pregnancy"<br>`value` [Previous Pregnancy Outcome](ValueSet-form111-previous-pregnancy-outcome-vs.html) (DMED: `3950001` роды, `386639001` прерывание); `17369002` выкидыш из [Pregnancy Outcome](ValueSet-form111-pregnancy-outcome-vs.html) по [ConceptMap исхода предыдущей беременности](ConceptMap-dmed-form-111-pregnancy-outcome-cm.html) | Tug'ruq, tug'ruq, bola tashlash (`3950001`, `3950001`, `17369002`) |
| Abort turi | Вид аборта | *(значение того же Observation) valueCodeableConcept = abort* | - | *(в этом примере не применяется - ни одна предыдущая беременность не завершилась абортом)* |
| Tug'ruq turi (muddati bo'yicha) | Вид родов (по сроку) | Observation.valueCodeableConcept | `code` Form111 General Observation Code `chr-0035-00015` "Вид родов (по сроку)"<br>`value` [Previous Delivery Term](ValueSet-form111-previous-delivery-term-vs.html) (SNOMED `21243004` "Term birth of newborn", `367494004` "Premature birth of newborn") по [ConceptMap срока родов](ConceptMap-dmed-form-111-child-birth-status-cm.html) | 1-homiladorlik: muddatidan oldin tug'ruq (`367494004`); 2-homiladorlik: muddatida tug'ruq (`21243004`) |
| Bola tirik/o'lik tug'ilgani | Ребёнок родился живым/мёртвым | Observation.valueCodeableConcept | `code` Form111 General Observation Code `chr-0035-00013` "Ребёнок родился живым/мёртвым"<br>`value` [Newborn Birth Condition](ValueSet-form111-newborn-birth-condition-vs.html) (SNOMED `281050002` "Livebirth", `713202001` "Antepartum stillbirth", `237362003` "Fetal intrapartum death") по [ConceptMap живорождения/мертворождения](ConceptMap-dmed-form-111-child-birth-condition-cm.html) | Tirik tug'ilgan (`281050002`) |
| Vazni | Вес | Observation.valueQuantity | LOINC `8339-4` "Birth weight Measured" | 3.1 kg |
| Bola tirikligi (hozirgi holati) | Текущее состояние ребёнка | Observation.valueString | Form111 General Observation Code `chr-0035-00014` "Текущее состояние ребёнка (жив)" | Tirik, sog'lom (4 yoshda) |
| Qaysi yoshda o'lgani | В каком возрасте умер | Observation.valueAge | - | *(не применяется в данном примере - все живорождённые дети живы)* |
| Avvalgi homiladorliklarning o'ziga xosligi | Особенности предыдущих беременностей | Observation.valueString | Form111 General Observation Code `chr-0035-00016` "Особенности предыдущих беременностей" | 1-homiladorlik (2019) - muddatidan oldin tug'ruq. 2-homiladorlik (2022) - asoratsiz, vaqtida tug'ruq. 3-homiladorlik (2024) - 9-haftada o'z-o'zidan tushish. |

*"Вид аборта" не кодируется отдельным полем: DMED для предыдущей беременности передаёт только исход abort/birth, без дополнительной детализации типа аборта - искусственная детализация не добавляется.*

---

### 6. Первый осмотр беременной

Код раздела: LOINC `29545-1` "Physical findings note".

Артериальное давление передаётся по [шаблону vital-signs](https://hl7.org/fhir/R5/bp.html) FHIR: LOINC `85354-9` с компонентами систолического `8480-6` и диастолического `8462-4` давления в `mm[Hg]`, по одному Observation на каждую руку с `bodySite`.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Bo'yining uzunligi | Рост | Observation.valueQuantity | LOINC `8302-2` "Body height" | 164 cm |
| Tana vazni | Масса тела | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 58.4 kg |
| Tana tuzilishining o'ziga xosligi | Особенности телосложения | Observation.valueString | [Anthropometry Observation Code](ValueSet-form111-anthropometry-observation-code-vs.html) `chr-0002-00001` "Особенности телосложения" | Normostenik tana tuzilishi |
| Ko'krak bezi holati | Состояние молочных желёз | Observation.valueCodeableConcept | `code` LOINC `10193-1` "Physical findings of Breasts Narrative"<br>`value` SNOMED по [ConceptMap состояния молочных желёз](ConceptMap-dmed-form-111-breast-condition-cm.html) | Patologiya yo'q (`17621005`) |
| Qon tomir tizimi | Сердечно-сосудистая система | Observation.valueCodeableConcept | `code` LOINC `11421-5` "Physical findings of Cardiovascular system"<br>`value` SNOMED по [ConceptMap состояния сосудистой системы](ConceptMap-dmed-form-111-vascular-system-status-cm.html) | Me'yor (`17621005`) |
| Arterial qon bosimi (o'ng qo'l) | Артериальное давление (правая рука) | Observation.component.valueQuantity + Observation.bodySite (SNOMED `368209003`) | LOINC `85354-9` "Blood pressure panel" + `component` LOINC `8480-6` / `8462-4` in `mm[Hg]` | 115 / 70 |
| Arterial qon bosimi (chap qo'l) | Артериальное давление (левая рука) | Observation.component.valueQuantity + Observation.bodySite (SNOMED `368208006`) | LOINC `85354-9` "Blood pressure panel" + `component` LOINC `8480-6` / `8462-4` in `mm[Hg]` | 110 / 70 |
| Boshqa a'zolari | Другие органы | Observation.valueString | Form111 General Observation Code `chr-0035-00020` "Другие органы" | Patologiyasiz |
| Chanoq o'lchovlari (D.sp, D.Cr, D.troch, C.ext, C.diag, C.vera) | Размеры таза | Observation.component | Form111 General Observation Code `chr-0035-00002` "Размеры таза"..`chr-0035-00008` "Conjugata vera (C.vera)" | D.sp 26, D.Cr 29, D.troch 31, C.ext 20, C.diag 13, C.vera 11 (sm) |

---

### 7. Наружное акушерское обследование

Код раздела: LOINC `10191-5` "Physical findings of Abdomen Narrative".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Bachadon tubi balandligi | Высота дна матки | Observation.valueQuantity | LOINC `11881-0` "Uterus Fundal height Tape measure" | - |
| Qorin aylanasi | Окружность живота | Observation.valueQuantity | [Pregnancy Monitoring Observation Code](ValueSet-form111-pregnancy-monitoring-observation-code-vs.html): SNOMED `396552003` "Abdominal circumference" | 76 cm |
| Homilaning joylanish holati / oldin keluvchi qismi | Положение плода / предлежащая часть | Observation.valueCodeableConcept | `code` SNOMED `364607000` "Position of fetus"<br>`value` SNOMED по [ConceptMap предлежания плода](ConceptMap-dmed-form-111-fetal-presentation-cm.html) | Aniqlanmagan (`871479001`) |
| Homilaning yurak urishi | Сердцебиение плода | Observation.valueQuantity | LOINC `55283-6` "Fetal heart rate" | - |

---

### 8. Влагалищное исследование

Код раздела: LOINC `11400-9` "Physical findings of Genitalia Narrative".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Tashqi jinsiy a'zolari | Наружные половые органы | Observation.valueCodeableConcept | `code` LOINC `11432-2` "Physical findings of female genitalia"<br>`value` SNOMED по [ConceptMap гинекологического осмотра](ConceptMap-dmed-form-111-gynecological-examination-status-cm.html) | Me'yor (`17621005`) |
| Qin | Влагалище | Observation.valueCodeableConcept | `code` LOINC `32487-1` "Physical findings of vagina"<br>`value` SNOMED по [ConceptMap гинекологического осмотра](ConceptMap-dmed-form-111-gynecological-examination-status-cm.html) | Me'yor (`17621005`) |
| Bachadon bo'yinchasi | Шейка матки | Observation.valueCodeableConcept + Observation.note | `code` Gynecological Examination Observation Code `chr-0017-00004` "Физикальное исследование шейки матки"<br>`value` SNOMED по [ConceptMap гинекологического осмотра](ConceptMap-dmed-form-111-gynecological-examination-status-cm.html) | Me'yor (`17621005`), "Zich, uzunligi 3 sm" |
| Bachadon tanasi | Тело матки | Observation.valueCodeableConcept + Observation.note | `code` Gynecological Examination Observation Code `chr-0017-00001` "Бимануальное исследование матки и придатков"<br>`value` SNOMED по [ConceptMap гинекологического осмотра](ConceptMap-dmed-form-111-gynecological-examination-status-cm.html) | Me'yor (`17621005`), "9 haftalik muddatga mos" |
| Tuxumdon va naychalar | Яичники и трубы | Observation.valueCodeableConcept + Observation.note | `code` [Gynecological Examination Observation Code](ValueSet-form111-gynecological-examination-observation-code-vs.html) `chr-0017-00006` "Осмотр яичников и маточных труб"<br>`value` SNOMED по [ConceptMap гинекологического осмотра](ConceptMap-dmed-form-111-gynecological-examination-status-cm.html) | Me'yor (`17621005`), "Paypaslanmaydi, og'riqsiz" |
| Alohida xususiyatlari | Особые находки | Observation.valueCodeableConcept + Observation.note | `code` Gynecological Examination Observation Code `chr-0017-00005` "Особенности гинекологического осмотра"<br>`value` SNOMED по [ConceptMap особых находок](ConceptMap-dmed-form-111-special-characteristics-cm.html) | Me'yor (`17621005`) |
| Homiladorlik muddati (hafta) | Срок беременности (нед) | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 9 wk |
| Taxminiy tug'ish vaqti | Предполагаемая дата родов | Observation.valueDateTime | LOINC `11778-8` "Delivery date Estimated" | 2026-05-27 |

---

### 9. Рекомендации

Код раздела: LOINC `18776-5` "Plan of care note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Ko'rsatmalar, maslahatlar | Указания, рекомендации | CarePlan.description | - | Folat kislotasi, yod preparatlari, parhez |
| Ko'rikni o'tkazgan shifokor F.I.Sh | Ф.И.О врача | Provenance.agent.who (→ PractitionerRole/Practitioner) | - | Yusupova S.T. |
| Shifokor imzosi | Подпись врача | Provenance.signature | - | Yusupova S.T. |
| Vaqti | Время | Provenance.occurredDateTime (клиническое время) / Provenance.recorded (системное время) | - | 2025-10-20 |

---

### 10. Течение беременности (повторные визиты наблюдения)

Код раздела: LOINC `57059-8` "Pregnancy visit summary note Narrative".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Sana | Дата | Encounter.actualPeriod | - | 2026-01-15 |
| Shikoyati | Жалобы | Observation.valueString | LOINC `8661-1` "Chief complaint - Reported" | Tez charchash, bosh aylanishi |
| Umumiy ahvoli | Общее состояние | Observation.valueCodeableConcept | `code` [Assessment Observation Code](ValueSet-form111-assessment-observation-code-vs.html) `chr-0005-00003` "Общее состояние"<br>`value` SNOMED по [ConceptMap общего состояния](ConceptMap-dmed-form-111-general-condition-cm.html) | Qoniqarli (`162669003`) |
| Vazni | Вес | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 63.2 kg |
| Arterial qon bosimi | Артериальное давление | Observation.component.valueQuantity + bodySite (правая: SNOMED `368209003`, левая: `368208006`) | LOINC `85354-9` "Blood pressure panel" + `component` LOINC `8480-6` / `8462-4` in `mm[Hg]` | 110 / 65, 105 / 65 |
| Puls | Пульс | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 84 /min |
| Qorin aylanasi | Окружность живота | Observation.valueQuantity | SNOMED `396552003` "Abdominal circumference" | 84 cm |
| Bachadon tubi balandligi | Высота дна матки | Observation.valueQuantity | LOINC `11881-0` "Uterus Fundal height Tape measure" | 21 cm |
| Homilaning oldin kelayotgan qismi, joylashishi va holati | Предлежащая часть, положение плода | Observation.valueCodeableConcept | `code` SNOMED `364607000` "Position of fetus"<br>`value` SNOMED по [ConceptMap предлежания плода](ConceptMap-dmed-form-111-fetal-presentation-cm.html) | Bosh bilan kelish (`1209182005`) |
| Yurak urishi | Сердцебиение | Observation.valueQuantity + component | `code` LOINC `55283-6` "Fetal Heart rate"<br>`component` SNOMED `7771000` "Left" / `24028007` "Right" | 142 /min, o'ngda (`24028007`) |
| Homilaning qimirlashi | Шевеление плода | Observation.valueBoolean | LOINC `57088-7` "Fetal Movement - Reported" | true |
| Siydikdagi oqsil miqdori | Белок в моче | Observation.valueQuantity | LOINC `2888-6` "Siydikda oqsil miqdori" | 0 mg/dL |
| Qondagi Hb miqdori | Гемоглобин крови | Observation.valueQuantity | LOINC `718-7` "Hemoglobin [Mass/volume] in Blood" | 104 g/L |
| Tashxis (homiladorlik haftasi) | Диагноз (неделя беременности) | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 21 wk |
| Patologik o'zgarishlar | Патологические изменения | Observation.valueString | Gynecological Examination Observation Code `chr-0017-00003` "Патологические изменения" | Gemoglobin pasayishi |
| Ko'rsatmalar va maslahatlar | Указания и рекомендации | CarePlan.description | - | Temir preparatlari, parhez |
| Shifoxonaga yotqizildi | Госпитализирована | Observation.valueBoolean | Form111 General Observation Code `chr-0035-00019` "Госпитализирована" | false |
| Stafilokokk anatoksini yuborildi | Введён стафилококковый анатоксин | [Immunization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-immunization.html).vaccineCode | SNOMED `871921009` "Staphylococcus toxoid vaccine" | Staphylococcus toxoid vaccine |
| Navbatdagi tashrif sanasi | Дата следующего визита | Appointment.requestedPeriod.start | - | 2026-02-12 |
| Imzo | Подпись | Provenance.signature | - | Yusupova S.T. |

---

### 11. Подготовка к родам

Код раздела: SNOMED `386235000` "Childbirth preparation".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Jismoniy tarbiya - sana | Физкультура - дата | Observation.valueDateTime + effectiveDateTime | SNOMED `183329005` "Antenatal exercises" | 2026-02-12 |
| Jismoniy tarbiya vaqtidagi homiladorlik muddati | Срок беременности при занятиях физкультурой | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 25 wk |
| Ultrabinafsha nurlari bilan nurlanish - sana | Ультрафиолетовое облучение - дата | Observation.valueDateTime + effectiveDateTime | SNOMED `363695005` "Ultraviolet light therapy" | 2026-02-19 |
| Ultrabinafsha nurlanish vaqtidagi homiladorlik muddati | Срок беременности при ультрафиолетовом облучении | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 26 wk |
| Onalar maktabi - sana | Школа матерей - дата | Observation.valueDateTime + effectiveDateTime | [Preparation Activity](ValueSet-form111-preparation-activity-vs.html) `chr-0025-00001` "Посещение школы матерей" | 2026-03-05 |
| Onalar maktabi vaqtidagi homiladorlik muddati | Срок беременности при посещении школы матерей | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 28 wk |
| Psixoprofilaktik tayyorlov - sana | Психопрофилактическая подготовка - дата | Observation.valueDateTime + effectiveDateTime | SNOMED `408779007` "Psychoprophylaxis" | 2026-03-19 |
| Psixoprofilaktik tayyorlov vaqtidagi homiladorlik muddati | Срок беременности при психопрофилактической подготовке | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 30 wk |

---

### 12. Патронажные визиты

Код раздела: SNOMED `439708006` "Home visit".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Homiladorlik muddati | Срок беременности | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 29 wk |
| Shikoyatlari | Жалобы | Observation.valueString | LOINC `8661-1` "Chief complaint - Reported" | Shikoyatlari yo'q |
| Umumiy holati (shishlar) | Общее состояние (отёки) | Observation.valueString | Assessment Observation Code `chr-0005-00003` "Общее состояние" | Qoniqarli, oyoqlarda shish yo'q |
| Arterial qon bosimi | Артериальное давление | Observation.component.valueQuantity + bodySite (правая: SNOMED `368209003`, левая: `368208006`) | LOINC `85354-9` "Blood pressure panel" + `component` LOINC `8480-6` / `8462-4` in `mm[Hg]` | 115 / 70, 110 / 70 |
| Homilaning holati | Положение плода | Observation.valueCodeableConcept | `code` SNOMED `364607000` "Position of fetus"<br>`value` SNOMED по [ConceptMap предлежания плода](ConceptMap-dmed-form-111-fetal-presentation-cm.html) | Bosh bilan kelish (`1209182005`) |
| Homilaning yurak urishi | Сердцебиение плода | Observation.valueQuantity + component | `code` LOINC `55283-6` "Fetal Heart rate"<br>`component` SNOMED `7771000` "Left" / `24028007` "Right" | 138 /min, chapda (`7771000`) |
| Tavsiyalar | Рекомендации | CarePlan.description | - | Kunlik rejim, tuz cheklash |
| F.I.Sh va imzo | Ф.И.О и подпись | PractitionerRole / Provenance | - | Yusupova S.T. |

---

### 13. Лист для вклеивания обменной карты и других документов

Код раздела: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00007`.

Декретный отпуск - два [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html) (дородовой и послеродовой) с причиной `emdoc-0001-0005` и номером листка в `identifier`; отдельных Observation и DocumentReference нет.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Homiladorlik bo'yicha ta'til boshlanish va tugash sanasi | Даты начала и окончания дородового отпуска | CarePlan.period | [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html) `addresses` `emdoc-0001-0005` | 2026-03-18 - 2026-05-26 |
| Mehnatga layoqatsizlik varog'i raqami | Номер листка нетрудоспособности | CarePlan.identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/sickleave` | MLV-2026-004512 |
| Tug'ruq sanasi | Дата родов | Procedure.occurrenceDateTime | `code` [Birth Type](ValueSet-form111-birth-type-vs.html) по [ConceptMap вида родов](ConceptMap-dmed-form-111-birth-type-cm.html) | 2026-05-24, vaginal tug'ruq (`289259007`) |
| Tug'ruq holati | Состояние родов | Observation.valueCodeableConcept | `code` Form111 General Observation Code `chr-0035-00015` "Вид родов (по сроку)"<br>`value` [Previous Delivery Term](ValueSet-form111-previous-delivery-term-vs.html) (SNOMED `21243004` "Term birth of newborn", `367494004` "Premature birth of newborn") по [ConceptMap срока родов](ConceptMap-dmed-form-111-child-birth-status-cm.html) | Muddatida tug'ruq (`21243004`) |
| Muddatdan farq (kun) | Разница со сроком (дни) | Observation.component.valueQuantity | Form111 General Observation Code `chr-0035-00021` "Разница со сроком (дни)" | -3 kun |
| Tug'ruq bo'lib o'tgan tug'ruqxona nomi | Название роддома | Organization.name | - | Toshkent shahar 2-son tug'ruqxonasi |
| Tug'ruqdan keyingi ta'til muddati, boshlanish va tugash sanasi | Срок и даты послеродового отпуска | CarePlan.period | [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html) `addresses` `emdoc-0001-0005` | 2026-05-27 - 2026-07-21 (56 kun) |
| Mehnatga layoqatsizlik varog'i raqami | Номер листка нетрудоспособности | CarePlan.identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/sickleave` | MLV-2026-007788 |

---

### 14. Перинатальные факторы риска

Код раздела: LOINC `92016-5` "Maternal pregnancy risk factors Document".

Уровень и сумма баллов перинатального риска кодируются `chr-0027-00005`/`chr-0027-00006`; `chr-0035-00022`/`chr-0035-00023` устарели (deprecated).

Гестоз `chr-0022-00005` шире любого отдельного понятия SNOMED, поэтому остаётся локальным кодом; [его ConceptMap](ConceptMap-dmed-form-111-pregnancy-progress-pregnancy-complications-cm.html) также даёт SNOMED `398254007` "Преэклампсия" как более узкий стандартный код.

Поля с множественным выбором (вредные привычки, социально-биологические, акушерские и экстрагенитальные факторы риска, осложнения беременности): по одному Observation на каждое значение, отмеченное в DMED. Неотмеченное значение означает "неизвестно", а не "нет".

«Группа» и «Факторы» - отдельный ресурс FHIR не создаётся, это структурные заголовки формы; каждый отмеченный фактор передаётся самостоятельным Observation ниже (один фактор = один Observation).

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Ijtimoiy-biologik omillari | Социально-биологические факторы | Observation.valueCodeableConcept | `code` [Risk Factor Observation Code](ValueSet-form111-risk-factor-observation-code-vs.html) `chr-0027-00004` "Социально-биологические факторы риска"<br>`value` [Socio-biological Factor](ValueSet-form111-socio-biological-factor-vs.html) по [ConceptMap социально-биологических факторов](ConceptMap-dmed-form-111-socio-biological-factors-cm.html) | Chekish, alkogolizm yoki giyohvandlik (`chr-0028-00005`) |
| Akusher-ginekologik anamnez | Акушерско-гинекологический анамнез | Observation.valueCodeableConcept | `code` Risk Factor Observation Code `chr-0027-00002` "Факторы акушерско-гинекологического анамнеза"<br>`value` [Obstetric History Factor](ValueSet-form111-obstetric-history-factor-vs.html) по [ConceptMap акушерско-гинекологического анамнеза](ConceptMap-dmed-form-111-obstetric-gynecological-history-cm.html) | Homiladorlikni yo'qotish (`chr-0019-00010`) |
| Ekstragenital kasalliklari | Экстрагенитальные заболевания | Observation.valueCodeableConcept | `code` Risk Factor Observation Code `chr-0027-00001` "Факторы экстрагенитальных заболеваний"<br>`value` [Extragenital Disease Factor](ValueSet-form111-extragenital-disease-factor-vs.html) по [ConceptMap экстрагенитальных заболеваний](ConceptMap-dmed-form-111-extragenital-diseases-cm.html) | Qon kasalliklari (`414022008`) |
| Homiladorlik asorati | Осложнение беременности | Observation.valueCodeableConcept | `code` Risk Factor Observation Code `chr-0027-00003` "Факторы осложнений беременности"<br>`value` [Pregnancy Complication Factor](ValueSet-form111-pregnancy-complication-factor-vs.html) по [ConceptMap осложнений беременности](ConceptMap-dmed-form-111-pregnancy-progress-pregnancy-complications-cm.html) | Anemiya (`271737000`) |
| Homila holatiga baho berish | Оценка состояния плода | Observation.valueString | [Fetal Assessment Observation Code](ValueSet-form111-fetal-assessment-observation-code-vs.html) `chr-0013-00002` "Оценка состояния плода" | Homila holati qoniqarli |
| Ballar yig'indisi | Сумма баллов | Observation.valueInteger | Risk Factor Observation Code `chr-0027-00006` "Сумма баллов перинатального риска" | 6 |
| Xavf darajasi | Степень риска | Observation.valueCodeableConcept | `code` Risk Factor Observation Code `chr-0027-00005` "Уровень перинатального риска"<br>`value` [Perinatal Risk Level](ValueSet-form111-perinatal-risk-level-vs.html) по [ConceptMap степени риска](ConceptMap-dmed-form-111-risk-level-cm.html) | O'rtacha xavf (`chr-0021-00003`) |

---

### 15. Заключения терапевта, венеролога и других специалистов

Код раздела: LOINC `11488-4` "Consult note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Mutaxassis xulosasi (terapevt) | Заключение специалиста (терапевт) | Observation.valueString | LOINC `85238-4` "Internal medicine Consult note" | Patologiya aniqlanmadi |
| Mutaxassis xulosasi (stomatolog) | Заключение специалиста (стоматолог) | Observation.valueString | LOINC `34756-7` "Dentistry Consult note" | Sanatsiya qilindi |
| Mutaxassis xulosasi (venerolog) | Заключение специалиста (венеролог) | Observation.valueString | LOINC `34758-3` "Dermatology Consult note" | Infeksiyalar aniqlanmadi |
| Kun | Дата | *(effectiveDateTime соответствующего Observation)* | - | 2025-11-05 / 2025-11-06 / 2025-11-06 |
| Homiladorlikning kechishi va patronaj kuzatuv ma'lumotlari | Течение беременности и данные патронажного наблюдения | Observation.valueString | Assessment Observation Code `chr-0005-00008` "Течение беременности и данные патронажного наблюдения" | Homiladorlik asoratsiz kechdi |
| Maslahat | Рекомендации | CarePlan.description | - | Temir preparatlarini davom ettirish, og'iz bo'shlig'i gigiyenasi |

---

### 16. Наблюдение в послеродовом периоде

Код раздела: SNOMED `133906008` "Postpartum care".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| 7-8 kun - sana | 7-8-й день - дата | Encounter.actualPeriod.start | - | 2026-06-01 |
| 7-8 kun shikoyati | 7-8-й день - жалобы | Observation.valueString | LOINC `8661-1` "Chief complaint - Reported" | Shikoyatlari yo'q |
| 7-8 kun tekshiruv-muolajalari | 7-8-й день - обследования и процедуры | Procedure.code | SNOMED `169762003` "Postnatal visit" | Bachadon involyutsiyasi ko'rikdan o'tkazildi |
| 7-8 kun maslahat, ko'rsatmalar | 7-8-й день - консультации и рекомендации | CarePlan.description | - | Gigiyena, emizishni davom ettirish |
| 35-40 kun - sana | 35-40-й день - дата | Encounter.actualPeriod.start | - | 2026-07-03 |
| 35-40 kun shikoyati | 35-40-й день - жалобы | Observation.valueString | LOINC `8661-1` "Chief complaint - Reported" | Shikoyatlari yo'q |
| 35-40 kun tekshiruv-muolajalari | 35-40-й день - обследования и процедуры | Procedure.code | SNOMED `169762003` "Postnatal visit" | Bachadon me'yorga qaytgan |
| 35-40 kun maslahat, ko'rsatmalar | 35-40-й день - консультации и рекомендации | CarePlan.description | - | Dispanser kuzatuvi yakunlandi |
| Shifokor imzosi | Подпись врача | Provenance.signature | [Provenance](https://hl7.org/fhir/R5/provenance.html) | Yusupova S.T. |
| Bo'lim boshlig'i imzosi | Подпись заведующего отделением | Provenance.signature | [Provenance](https://hl7.org/fhir/R5/provenance.html) | Abdullayeva G.N. |
| Kontratsepsiya turi | Вид контрацепции | Observation.valueCodeableConcept | `code` [Contraception Observation Code](ValueSet-form111-contraception-observation-code-vs.html) `chr-0007-00001` "Тип контрацепции"<br>`value` [Contraception Type](ValueSet-form111-contraception-type-vs.html) по [ConceptMap типа контрацепции](ConceptMap-dmed-form-111-contraception-type-cm.html) | Jarrohliksiz kontratseptsiya (`chr-0008-00001`) |
| Kontratsepsiya usuli (DMED) | Метод контрацепции (DMED) | Observation.valueCodeableConcept | `code` LOINC `8659-5` "Birth control method - Reported"<br>`value` [Contraception Method](ValueSet-form111-contraception-method-vs.html) per [contraception details ConceptMap](ConceptMap-dmed-form-111-contraception-details-cm.html) | Bachadon ichi vositasi (`312081001`) |

---

### Структура Bundle

Документ Формы 111 структурирован как FHIR Bundle, содержащий Composition [Form111_PregnantWomanIndividualCardComposition](StructureDefinition-form-111-pregnant-woman-individual-card-composition.html):

```
Bundle (document)
├── Composition (Form111_PregnantWomanIndividualCardComposition)
├── Patient (демографические данные беременной)
├── RelatedPerson (супруг)
├── EpisodeOfCare (антенатальный эпизод)
├── Encounter[] (первый осмотр, роды, повторные визиты, патронажные визиты, предыдущие беременности, послеродовые визиты)
├── Organization[] (женская консультация, места работы, роддом)
├── Practitioner[] / PractitionerRole[] (лечащий врач, заведующий отделением)
├── Condition[] (экстрагенитальные заболевания, осложнения текущей беременности, диагноз исхода, перенесённые заболевания, гинекологические, диагноз текущей беременности)
├── Procedure[] (роды, послеродовые визиты)
├── Observation[] (лабораторные результаты, осмотры, витальные показатели, перенесённая операция, подготовка к родам, школа матерей, оценка плода, факторы риска, заключения специалистов, вид контрацепции)
├── Immunization (стафилококковый анатоксин)
├── CarePlan[] (рекомендации по визитам, декретный отпуск)
└── Provenance[] (подписи визитов и документа)
```

### Пример

Полный пример FHIR-документа см. в разделе [Пример индивидуальной карты беременной по Форме 111](Bundle-example-form-111-pregnant-woman-individual-card.html).
