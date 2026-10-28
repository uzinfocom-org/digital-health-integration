<style>
/* Per-form mapping-table column widths (066: long UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 23%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 23%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 18%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 19%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 17%; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Форма 066 - Статистическая карта выбывшего из стационара

На этой странице описано сопоставление полей Формы 066 (Статистическая карта выбывшего из стационара) с ресурсами FHIR.

---

### Обзор

Форма 066 фиксирует административные и клинические данные пациентов, выписанных из стационара. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 066 Hospital Discharge Composition](StructureDefinition-form-066-hospital-discharge-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Каждый из 13 разделов Composition имеет собственный `section.code` и перечисляет ресурсы, относящиеся к этой части формы. Разделы 1-5 и 13 передаются всегда; остальные - только если в форме есть для них данные.

Полный пример экземпляра см. в разделе [Пример выписки из стационара по Форме 066](Bundle-example-form-066-hospital-discharge.html).

---

### Сопоставление полей

### UZ-066 Статистическая карта выбывшего из стационара - сопоставление с FHIR

---

### Информация о документе

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:760e8400-e29b-41d4-a716-446655440066 |
| Hujjat UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:861f9511-f30c-52e5-b827-557766550666 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 066 |
| Hujjat holati | Статус документа | Composition.status | `final`, фиксирован профилем | final |
| Hujjat turi | Тип документа | Composition.type | LOINC `18842-5` "Discharge summary" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Document Category](CodeSystem-document-category-cs.html) `form-066` "Hospital discharge statistical card" | - |
| Bemor | Пациент | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Tursunov Alisher Valiyevich |
| Statsionarda yotish | Пребывание в стационаре | Composition.encounter | [UZ Core Encounter 066](StructureDefinition-uz-core-encounter-066.html) | 2026-01-05 - 2026-01-15 |
| Hujjat sanasi | Дата документа | Composition.date | - | 2026-01-15T14:30:00+05:00 |
| Mas'ul shaxslar | Ответственные лица | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) | Rasulov B.B., Qodirov A.A., Karimova D.D. |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 066 - Hospital Discharge Statistical Card |
| Imzo | Подпись | [Provenance](https://hl7.org/fhir/R5/provenance.html).signature | `type` [Signature Type Codes](https://hl7.org/fhir/R5/valueset-signature-type.html) | Author's Signature, 2026-01-15T14:45:00+05:00 |

---

### 1. Личная информация

Код раздела: LOINC `LP36348-8` "Patient Information".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Muassasa kodi | Код учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).identifier | Local | 200001 |
| Muassasa nomi | Наименование учреждения | Organization.name | - | Toshkent shahar klinik shifoxonasi |
| Bemor tibbiy bayoni qayd raqami | Регистрационный номер медицинской карты | Composition.identifier | - | 066-2026-001 |
| JShShIR | ПИНФЛ | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[nationalId].value | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 31234567890123 |
| Familiyasi | Фамилия | Patient.name.family | - | Tursunov |
| Ismi | Имя | Patient.name.given | - | Alisher |
| Otasining ismi | Отчество | Patient.name.given | - | Valiyevich |
| Tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1990-04-12 |
| Jinsi | Пол | Patient.gender | [UZ Core Administrative Gender](https://terminology.dhp.uz/fhir/core/ValueSet/administrative-gender-vs) | male |
| Fuqaroligi | Гражданство | Patient.extension[nationality] | Local code | Uzbekistan |
| ID yoki Pasport | ID или паспорт | Patient.identifier[passportLocal] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`<br>`type` `PPN` | AC1234567 |
| Ijtimoiy holati | Социальное положение | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | `code` SNOMED `82996008` "Social status"<br>`value` [Social Status](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | Unemployed (`regis0010.00004`) |
| Imtiyoz toifasi mavjud | Наличие льготной категории | UZCoreSocioeconomicObservation.valueCodeableConcept | `code` SNOMED `1303306008` "Eligible for benefit"<br>`value` [Benefits](https://terminology.dhp.uz/fhir/core/ValueSet/benefits-vs) | Medical staff (`regis0004.00019`) |
| Telefon | Телефон | Patient.telecom[phone].value | - | +998901234567 |
| E-mail | E-mail | Patient.telecom[email].value | - | test@mail.com |
| Bemor biriktirilgan muassasa | Прикреплённое учреждение | Patient.managingOrganization | Organization | Yunusobod tuman oilaviy poliklinikasi |

---

### 2. Информация о месте жительства

Код раздела: LOINC `56799-0` "Address".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| QQR/Viloyatlar/Toshkent sh. | Республика/область/г. Ташкент | Patient.address.state | [State](https://terminology.dhp.uz/fhir/core/ValueSet/state-vs) | Tashkent city (`1726`) |
| Tuman/Shahar | Район/город | Patient.address.district | [Regions](https://terminology.dhp.uz/fhir/core/ValueSet/regions-vs) | Yunusabad district (`1726266`) |
| Mahalla | Махалля | Patient.address.city | [Mahalla](https://terminology.dhp.uz/fhir/core/ValueSet/mahalla-vs) | Bodomzor MFY (`16090011`) |
| Ko'cha | Улица | Patient.address.line | - | 12-mavze |
| Uy | Дом | Patient.address.line | - | 15-uy |
| Xonadon | Квартира | Patient.address.line | - | 24-xonadon |
| Pochta indeksi | Почтовый индекс | Patient.address.postalCode | - | 100017 |

---

### 3. Информация о поступлении

Код раздела: LOINC `LP74442-2` "Admission Information".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Tezkor yordam ko'rsatildi | Экстренная помощь оказана | Observation.valueBoolean | `code` LOINC `57276-8` "Emergent care utilized during assessment period [CMS Assessment]" | true |
| Yotqizish turi | Тип госпитализации | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).admission.admitSource | [Encounter Admit Source](https://terminology.dhp.uz/fhir/core/ValueSet/encounter-admit-source-vs) | Without referral / Self-referred (`mserv-0006-00001`) |
| Kasallik yoki jarohatlangandan so'ng necha soatda | Через сколько часов после заболевания/травмы | Observation.valueCodeableConcept | `code` LOINC `77977-7` "Illness duration"<br>`value` [Disease/Injury Delay](ValueSet-disease-injury-delay-vs.html) | Within first 6 hours (`delay0001_00001`) |
| Tez tibbiy yordam mashinasida keldi | Доставлен скорой помощью | Observation.valueBoolean | `code` LOINC `LP97912-7` "Ambulance transport" | true |
| Yo'llanma mavjud | Наличие направления | Observation.valueBoolean | `code` LOINC `57133-1` "Referral note" | true |
| Yo'llagan muassasa | Направившее учреждение | Organization.name | Organization | Yunusobod tuman tibbiyot birlashmasi |
| Yo'llagan muassasa tashxisi | Диагноз направившего учреждения | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](ValueSet-diagnosis-role-integration-vs.html) `referral` "Referring institution diagnosis" | Pneumonia, unspecified (`J18.9`) |
| Ayni shu kasallik bilan shifoxonaga oxirgi 30 kun ichida qayta yotqizilgan | Повторная госпитализация в течение 30 дней | Observation.valueBoolean | `code` LOINC `LP73229-4` "Readmission to the same hospital within 30D of surgical discharge" | false |

---

### 4. Информация о госпитализации

Код раздела: LOINC `8648-8` "Hospital course note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Qabul bo'limi tashxisi | Диагноз при поступлении | Condition.code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](ValueSet-diagnosis-role-integration-vs.html) `admission` "Admission diagnosis" | Pneumonia, unspecified (`J18.9`) |
| Yotqizilgan sanasi va vaqti | Дата и время госпитализации | Encounter.actualPeriod.start | - | 2026-01-05T10:00:00+05:00 |
| O'rin joy turi | Тип койки | Encounter.location.form | [Organizational Specialization](https://terminology.dhp.uz/fhir/core/ValueSet/organizational-specialization-vs) | Therapy (`101.0`) |
| Chiqarilgan sanasi va vaqti | Дата и время выписки | Encounter.actualPeriod.end | - | 2026-01-15T14:00:00+05:00 |
| Jami o'rin kunlar | Койко-дни | Observation.valueQuantity / Encounter.length | `code` LOINC `78033-8` "Hospital stay duration" | 10 days |
| Shundan, reanimatsiyada | Из них, в реанимации | Observation.valueQuantity | `code` LOINC `LP76050-1` "Intensive care unit" | 0 days |
| Chiqarilgan bo'lim | Отделение выписки | Organization.name | Local code | Therapeutic department |
| Shifoxonadan chiqarish holati | Исход госпитализации | Encounter.admission.dischargeDisposition | [Encounter Discharge Disposition](https://terminology.dhp.uz/fhir/core/ValueSet/encounter-discharge-disposition-vs) | Discharged (`mserv-0004-00004`) |
| Bemor holati | Состояние пациента | Encounter.subjectStatus | [Encounter Subject Status](https://terminology.dhp.uz/fhir/core/ValueSet/encounter-subject-status-vs) | Recovered (`loc-cs-001`) |

---

### 5. Заключительный диагноз

Код раздела: LOINC `LA32800-7` "Final diagnosis (discharge)".

Каждый диагноз помечается значением `Condition.category` из набора значений [Diagnosis Role](ValueSet-diagnosis-role-integration-vs.html) и помещается в соответствующий подраздел Composition по роли, поэтому роль сохраняется независимо от порядка ввода - Основной → `main`, Конкурирующий → `competing`, Сопутствующий → `concomitant`, Фоновый → `background`, Осложнение → `complication`.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Asosiy tashxis | Основной диагноз | Condition.code | ICD-10 | Pneumonia, unspecified (`J18.9`) |
| Raqobat tashxis | Конкурирующий диагноз | Condition.code | ICD-10 | Chronic obstructive pulmonary disease, unspecified (`J44.9`) |
| Yondosh tashxis | Сопутствующий диагноз | Condition.code | ICD-10 | Essential (primary) hypertension (`I10`) |
| Fon tashxis | Фоновый диагноз | Condition.code | ICD-10 | Type 2 diabetes mellitus : Without complications (`E11.9`) |
| Asorat | Осложнение | Condition.code | ICD-10 | Acute respiratory failure (`J96.0`) |

---

### 6. Патологоанатомический диагноз

Код раздела: LOINC `60567-5` "Comprehensive pathology report panel".

Причины смерти помечаются таким же образом (`Condition.category`, [Diagnosis Role](ValueSet-diagnosis-role-integration-vs.html)) в подразделах по ролям - Непосредственная причина смерти → `immediate-cause-of-death`, вызвавшее её заболевание → `underlying-cause-of-death`, Основное заболевание → `main-disease-death`, Другие значимые заболевания → `other-significant-death`.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| O'limga olib kelgan bevosita sabab | Непосредственная причина смерти | Condition.code | ICD-10 | Other ill-defined and unspecified causes of mortality (`R99`) |
| O'lim sababini bevosita chaqiruvchi kasallik | Заболевание, вызвавшее непосредственную причину смерти | Condition.code | ICD-10 | Other ill-defined and unspecified causes of mortality (`R99`) |
| Asosiy kasallik | Основное заболевание | Condition.code | ICD-10 | Other ill-defined and unspecified causes of mortality (`R99`) |
| Boshqa muhim kasalliklar | Другие значимые заболевания | Condition.code | ICD-10 | Other ill-defined and unspecified causes of mortality (`R99`) |

---

### 7. Хирургические вмешательства

Код раздела: LOINC `29554-3` "Procedure Narrative".

Код операции - это стержневой код ICHI (Target.Action.Means), передаваемый в `Procedure.code` с системой `http://id.who.int/icd/release/11/ichi`. Выбирайте его из [ICHI Codes Accepted by DMED](https://terminology.dhp.uz/fhir/integrations/ValueSet/dmed-ichi-vs) - это то, что принимает DMED. Часть этих кодов в ICHI неактивна и оставлена только для того, чтобы уже имеющиеся в DMED записи проходили валидацию - новую операцию кодируйте активным кодом. Процедура вне формы 066 кодируется из [ICHI Codes](https://terminology.dhp.uz/fhir/core/ValueSet/ichi-vs).

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Sana va vaqti | Дата и время операции | [Procedure](StructureDefinition-form-066-surgical-procedure.html).occurrenceDateTime | - | 2026-01-08T11:30:00+05:00 |
| Kod (ICHI) | Код операции | Procedure.code | [ICHI Codes Accepted by DMED](https://terminology.dhp.uz/fhir/integrations/ValueSet/dmed-ichi-vs) | Bronchoscopy (`JBB.AE.AD`) |
| Asosiy | Основная операция | Procedure.category | Local | Main |
| Nomi | Наименование операции | Procedure.code.text | - | Diagnostic bronchoscopy |
| Shifokor | Врач | Procedure.performer.actor | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) | Rasulov B.B. |

---

### 8. Лабораторные результаты

Код раздела: LOINC `30954-2` "Relevant diagnostic tests/laboratory data note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| OITS | ВИЧ/СПИД | Observation.valueCodeableConcept | `code` LOINC `56888-1` "HIV 1+2 Ab+HIV1 p24 Ag [Presence] in Serum or Plasma by Immunoassay"<br>`value` [ObservationInterpretation](https://terminology.hl7.org/CodeSystem-v3-ObservationInterpretation.html) | Negative (`NEG`) |
| RW | RW / сифилис | Observation.valueCodeableConcept | `code` LOINC `47236-5` "Treponema pallidum IgG+IgM Ab [Presence] in Serum or Plasma by Immunoassay"<br>`value` [ObservationInterpretation](https://terminology.hl7.org/CodeSystem-v3-ObservationInterpretation.html) | Negative (`NEG`) |
| Gepatit B | Гепатит B | Observation.valueCodeableConcept | `code` LOINC `5196-1` "Hepatitis B virus surface Ag [Presence] in Serum or Plasma by Immunoassay"<br>`value` [ObservationInterpretation](https://terminology.hl7.org/CodeSystem-v3-ObservationInterpretation.html) | Negative (`NEG`) |
| Gepatit C | Гепатит C | Observation.valueCodeableConcept | `code` LOINC `13955-0` "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay"<br>`value` [ObservationInterpretation](https://terminology.hl7.org/CodeSystem-v3-ObservationInterpretation.html) | Negative (`NEG`) |

---

### 9. Информация об оплате

Код раздела: LOINC `48768-6` "Payment sources Document".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| To'lov turi | Тип оплаты | Coverage.type | [Coverage Type](https://terminology.dhp.uz/fhir/core/ValueSet/coverage-type-vs) | State Health Insurance treated case (Resolution No. PQ-311) (`covtp-0001-00001`) |

---

### 10. Информация о новорождённом

Код раздела: LOINC `57075-4` "Newborn delivery information".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Vazni | Вес | Observation.valueQuantity | `code` LOINC `8339-4` "Birth weight Measured" | 3200 g |
| Bo'yi | Рост | Observation.valueQuantity | `code` LOINC `89269-5` "Body height Measured --at birth" | 51 cm |
| Onasining JShShIRi | ПИНФЛ матери | [RelatedPerson](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-relatedperson.html).identifier[nationalId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 39876543210987 |

---

### 11. Чувствительность туберкулёза к препаратам

Код раздела: LOINC `18769-0` "Microbial susceptibility tests Set".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| O'pka silida doriga sezgirlik | Чувствительность туберкулёза к препаратам | Observation.valueCodeableConcept | `code` LOINC `18769-0` "Microbial susceptibility tests Set"<br>`value` [Tuberculosis Drug Susceptibility](ValueSet-tb-drug-sensitivity-vs.html) | Drug-sensitive (`Tub-004-001`) |

---

### 12. Временная нетрудоспособность

Код раздела: LOINC `34109-9` "Note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Ochilgan sana | Дата открытия | Observation.effectivePeriod.start | `code` LOINC `105583-9` "Worker Sick leave form" | 2026-01-05 |
| Berkitilgan sana | Дата закрытия | Observation.effectivePeriod.end | `code` LOINC `105583-9` "Worker Sick leave form" | 2026-01-15 |

---

### 13. Ответственные лица

Код раздела: LOINC `LP35157-4` "Responsible party".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Davolovchi shifokor | Лечащий врач | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html).practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) | Rasulov B.B. (`2211.6`) |
| Bo'lim boshlig'i | Заведующий отделением | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) | Qodirov A.A. (`1342.18`) |
| Katta hamshira | Старшая медсестра | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) | Karimova D.D. (`1342.1`) |

---

### Структура Bundle

Документ Формы 066 структурирован как FHIR Bundle, содержащий Composition [Form066HospitalDischargeComposition](StructureDefinition-form-066-hospital-discharge-composition.html):

```
Bundle (документ)
├── Composition (Form066HospitalDischargeComposition)
├── Patient (демографические данные пациента)
├── Encounter (поступление и выписка из стационара)
├── Organization[] (больница, отделения, направившее учреждение)
├── Practitioner[] (лечащие и оперирующие врачи)
├── PractitionerRole[] (ответственные лица: врач, заведующий отделением, медсестра)
├── Condition[] (диагнозы при поступлении, заключительные и патологоанатомические)
├── Observation[] (клинические и административные измерения, результаты лабораторных исследований)
├── Procedure[] (хирургические вмешательства)
├── Coverage (тип оплаты)
├── RelatedPerson (мать новорождённого)
└── Provenance (авторство и происхождение записи)
```

### Пример

Полный пример FHIR-документа см. в разделе [Пример выписки из стационара по Форме 066](Bundle-example-form-066-hospital-discharge.html).