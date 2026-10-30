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

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### 027-shakl - Tibbiy kartadan koʻchirma

Ushbu sahifada [027-shakl](forms-volume-03-diagnostics-laboratory.html) (Tibbiy muassasadagi bemorning tibbiy kartasidan koʻchirma) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi.

---

### Umumiy ma'lumot

027-shakl - bemorning ambulator yoki statsionar tibbiy kartasidan ko'chirma bo'lib, bemor yo'llanganda yoki boshqa muassasaga o'tkazilganda yuboriladi. Shakl ma'lumotlari [Form 027 Medical Record Extract Composition](StructureDefinition-form-027-medical-record-extract-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

Composition'ning 8 ta bo'limining har biri o'z `section.code`iga ega va shaklning shu qismiga tegishli resurslarni sanab o'tadi.

To'liq namunaviy nusxa uchun [027-shakl ko'chirma misoli](Bundle-example-form-027-medical-record-extract.html)ga qarang.

---

### Maydonlarni moslashtirish

### 027-shakl Tibbiy kartadan koʻchirma - FHIR bilan moslashtirish

---

### Hujjat haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:760e8400-e29b-41d4-a716-446655440027 |
| Hujjat UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:861f9511-f30c-52e5-b827-557766550027 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 027 |
| Hujjat holati | Статус документа | Composition.status | [Hujjat holatlari](document-statuses.html): ko'chirma imzolangach `final`, keyingi tuzatishlar uchun `amended`, qaytarib olinganda `entered-in-error` | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0106` "Extract from inpatient medical record", shuningdek LOINC `34133-9` "Summary of episode note" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" va [Document Category](CodeSystem-document-category-cs.html) `form-027` "Extract from patient's medical record" | - |
| Bemor | Пациент | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Yusupova Nilufar Rustamovna |
| Murojaat yoki statsionarda davolanish | Обращение или пребывание в стационаре | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | 2026-02-08 - 2026-02-10 |
| Hujjat shakllantirilgan sana | Дата составления документа | Composition.date | - | 2026-02-10T09:15:00+05:00 |
| Davolovchi shifokor | Лечащий врач | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html), lavozim noma'lum bo'lsa [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) | Ismoilova M.T. |
| Hujjat egasi | Организация-хранитель документа | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Chilonzor tuman poliklinikasi |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 027 - Tibbiy muassasadagi bemorning tibbiy kartasidan koʻchirma |

---

### 1. Roʻyxatga olish maʼlumotlari

