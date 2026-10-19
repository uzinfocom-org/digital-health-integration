<style>
/* Per-form mapping-table column widths (044: short UZ/RU labels, moderate Code cells). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 20%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 20%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 20%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 25%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 15%; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Форма 044 - Справка об отсутствии медицинских противопоказаний для выезда за границу

На этой странице описано сопоставление полей Формы 044 (Справка об отсутствии медицинских противопоказаний для выезда за границу) с ресурсами FHIR.

---

### Обзор

Форма 044 представляет собой самостоятельную справку, выдаваемую медицинской комиссией и подтверждающую отсутствие у пациента медицинских противопоказаний для выезда за границу в служебную командировку. В отличие от Формы 066, она не привязана к стационарному или амбулаторному случаю обслуживания - `Composition.encounter` зафиксирован как `0..0`. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 044 Travel Clearance Certificate Composition](StructureDefinition-form-044-travel-clearance-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Полный пример экземпляра см. в разделе [Пример справки по Форме 044](Bundle-example-form-044-travel-clearance.html).

---

### Сопоставление полей

# UZ-044 Справка о допуске к выезду - сопоставление с FHIR

---

### Личная информация

| UZ-044 | RU-044 | Путь FHIR | Код | Пример значения |
|--------|--------|-----------|------|---------------|
| Muassasa nomi | Наименование учреждения (шапка бланка) | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).name | - | Toshkent shahar 5-son poliklinikasi |
| Malumotnoma raqami | Номер справки | Composition.identifier | - | 044-2026-001 |
| Med ID raqami | Номер мед карты | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[healthCardId] | HC | HC-2026-00044 |
| JShShR | ПИНФЛ | Patient.identifier[nationalId] | NI | 31234567890044 |
| FISH | ФИО | Patient.name (text/family/given) | - | Yusupova Nodira Sharifovna |
| Yoshi (tug'ilgan sanasi) | Возраст (лет) | Patient.birthDate | - | 1988-07-22 |
| Malumotnoma berilgan sana | Дата выдачи справки | Composition.date | - | 2026-02-10T09:15:00+05:00 |

---

### Адрес проживания

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Yo'llanayotganning yashash joyi | Адрес пациента | Patient.address | - | 8-mavze, 22-uy |

---

### Перенесённые инфекционные заболевания

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Kechirgan yuqumli kasalliklar | Перенесённые инфекционные заболевания | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | B05 (Корь), A38 (Скарлатина), A37 (Коклюш) |

---

### Допуск к выезду

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Tashxis va chet elga borish uchun qarshiliklar yoʻqligi borasida tibbiy yakun | Медицинское заключение об отсутствии противопоказаний к выезду | Observation.code / Observation.valueCodeableConcept | [Form Sections](CodeSystem-form-sections-cs.html) `travel-clearance` → `allowed` \| `denied` | Разрешено |
| Mamlakat nomi | Наименование страны назначения | Observation.code / Observation.valueCodeableConcept | [Form Sections](CodeSystem-form-sections-cs.html) `destination-country`; значение: ISO-3166-1 | Германия |
| Xizmat safarining muddati | На срок (период) | Observation.code / Observation.effectivePeriod | [Form Sections](CodeSystem-form-sections-cs.html) `trip-period` | 2026-02-20 – 2026-03-05 |

---

### Ответственные лица

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Komissiya raisi F.I.SH | Председатель комиссии (ФИО/подпись) | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html).practitioner / [Provenance](https://hl7.org/fhir/R5/provenance.html).signature | Occupation `1342.18` "Заведующий отделением (медицинское учреждение)" | Nazarov T.T. |

---

### Структура Bundle

Документ Формы 044 структурирован как FHIR Bundle, содержащий Composition [Form044TravelClearanceCertificateComposition](StructureDefinition-form-044-travel-clearance-composition.html):

```
Bundle (документ)
├── Composition (Form044TravelClearanceCertificateComposition)
├── Patient (демографические данные пациента)
├── Organization (выдающее учреждение)
├── Practitioner (председатель комиссии)
├── PractitionerRole (роль председателя комиссии)
├── Condition[] (перенесённые инфекционные заболевания)
├── Observation[] (допуск к выезду, страна назначения, срок командировки)
└── Provenance (подпись председателя комиссии)
```

### Пример

Полный пример FHIR-документа см. в разделе [Пример справки по Форме 044](Bundle-example-form-044-travel-clearance.html).