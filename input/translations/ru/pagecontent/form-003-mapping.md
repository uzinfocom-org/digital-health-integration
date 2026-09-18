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

На этой странице описано сопоставление полей Формы 003 (Statsionar bemorning tibbiy kartasi / Медицинская карта стационарного больного) с ресурсами FHIR.

---

### Обзор

Форма 003 - это полная медицинская карта стационарного больного, которая ведётся в течение всего пребывания в стационаре: поступление, первичный осмотр, диагнозы, листы назначений и процедур, температурный лист, дневник и исход при выписке. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 003 Inpatient Medical Record Card Composition](StructureDefinition-form-003-inpatient-medical-record-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Там, где в бумажной форме значение разделено на поле даты и поле времени, они объединяются в один FHIR `dateTime`. Подписи представлены ресурсами [Provenance](https://hl7.org/fhir/R5/provenance.html); подписывающие должностные лица перечислены в разделе «Ответственные лица» как ссылки PractitionerRole.

Полный пример экземпляра см. в разделе [Пример медицинской карты стационарного больного по Форме 003](Bundle-example-form-003-inpatient-medical-record.html).

---

### Сопоставление полей

# UZ-003 Медицинская карта стационарного больного - сопоставление с FHIR

---

### Административная информация

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Muassasa nomi | Наименование учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).name | - | Toshkent shahar klinik shifoxonasi |
| Statsionar bemorning tibbiy karta raqami | Медицинская карта стационарного больного | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).identifier | - | MRN-003-2026-0042 |
| Kasalxonaga yotqizilgan kun va vaqti | Дата и время поступления в стационар | Encounter.actualPeriod.start | - | 2026-02-08T10:00:00+05:00 |
| Kasalxonadan chiqarilgan kun va vaqti | Дата и время выписки из стационара | Encounter.actualPeriod.end | - | 2026-02-18T09:00:00+05:00 |
| Statsionar bo'limi | Отделение стационара | Encounter.location.location → [Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html) | - | Therapeutic department |
| Statsionar xona raqami | Номер палаты | Location.name / Location.identifier (form = room) | - | Room 214 |
| Ko'chirilgan bo'lim | Переведён в отделение | Encounter.location (repeat) + Encounter.location.period | - | - |
| Yotib davolangan kunlar soni | Количество проведённых койко-дней | Encounter.length | UCUM `d` | 10 days |

---

### Личная информация

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Bemorning F.I.Sh. | ФИО пациента | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).name:official | - | Tursunov Alisher Valiyevich |
| Bemorning tug'ilgan sanasi | Дата рождения пациента | Patient.birthDate | - | 1990-04-12 |
| Bemorning jinsi | Пол пациента | Patient.gender | AdministrativeGender | male |
| Bemorning tibbiy karta raqami | Номер медицинской карты | Patient.identifier[healthCardId].value | - | HC-2026-00042 |
| Bemorning yashash joyi | Место жительства пациента | Patient.address:uzAddress (use = home) | - | Toshkent, Yunusobod, 12-mavze, 15-uy |
| Qon guruhi | Группа крови | Observation.valueCodeableConcept where code = LOINC `883-9` | LOINC answers, e.g. `LA19710-5` "Group A" | Group A |
| Rezus mansubligi | Резус-фактор | Observation.valueCodeableConcept where code = LOINC `10331-7` | LOINC answers `LA6576-8` / `LA6577-6` | Positive |
| Bemorning bo'yi | Рост пациента | Observation.valueQuantity | LOINC `8302-2` "Body height" | 178 cm |
| Bemorning vazni | Вес пациента | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 82 kg |
| Bemorning harorati | Температура пациента | Observation.valueQuantity | LOINC `8310-5` "Body temperature" | 38.4 Cel |
| Dori vositasining nomi | Наименование лекарственного препарата | [AllergyIntolerance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-allergyintolerance.html).code | SNOMED CT / INN | Penicillin |
| Nojo'ya ta'sirining ko'rinishi | Проявление побочного действия | AllergyIntolerance.reaction.manifestation.concept.text | free text | Generalised urticaria |
| Yaqin qarindoshning yashash joyi | Место жительства близких родственников | [RelatedPerson](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-relatedperson.html).address | - | Toshkent, Yunusobod |
| Yaqin qarindoshning telefon raqami | Номер телефона близких родственников | RelatedPerson.telecom[phone].value | - | +998901112233 |

