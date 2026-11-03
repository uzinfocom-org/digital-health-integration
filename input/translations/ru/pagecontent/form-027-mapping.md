<style>
/* Per-form mapping-table column widths (027: one table per Composition section). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 18%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 18%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 22%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 26%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 16%; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Форма 027 - Выписка из медицинской карты

На этой странице описано сопоставление полей [Формы 027](forms-volume-03-diagnostics-laboratory.html) (Выписка из медицинской карты амбулаторного, стационарного больного) с ресурсами FHIR.

---

### Обзор

Форма 027 - выписка из амбулаторной или стационарной медицинской карты пациента, которая передаётся при направлении или переводе пациента. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 027 Medical Record Extract Composition](StructureDefinition-form-027-medical-record-extract-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Каждый из 8 разделов Composition имеет свой `section.code` и перечисляет ресурсы, относящиеся к этой части формы.

Полный пример экземпляра см. в [примере выписки по Форме 027](Bundle-example-form-027-medical-record-extract.html).

---

### Сопоставление полей

### Форма 027 - Выписка из медицинской карты - сопоставление с FHIR

---

### Информация о документе

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:760e8400-e29b-41d4-a716-446655440027 |
| Hujjat UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:861f9511-f30c-52e5-b827-557766550027 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 027 |
| Hujjat holati | Статус документа | Composition.status | [Статусы документов](document-statuses.html): `final` после подписания выписки, `amended` для последующих исправлений, `entered-in-error` при отзыве | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0106` "Extract from inpatient medical record", а также LOINC `34133-9` "Summary of episode note" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" и [Document Category](CodeSystem-document-category-cs.html) `form-027` "Extract from patient's medical record" | - |
| Bemor | Пациент | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Yusupova Nilufar Rustamovna |
| Murojaat yoki statsionarda davolanish | Обращение или пребывание в стационаре | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | 2026-02-08 - 2026-02-10 |
| Hujjat shakllantirilgan sana | Дата составления документа | Composition.date | - | 2026-02-10T09:15:00+05:00 |
| Davolovchi shifokor | Лечащий врач | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html), или [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html), если должность неизвестна | Ismoilova M.T. |
| Hujjat egasi | Организация-хранитель документа | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Chilonzor tuman poliklinikasi |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 027 - Tibbiy muassasadagi bemorning tibbiy kartasidan koʻchirma |

---

### 1. Регистрационные данные

Код раздела: LOINC `LP74442-2` "Admission Information".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Muassasa kodi | Код учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).identifier[taxId] | `system` `https://dhp.uz/fhir/core/sid/org/uz/soliq`<br>`type` `TAX` | 310271027 |
| Muassasa nomi | Наименование учреждения | Organization.name | - | Chilonzor tuman poliklinikasi |
| Bemorning ro'yxatdan o'tish raqami | Регистрационный номер пациента | Encounter.identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number` | MRN-027-2026-0124 |
| Bemor turi | Тип пациента | Encounter.class | v3-ActCode | `AMB` "ambulatory" |
| Murojaat sanasi | Дата подачи заявления | Encounter.actualPeriod.start | - | 2026-02-08T09:00:00+05:00 |
| Chiqarilgan sana | Дата выписки | Encounter.actualPeriod.end | - | 2026-02-10T09:00:00+05:00 |

---

### 2. Личные данные

Код раздела: LOINC `45970-1` "Demographic information section".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Bemor JShShIR | ПИНФЛ | Patient.identifier[nationalId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 31234567890124 |
| Med ID raqami | Медицинский идентификационный номер | Patient.identifier[healthCardId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/hc`<br>`type` `HC` | HC-2026-00027 |
| Bemor FISh | ФИО пациента | Patient.name.text | - | Yusupova Nilufar Rustamovna |
| Bemor tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1988-07-22 |
| Bemor jinsi | Пол пациента | Patient.gender; gender.extension[gender-other] | [Administrative Gender](https://dhp.uz/fhir/core/en/ValueSet-administrative-gender-vs.html); для `other` обязательно расширение [Gender Other](https://dhp.uz/fhir/core/en/StructureDefinition-gender-other.html) | `female` |
| Bemor fuqaroligi | Гражданство пациента | Patient.extension[citizenship] | ISO 3166-1 | `UZ` "Uzbekistan" |
| Bemor Pasport seriyasi va № | Серия и № паспорта | Patient.identifier[passportLocal] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`<br>`type` `PPN` | AC7654321 |

---

### 3. Адрес и контакты

Код раздела: LOINC `56799-0` "Address".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Bemor yashab kelayotgan manzili | Адрес проживания (фактический) | Patient.address: state, district, line, postalCode, text | - | 1726 (Toshkent shahar), 1726294 (Chilonzor tumani), 12-mavze, 5-uy, 10-xonadon |
| Bemor telefoni | Телефон | Patient.telecom (`system` `phone`) | - | +998901112233 |
| Bemor emaili | Email | Patient.telecom (`system` `email`) | - | nilufar.yusupova@mail.com |

---

### 4. Направление и диагноз

Код раздела: LOINC `42349-1` "Reason for referral (narrative)".

Каждый диагноз помечается элементом `Condition.category` из системы кодов [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) и размещается в соответствующем подразделе Composition: Asosiy tashxis - `main`, Asorati - `complication`, Yo'ldosh kasallik - `concomitant`.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Yo'llagan muassasa | Направившее учреждение | Encounter.admission.origin | Organization | Yakkasaroy tuman oilaviy poliklinikasi |
| Asosiy tashxis | Основной диагноз | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | `J18.9` "Pneumonia, unspecified" |
| Asorati | Осложнение | Condition.code; category | ICD-10; [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `complication` | `J90` "Pleural effusion, not elsewhere classified" |
| Yo'ldosh kasallik | Сопутствующее заболевание | Condition.code | ICD-10 | `E66.9` "Obesity, unspecified" |

---

### 5. Клинические данные

Код раздела: LOINC `34117-2` "History and physical note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Shikoyatlar | Жалобы | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString | LOINC `8661-1` "Chief complaint - Reported" | Isitma, balg'amli yo'tal, o'ng tomonda ko'krak qafasida og'riq |
| Anamnez | Анамнез | Observation.valueString | LOINC `10164-2` "History of present illness Narrative" | 5 kun oldin sovqotishdan keyin tana harorati 38,7 °C gacha ko'tarildi, balg'amli yo'tal |
| Klinik ko'rik | Клинический осмотр | Observation.valueString | LOINC `10210-3` "Physical findings of General status Narrative" | Umumiy holati o'rta og'ir, o'ng o'pka pastki qismida nam xirillashlar |
| Diagnostik tekshiruv | Диагностическое обследование | [DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html).code | LOINC | `58410-2` "CBC panel - Blood by Automated count" |
| Leykotsitlar | Лейкоциты | *(DiagnosticReport.result)* Observation.valueQuantity | LOINC `6690-2` "Leukocytes [#/volume] in Blood by Automated count", UCUM `10*9/L` | 13.5 10*9/L |
| Gemoglobin | Гемоглобин | *(DiagnosticReport.result)* Observation.valueQuantity | LOINC `718-7` "Hemoglobin [Mass/volume] in Blood", UCUM `g/L` | 128 g/L |

---

### 6. Лечение и рекомендации

Код раздела: LOINC `18776-5` "Plan of care note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Davolash | Лечение | [CarePlan](https://hl7.org/fhir/R5/careplan.html).activity.performedActivity.concept.text | - | Antipiretik terapiya, ko'p suyuqlik ichish |
| Tavsiyalar | Рекомендации | CarePlan.description | - | Statsionar davolash; 10-14 kundan keyin ko'krak qafasi rentgenogrammasini takrorlash |
| Retsept | Рецепт | [MedicationRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-medicationrequest.html).medication со ссылкой на [Medication](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-medication.html).code | МНН `https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs` | `005325` "paracetamol" |
| Dozalash | Дозировка | *(same MedicationRequest)* dosageInstruction.text; doseAndRate.doseQuantity | UCUM `mg` | 500 mg, harorat 38,5 °C dan oshganda, kuniga 3 martagacha |

---

### 7. Последующие мероприятия

Код раздела: LOINC `74213-0` "Discharge instructions".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Kuzatuv | Наблюдение | CarePlan.description | - | Shifoxonadan chiqqandan keyin 1 oy davomida oilaviy poliklinikada kuzatuv |
| Dispanserizatsiya | Диспансеризация | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episodeofcare.html).type[serviceType] | [Episode of Care Type](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-type-vs) | `mserv-0001-00001` "Preventive services" |
| Shifoxonaga yotqazish | Госпитализация | [ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html).code | [Service Request Codes](https://terminology.dhp.uz/fhir/core/ValueSet/service-request-code-vs) | SNOMED CT `32485007` "Hospital admission" |

---

### 8. Ответственные лица

Код раздела: LOINC `LP35157-4` "Responsible party".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Davolovchi shifokor FIShi | Лечащий врач (Ф.И.О.) | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Ismoilova M.T., `2211.6` "Medical specialist" |
| Davolovchi shifokor imzosi | Лечащий врач (подпись) | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | `type` [UZ Core Signature Type](https://dhp.uz/fhir/core/en/CodeSystem-signature-type-cs.html) | soliqAuth, 2026-02-10T09:20:00+05:00 |
| Mas'ul shaxs FIShi | Ответственное лицо (Ф.И.О.) | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Nazarov S.K., `1342.18` "Head of department (health institution)" |
| Mas'ul shaxs imzosi | Ответственное лицо (подпись) | Provenance.signature | `type` UZ Core Signature Type | soliqAuth, 2026-02-10T09:25:00+05:00 |

---

### Обязательные поля

FHIR требует эти элементы, но на бумажной форме для них нет поля. Заполняйте их так:

| Ресурс | Элемент | Код | Значение |
|---|---|---|---|
| Encounter | status | [Encounter Status](https://dhp.uz/fhir/core/en/ValueSet-encounter-status-vs.html) | `completed`, когда пребывание или обращение, о котором выписка, завершено |
| Condition | clinicalStatus | [Clinical Status](https://dhp.uz/fhir/core/en/ValueSet-clinical-status-vs.html) | `active`, пока заболевание продолжается, `resolved` - когда оно закончилось |
| Observation | status | [Observation Status](https://dhp.uz/fhir/core/en/ValueSet-observation-status-vs.html) | `final` |
| DiagnosticReport | status | [Diagnostic Report Status](https://dhp.uz/fhir/core/en/ValueSet-diagnostic-report-status-vs.html) | `final`, когда результаты выданы |
| CarePlan (лечение и рекомендации) | status; intent | [RequestStatus](https://hl7.org/fhir/R5/valueset-request-status.html); [CarePlanIntent](https://hl7.org/fhir/R5/valueset-care-plan-intent.html) | `active`, пока действуют рекомендации; `plan` |
| MedicationRequest | status; intent | [MedicationRequest Status](https://dhp.uz/fhir/core/en/ValueSet-medicationrequest-status-vs.html); [MedicationRequest Intent](https://dhp.uz/fhir/core/en/ValueSet-medicationrequest-intent-vs.html) | `active`; `order` (рецепт, выданный вместе с выпиской) |
| CarePlan (наблюдение) | status; intent | [RequestStatus](https://hl7.org/fhir/R5/valueset-request-status.html); [CarePlanIntent](https://hl7.org/fhir/R5/valueset-care-plan-intent.html) | `active`; `plan` |
| EpisodeOfCare | status | [EpisodeOfCare Status](https://dhp.uz/fhir/core/en/ValueSet-episode-of-care-status-vs.html) | `active`, когда пациент взят на диспансерный учёт, до этого `planned` |
| ServiceRequest | status; intent | [ServiceRequest Status](https://dhp.uz/fhir/core/en/ValueSet-service-request-status-vs.html); [Request Intent](https://dhp.uz/fhir/core/en/ValueSet-request-intent-vs.html) | `active`; `order` |

---

### Структура Bundle

Документ Формы 027 структурирован как FHIR Bundle, содержащий Composition [Form027MedicalRecordExtractComposition](StructureDefinition-form-027-medical-record-extract-composition.html):

```
Bundle (документ)
├── Composition (Form027MedicalRecordExtractComposition)
├── Patient (демографические данные пациента)
├── Encounter (обращение или пребывание в стационаре)
├── Organization[] (регистрирующее и направившее учреждение)
├── Practitioner[] (лечащий врач, ответственное лицо)
├── PractitionerRole[] (должности лечащего врача и ответственного лица)
├── Condition[] (основной диагноз, осложнение, сопутствующее заболевание)
├── Observation[] (жалобы, анамнез, клинический осмотр, результаты анализов)
├── DiagnosticReport (диагностические исследования)
├── CarePlan[] (лечение и рекомендации, наблюдение)
├── MedicationRequest / Medication (рецепт)
├── EpisodeOfCare (диспансерное наблюдение)
├── ServiceRequest (направление на госпитализацию)
└── Provenance[] (подписи лечащего врача и ответственного лица)
```

### Пример

Полный пример FHIR-документа см. в [примере выписки по Форме 027](Bundle-example-form-027-medical-record-extract.html).
