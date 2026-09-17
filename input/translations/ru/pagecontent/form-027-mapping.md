<style>
/* Per-form mapping-table column widths (027: UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 11%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 18%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 21%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 35%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 15%; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Форма 027 - Выписка из медицинской карты

На этой странице описано сопоставление полей Формы 027 (Выписка из медицинской карты пациента) с ресурсами FHIR.

### Обзор

Форма 027 фиксирует обобщённую выписку из медицинской карты пациента для целей направления или перевода. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 027 Medical Record Extract Composition](StructureDefinition-form-027-medical-record-extract-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Полный пример экземпляра см. в разделе [Пример выписки по Форме 027](Bundle-example-form-027-medical-record-extract.html).

### Сопоставление полей

# UZ-027 Выписка из медицинской карты - сопоставление с FHIR

---

### Регистрационные данные

| UZ-027 | RU-027 | Путь FHIR | Код | Пример значения |
|--------|--------|-----------|------|------------------|
| Muassasa kodi | Код учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).identifier | Local | 200015 |
| Muassasa nomi | Наименование учреждения | Organization.name | - | Chilonzor tuman poliklinikasi |
| Bemorning ro'yxatdan o'tish raqami | Регистрационный номер пациента | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).identifier.value | - | REG-027-2026-0124 |
| Bemor turi | Тип пациента | Encounter.class | v3-ActCode | Inpatient encounter |
| Murojaat sanasi | Дата подачи заявления | Encounter.actualPeriod.start | - | 2026-02-08T09:00:00+05:00 |
| Chiqarilgan sana | Дата выписки | Encounter.actualPeriod.end | - | 2026-02-10T09:00:00+05:00 |

---

### Личные данные

| UZ-027 | RU-027 | Путь FHIR | Код | Пример значения |
|--------|--------|-----------|------|------------------|
| Bemor JShShIR | ПИНФЛ | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[nationalId].value | NI | 31234567890124 |
| Med ID raqami | Медицинский идентификационный номер | Patient.identifier[healthCardId].value | HC | HC-2026-00027 |
| Bemor FISh | ФИО пациента | Patient.name.text | - | Yusupova Nilufar Rustamovna |
| Bemor tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1988-07-22 |
| Bemor jinsi | Пол пациента | Patient.gender | AdministrativeGender | female |
| Bemor fuqaroligi | Гражданство пациента | Patient.extension[citizenship] | ISO 3166-1 | Uzbekistan (UZ) |
| Bemor Pasport seriyasi va № | Серия и № паспорта | Patient.identifier[passportLocal or passportInternational or passportForeign] | PPN | AC7654321 |

---

### Адрес проживания

| UZ-027 | RU-027 | Путь FHIR | Код | Пример значения |
|--------|--------|-----------|------|------------------|
| Bemor yashab kelayotgan manzili | Адрес проживания (фактический) | Patient.address.text | - | Toshkent sh., Chilonzor tumani, 12-mavze, 5-uy, 10-xonadon |
| Bemor telefoni | Телефон | Patient.telecom[phone] | - | +998901112233 |
| Bemor emaili | Email | Patient.telecom[email] | - | nilufar.yusupova@mail.com |

---

### Направление и диагноз

Каждый диагноз помечается элементом `Condition.category` из системы кодов [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) и размещается в соответствующем под-разделе Composition - Asosiy tashxis → `main`, Asorati → `complication`, Yo'ldosh kasallik → `concomitant`.

| UZ-027 | RU-027 | Путь FHIR | Код | Пример значения |
|--------|--------|-----------|------|------------------|
| Yo'llagan muassasa | Направившее учреждение | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).admission.origin | Organization | Yakkasaroy tuman oilaviy poliklinikasi |
| Asosiy tashxis kodi | Код основного диагноза | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code.coding.code | ICD-10 | J06.9 |
| Asosiy tashxis nomi | Наименование основного диагноза | Condition.code.coding.display | - | Acute upper respiratory infection, unspecified |
| Asorati | Код осложнения | [Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html).complication | ICD-10 | J96.0 |
| Yo'ldosh kasallik kodi | Код сопутствующего заболевания | Condition.code.coding.code | ICD-10 | E66.9 |

---

### Клинические данные

| UZ-027 | RU-027 | Путь FHIR | Код | Пример значения |
|--------|--------|-----------|------|------------------|
| Shikoyatlar | Жалобы | Encounter.reason.value.concept.text | - | Yuqori nafas yo'llari infeksiyasiga xos shikoyatlar |
| Anamnez | Анамнез | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString | LOINC `10164-2` "History of present illness Narrative" | 3 kundan beri tana harorati ko'tarilishi, quruq yo'tal, bosh og'rig'i |
| Klinik ko'rik | Клинический осмотр | Observation.valueString | LOINC `10210-3` "Physical findings of General status Narrative" | Umumiy holati qoniqarli, teri qoplamlari toza |
| Diagnostik tekshiruv | Диагностическое обследование | [DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html).code | LOINC | CBC panel - Blood by Automated count |

---

### Лечение и рекомендации

| UZ-027 | RU-027 | Путь FHIR | Код | Пример значения |
|--------|--------|-----------|------|------------------|
| Davolash | Лечение | CarePlan.activity.performedActivity.concept.text | Local | Ko'p suyuqlik ichish, dam olish |
| Tavsiyalar | Рекомендации | CarePlan.note.text | - | Ko'p suyuqlik ichish, dam olish tavsiya etiladi, 3 kundan keyin qayta ko'rikka kelish |
| Retsept | Рецепт | MedicationRequest.medication | Local | Paracetamol 500 mg tablet |

*Примечание: для CarePlan и MedicationRequest пока нет отдельных национальных профилей UZ Core; используются базовые ресурсы FHIR.*

---

### Последующие мероприятия

| UZ-027 | RU-027 | Путь FHIR | Код | Пример значения |
|--------|--------|-----------|------|------------------|
| Kuzatuv | Наблюдение | CarePlan.note.text | - | 1 hafta davomida kuzatuvda saqlash |
| Dispanserizatsiya | Диспансеризация | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episode-of-care.html).type.text | Local | Treatment services |
| Shifoxonaga yotqazish | Госпитализация | ServiceRequest.code | Local | CBC panel |

*Примечание: ServiceRequest в настоящее время использует профиль UZCoreServiceRequestLaboratory как временную ссылку до публикации общего профиля UZCoreServiceRequest.*

---

### Ответственные лица

| UZ-027 | RU-027 | Путь FHIR | Код | Пример значения |
|--------|--------|-----------|------|------------------|
| Davolovchi shifokor FIShi | Лечащий врач (Ф.И.О.) | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html).name.text | - | Ismoilova M.T. |
| Davolovchi shifokor imzosi | Лечащий врач (подпись) | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | - | Digital signature (PDF) |
| Mas'ul shaxs FIShi | Ответственное лицо (Ф.И.О.) | Practitioner.name.text | - | Nazarov S.K. |
| Mas'ul shaxs imzosi | Ответственное лицо (подпись) | Provenance.signature | - | Digital signature (PDF) |

---

### Структура Bundle

Документ Формы 027 структурирован как FHIR Bundle, содержащий Composition [Form027MedicalRecordExtractComposition](StructureDefinition-form-027-medical-record-extract-composition.html):

```
Bundle (документ)
├── Composition (Form027MedicalRecordExtractComposition)
├── Patient (демографические данные пациента)
├── Encounter (посещение/госпитализация)
├── Organization[] (регистрирующее и направившее учреждение)
├── Practitioner[] (лечащий врач, ответственное лицо)
├── PractitionerRole[] (роли врача и ответственного лица)
├── Condition[] (основной и сопутствующий диагнозы)
├── Procedure (осложнение)
├── Observation[] (жалобы, анамнез, клинический осмотр)
├── DiagnosticReport (результаты диагностических исследований)
├── CarePlan[] (лечение, рекомендации, наблюдение)
├── MedicationRequest / Medication (рецепт)
├── EpisodeOfCare (диспансерное наблюдение)
├── ServiceRequest (запрос на госпитализацию)
└── Provenance[] (подписи врача и ответственного лица)
```

### Пример

Полный пример FHIR-документа см. в разделе [Пример выписки по Форме 027](Bundle-example-form-027-medical-record-extract.html).