> В официальной бумажной форме отдельного поля адреса по прописке (Ro'yxatga olingan manzil / Адрес по прописке) нет, поэтому оно исключено из профиля.

---

### Социально-экономическая информация

Строки 27-32 бумажной формы - это одно поле выбора. Каждый заполненный вариант - это один [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html), закодированный наблюдаемым объектом SNOMED CT и значением из соответствующего национального ValueSet.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Ish joyi | Место работы | SocioeconomicObservation.valueString (code = SNOMED CT `14679004` "Occupation") | - | - |
| Kasbi yoki lavozimi | Профессия или должность | SocioeconomicObservation.valueCodeableConcept | Position and Profession VS | Car mechanic |
| O'qish joyi | Место учёбы | SocioeconomicObservation.valueString | - | - |
| Bolalar muassasasi | Детское учреждение | SocioeconomicObservation.valueString | - | - |
| Nogironlik turi | Вид инвалидности | SocioeconomicObservation.valueCodeableConcept | Benefits VS | - |
| Nogironlik guruhi | Группа инвалидности | SocioeconomicObservation.valueCodeableConcept | Disability Levels VS | - |
| Urush nogironi | Инвалид войны | SocioeconomicObservation.valueCodeableConcept | [Benefits](https://dhp.uz/fhir/core/en/CodeSystem-benefits-cs.html) `regis0004.00004` | Disabled persons and war participants of 1941-1945 |

---

### Информация о поступлении

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Bemor yuborilgan shifoxona nomi | Кем направлен больной | Encounter.admission.origin → Organization | - | Yunusobod tuman oilaviy poliklinikasi |
| Kasalxonaga shoshilinch tarzda keltirilgan | Пациент доставлен экстренно | Encounter.priority | HL7 v3 ActPriority `EM` / `R` | Emergency |
| Tez tibbiy yordam transportida keldi | Доставлен транспортом скорой помощи | Observation.valueBoolean | LOINC `LP97912-7` "Ambulance transport" | true |
| Kasallik/jarohatdan keyin yotqizishgacha o'tgan vaqt | Время от начала заболевания/травмы до госпитализации | Observation.valueCodeableConcept | [Disease/Injury Delay](CodeSystem-disease-injury-delay-cs.html) `delay0001_00003` | After 24 hours |
| Bemorni kelish usuli | Метод прибытия пациента | Encounter.admission.admitSource | [Admit Source Local](https://dhp.uz/fhir/core/en/CodeSystem-admit-source-local-cs.html) `mserv-0006-00004` | Emergency medical service |
| Bemor yo'llanmasidagi tashxis | Диагноз в направлении | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code + Encounter.diagnosis.use | ICD-10 `J18.9`; use = [Diagnosis Type](https://dhp.uz/fhir/core/en/CodeSystem-diagnosis-type-cs.html) `gencl-0001-00001` | Pneumonia, unspecified |
| Qabulxonada qo'yilgan tashxis | Диагноз в приёмном отделении | Condition.code + Encounter.diagnosis.use | ICD-10 `J18.9`; use `gencl-0001-00002` | Pneumonia, unspecified |
| Tashxis qo'yilgan sana | Дата установления диагноза | Condition.recordedDate | - | 2026-02-08 |

---

### Осмотр при поступлении

Объединённый блок «осмотр при поступлении» разворачивается в отдельный ресурс на каждое исследование.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Qon RW | RW (VDRL) | [DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html).code | LOINC `5292-8` | Non-reactive |
| OITS | ВИЧ 1/2 Ab + p24 Ag | DiagnosticReport.code | LOINC `56888-1` | Non-reactive |
| Axlat poshevi | Посев кала | DiagnosticReport.code | [Lab Report Types](https://dhp.uz/fhir/core/en/CodeSystem-lab-report-types-cs.html) `lab-rep-03` | - |
| Pedikulyoz | Педикулёз | Observation.valueCodeableConcept | SNOMED CT `20848007` "Pediculosis" | Negative |
| Mavhum kasalliklar | Прочие заболевания | Observation.valueString | [CHR-003 Observation Code](CodeSystem-form-003-observation-code-cs.html) | - |

---

### Лист первичного осмотра

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Bemorni tekshirish sanasi va vaqti | Дата и время осмотра пациента | Composition.date | - | 2026-02-08T10:15:00+05:00 |
| Bemorning yoshi | Возраст пациента | derived from Patient.birthDate and Composition.date | - | 35 |
| Shikoyatlar / Boshqa shikoyatlar | Жалобы / Другие жалобы | Encounter.reason.value → Condition | SNOMED CT clinical finding | Cough, fever, dyspnoea |
| Joylashuvi | Локализация | Condition.bodySite | SNOMED CT `266005` "Structure of lower lobe of right lung" | Right lower lobe |
| Xususiyati | Характер | Condition.note.text | free text | Acute onset, productive cough |
| Og'riqli xuruj boshlanishi | Начало приступа | Condition.onsetDateTime | - | 2026-02-04T20:00:00+05:00 |
| Anamnez | Анамнез | section[anamnesis].text | LOINC `11329-0` | narrative |
| Umumiy hozirgi holat | Общее текущее состояние | section[statusPraesens].text | LOINC `10210-3` | narrative |
| Mahalliy holat | Местное состояние | section[statusLocalis].text | [CHR-003 Section](CodeSystem-form-003-section-cs.html) `status-localis` | narrative |
| Tahminiy tashxis | Предварительный диагноз | Condition.code + Encounter.diagnosis.use | ICD-10 `J18.9`; use `gencl-0001-00003` | Pneumonia, unspecified |

---

### План обследования

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Tekshiruv rejasi | План обследования | Composition.section[examinationPlan].entry → DiagnosticReport / [ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html) | LOINC `18776-5` "Plan of care note" | - |

---

### Результаты диагностических исследований

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Qonning umumiy tahlili | Общий анализ крови | DiagnosticReport.code | Lab Report Types `lab-rep-01` "CBC panel" | - |
| Umumiy peshob tahlili | Общий анализ мочи | DiagnosticReport.code | Lab Report Types `lab-rep-05` "Urinalysis macro (dipstick) panel" | - |
| Biokimyoviy tahlil | Биохимический анализ | DiagnosticReport.code | Lab Report Types `lab-rep-07` "Comprehensive metabolic panel" | - |
| Koagulogramma | Коагулограмма | DiagnosticReport.code | Lab Report Types `lab-rep-02` "Coagulation panel" | - |
| EKG | ЭКГ | DiagnosticReport.code + conclusion | LOINC `11524-6` "EKG study" | Sinus tachycardia |
| Rentgenologik tekshiruv | Рентгенологическое исследование | DiagnosticReport.code | LOINC `18782-3` "Radiology Study observation (narrative)" | Right lower-lobe consolidation |
| UZI | УЗИ | DiagnosticReport.code | LOINC `25061-3` "US unspecified body region" | - |
| EFDGS | ЭФГДС | DiagnosticReport.code | SNOMED CT `76009000` "Esophagogastroduodenoscopy" | - |
| MSKT / MRT | МСКТ / МРТ | DiagnosticReport.code | LOINC `25045-6` (CT) / `25056-3` (MR) | - |
| Mutaxassis maslahati | Консультация специалиста | ServiceRequest.code | SNOMED CT `11429006` "Consultation" | - |

---

### Осмотр врача отделения

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Bo'lim shifokori ko'rigi (tekshiruv va davolash rejasi) | Осмотр врача отделения (план обследования и лечения) | Composition.section[departmentExamination].text (+ entry) | [CHR-003 Section](CodeSystem-form-003-section-cs.html) `department-examination` | narrative |

---

### Заключительный диагноз

Каждый диагноз помечается значением `Condition.category` из системы кодов [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) и помещается в соответствующий подраздел Composition по роли, поэтому роль сохраняется независимо от порядка ввода - Основное заболевание → `main`, Осложнение основного заболевания → `complication`, Выявленные сопутствующие заболевания → `concomitant`, Конкурирующее → `competing`, Фоновое → `background`.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Asosiy | Основное заболевание | Condition.code | ICD-10 | J15.9 |
| Asosiy kasallikning asorati | Осложнение основного заболевания | Condition.code | ICD-10 | J90 |
| Aniqlangan yo'ldosh kasalliklar | Выявленные сопутствующие заболевания | Condition.code | ICD-10 | I10 |

---

### Хирургические вмешательства

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Jarrohlik operatsiyasi nomi | Наименование хирургической операции | [Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html).code | SNOMED CT `91602002` "Thoracentesis" | - |
| Jarrohlik operatsiyasi sanasi va vaqti | Дата и время хирургической операции | Procedure.occurrenceDateTime | - | 2026-02-10T11:30:00+05:00 |
| Og'riqsizlantirish usullari | Метод анестезии | separate Procedure.code (coding XOR text) | SNOMED CT `27372005` / `386761002` / `18946005` / `231249005` / `78432000` / `50697003` / `266802007` / `288185006`; local [Anesthesia Method](CodeSystem-anesthesia-method-cs.html) `chr-0041-0001` "Combined anesthesia" | Local anaesthesia |
| Operatsiyadan keyingi asoratlar | Послеоперационные осложнения | Procedure.complication / Condition | SNOMED CT / ICD-10 | - |
| Shifokor F.I.Sh. | ФИО врача-хирурга | Procedure.performer.actor → PractitionerRole | - | Rasulov B.B. |
| Boshqa davolash turlari nomi | Наименование других видов лечения | Procedure.code | Procedure Code VS | - |

---

### Лист назначения лекарственных средств

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Dori-darmonlarni buyurish sanasi | Дата назначения лекарства | [MedicationRequest](https://hl7.org/fhir/R5/medicationrequest.html).authoredOn | - | 2026-02-08T11:00:00+05:00 |
| Buyurilgan dori vositalari nomi | Название назначенного препарата | MedicationRequest.medication.concept | SNOMED CT `372670001` "Ceftriaxone" / ATC / INN | Ceftriaxone |
| Buyurilgan dori vositalari miqdori | Количество назначенного препарата | MedicationRequest.dosageInstruction.doseAndRate.doseQuantity | UCUM | 2 g |
| Buyurilgan dori vositalari yuborish uslubi | Способ введения | MedicationRequest.dosageInstruction.route | SNOMED CT `47625008` "Intravenous route" | Intravenous |
| Muolajani bajarish vaqti | Время выполнения лечения | MedicationRequest.dosageInstruction.timing | - | 1x/24h |
| Muolajani bajarish sanasi | Дата исполнения лечения | [MedicationAdministration](https://hl7.org/fhir/R5/medicationadministration.html).occurenceDateTime | - | 2026-02-08T12:00:00+05:00 |
| Natija (shifokor / hamshira) | Результат (врач / медсестра) | MedicationAdministration.note.text + note.authorReference | - | First dose tolerated well |
| Dori-darmon va tibbiy buyum manbasi | Источник лекарств и медицинских изделий | MedicationRequest.insurance → [Coverage](https://hl7.org/fhir/R5/coverage.html) | Coverage Type VS | State Health Insurance treated case |
| Parhez stoli raqami | Назначение диетического стола № | [NutritionOrder](https://hl7.org/fhir/R5/nutritionorder.html).oralDiet.type | [Hospital Diet Type](CodeSystem-hospital-diet-type-cs.html) `chr-0042-0024` | Diet table No. 15 |

---

### Лист процедур

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Tayinlangan / buyurilgan tekshiruv | Назначенное исследование | Composition.section[procedureSheet].entry → [ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html) / DiagnosticReport | Service Request Code VS | - |
| O'tkazilgan tekshiruv sanasi | Дата проведённого исследования | DiagnosticReport.effectiveDateTime | - | - |
| Buyurilgan muolajalar | Назначенные процедуры | ServiceRequest.code | Service Request Code VS | - |
| Bajarilgan muolajalar sanasi | Дата проведённой процедуры | Procedure.occurrenceDateTime | - | - |
| Ishlatiladigan materiallar | Используемые материалы | Procedure.used.concept / .reference | SNOMED CT / registry reference | - |

---

### Температурный лист

Утренние и вечерние измерения - это одно и то же LOINC-наблюдение, различаемое по `Observation.effectiveDateTime`.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Bemorning kasallik kuni | День болезни пациента | Observation.valueInteger | [CHR-003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `day-of-illness` | 4 |
| Bemorning kasalxonada bo'lgan kunlari | Дни пребывания в стационаре | derived from Encounter.actualPeriod.start | - | 1..31 |
| Yurak urishi (ertalab / kechqurun) | Пульс (утро / вечер) | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 96 /min |
| Qon bosimi (ertalab / kechqurun) | Артериальное давление (утро / вечер) | Observation.component[systolic|diastolic].valueQuantity | LOINC `85354-9`; components `8480-6` / `8462-4` | 134 / 84 mmHg |
| Harorat (ertalab / kechqurun) | Температура (утро / вечер) | Observation.valueQuantity | LOINC `8310-5` "Body temperature" | 37.6 Cel |
| Nafas olish tezligi (ertalab / kechqurun) | Частота дыхания (утро / вечер) | Observation.valueQuantity | LOINC `9279-1` "Respiratory rate" | 20 /min |
| Og'irligi (ertalab / kechqurun) | Вес (утро / вечер) | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 82 kg |
| Qabul qilingan suyuqlik (ertalab / kechqurun) | Выпито жидкости (утро / вечер) | Observation.valueQuantity | [CHR-003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `fluid-intake-part-of-day` | 600 mL |
| Bir kunlik siydik miqdori | Суточное количество мочи | Observation.valueQuantity | LOINC `9192-6` "Urine output 24 hour" | 1650 mL/(24.h) |

---

### Течение болезни

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Dinamikadagi ahvoli | Состояние в динамике | Observation.valueString | [CHR-003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `clinical-course` | Afebrile from day 5, resolving |
| Shifokor tavsiyalari | Рекомендации врача | [CarePlan](https://hl7.org/fhir/R5/careplan.html).note / .activity | - | Oral antibiotics, GP review in 3 days |
| Kundalik / Shifokor yozuvlari | Дневник / Записи врача | section[diary].text | [CHR-003 Section](CodeSystem-form-003-section-cs.html) `diary` | narrative |

---

### Итоги госпитализации

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Mazkur yil davomida shu kasallik bo'yicha kasalxonaga yotishi | Госпитализация по данному заболеванию в текущем году | Encounter.admission.reAdmission | [Re-admission Local](https://dhp.uz/fhir/core/en/CodeSystem-re-admission-local-cs.html) `first-time` / `repeat-current-year` | First time |
| Yillik kasalxonaga yotqizilganlarning umumiy soni | Общее количество госпитализаций за год | Observation.valueInteger | [Local](CodeSystem-local-observation-code.html) `num-previous-hospitalizations` | 1 |

---

### Результат лечения

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Davolash natijasi (chiqarish) | Результат лечения (выписка) | Encounter.admission.dischargeDisposition | [Discharge Disposition Home](https://dhp.uz/fhir/core/en/CodeSystem-encounter-discharge-disposition-home-cs.html) `mserv-0004-00004` | Discharged |
| Davolash natijasi (klinik holat) | Результат лечения (клинический исход) | Observation.valueCodeableConcept | SNOMED CT `370996005` / `268910001` / `359748005` / `275723000` | Patient's condition improved |
| Vafot etish holati | Контекст смерти | Observation.valueCodeableConcept | [Death Context](CodeSystem-death-context-cs.html) `chr-0035-0001..0005` | - |
| Boshqa muassasaga o'tkazilgan | Переведён в другое учреждение | Encounter.admission.destination → Organization | - | - |
| Ish qobiliyatining holati | Состояние трудоспособности | Observation.valueCodeableConcept | [Work Capacity Status](CodeSystem-work-capacity-status-cs.html) `chr-0036-0001` | Work capacity fully restored |
| Ekspertizaga yuborish uchun xulosa | Заключение для направления на экспертизу | section[expertiseReferralConclusion].text | [CHR-003 Section](CodeSystem-form-003-section-cs.html) `expertise-referral-conclusion` | narrative |
| Alohida belgilar | Особые признаки | section[specialMarks].text | [CHR-003 Section](CodeSystem-form-003-section-cs.html) `special-marks` | narrative |

---

### Временная нетрудоспособность

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Mehnatga yaroqsizlik varog'i raqami | Идентификатор больничного листа | CarePlan.identifier (referenced Sick Leave CarePlan) | - | SL-2026-778812 |
| Ochilgan sana | Дата открытия | CarePlan.period.start | - | 2026-02-08 |
| Yopilgan sana | Дата закрытия | CarePlan.period.end | - | 2026-02-20 |

---

### Посмертное медицинское заключение

Присутствует только при летальном исходе. Причины смерти помечаются таким же образом (`Condition.category`, [Diagnosis Role](CodeSystem-diagnosis-role-integration.html)) в подразделах по ролям - Непосредственная причина смерти → `immediate-cause-of-death`, вызвавшее её заболевание → `underlying-cause-of-death`, Основное заболевание → `main-disease-death`, Другие значимые заболевания → `other-significant-death`.

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Kasallik haqidagi yakuniy tibbiy xulosa | Окончательное медицинское заключение о заболевании | section[postmortemConclusion].text | LOINC `18743-5` "Autopsy report" | narrative |
| O'limga olib kelgan bevosita sabab | Непосредственная причина смерти | Condition.code | ICD-10 | - |
| Asosiy kasallik | Основное заболевание | Condition.code | ICD-10 | - |

---

### Ответственные лица

| UZ | RU | Путь FHIR | Код | Пример |
|----|----|------------|------|---------|
| Davolovchi shifokor | Лечащий врач | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html).practitioner | [Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) | Rasulov B.B. |
| Bo'lim boshlig'i | Заведующий отделением | PractitionerRole.practitioner | `1342.18` "Head of department (health institution)" | Qodirov A.A. |
| Bosh shifokor muovini | Заместитель главного врача | PractitionerRole.practitioner | `1120.185` "Deputy chief physician" | Yusupova N.N. |
| Kompleks uchun mas'ul shaxs | Ответственное лицо за комплекс | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episodeofcare.html).careManager | - | - |
| Shifokor imzosi | Подпись врача | [Provenance](https://hl7.org/fhir/R5/provenance.html).signature | UZ Core Signature Type VS | - |

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
├── Observation[] (витальные показатели, группа крови, соц.-экон., осмотр при поступлении, температурный лист, исход)
├── AllergyIntolerance (лекарственная реакция)
├── RelatedPerson (близкий родственник)
├── DiagnosticReport[] (лабораторные и инструментальные исследования)
├── ServiceRequest[] (назначенные исследования и процедуры)
├── Procedure[] (операция, анестезия, другие виды лечения)
├── MedicationRequest[] / MedicationAdministration[] (лист назначений)
├── NutritionOrder (диетический стол)
├── Coverage (источник лекарств / финансирования)
├── CarePlan[] (рекомендации врача, ссылка на больничный лист)
└── Provenance[] (подписи, авторство записи)
```

### Пример

Полный пример FHIR-документа см. в разделе [Пример медицинской карты стационарного больного по Форме 003](Bundle-example-form-003-inpatient-medical-record.html).