Bo'lim kodi: LOINC `LP74442-2` "Admission Information".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Muassasa kodi | Код учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).identifier[taxId] | `system` `https://dhp.uz/fhir/core/sid/org/uz/soliq`<br>`type` `TAX` | 310271027 |
| Muassasa nomi | Наименование учреждения | Organization.name | - | Chilonzor tuman poliklinikasi |
| Bemorning ro'yxatdan o'tish raqami | Регистрационный номер пациента | Encounter.identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number` | MRN-027-2026-0124 |
| Bemor turi | Тип пациента | Encounter.class | v3-ActCode | `AMB` "ambulatory" |
| Murojaat sanasi | Дата подачи заявления | Encounter.actualPeriod.start | - | 2026-02-08T09:00:00+05:00 |
| Chiqarilgan sana | Дата выписки | Encounter.actualPeriod.end | - | 2026-02-10T09:00:00+05:00 |

---

### 2. Shaxsiy maʼlumotlar

Bo'lim kodi: LOINC `45970-1` "Demographic information section".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Bemor JShShIR | ПИНФЛ | Patient.identifier[nationalId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 31234567890124 |
| Med ID raqami | Медицинский идентификационный номер | Patient.identifier[healthCardId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/hc`<br>`type` `HC` | HC-2026-00027 |
| Bemor FISh | ФИО пациента | Patient.name.text | - | Yusupova Nilufar Rustamovna |
| Bemor tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1988-07-22 |
| Bemor jinsi | Пол пациента | Patient.gender; gender.extension[gender-other] | [Administrative Gender](https://dhp.uz/fhir/core/en/ValueSet-administrative-gender-vs.html); `other` uchun [Gender Other](https://dhp.uz/fhir/core/en/StructureDefinition-gender-other.html) kengaytmasi majburiy | `female` |
| Bemor fuqaroligi | Гражданство пациента | Patient.extension[citizenship] | ISO 3166-1 | `UZ` "Uzbekistan" |
| Bemor Pasport seriyasi va № | Серия и № паспорта | Patient.identifier[passportLocal] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`<br>`type` `PPN` | AC7654321 |

---

### 3. Manzil va aloqa

Bo'lim kodi: LOINC `56799-0` "Address".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Bemor yashab kelayotgan manzili | Адрес проживания (фактический) | Patient.address: state, district, line, postalCode, text | - | 1726 (Toshkent shahar), 1726294 (Chilonzor tumani), 12-mavze, 5-uy, 10-xonadon |
| Bemor telefoni | Телефон | Patient.telecom (`system` `phone`) | - | +998901112233 |
| Bemor emaili | Email | Patient.telecom (`system` `email`) | - | nilufar.yusupova@mail.com |

---

### 4. Yoʻllanma va tashxis

Bo'lim kodi: LOINC `42349-1` "Reason for referral (narrative)".

Har bir tashxis [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) kod tizimidan `Condition.category` bilan belgilanadi va Composition'ning mos quyi bo'limiga joylashtiriladi: Asosiy tashxis - `main`, Asorati - `complication`, Yo'ldosh kasallik - `concomitant`.

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Yo'llagan muassasa | Направившее учреждение | Encounter.admission.origin | Organization | Yakkasaroy tuman oilaviy poliklinikasi |
| Asosiy tashxis | Основной диагноз | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | `J18.9` "Pneumonia, unspecified" |
| Asorati | Осложнение | Condition.code; category | ICD-10; [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `complication` | `J90` "Pleural effusion, not elsewhere classified" |
| Yo'ldosh kasallik | Сопутствующее заболевание | Condition.code | ICD-10 | `E66.9` "Obesity, unspecified" |

---

### 5. Klinik maʼlumotlar

Bo'lim kodi: LOINC `34117-2` "History and physical note".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Shikoyatlar | Жалобы | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString | LOINC `8661-1` "Chief complaint - Reported" | Isitma, balg'amli yo'tal, o'ng tomonda ko'krak qafasida og'riq |
| Anamnez | Анамнез | Observation.valueString | LOINC `10164-2` "History of present illness Narrative" | 5 kun oldin sovqotishdan keyin tana harorati 38,7 °C gacha ko'tarildi, balg'amli yo'tal |
| Klinik ko'rik | Клинический осмотр | Observation.valueString | LOINC `10210-3` "Physical findings of General status Narrative" | Umumiy holati o'rta og'ir, o'ng o'pka pastki qismida nam xirillashlar |
| Diagnostik tekshiruv | Диагностическое обследование | [DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html).code | LOINC | `58410-2` "CBC panel - Blood by Automated count" |
| Leykotsitlar | Лейкоциты | *(DiagnosticReport.result)* Observation.valueQuantity | LOINC `6690-2` "Leukocytes [#/volume] in Blood by Automated count", UCUM `10*9/L` | 13.5 10*9/L |
| Gemoglobin | Гемоглобин | *(DiagnosticReport.result)* Observation.valueQuantity | LOINC `718-7` "Hemoglobin [Mass/volume] in Blood", UCUM `g/L` | 128 g/L |

---

### 6. Davolash va tavsiyalar

Bo'lim kodi: LOINC `18776-5` "Plan of care note".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Davolash | Лечение | [CarePlan](https://hl7.org/fhir/R5/careplan.html).activity.performedActivity.concept.text | - | Antipiretik terapiya, ko'p suyuqlik ichish |
| Tavsiyalar | Рекомендации | CarePlan.description | - | Statsionar davolash; 10-14 kundan keyin ko'krak qafasi rentgenogrammasini takrorlash |
| Retsept | Рецепт | [MedicationRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-medicationrequest.html).medication, [Medication](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-medication.html).code ga havola | XPN `https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs` | `005325` "paracetamol" |
| Dozalash | Дозировка | *(same MedicationRequest)* dosageInstruction.text; doseAndRate.doseQuantity | UCUM `mg` | 500 mg, harorat 38,5 °C dan oshganda, kuniga 3 martagacha |

---

### 7. Keyingi tadbirlar

Bo'lim kodi: LOINC `74213-0` "Discharge instructions".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Kuzatuv | Наблюдение | CarePlan.description | - | Shifoxonadan chiqqandan keyin 1 oy davomida oilaviy poliklinikada kuzatuv |
| Dispanserizatsiya | Диспансеризация | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episodeofcare.html).type[serviceType] | [Episode of Care Type](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-type-vs) | `mserv-0001-00001` "Preventive services" |
| Shifoxonaga yotqazish | Госпитализация | [ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html).code | [Service Request Codes](https://terminology.dhp.uz/fhir/core/ValueSet/service-request-code-vs) | SNOMED CT `32485007` "Hospital admission" |

---

### 8. Masʼul shaxslar

Bo'lim kodi: LOINC `LP35157-4` "Responsible party".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Davolovchi shifokor FIShi | Лечащий врач (Ф.И.О.) | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Ismoilova M.T., `2211.6` "Medical specialist" |
| Davolovchi shifokor imzosi | Лечащий врач (подпись) | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | `type` [UZ Core Signature Type](https://dhp.uz/fhir/core/en/CodeSystem-signature-type-cs.html) | soliqAuth, 2026-02-10T09:20:00+05:00 |
| Mas'ul shaxs FIShi | Ответственное лицо (Ф.И.О.) | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Nazarov S.K., `1342.18` "Head of department (health institution)" |
| Mas'ul shaxs imzosi | Ответственное лицо (подпись) | Provenance.signature | `type` UZ Core Signature Type | soliqAuth, 2026-02-10T09:25:00+05:00 |

---

### Majburiy maydonlar

FHIR bu elementlarni talab qiladi, lekin qog'oz shaklda ular uchun maydon yo'q. Ularni quyidagicha to'ldiring:

| Resurs | Element | Kod | Qiymat |
|---|---|---|---|
| Encounter | status | [Encounter Status](https://dhp.uz/fhir/core/en/ValueSet-encounter-status-vs.html) | `completed`, ko'chirma tegishli bo'lgan yotish yoki murojaat tugaganda |
| Condition | clinicalStatus | [Clinical Status](https://dhp.uz/fhir/core/en/ValueSet-clinical-status-vs.html) | `active`, kasallik davom etayotganda, `resolved` - tugaganda |
| Observation | status | [Observation Status](https://dhp.uz/fhir/core/en/ValueSet-observation-status-vs.html) | `final` |
| DiagnosticReport | status | [Diagnostic Report Status](https://dhp.uz/fhir/core/en/ValueSet-diagnostic-report-status-vs.html) | `final`, natijalar berilganda |
| CarePlan (davolash va tavsiyalar) | status; intent | [RequestStatus](https://hl7.org/fhir/R5/valueset-request-status.html); [CarePlanIntent](https://hl7.org/fhir/R5/valueset-care-plan-intent.html) | `active`, tavsiyalar amal qilayotganda; `plan` |
| MedicationRequest | status; intent | [MedicationRequest Status](https://dhp.uz/fhir/core/en/ValueSet-medicationrequest-status-vs.html); [MedicationRequest Intent](https://dhp.uz/fhir/core/en/ValueSet-medicationrequest-intent-vs.html) | `active`; `order` (ko'chirma bilan berilgan retsept) |
| CarePlan (kuzatuv) | status; intent | [RequestStatus](https://hl7.org/fhir/R5/valueset-request-status.html); [CarePlanIntent](https://hl7.org/fhir/R5/valueset-care-plan-intent.html) | `active`; `plan` |
| EpisodeOfCare | status | [EpisodeOfCare Status](https://dhp.uz/fhir/core/en/ValueSet-episode-of-care-status-vs.html) | `active`, bemor dispanser hisobiga olinganda, undan oldin `planned` |
| ServiceRequest | status; intent | [ServiceRequest Status](https://dhp.uz/fhir/core/en/ValueSet-service-request-status-vs.html); [Request Intent](https://dhp.uz/fhir/core/en/ValueSet-request-intent-vs.html) | `active`; `order` |

---

### Bundle tuzilishi

027-shakl hujjati [Form027MedicalRecordExtractComposition](StructureDefinition-form-027-medical-record-extract-composition.html) Composition'ini o'z ichiga olgan FHIR Bundle sifatida tuzilgan:

```
Bundle (hujjat)
├── Composition (Form027MedicalRecordExtractComposition)
├── Patient (bemorning demografik ma'lumotlari)
├── Encounter (murojaat yoki statsionarda davolanish)
├── Organization[] (ro'yxatga olgan va yo'llagan muassasa)
├── Practitioner[] (davolovchi shifokor, mas'ul shaxs)
├── PractitionerRole[] (davolovchi shifokor va mas'ul shaxs lavozimlari)
├── Condition[] (asosiy tashxis, asorat, yo'ldosh kasallik)
├── Observation[] (shikoyatlar, anamnez, klinik ko'rik, tahlil natijalari)
├── DiagnosticReport (diagnostik tekshiruvlar)
├── CarePlan[] (davolash va tavsiyalar, kuzatuv)
├── MedicationRequest / Medication (retsept)
├── EpisodeOfCare (dispanser kuzatuvi)
├── ServiceRequest (gospitalizatsiyaga yo'llanma)
└── Provenance[] (davolovchi shifokor va mas'ul shaxs imzolari)
```

### Misol

To'liq FHIR hujjati misoli uchun [027-shakl ko'chirma misoli](Bundle-example-form-027-medical-record-extract.html)ga qarang.
