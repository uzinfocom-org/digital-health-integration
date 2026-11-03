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

### Форма 044 - Медицинская справка для выезжающих за границу

На этой странице описано сопоставление полей [Формы 044](forms-volume-02-ambulatory.html) (Xorijga ketayotganlar uchun tibbiy ma'lumotnoma) с ресурсами FHIR.

---

### Обзор

Форма 044 - самостоятельная справка, которую выдаёт медицинская комиссия поликлиники и которая подтверждает отсутствие у человека медицинских противопоказаний для выезда за границу в служебную командировку. `Composition.encounter` необязателен: передавайте визит, на котором комиссия провела осмотр, если он зарегистрирован. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 044 Travel Clearance Certificate Composition](StructureDefinition-form-044-travel-clearance-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Полный пример экземпляра см. в [примере справки по Форме 044](Bundle-example-form-044-travel-clearance.html).

---

### Сопоставление полей

### Форма 044 - Медицинская справка для выезжающих за границу - сопоставление с FHIR

---

### Информация о документе

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:044e8400-e29b-41d4-a716-446655440044 |
| Hujjat instansiyasi UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:944f9511-f30c-52e5-b827-557766550044 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 044 |
| Ma'lumotnoma raqami | Номер справки | Composition.identifier[certificateNumber] | `https://dhp.uz/fhir/core/sid/doc/uz/medical-certificate-number` | 044-2026-001 |
| Hujjat holati | Статус документа | Composition.status | [Статусы документов](document-statuses.html): `final`, когда комиссия выдала справку, `amended` при последующих исправлениях, `entered-in-error`, если справка отозвана как ошибочная | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0042` "Medical certificate for travelers abroad", а также LOINC `104988-1` "Medical Fitness Certificate" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" и [Document Category](ValueSet-document-category-vs.html) `form-044` "Medical certificate for travelers abroad" | - |
| Chet elga ketayotgan shaxs | Лицо, выезжающее за границу | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Yusupova Nodira Sharifovna |
| Ma'lumotnoma berilgan sana | Дата выдачи справки | Composition.date | - | 2026-02-10T09:15:00+05:00 |
| Komissiya raisi | Председатель комиссии | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html), или [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html), если должность неизвестна | Nazarov T.T. |
| Muassasa nomi | Наименование учреждения | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Toshkent shahar 5-son poliklinikasi |
| Muassasa kodi | Код учреждения | Organization.identifier[taxId] | `system` `https://dhp.uz/fhir/core/sid/org/uz/soliq`<br>`type` `TAX` | 200017044 |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 044 - Medical Certificate for Travelers Abroad |
| Komissiya raisi imzosi | Подпись председателя комиссии | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | `signature.type[nationalType]` [UZ Core Signature Type](https://dhp.uz/fhir/core/en/CodeSystem-signature-type-cs.html) `soliqAuth` | soliqAuth |
| Komissiya a'zolari imzolari | Подписи членов комиссии | Provenance.signature, по одной на каждого члена, с `Provenance.agent.type` `attester` | `soliqAuth`; необязательно | soliqAuth |

---

### 1. Личная информация

Код раздела: LOINC `LP36348-8` "Patient information".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Med ID raqami | Номер Med ID | Patient.identifier[healthCardId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/hc`<br>`type` `HC` | HC-2026-00044 |
| JShShIR | ПИНФЛ | Patient.identifier[nationalId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 31234567890044 |
| Familiya, ismi, otasining ismi | ФИО | Patient.name (text/family/given) | - | Yusupova Nodira Sharifovna |
| Yoshi | Возраст | Patient.birthDate | - | 1988-07-22 |

---

### 2. Перенесённые инфекционные заболевания

Код раздела: LOINC `11348-0` "History of Past illness note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Kechirgan yuqumli kasalliklar | Перенесённые инфекционные заболевания | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | МКБ-10 | B05 "Measles", A38 "Scarlet fever", A37 "Whooping cough" |

---

### 3. Допуск к выезду

Код раздела: LOINC `104988-1` "Medical Fitness Certificate".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Tashxis va chet elga borish uchun qarshiliklar yo'qligi borasida tibbiy yakun | Медицинское заключение об отсутствии противопоказаний к выезду | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueBoolean | `code` [Form 044 Observation Codes](ValueSet-form-044-observation-code-vs.html) `travel-clearance` "Travel clearance" | true |
| Mamlakat nomi | Наименование страны | Observation.valueCodeableConcept | `code` LOINC `94651-7` "Country of travel [Location]"; значение из [ISO 3166 part 1 2-letter codes, sans Uzbekistan](https://terminology.dhp.uz/fhir/core/ValueSet/iso-3166-2-vs-sans-uz) | DE "Germany" |
| Xizmat safarining muddati | Срок командировки | Observation.valuePeriod | `code` [Form 044 Observation Codes](ValueSet-form-044-observation-code-vs.html) `trip-period` "Business trip period" | 2026-02-20 - 2026-03-05 |

---

### 4. Место жительства

Код раздела: LOINC `56799-0` "Address".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Yo'llanayotganning yashash joyi | Место жительства выезжающего | Patient.address | - | 8-mavze, 22-uy |

---

### 5. Ответственные лица

Код раздела: LOINC `LP35157-4` "Responsible party".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Komissiya raisi F.I.Sh. | ФИО председателя комиссии | PractitionerRole.practitioner | `code` [Position and profession](https://terminology.dhp.uz/fhir/core/ValueSet/position-and-profession-vs) `1342.18` "Head of department (health institution)" | Nazarov T.T. |
| Komissiya a'zolari F.I.Sh. | ФИО членов комиссии | PractitionerRole.practitioner, по одной на каждого члена; необязательно | `code` Position and profession `2212.113` "Physician" | Karimova D.A. |

---

### Обязательные поля

FHIR требует эти элементы, но на бумажной форме для них нет поля. Заполняйте их так:

| Ресурс | Элемент | Код | Значение |
|---|---|---|---|
| Condition | clinicalStatus | [Clinical Status](https://dhp.uz/fhir/core/en/ValueSet-clinical-status-vs.html) | `resolved` для перенесённого инфекционного заболевания |
| Observation | status | [Observation Status](https://dhp.uz/fhir/core/en/ValueSet-observation-status-vs.html) | `final`, когда комиссия вынесла заключение |

---

### Структура Bundle

Документ Формы 044 - это FHIR Bundle с Composition [Form044TravelClearanceCertificateComposition](StructureDefinition-form-044-travel-clearance-composition.html):

```
Bundle (document)
├── Composition (Form044TravelClearanceCertificateComposition)
├── Patient (лицо, выезжающее за границу)
├── Organization (поликлиника, выдавшая справку)
├── Practitioner[] (председатель и члены комиссии)
├── PractitionerRole[] (должности председателя и членов комиссии)
├── Condition[] (перенесённые инфекционные заболевания)
├── Observation[] (допуск к выезду, страна назначения, срок командировки)
└── Provenance (подписи комиссии)
```

### Пример

Полный пример FHIR-документа - [пример справки по Форме 044](Bundle-example-form-044-travel-clearance.html).
