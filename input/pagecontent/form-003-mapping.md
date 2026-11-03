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

### Form 003 - Inpatient Medical Record Card

This page documents the mapping between [Form 003](forms-volume-01-inpatient.html) (Statsionar bemorning tibbiy kartasi / Медицинская карта стационарного больного) fields and FHIR resources.

---

### Overview

Form 003 is the full inpatient medical record kept for the whole hospital stay - admission, primary examination, diagnoses, treatment and procedure sheets, temperature chart, diary and discharge outcome. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 003 Inpatient Medical Record Card Composition](StructureDefinition-form-003-inpatient-medical-record-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

Where the paper form splits a value into a date field and a time field, the two are merged into one FHIR [`dateTime`](https://hl7.org/fhir/R5/datatypes.html#dateTime). Signatures are represented as [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html) resources; the signing officers are listed in the Responsible Persons section as PractitionerRole references.

For a complete reference instance, see the [Form 003 inpatient medical record example](Bundle-example-form-003-inpatient-medical-record.html).

---

### Field Mapping

### UZ-003 Inpatient Medical Record Card - FHIR Mapping

---

### Document Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Hujjat instansiyasi UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:861f9511-f30c-52e5-b827-557766550003 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 003 |
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:760e8400-e29b-41d4-a716-446655440003 |
| Hujjat holati | Статус документа | Composition.status | [Document statuses](document-statuses.html): `preliminary` during the stay, `final` once the record is closed | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0003` "Patient Medical Record №", plus LOINC `34112-3` "Hospital Note" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" and [Document Category](CodeSystem-document-category-cs.html) `form-003` "Patient medical record" | - |
| Bemor | Пациент | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Tursunov Alisher Valiyevich |
| Statsionarda yotish | Пребывание в стационаре | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | Inpatient stay |
| Davolovchi shifokor | Лечащий врач | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) | Rasulov B.B. |
| Hujjat sanasi | Дата документа | Composition.date | - | 2026-02-18T09:00:00+05:00 |
| Hujjat egasi | Организация-хранитель документа | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Toshkent shahar klinik shifoxonasi |
| Muassasa STIR | ИНН учреждения | Organization.identifier[taxId] | `https://dhp.uz/fhir/core/sid/org/uz/soliq`, type `TAX` | 202345678 |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 003 - Inpatient Medical Record Card |

---

### Administrative Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Muassasa nomi | Наименование учреждения | Organization.name | - | Toshkent shahar klinik shifoxonasi |
| Statsionar bemorning tibbiy karta raqami | Медицинская карта стационарного больного | Encounter.identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number` | MRN-003-2026-0042 |
| Kasalxonaga yotqizilgan kun va vaqti | Дата и время поступления в стационар | Encounter.actualPeriod.start | - | 2026-02-08T10:00:00+05:00 |
| Kasalxonadan chiqarilgan kun va vaqti | Дата и время выписки из стационара | Encounter.actualPeriod.end | - | 2026-02-18T09:00:00+05:00 |
| Statsionar bo'limi | Отделение стационара | Encounter.location.location → [Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html) | - | Therapeutic department |
| Statsionar xona raqami | Номер палаты | Location.identifier[unit].value | `type` [Location Kinds](https://dhp.uz/fhir/core/en/CodeSystem-location-kinds-cs.html) `Ward` "Palata" | 214 |
| Ko'chirilgan bo'lim | Переведён в отделение | Encounter.location (repeat) + Encounter.location.period | - | - |
| Yotib davolangan kunlar soni | Количество проведённых койко-дней | Encounter.length | UCUM `d` "day" | 10 days |

---

### Personal Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Bemorning F.I.Sh. | ФИО пациента | Patient.name:official | - | Tursunov Alisher Valiyevich |
| Bemorning tug'ilgan sanasi | Дата рождения пациента | Patient.birthDate | - | 1990-04-12 |
| Bemorning jinsi | Пол пациента | Patient.gender; Patient.gender.extension[gender-other] | [Administrative Gender](https://dhp.uz/fhir/core/en/ValueSet-administrative-gender-vs.html); `other` requires the [Gender Other](https://dhp.uz/fhir/core/en/StructureDefinition-gender-other.html) extension | male |
| Bemorning tibbiy karta raqami | Номер медицинской карты | Patient.identifier[healthCardId].value | - | HC-2026-00042 |
| Bemorning yashash joyi | Место жительства пациента | Patient.address:uzAddress (use = home) | - | Toshkent, Yunusobod, 12-mavze, 15-uy |
| Qon guruhi | Группа крови | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueCodeableConcept | `code` LOINC `883-9` "ABO group [Type] in Blood"<br>`value` [Blood Group](https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs) | A (II) (`112144000`) |
| Rezus mansubligi | Резус-фактор | Observation.valueCodeableConcept | `code` LOINC `10331-7` "Rh [Type] in Blood"<br>`value` [Blood Rh](https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs) | Rh positive (`165747007`) |
| Bemorning bo'yi | Рост пациента | Observation.valueQuantity | LOINC `8302-2` "Body height" | 178 cm |
| Bemorning vazni | Вес пациента | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 82 kg |
| Bemorning harorati | Температура пациента | Observation.valueQuantity | LOINC `8310-5` "Body temperature" | 38.4 Cel |
| Dori vositasining nomi | Наименование лекарственного препарата | [AllergyIntolerance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-allergyintolerance.html).code | SNOMED CT / INN | Penicillin |
| Nojo'ya ta'sirining ko'rinishi | Проявление побочного действия | AllergyIntolerance.reaction.manifestation.concept.text | free text | Generalised urticaria |
| Yaqin qarindoshning yashash joyi | Место жительства близких родственников | [RelatedPerson](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-relatedperson.html).address | - | Toshkent, Yunusobod |
| Yaqin qarindoshning telefon raqami | Номер телефона близких родственников | RelatedPerson.telecom[phone].value | - | +998901112233 |


---

### Socioeconomic Information

Rows 27-32 of the paper form are a single choice field. Each recorded variant is one Observation. Coded variants (occupation, disability) are a [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html) with a SNOMED CT observable and a value from the relevant national ValueSet. Workplace, place of study and children's institution are free text, so they are a plain Observation with `valueString`.

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Ish joyi | Место работы | Observation.valueString | LOINC `80427-8` "Employer name [Identifier]" | Yunusobod avtoservis |
| Kasbi yoki lavozimi | Профессия или должность | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | `code` SNOMED `14679004` "Occupation", as in Form 111<br>`value` [Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Car mechanic (`7231.1`) |
| O'qish joyi | Место учёбы | Observation.valueString | LOINC `66280-9` "School Name" | - |
| Bolalar muassasasi | Детское учреждение | Observation.valueString | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `children-institution` "Children's institution" | - |
| Nogironlik turi | Вид инвалидности | UZCoreSocioeconomicObservation.valueCodeableConcept | [Benefits](https://dhp.uz/fhir/core/en/ValueSet-benefits-vs.html) | - |
| Nogironlik guruhi | Группа инвалидности | UZCoreSocioeconomicObservation.valueCodeableConcept | [Disability Levels](https://dhp.uz/fhir/core/en/ValueSet-disability-vs.html) | - |
| Urush nogironi | Инвалид войны | UZCoreSocioeconomicObservation.valueCodeableConcept | [Benefits](https://dhp.uz/fhir/core/en/CodeSystem-benefits-cs.html) `regis0004.00004` "Disabled persons and war participants of 1941-1945, as well as persons treated as such" | - |

---

### Admission Information

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Bemor yuborilgan shifoxona nomi | Кем направлен больной | Encounter.admission.origin → Organization | - | Yunusobod tuman oilaviy poliklinikasi |
| Kasalxonaga shoshilinch tarzda keltirilgan | Пациент доставлен экстренно | Encounter.priority | [ActPriority](https://terminology.hl7.org/ValueSet-v3-ActPriority.html) `EM` "emergency" / `R` "routine" | Emergency |
| Tez tibbiy yordam transportida keldi | Доставлен транспортом скорой помощи | Observation.valueBoolean | LOINC `LP97912-7` "Ambulance transport" | true |
| Kasallik/jarohatdan keyin yotqizishgacha o'tgan vaqt | Время от начала заболевания/травмы до госпитализации | Observation.valueCodeableConcept | [Disease/Injury Delay](CodeSystem-disease-injury-delay-cs.html) | `delay0001_00003` "After 24 hours" |
| Bemorni kelish usuli | Метод прибытия пациента | Encounter.admission.admitSource | [Admit Source Local](https://dhp.uz/fhir/core/en/CodeSystem-admit-source-local-cs.html) | `mserv-0006-00004` "Emergency medical service" |
| Bemor yo'llanmasidagi tashxis | Диагноз в направлении | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `referral` "Referring institution diagnosis" | `J18.9` "Pneumonia, unspecified" |
| Qabulxonada qo'yilgan tashxis | Диагноз в приёмном отделении | Condition.code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `admission` "Admission diagnosis" | `J18.9` "Pneumonia, unspecified" |
| Tashxis qo'yilgan sana | Дата установления диагноза | Condition.recordedDate | - | 2026-02-08 |

---

### Admission Screening

The combined admission screening block expands to one resource per screening.

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Qon RW | RW | Observation.valueCodeableConcept | `code` LOINC `22461-8` "Reagin Ab [Presence] in Serum"<br>`value` SNOMED CT | `260385009` "Negative" |
| OITS | ВИЧ 1/2 Ab + p24 Ag | Observation.valueCodeableConcept | `code` LOINC `56888-1` "HIV 1+2 Ab+HIV1 p24 Ag [Presence] in Serum or Plasma by Immunoassay"<br>`value` SNOMED CT | `260385009` "Negative" |
| Axlat poshevi | Посев кала | [DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html).code | LOINC `625-4` "Bacteria identified in Stool by Culture" | - |
| Pedikulyoz | Педикулёз | Observation.valueCodeableConcept | SNOMED CT `20848007` "Pediculosis" | Negative |
| Mavhum kasalliklar | Прочие заболевания | Observation.valueString | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `other-diseases` "Other diseases" | - |

---

### Primary Examination Sheet

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Bemorni tekshirish sanasi va vaqti | Дата и время осмотра пациента | Condition.recordedDate of the provisional diagnosis | - | 2026-02-08T10:15:00+05:00 |
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

### Examination Plan

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Tekshiruv rejasi | План обследования | Composition.section[examinationPlan].entry → [ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html); the result points back with `DiagnosticReport.basedOn` | LOINC `18776-5` "Plan of care note" | - |

---

### Diagnostic Results

| UZ | RU | FHIR Path | Code | Example |
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

### Department Doctor Examination

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Bo'lim shifokori ko'rigi (tekshiruv va davolash rejasi) | Осмотр врача отделения (план обследования и лечения) | Composition.section[departmentExamination].text (+ entry) | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `department-examination` "Department doctor examination" | narrative |

---

### Final Diagnosis

Each diagnosis is one Condition. Its role goes in `Condition.category` as a [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) code, and the Condition goes in the [Composition sub-section](StructureDefinition-form-003-inpatient-medical-record-composition.html#k-Composition.section:finalDiagnosis) for that role: Main disease → `main`, Complication of the main disease → `complication`, Comorbidity → `concomitant`, Competing disease → `competing`, Background disease → `background`.

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Asosiy | Основное заболевание | Condition.code; Condition.verificationStatus | `code` ICD-10<br>`verificationStatus` `confirmed` "Confirmed" | `J15.9` "Bacterial pneumonia, unspecified" |
| Asosiy kasallikning asorati | Осложнение основного заболевания | Condition.code | ICD-10 | `J90` "Pleural effusion, not elsewhere classified" |
| Aniqlangan yo'ldosh kasalliklar | Выявленные сопутствующие заболевания | Condition.code | ICD-10 | `I10` "Essential (primary) hypertension" |

---

### Surgical Procedures

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Jarrohlik operatsiyasi nomi | Наименование хирургической операции | [Form 066 Surgical Procedure](StructureDefinition-form-066-surgical-procedure.html).code | [ICHI Codes Accepted by DMED](https://terminology.dhp.uz/fhir/integrations/ValueSet/dmed-ichi-vs) | `JCB.JB.AE` "Percutaneous drainage of pleural cavity" |
| Jarrohlik operatsiyasi sanasi va vaqti | Дата и время хирургической операции | Procedure.occurrenceDateTime | - | 2026-02-10T11:30:00+05:00 |
| Og'riqsizlantirish usullari | Метод анестезии | separate [Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html).code (coding or text) | [Anesthesia Method](ValueSet-anesthesia-method-vs.html) | `386761002` "Local anesthesia" |
| Operatsiyadan keyingi asoratlar | Послеоперационные осложнения | Procedure.complication / Condition | SNOMED CT / ICD-10 | - |
| Shifokor F.I.Sh. | ФИО врача-хирурга | Procedure.performer.actor → PractitionerRole | - | Rasulov B.B. |
| Boshqa davolash turlari nomi | Наименование других видов лечения | Procedure.code | [Procedure Code](https://dhp.uz/fhir/core/en/ValueSet-procedure-code-vs.html) | - |

---

### Medication Sheet

| UZ | RU | FHIR Path | Code | Example |
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

### Procedure Sheet

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Tayinlangan / buyurilgan tekshiruv | Назначенное исследование | Composition.section[procedureSheet].entry → ServiceRequest / DiagnosticReport | [Service Request Code](https://dhp.uz/fhir/core/en/ValueSet-service-request-code-vs.html) | - |
| O'tkazilgan tekshiruv sanasi | Дата проведённого исследования | DiagnosticReport.effectiveDateTime | - | - |
| Buyurilgan muolajalar | Назначенные процедуры | ServiceRequest.code | [Service Request Code](https://dhp.uz/fhir/core/en/ValueSet-service-request-code-vs.html) | - |
| Bajarilgan muolajalar sanasi | Дата проведённой процедуры | Procedure.occurrenceDateTime | - | - |
| Ishlatiladigan materiallar | Используемые материалы | Procedure.used.concept / .reference | SNOMED CT / registry reference | - |

---

### Temperature Chart

Morning and evening measurements are the same LOINC observation distinguished by `Observation.effectiveDateTime`.

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Bemorning kasallik kuni | День болезни пациента | Observation.valueInteger | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `day-of-illness` "Day of illness" | 6 |
| Bemorning kasalxonada bo'lgan kunlari | Дни пребывания в стационаре | derived from Encounter.actualPeriod.start | - | 1..31 |
| Yurak urishi (ertalab / kechqurun) | Пульс (утро / вечер) | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 96 /min |
| Qon bosimi (ertalab / kechqurun) | Артериальное давление (утро / вечер) | Observation.component.valueQuantity | LOINC `85354-9` "Blood pressure panel" + `component` LOINC `8480-6` "Systolic blood pressure" / `8462-4` "Diastolic blood pressure" in `mm[Hg]` | 134 / 84 |
| Harorat (ertalab / kechqurun) | Температура (утро / вечер) | Observation.valueQuantity | LOINC `8310-5` "Body temperature" | 37.6 Cel |
| Nafas olish tezligi (ertalab / kechqurun) | Частота дыхания (утро / вечер) | Observation.valueQuantity | LOINC `9279-1` "Respiratory rate" | 20 /min |
| Og'irligi (ertalab / kechqurun) | Вес (утро / вечер) | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 82 kg |
| Qabul qilingan suyuqlik (ertalab / kechqurun) | Выпито жидкости (утро / вечер) | Observation.valueQuantity, one per half-day | LOINC `9107-4` "Fluid intake total 12 hour" | 600 mL |
| Bir kunlik siydik miqdori | Суточное количество мочи | Observation.valueQuantity | LOINC `9192-6` "Urine output 24 hour" | 1650 mL/(24.h) |

---

### Clinical Course

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Dinamikadagi ahvoli | Состояние в динамике | Observation.valueString | LOINC `8648-8` "Hospital course note" | Afebrile from day 5, resolving |
| Shifokor tavsiyalari | Рекомендации врача | [CarePlan](https://hl7.org/fhir/R5/careplan.html).description | - | Oral antibiotics, GP review in 3 days |
| Kundalik / Shifokor yozuvlari | Дневник / Записи врача | section[diary].text | LOINC `11506-3` "Progress note" | narrative |

---

### Hospitalization Summary

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Mazkur yil davomida shu kasallik bo'yicha kasalxonaga yotishi | Госпитализация по данному заболеванию в текущем году | Encounter.admission.reAdmission | [Re-admission Local](https://dhp.uz/fhir/core/en/CodeSystem-re-admission-local-cs.html) `first-time` "First time" / `repeat-current-year` "Repeated within current year" | First time |
| Yillik kasalxonaga yotqizilganlarning umumiy soni | Общее количество госпитализаций за год | Observation.valueInteger | [Local](CodeSystem-local-observation-code.html) `num-previous-hospitalizations` "Number of previous hospitalizations" | 0 |

---

### Treatment Outcome

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Davolash natijasi (chiqarish) | Результат лечения (выписка) | Encounter.admission.dischargeDisposition | [Encounter Discharge Disposition](https://dhp.uz/fhir/core/en/ValueSet-encounter-discharge-disposition-vs.html): discharged `mserv-0004-00004` "Discharged", transferred `other-hcf` "Other healthcare facility", died `exp` "Expired" | `mserv-0004-00004` "Discharged" |
| Davolash natijasi (klinik holat) | Результат лечения (клинический исход) | Encounter.subjectStatus | [Patient status when receiving care inpatient](https://dhp.uz/fhir/core/en/CodeSystem-encounter-local-subject-status-cs.html) | `loc-cs-002` "Improved" |
| Vafot etish holati | Контекст смерти | Observation.valueCodeableConcept | `code` [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `death-context` "Death context"<br>`value` [Death Context](ValueSet-death-context-vs.html) | - |
| Boshqa muassasaga o'tkazilgan | Переведён в другое учреждение | Encounter.admission.destination → Organization | - | - |
| Ish qobiliyatining holati | Состояние трудоспособности | Observation.valueCodeableConcept | [Work Capacity Status](CodeSystem-work-capacity-status-cs.html) | `chr-0036-0001` "Work capacity fully restored" |
| Ekspertizaga yuborish uchun xulosa | Заключение для направления на экспертизу | section[expertiseReferralConclusion].text | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `expertise-referral-conclusion` "Conclusion for referral to medical expertise" | narrative |
| Alohida belgilar | Особые признаки | section[specialMarks].text | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `special-marks` "Special marks" | narrative |

---

### Temporary Disability

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Mehnatga yaroqsizlik varog'i raqami | Идентификатор больничного листа | [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html).identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/sickleave` | SL-2026-778812 |
| Ochilgan sana | Дата открытия | CarePlan.period.start | - | 2026-02-08 |
| Yopilgan sana | Дата закрытия | CarePlan.period.end | - | 2026-02-20 |
| Varaqa turi | Вид листка нетрудоспособности | CarePlan.category | [Sick Leave Category](CodeSystem-sick-leave-category-cs.html) | `mserv-0005-00001` "Sick Leave Certificate" |
| Mehnatga layoqatsizlik sababi | Причина нетрудоспособности | CarePlan.addresses[reason].concept | [Care Plan Reason](CodeSystem-care-plan-reason-cs.html) | `emdoc-0001-0001` "disease" |

---

### Post-mortem Conclusion

Present only when the patient died. Each cause of death is one Condition, with its role in `Condition.category` as a [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) code, in the [Composition sub-section](StructureDefinition-form-003-inpatient-medical-record-composition.html#k-Composition.section:postmortemConclusion) for that role: Immediate cause of death → `immediate-cause-of-death`, the disease that led to it → `underlying-cause-of-death`, Main disease → `main-disease-death`, Other significant diseases → `other-significant-death`.

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Kasallik haqidagi yakuniy tibbiy xulosa | Окончательное медицинское заключение о заболевании | section[postmortemConclusion].text | LOINC `18743-5` "Autopsy report" | narrative |
| O'limga olib kelgan bevosita sabab | Непосредственная причина смерти | Condition.code | ICD-10 | - |
| Asosiy kasallik | Основное заболевание | Condition.code | ICD-10 | - |

---

### Responsible Persons

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Davolovchi shifokor | Лечащий врач | PractitionerRole.practitioner | [Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) | Rasulov B.B. |
| Bo'lim boshlig'i | Заведующий отделением | PractitionerRole.practitioner | [Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) `1342.18` "Head of department (health institution)" | Qodirov A.A. |
| Bosh shifokor muovini | Заместитель главного врача | PractitionerRole.practitioner | [Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) `1120.185` "Deputy chief physician" | Yusupova N.N. |
| Kompleks uchun mas'ul shaxs | Ответственное лицо за комплекс | PractitionerRole (section[responsiblePersons]) | - | - |
| Shifokor imzosi | Подпись врача | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | [Signature Type](https://dhp.uz/fhir/core/en/ValueSet-signature-type-vs.html) | - |

---

### Bundle structure

The Form 003 document is structured as a FHIR Bundle containing a [Form003InpatientMedicalRecordComposition](StructureDefinition-form-003-inpatient-medical-record-composition.html) Composition:

```
Bundle (document)
├── Composition (Form003InpatientMedicalRecordComposition)
├── Patient (patient demographics)
├── Encounter (inpatient admission and discharge)
├── Organization[] (hospital, referring facility)
├── Location[] (ward, room)
├── Practitioner[] (attending doctor, department head, deputy chief physician)
├── PractitionerRole[] (responsible persons)
├── Condition[] (referral, admission, preliminary and final diagnoses)
├── Observation[] (vital signs, blood group, socioeconomic, screening, temperature chart, diet, work capacity)
├── AllergyIntolerance (drug reaction)
├── RelatedPerson (next of kin)
├── DiagnosticReport[] (laboratory and imaging investigations)
├── ServiceRequest[] (ordered investigations and procedures)
├── Procedure[] (surgery, anaesthesia, other treatments)
├── MedicationRequest[] / MedicationAdministration[] (medication sheet)
├── Coverage (source of medicines / funding)
├── CarePlan[] (doctor recommendations, sick-leave certificates)
└── Provenance[] (signatures, record authorship)
```

### Example

See [Form 003 inpatient medical record example](Bundle-example-form-003-inpatient-medical-record.html) for a complete FHIR document example.