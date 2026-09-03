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

### Form 111 - Individual Card of a Pregnant and Postpartum Woman

This page documents the mapping between Form 111 (Homilador va tuqqan ayolning individual kartasi) fields and FHIR resources.

---

### Overview

Form 111 is a longitudinal antenatal/postpartum record maintained by a women's consultation (ayollar maslahatxonasi), covering registration, diagnosis, pregnancy outcome, anamnesis, examinations, follow-up visits, birth preparation, patronage visits, perinatal risk assessment and specialist conclusions. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 111 Pregnant Woman Individual Card Composition](StructureDefinition-form-111-pregnant-woman-individual-card-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

Each of the 16 sections of the Composition carries its own `section.code` (LOINC where a suitable concept exists, otherwise a local [Form 111 CodeSystem](CodeSystem-form111-cs.html) code) and lists the resources belonging to that part of the form.

For a complete reference instance, see the [Form 111 pregnant woman individual card example](Bundle-example-form-111-pregnant-woman-individual-card.html).

**Note on local code numbering:** local `chr-XXXX-YYYYY` codes in this IG were assigned incrementally as fields were implemented. A separate DMED field-mapping review proposed a different numbering scheme for some of the same concepts; where the two disagree, this IG keeps its own internally-consistent numbering (documented below) rather than renumbering already-published CodeSystems, since the numeral itself carries no clinical meaning as long as it is unique and documented.

---

### Field Mapping

# Form 111 Individual Card of a Pregnant and Postpartum Woman - FHIR Mapping

---

### Document Information

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Hujjat instansiyasi UUID va shakl raqami | Идентификатор документа и номер формы | Composition.identifier | - | 111 |
| Individual karta raqami | Номер индивидуальной карты | Encounter.identifier | Local | 111-2025-000123 |
| Hujjat holati | Статус документа | Composition.status | - | final |
| Hujjat turi | Тип документа | Composition.type | LOINC `34133-9` "Summary of episode note" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Document Category](CodeSystem-document-category-cs.html) `form-111` | - |
| Bemor | Пациентка | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Ergasheva N.B. |
| Ayollar maslahatxonasidagi kuzatuv epizodi | Эпизод наблюдения в женской консультации | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | Antenatal episode |
| Hujjat shakllantirilgan sana | Дата составления документа | Composition.date | - | 2026-07-05 |
| Homiladorlik davri | Период наблюдения беременности | Composition.event.period | - | 2025-10-20 - 2026-05-24 |
| Kartani yurituvchi shifokor va bo'lim boshlig'i | Ведущий врач и заведующий отделением | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) | Yusupova S.T., Abdullayeva G.N. |
| Kartani saqlovchi muassasa | Учреждение, хранящее карту | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Chilonzor tumani ayollar maslahatxonasi |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Homilador va tuqqan ayolning individual kartasi (111-shakl) |
| Shifokor va bo'lim boshlig'i imzosi | Подпись врача и заведующего отделением | Provenance.signature | [Provenance](https://hl7.org/fhir/R5/provenance.html) | Author + Attester |

---

### 1. Ro'yxatga olish va shaxsiy ma'lumotlar

Section code: LOINC `LP36348-8` "Patient Information".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Qon guruhi | Группа крови | Observation.valueCodeableConcept | LOINC `883-9` "Qonda ABO guruhi turi" / SNOMED `112144000` | Blood group A |
| Homiladorning Rh mansubligi | Резус-принадлежность беременной | Observation.valueCodeableConcept | LOINC `10331-7` "Qonda Rh turi" / SNOMED `165747007` (RhD positive), `165746003` (RhD negative) | RhD positive |
| Homiladorning turmush o'rtog'ining Rh mansubligi | Резус-принадлежность супруга беременной | Observation.valueCodeableConcept (`focus` = RelatedPerson) | LOINC `10331-7` / SNOMED `165746003` | RhD negative |
| Ro'yxatga olingan kun | Дата постановки на учёт | EpisodeOfCare.period.start + Encounter.actualPeriod.start + Encounter.episodeOfCare[] | - | 2025-10-20 |
| WR I | RW I | Observation.valueString | [Analysis Test Code](CodeSystem-form111-analysis-test-code-cs.html) `chr-0001-00011` | Negative |
| WR II | RW II | Observation.valueString | Analysis Test Code `chr-0001-00012` | Negative |
| OIV | ВИЧ | Observation.valueString | Analysis Test Code `chr-0001-00004` | Negative |
| OIV tekshirilgan yil | Год обследования на ВИЧ | *(same Observation).effectiveDateTime* | - | 2025-10-22 |
| Hbs Ag I | HBsAg I | Observation.valueString | Analysis Test Code `chr-0001-00002` | Negative |
| Hbs Ag I tekshirilgan yil | Год обследования на HBsAg I | *(same Observation).effectiveDateTime* | - | 2025-10-22 |
| Hbs Ag II | HBsAg II | Observation.valueString | Analysis Test Code `chr-0001-00003` | Negative |
| Hbs Ag II tekshirilgan yil | Год обследования на HBsAg II | *(same Observation).effectiveDateTime* | - | 2026-02-10 |
| Gonokokk | Гонококк | Observation.valueString | Analysis Test Code `chr-0001-00001` | Negative |
| Toksoplazmoz | Токсоплазмоз | Observation.valueString | Analysis Test Code `chr-0001-00009` | Negative |
| Boshqa tekshiruv (siydik tahlili) | Другое обследование (анализ мочи) | Observation.valueString | Analysis Test Code `chr-0001-00006` "Boshqa tahlil" | Siydik tahlili: me'yor |
| Med ID raqami | Идентификатор медкарты | Patient.identifier[healthCardId] | - | HC-2025-00111 |
| Familiya, ismi, otasining ismi (F.I.Sh) | Фамилия, имя, отчество (Ф.И.О.) | Patient.name | - | Ergasheva Nilufar Baxtiyorovna |
| Tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1997-03-08 |
| Oilaviy sharoiti | Семейное положение | Patient.maritalStatus | `http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M` | Married |
| Yashash manzili | Адрес проживания | Patient.address | - | Chilonzor tumani, 7-kvartal, 21-uy |
| Telefon raqami (uy) | Номер домашнего телефона | Patient.telecom | - | +998901112233 |
| Ma'lumoti | Образование | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | SNOMED `105421008` "Educational achievement" / UZ Core Education `regis0005.00004` / [Form 111 Education Level](CodeSystem-form111-education-level-cs.html) `chr-0010-00003` | O'rta umumiy ta'lim |
| Ish joyi | Место работы | Observation.valueString | Form111 General Observation Code `chr-0035-00028` | 45-son umumta'lim maktabi |
| Ish joyi telefon raqami | Телефон места работы | Observation.valueString | Social Observation Code `chr-0029-00004` | +998712345678 |
| Mutaxassisligi | Специальность | Observation.valueString | SNOMED `14679004` "Occupation" | Boshlang'ich sinf o'qituvchisi |
| Lavozimi | Должность | Observation.valueString | SNOMED `14679004` "Occupation" | O'qituvchi |
| Ish sharoiti | Условия труда | Observation.valueString | [Social Observation Code](CodeSystem-form111-social-observation-code-cs.html) `chr-0029-00003` | Yengil mehnat sharoiti |
| Turmush o'rtog'ining F.I.Sh | Ф.И.О. супруга | [RelatedPerson](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-relatedperson.html).name | - | Ergashev Sardor Alisherovich |
| Turmush o'rtog'ining ish joyi | Место работы супруга | Observation.valueString (`focus` = RelatedPerson) | Social Observation Code `chr-0029-00002` | Toshkent shahar avtobazasi, haydovchi |
| Turmush o'rtog'ining telefon raqami | Телефон супруга | RelatedPerson.telecom | - | +998903334455 |

---

### 2. Tashxis

Section code: LOINC `29308-4` "Diagnosis".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Homiladorlik soni | Количество беременностей | Observation.valueInteger | LOINC `11996-6` "Pregnancies" | 4 |
| Tug'ruq soni | Количество родов | Observation.valueInteger | LOINC `11977-6` "Parity" | 2 |
| Ushbu homiladorlik vaqtidagi asoratlari | Осложнения данной беременности | Condition.code | ICD-10 `O99.0`, `O21.9` | Anemiya, Homiladorlikdagi qusish |
| Ekstragenital kasalliklari (diagnoz) | Экстрагенитальные заболевания (диагноз) | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 `D50.9` | Iron deficiency anaemia, unspecified |

---

### 3. Homiladorlikning yakuni

Section code: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00001`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Homiladorlikni yakuni | Исход беременности | Observation.valueCodeableConcept | LOINC `63893-2` "Outcome of pregnancy" / [Pregnancy Outcome](ValueSet-form111-pregnancy-outcome-vs.html) (SNOMED `3950001`, or local `chr-0024-*` for maternal/child death) | Birth |
| Sanasi | Дата | EpisodeOfCare.period.end | - | 2026-05-24 |
| Necha haftada yakunlangani | На какой неделе завершилась | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 39 wk |
| Tug'ruqning alohida xususiyatlari | Особенности родов | Observation.valueString | Form111 General Observation Code `chr-0035-00012` | Tabiiy tug'ruq yo'llari orqali, asoratlarsiz tug'ruq; qon yo'qotish 250 ml |
| Bola tirik/o'lik tug'ilgani | Ребёнок родился живым/мёртвым | Observation.valueCodeableConcept | Form111 General Observation Code `chr-0035-00013` / [Newborn Birth Condition](ValueSet-form111-newborn-birth-condition-vs.html) (SNOMED `281050002`, `713202001`, `237362003`) | Livebirth |
| Bola og'irligi | Вес ребёнка | Observation.valueQuantity | LOINC `8339-4` "Birth weight measured" | 3.35 kg |
| Bola bo'yi | Рост ребёнка | Observation.valueQuantity | LOINC `89269-5` "Body height Measured --at birth" | 52 cm |
| Tug'ruqxonadan chiqarilganda ona holati | Состояние матери при выписке | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).admission.dischargeDisposition | Local code `mserv-0004-00004` | Chiqarildi |
| Tug'ruqxonadan chiqarilganda bola holati | Состояние ребёнка при выписке | Observation.valueCodeableConcept | Local code `mserv-0004-00004` | Chiqarildi |
| Diagnoz | Диагноз | Condition.code | ICD-10 `O80` | Single spontaneous delivery |

---

### 4. Anamnez

Section code: LOINC `11348-0` "History of Past illness note".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Boshdan o'tkazgan kasalliklari | Перенесённые заболевания | Condition.code | ICD-10 `B01.9` | Varicella without complication |
| Ginekologik kasalliklari | Гинекологические заболевания | Condition.code | ICD-10 `N72` | Inflammatory disease of cervix uteri |
| Operatsiyalar | Операции | Observation.valueBoolean (fakt) + alohida Observation.valueDateTime (sana) | Form111 General Observation Code `chr-0035-00025` / `chr-0035-00026` | Ha (2018-09-12) |
| Jinsiy hayoti necha yoshdan boshlangani | Возраст начала половой жизни | Observation.valueQuantity | Form111 General Observation Code `chr-0035-00010` | 21 yosh |
| Erining sog'ligi | Состояние здоровья супруга | Observation.category[social-history]; Observation.valueCodeableConcept/valueString (`focus` = RelatedPerson) | Social Observation Code `chr-0029-00001` | Sog'lom, zararli odatlari yo'q |
| Xayz ko'rish necha yoshdan boshlangani | Возраст начала менструации | Observation.valueQuantity | LOINC `42798-9` "Age at menarche" | 13 yosh |
| Xayz ko'rish va uning xususiyatlari | Менструация и её особенности | Observation.valueString | Form111 General Observation Code `chr-0035-00011` | Muntazam, 28 kunlik sikl |
| Oxirgi xayz ko'rish sanasi (boshlanish) | Дата последней менструации (начало) | Observation.valueDateTime | LOINC `8665-2` "Last menstrual period start date" | 2025-08-20 |
| Oxirgi xayz ko'rish sanasi (tugash) | Дата последней менструации (окончание) | Observation.valueDateTime | Form111 General Observation Code `chr-0035-00009` | 2025-08-25 |
| Homilaning birinchi qimirlagan sanasi | Дата первого шевеления плода | Observation.valueDateTime | LOINC `57065-5` "Quickening date" | 2026-01-05 |

---

### 5. Avvalgi homiladorliklarning yakuni

Section code: LOINC `10162-6` "History of pregnancies Narrative".

Uchta avvalgi homiladorlik namunada keltirilgan: 1-homiladorlik (2019, muddatidan kech tug'ruq), 2-homiladorlik (2022, vaqtida tug'ruq), 3-homiladorlik (2024, o'z-o'zidan tushish). Har biri uchun quyidagi maydonlar takrorlanadi (Encounter — faqat tashrifni guruhlash uchun, yil o'zi alohida Observation orqali beriladi):

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Yil | Год | Observation.valueDateTime | Form111 General Observation Code `chr-0035-00027` | 2019 / 2022 / 2024 |
| Homiladorlik qachon va qanday yakunlandi | Когда и чем завершилась беременность | Observation.valueCodeableConcept | LOINC `63893-2` / SNOMED `3950001` (birth), `17369002` (miscarriage) | Birth, Birth, Miscarriage |
| Abort turi | Вид аборта | *(same Observation's) valueCodeableConcept = abort* | - | *(bu misolda qo'llanilmaydi — hech qaysi avvalgi homiladorlik abort bilan yakunlanmagan)* |
| Tug'ruq turi (muddati bo'yicha) | Вид родов (по сроку) | Observation.valueCodeableConcept | Form111 General Observation Code `chr-0035-00015` / [Previous Delivery Term](ValueSet-form111-previous-delivery-term-vs.html) (SNOMED `21243004`, `367494004`, or local `chr-0026-00001`) | 1-homiladorlik: `chr-0026-00001` "Muddatidan kech tug'ruq"; 2-homiladorlik: SNOMED `21243004` "Term birth" |
| Bola tirik/o'lik tug'ilgani | Ребёнок родился живым/мёртвым | Observation.valueCodeableConcept | Form111 General Observation Code `chr-0035-00013` / [Newborn Birth Condition](ValueSet-form111-newborn-birth-condition-vs.html) (SNOMED `281050002`, `713202001`, `237362003`) | Livebirth |
| Vazni | Вес | Observation.valueQuantity | LOINC `8339-4` | 3.1 kg |
| Bola tirikligi (hozirgi holati) | Текущее состояние ребёнка | Observation.valueString | Form111 General Observation Code `chr-0035-00014` | Tirik, sog'lom (4 yoshda) |
| Qaysi yoshda o'lgani | В каком возрасте умер | Observation.valueAge | - | *(bu misolda qo'llanilmaydi — barcha tirik tug'ilgan bolalar tirik)* |
| Avvalgi homiladorliklarning o'ziga xosligi | Особенности предыдущих беременностей | Observation.valueString | Form111 General Observation Code `chr-0035-00016` | 1-homiladorlik (2019) — muddatidan kech tug'ruq. 2-homiladorlik (2022) — asoratsiz, vaqtida tug'ruq. 3-homiladorlik (2024) — 9-haftada o'z-o'zidan tushish. |

*"Abort turi" alohida maydon sifatida kodlanmaydi: DMED oldingi homiladorlik uchun faqat abort/tug'ruq natijasini beradi, abort turi haqida qo'shimcha tafsilot mavjud emas — sun'iy tafsilot qo'shilmaydi.*

---

### 6. Homiladorni birinchi ko'rigi

Section code: LOINC `29545-1` "Physical findings note".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Bo'yining uzunligi | Рост | Observation.valueQuantity | LOINC `8302-2` "Body height" | 164 cm |
| Tana vazni | Масса тела | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 58.4 kg |
| Tana tuzilishining o'ziga xosligi | Особенности телосложения | Observation.valueString | [Anthropometry Observation Code](CodeSystem-form111-anthropometry-observation-code-cs.html) `chr-0002-00001` | Normostenik tana tuzilishi |
| Ko'krak bezi holati | Состояние молочных желёз | Observation.valueCodeableConcept | [Gynecological Examination Observation Code](CodeSystem-form111-gynecological-examination-observation-code-cs.html) `chr-0017-00002` / [Breast Condition](CodeSystem-form111-breast-condition-cs.html) `chr-0004-00001` | Patologiya yo'q |
| Qon tomir tizimi | Сердечно-сосудистая система | Observation.valueCodeableConcept | [Assessment Observation Code](CodeSystem-form111-assessment-observation-code-cs.html) `chr-0005-00006` / Examination Status `chr-0011-00001` | Normal |
| Arterial qon bosimi (o'ng qo'l) | Артериальное давление (правая рука) | Observation.valueString + Observation.bodySite (SNOMED `368209003`) | General Observation Code `chr-0035-00024` | 115/70 mm sim.ust. |
| Arterial qon bosimi (chap qo'l) | Артериальное давление (левая рука) | Observation.valueString + Observation.bodySite (SNOMED `368208006`) | General Observation Code `chr-0035-00024` | 110/70 mm sim.ust. |
| Boshqa a'zolari | Другие органы | Observation.valueString | Form111 General Observation Code `chr-0035-00020` | Patologiyasiz |
| Chanoq o'lchovlari (D.sp, D.Cr, D.troch, C.ext, C.diag, C.vera) | Размеры таза | Observation.component | Form111 General Observation Code `chr-0035-00002`..`chr-0035-00008` | D.sp 26, D.Cr 29, D.troch 31, C.ext 20, C.diag 13, C.vera 11 (sm) |

---

### 7. Tashqi akusherlik tekshiruvi

Section code: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00002`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Bachadon tubi balandligi | Высота дна матки | Observation.valueQuantity | LOINC `11881-0` "Uterus Fundal height Tape measure" | 9 cm |
| Qorin aylanasi | Окружность живота | Observation.valueQuantity | Pregnancy Monitoring Observation Code `chr-0023-00001` | 76 cm |
| Homilaning joylanish holati / oldin keluvchi qismi | Положение плода / предлежащая часть | Observation.valueCodeableConcept | SNOMED `364607000` / [Fetal Presentation](CodeSystem-form111-fetal-presentation-cs.html) `chr-0015-00003` | Aniqlanmagan |
| Homilaning yurak urishi | Сердцебиение плода | Observation.valueQuantity | LOINC `55283-6` "Fetal heart rate" | 158 /min |

---

### 8. Qin orqali tekshiruv

Section code: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00003`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Tashqi jinsiy a'zolari | Наружные половые органы | Observation.valueCodeableConcept | LOINC `11432-2` "Physical findings of female genitalia" / Examination Status `chr-0011-00001` | Normal |
| Qin | Влагалище | Observation.valueCodeableConcept | LOINC `32487-1` "Physical findings of vagina" / Examination Status `chr-0011-00001` | Normal |
| Bachadon bo'yinchasi | Шейка матки | Observation.valueCodeableConcept + Observation.note | Examination Status `chr-0011-00001` / Gynecological Examination Observation Code `chr-0017-00004` | Me'yor ("Zich, uzunligi 3 sm") |
| Bachadon tanasi | Тело матки | Observation.valueCodeableConcept + Observation.note | Examination Status `chr-0011-00001` / Gynecological Examination Observation Code `chr-0017-00001` | Me'yor ("9 haftalik muddatga mos") |
| Tuxumdon va naychalar | Яичники и трубы | Observation.valueCodeableConcept + Observation.note | Examination Status `chr-0011-00001` / [Gynecological Examination Observation Code](CodeSystem-form111-gynecological-examination-observation-code-cs.html) `chr-0017-00006` | Me'yor ("Paypaslanmaydi, og'riqsiz") |
| Alohida xususiyatlari | Особые находки | Observation.valueCodeableConcept + Observation.note | Examination Status `chr-0011-00001` / Gynecological Examination Observation Code `chr-0017-00005` | Me'yor |
| Homiladorlik muddati (hafta) | Срок беременности (нед) | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 9 wk |
| Taxminiy tug'ish vaqti | Предполагаемая дата родов | Observation.valueDateTime | LOINC `11778-8` "Delivery date Estimated" | 2026-05-27 |

---

### 9. Ko'rsatmalar

Section code: LOINC `18776-5` "Plan of care note".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Ko'rsatmalar, maslahatlar | Указания, рекомендации | CarePlan.description | - | Folat kislotasi, yod preparatlari, parhez |
| Ko'rikni o'tkazgan shifokor F.I.Sh | Ф.И.О врача | Provenance.agent.who (→ PractitionerRole/Practitioner) | - | Yusupova S.T. |
| Shifokor imzosi | Подпись врача | Provenance.signature | - | Yusupova S.T. |
| Vaqti | Время | Provenance.occurredDateTime (klinik vaqt) / Provenance.recorded (tizimga kiritilgan vaqt) | - | 2025-10-20 |

---

### 10. Homiladorlikning kechishi (takroriy kuzatuv tashriflari)

Section code: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00004`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Sana | Дата | Encounter.actualPeriod | - | 2026-01-15 |
| Shikoyati | Жалобы | Observation.valueString | Assessment Observation Code `chr-0005-00001` | Tez charchash, bosh aylanishi |
| Umumiy ahvoli | Общее состояние | Observation.valueCodeableConcept | Assessment Observation Code `chr-0005-00003` / [General Condition](CodeSystem-form111-general-condition-cs.html) `chr-0016-00001` | Qoniqarli |
| Vazni | Вес | Observation.valueQuantity | LOINC `29463-7` | 63.2 kg |
| Arterial qon bosimi | Артериальное давление | Observation.valueString + bodySite (o'ng: SNOMED `368209003`, chap: `368208006`) | General Observation Code `chr-0035-00024` | 110/65 mm sim.ust., 105/65 mm sim.ust. |
| Puls | Пульс | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 84 /min |
| Qorin aylanasi | Окружность живота | Observation.valueQuantity | Pregnancy Monitoring Observation Code `chr-0023-00001` | 84 cm |
| Bachadon tubi balandligi | Высота дна матки | Observation.valueQuantity | LOINC `11881-0` | 21 cm |
| Homilaning oldin kelayotgan qismi, joylashishi va holati | Предлежащая часть, положение плода | Observation.valueCodeableConcept | SNOMED `364607000` / Fetal Presentation `chr-0015-00002` | Bosh bilan kelish |
| Yurak urishi, qimirlashi | Сердцебиение, шевеление | Observation.valueQuantity + component | LOINC `55283-6`, `57088-7` / [Fetal Heartbeat Side](CodeSystem-form111-fetal-heartbeat-side-cs.html) `chr-0014-00002` / [Boolean](CodeSystem-form111113-boolean-cs.html) `chr-0031-00002` | 142 /min, o'ngda, Ha |
| Siydikdagi oqsil miqdori | Белок в моче | Observation.valueQuantity | LOINC `2888-6` "Siydikda oqsil miqdori" | 0 mg/dL |
| Qondagi Hb miqdori | Гемоглобин крови | Observation.valueQuantity | LOINC `718-7` "Qonda gemoglobin miqdori" | 104 g/L |
| Tashxis (homiladorlik haftasi) | Диагноз (неделя беременности) | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 21 wk |
| Patologik o'zgarishlar | Патологические изменения | Observation.valueString | Gynecological Examination Observation Code `chr-0017-00003` | Gemoglobin pasayishi |
| Ko'rsatmalar va maslahatlar | Указания и рекомендации | CarePlan.description | - | Temir preparatlari, parhez |
| Shifoxonaga yotqizildi | Госпитализирована | Observation.valueCodeableConcept | Form111 General Observation Code `chr-0035-00019` / Boolean `chr-0031-00001` | Yo'q |
| Stafilokokk anatoksini yuborildi | Введён стафилококковый анатоксин | [Immunization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-immunization.html).vaccineCode | SNOMED `871921009` | Staphylococcus toxoid vaccine |
| Navbatdagi tashrif sanasi | Дата следующего визита | Observation.code.text + Observation.valueDateTime | - | 2026-02-12 |
| Imzo | Подпись | Provenance.signature | - | Yusupova S.T. |

---

### 11. Tug'ishga tayyorlash

Section code: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00005`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Jismoniy tarbiya - sana | Физкультура — дата | Observation.effectiveDateTime + valueBoolean + component (haftasiga soni) | [Preparation Activity](CodeSystem-form111-preparation-activity-cs.html) `chr-0025-00002` / SNOMED `183329005` | 2026-02-12, Ha, haftasiga 2 marta |
| Jismoniy tarbiya vaqtidagi homiladorlik muddati | Срок беременности при занятиях физкультурой | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 25 wk |
| Ultrabinafsha nurlari bilan nurlanish - sana | Ультрафиолетовое облучение — дата | Observation.effectiveDateTime + valueBoolean + component (haftasiga soni) | Preparation Activity `chr-0025-00004` / SNOMED `229588000` | 2026-02-19, Ha, haftasiga 1 marta |
| Ultrabinafsha nurlanish vaqtidagi homiladorlik muddati | Срок беременности при ультрафиолетовом облучении | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 26 wk |
| Onalar maktabi - sana | Школа матерей — дата | Observation.effectiveDateTime + valueBoolean + component (mashg'ulotlar soni) | Preparation Activity `chr-0025-00001` | 2026-03-05, Ha, 3 marta |
| Onalar maktabi vaqtidagi homiladorlik muddati | Срок беременности при посещении школы матерей | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 28 wk |
| Psixoprofilaktik tayyorlov - sana | Психопрофилактическая подготовка — дата | Observation.effectiveDateTime + valueBoolean + component (haftasiga soni) | Preparation Activity `chr-0025-00003` / SNOMED `408779007` | 2026-03-19, Ha, haftasiga 1 marta |
| Psixoprofilaktik tayyorlov vaqtidagi homiladorlik muddati | Срок беременности при психопрофилактической подготовке | Observation.valueQuantity | LOINC `18185-9` "Gestational age" | 30 wk |

---

### 12. Patronaj - tashriflar

Section code: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00006`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Homiladorlik muddati | Срок беременности | Observation.valueQuantity | LOINC `18185-9` | 29 wk |
| Shikoyatlari | Жалобы | Observation.valueString | Assessment Observation Code `chr-0005-00001` | Shikoyatlari yo'q |
| Umumiy holati (shishlar) | Общее состояние (отёки) | Observation.valueString | Assessment Observation Code `chr-0005-00003` | Qoniqarli, oyoqlarda shish yo'q |
| Arterial qon bosimi | Артериальное давление | Observation.valueString + bodySite (o'ng: SNOMED `368209003`, chap: `368208006`) | General Observation Code `chr-0035-00024` | 115/70 mm sim.ust., 110/70 mm sim.ust. |
| Homilaning holati | Положение плода | Observation.valueCodeableConcept | SNOMED `364607000` / Fetal Presentation `chr-0015-00002` | Bosh bilan kelish |
| Homilaning yurak urishi | Сердцебиение плода | Observation.valueQuantity + component | LOINC `55283-6` / Fetal Heartbeat Side `chr-0014-00001` | 138 /min, chapda |
| Tavsiyalar | Рекомендации | CarePlan.description | - | Kunlik rejim, tuz cheklash |
| F.I.Sh va imzo | Ф.И.О и подпись | PractitionerRole / Provenance | - | Yusupova S.T. |

---

### 13. Aylanma karta va boshqa hujjatlarni yopishtirish uchun varoq

Section code: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00007`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Homiladorlik bo'yicha ta'til boshlanish va tugash sanasi | Даты начала и окончания дородового отпуска | Observation.effectivePeriod | Form111 General Observation Code `chr-0035-00017` | 2026-03-18 - 2026-05-26 |
| Mehnatga layoqatsizlik varog'i raqami | Номер листка нетрудоспособности | DocumentReference.identifier | Local (sick-leave number system) | MLV-2026-004512 |
| Tug'ruq sanasi | Дата родов | Procedure.occurrenceDateTime | Birth Type `chr-0003-00001` / SNOMED `236973005` | 2026-05-24 |
| Tug'ruq holati | Состояние родов | Observation.valueCodeableConcept | Form111 General Observation Code `chr-0035-00015` / SNOMED `21243004` | Term birth of newborn |
| Muddatdan farq (kun) | Разница со сроком (дни) | Observation.component.valueQuantity | Form111 General Observation Code `chr-0035-00021` | -3 kun |
| Tug'ruq bo'lib o'tgan tug'ruqxona nomi | Название роддома | Organization.name | - | Toshkent shahar 2-son tug'ruqxonasi |
| Tug'ruqdan keyingi ta'til muddati, boshlanish va tugash sanasi | Срок и даты послеродового отпуска | Observation.valueQuantity / Observation.effectivePeriod | Form111 General Observation Code `chr-0035-00018` | 56 kun (2026-05-27 - 2026-07-21) |
| Mehnatga layoqatsizlik varog'i raqami | Номер листка нетрудоспособности | DocumentReference.identifier | Local (sick-leave number system) | MLV-2026-007788 |

> `Tug'ruq bo'lib o'tgan tug'ruqxona nomi` bo'yicha alohida modellashtirish taklifi bor: `Procedure.location` → `Location` (`Organization.name` o'rniga). Bu IG'da hozircha `Organization.name` sifatida qoldirilgan — `UZCoreLocation` profilida majburiy `identifier`/`type` slice'lari mavjudligi sababli, to'liq mos `Location` resursini xato kiritmasdan yaratish qo'shimcha tekshiruvni talab qiladi.

---

### 14. Perinatal xavf omillari

Section code: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00008`.

"Guruh" va "Omillar" — alohida FHIR resursi yaratilmaydi, bu shaklning strukturaviy sarlavhalari; har bir belgilangan omil mustaqil Observation sifatida quyida ifodalanadi (bitta omil = bitta Observation).

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Ijtimoiy-biologik omillari | Социально-биологические факторы | Observation.valueCodeableConcept | Risk Factor Observation Code `chr-0027-00004` / [Socio-biological Factor](CodeSystem-form111-socio-biological-factor-cs.html) `chr-0028-00005` | Chekish, alkogolizm yoki giyohvandlik |
| Akusher-ginekologik anamnez | Акушерско-гинекологический анамнез | Observation.valueCodeableConcept | Risk Factor Observation Code `chr-0027-00002` / [Obstetric History Factor](CodeSystem-form111-obstetric-history-factor-cs.html) `chr-0019-00010` | Homiladorlikni yo'qotish |
| Ekstragenital kasalliklari | Экстрагенитальные заболевания | Observation.valueCodeableConcept | Risk Factor Observation Code `chr-0027-00001` / [Extragenital Disease Factor](CodeSystem-form111-extragenital-disease-factor-cs.html) `chr-0012-00003` | Qon kasalliklari |
| Homiladorlik asorati | Осложнение беременности | Observation.valueCodeableConcept | Risk Factor Observation Code `chr-0027-00003` / Pregnancy Complication Factor `chr-0022-00002` | Anemiya |
| Homila holatiga baho berish | Оценка состояния плода | Observation.valueString | Fetal Assessment Observation Code `chr-0013-00002` | Homila holati qoniqarli |
| Ballar yig'indisi | Сумма баллов | Observation.valueInteger | Risk Factor Observation Code `chr-0027-00006` | 6 |
| Xavf darajasi | Степень риска | Observation.valueCodeableConcept | Risk Factor Observation Code `chr-0027-00005` / [Perinatal Risk Level](CodeSystem-form111-perinatal-risk-level-cs.html) `chr-0021-00003` | O'rtacha xavf |

---

### 15. Terapevt, venerolog va boshqa mutaxassislarning xulosalari

Section code: LOINC `11488-4` "Consult note".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Mutaxassis xulosasi (terapevt) | Заключение специалиста (терапевт) | Observation.valueString | Assessment Observation Code `chr-0005-00005` | Patologiya aniqlanmadi |
| Mutaxassis xulosasi (stomatolog) | Заключение специалиста (стоматолог) | Observation.valueString | Assessment Observation Code `chr-0005-00005` | Sanatsiya qilindi |
| Mutaxassis xulosasi (venerolog) | Заключение специалиста (венеролог) | Observation.valueString | Assessment Observation Code `chr-0005-00005` | Infeksiyalar aniqlanmadi |
| Kun | Дата | *(har bir yuqoridagi Observation).effectiveDateTime* | - | 2025-11-05 / 2025-11-06 / 2025-11-06 |
| Homiladorlikning kechishi va patronaj kuzatuv ma'lumotlari | Течение беременности и данные патронажного наблюдения | Observation.valueString | Assessment Observation Code `chr-0005-00008` | Homiladorlik asoratsiz kechdi |
| Maslahat | Рекомендации | CarePlan.description | - | Temir preparatlarini davom ettirish, og'iz bo'shlig'i gigiyenasi |

---

### 16. Tug'ruqdan keyingi davrdagi kuzatuv

Section code: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00009`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| 7-8 kun - sana | 7-8-й день - дата | Encounter.actualPeriod.start | - | 2026-06-01 |
| 7-8 kun shikoyati | 7-8-й день - жалобы | Observation.valueString | Assessment Observation Code `chr-0005-00001` | Shikoyatlari yo'q |
| 7-8 kun tekshiruv-muolajalari | 7-8-й день - обследования и процедуры | Procedure.code | SNOMED `169762003` "Postnatal visit" | Bachadon involyutsiyasi ko'rikdan o'tkazildi |
| 7-8 kun maslahat, ko'rsatmalar | 7-8-й день - консультации и рекомендации | CarePlan.description | - | Gigiyena, emizishni davom ettirish |
| 35-40 kun - sana | 35-40-й день - дата | Encounter.actualPeriod.start | - | 2026-07-03 |
| 35-40 kun shikoyati | 35-40-й день - жалобы | Observation.valueString | Assessment Observation Code `chr-0005-00001` | Shikoyatlari yo'q |
| 35-40 kun tekshiruv-muolajalari | 35-40-й день - обследования и процедуры | Procedure.code | SNOMED `169762003` "Postnatal visit" | Bachadon me'yorga qaytgan |
| 35-40 kun maslahat, ko'rsatmalar | 35-40-й день - консультации и рекомендации | CarePlan.description | - | Dispanser kuzatuvi yakunlandi |
| Shifokor imzosi | Подпись врача | Provenance.signature | [Provenance](https://hl7.org/fhir/R5/provenance.html) | Yusupova S.T. |
| Bo'lim boshlig'i imzosi | Подпись заведующего отделением | Provenance.signature | [Provenance](https://hl7.org/fhir/R5/provenance.html) | Abdullayeva G.N. |
| Kontratsepsiya turi | Вид контрацепции | Observation.code / Observation.valueCodeableConcept | Contraception Observation Code `chr-0007-00001` / [Contraception Type](CodeSystem-form111-contraception-type-cs.html) `chr-0008-00001` | Jarrohliksiz kontratseptsiya |

---

### Terminology notes / known deviations from the DMED field-mapping review

A separate DMED-sourced field-mapping review proposes specific local code numbers and a few structural choices that this IG deliberately does not follow, for the reasons below:

- **Rh SNOMED codes**: the review lists `165747005`/`165748000` for RhD positive/negative. Live lookup against SNOMED CT confirms these codes do not exist; this IG uses the verified real codes `165747007` (RhD positive) / `165746003` (RhD negative).
- **Blood pressure code**: the review proposes reusing `chr-0034-00001` for blood pressure text, but that code is already the Section 3 section-code in [Form111 CodeSystem](CodeSystem-form111-cs.html). This IG uses `chr-0035-00024` instead. Blood pressure is also **not** coded with LOINC `85354-9` (the "Blood pressure panel" LOINC code), because the FHIR validator auto-applies the core `http://hl7.org/fhir/StructureDefinition/bp` profile to any Observation using that code, which requires systolic/diastolic `component` slices — incompatible with a single free-text `valueString` as DMED provides.
- **Local code numbering**: several concepts are proposed under different numbers than this IG's existing `chr-0035-*` General Observation Code entries for the same concepts:
  - `chr-0023-00003` (review) vs `chr-0035-00012` (this IG) — "Tug'ruqning alohida xususiyatlari"
  - `chr-0005-00007` (review) vs `chr-0035-00020` (this IG) — "Boshqa a'zolari"
  - `chr-0035-00001` (review, would collide) — this IG cannot reuse `chr-0035-00001` for "newborn birth condition" as the review proposes, since it is already assigned to "Ro'yxatga olingan kun" (registration date); this IG keeps `chr-0035-00013` for newborn birth condition instead
  - `chr-0036-00001`/`chr-0036-00002` (review) vs `chr-0035-00011`/`chr-0035-00009` (this IG) — menstrual character / last-period-end-date
  - `chr-0037-00004` (review) vs `chr-0035-00021` (this IG) — "Muddatdan farq (kun)"
  - `chr-0037-00001`/`00002` (review) vs the single `chr-0035-00017` `effectivePeriod` (this IG) — prenatal leave start/end dates
  - `chr-0037-00005`/`00006`/`00007` (review, three separate fields) vs the single `chr-0035-00018` `valueQuantity` + `effectivePeriod` (this IG) — postpartum leave duration/start/end are one Observation's sub-elements here, not three separate resources, since DMED provides them as one record
  
  Where the concept was already implemented under a working, validated number before the review was received, this IG keeps its own number rather than renumbering (see note at the top of this page).
- **Contraception method detail** (`form111-contraception-details-vs`: barrier/hormonal/IUD/etc.), **abortion type/stage/category** (`form111-abortion-*-vs`), **document-type** (`form111-document-type-vs`, redundant with `document-category-cs#form-111`), and **positive/negative** (`form111-positive-negative-vs`, superseded by free-text lab results) are valid published ValueSets not exercised by the example, because the DMED field-mapping review itself instructs not to force this level of detail where the source data doesn't support it.
- **Doppler ultrasound** (`chr-0013-00001`) is a published code with no corresponding field in this form's own layout, so it is not exercised in the example.
- **Mother/child death outcome codes** (`chr-0024-00001`/`chr-0024-00002`, part of `form111-pregnancy-outcome-vs`) apply only to the *current* pregnancy's outcome (Section 3) and cannot be exercised in this example without contradicting the rest of the document, which describes a live mother and baby through postpartum follow-up and contraception counseling.
- **Education level coding**: the Form 111 CodeSystem follows the confirmed DMED mapping: `chr-0010-00001` = primary, `chr-0010-00002` = higher, and `chr-0010-00003` = secondary general education. The example carries both UZ Core `education-cs#regis0005.00004` (required by `UZCoreSocioeconomicObservation`) and Form 111 `chr-0010-00003` so that it conforms to the core profile while preserving the integration-specific mapping.
- **Perinatal risk codes, two candidate numbers**: the example uses `chr-0027-00005`/`chr-0027-00006` (Risk Factor Observation Code) for risk level / score sum, keeping them grouped with the other Section 14 risk-factor codes. The older `chr-0035-00022`/`chr-0035-00023` (General Observation Code) entries for the same two concepts are still defined (CodeSystem is `#draft`, not removed to avoid breaking any external reference) but are **not used** in the example — treat `chr-0027-00005`/`chr-0027-00006` as authoritative.
- **Newborn discharge status**: modeled as `Observation.valueCodeableConcept` (`observation-111-newborn-discharge-status`) rather than a second `Encounter.dischargeDisposition` on a dedicated newborn Encounter, because this IG does not model the newborn as its own `Patient`/`Encounter` subject. The mother's own discharge status uses `Encounter.admission.dischargeDisposition` as expected.
- **Workplace Organization**: `organization-111-workplace` now carries a confirmed `identifier` (organization-code system), consistent with the DMED review's caution against creating an `Organization` from free text without one; the primary field representation for "Ish joyi" remains the `Observation.valueString` row above it.
- **Additional unused vocabulary**: `chr-0005-00002` "Doctor recommendations" and `chr-0005-00004` "Other examination" (Clinical Assessment Observation Code) are not exercised — Section 9/10 recommendations use plain `CarePlan.description` without a code, and "Boshqa tekshiruv" uses the Analysis Test Code `chr-0001-00006` instead. `chr-0001-00005` (alternate HIV label), `chr-0001-00007` (smear), `chr-0001-00008` (stool), `chr-0001-00010` (urine), and LOINC `56888-1`/`31201-7` (method-specific HIV tests) are published in `form111-analysis-test-code-vs` but not exercised in the example, which only demonstrates one representative result per test category.
- **Fetal movement ("Homilaning qimirlashi")**: modeled as `Observation.valueCodeableConcept` from the [Boolean](CodeSystem-form111113-boolean-cs.html) CodeSystem (`chr-0031-00002` "Ha"), consistent with how every other yes/no field in this IG is represented (e.g. hospitalization, birth preparation booleans), rather than a native FHIR `valueBoolean` as the DMED review suggests for this one field in isolation.
- **Code display language convention**: all local `chr-XXXX-YYYYY` codes in this IG use Uzbek as the primary `display` (the CodeSystem's `language` is `#uz`), with English/Russian carried as `designation`s — e.g. `chr-0001-00004`'s primary display is "OIV" (Uzbek for HIV), with `designation[en] = "HIV test"`. This is consistent across every CodeSystem in the IG, not specific to this code.

---

### Bundle structure

The Form 111 document is structured as a FHIR Bundle containing a [Form111_PregnantWomanIndividualCardComposition](StructureDefinition-form-111-pregnant-woman-individual-card-composition.html) Composition:

```
Bundle (document)
├── Composition (Form111_PregnantWomanIndividualCardComposition)
├── Patient (pregnant woman demographics)
├── RelatedPerson (spouse)
├── EpisodeOfCare (antenatal episode)
├── Encounter[] (antenatal episode, delivery, follow-up visits, patronage visits, previous pregnancies, postpartum visits)
├── Organization[] (women's consultation, workplaces, maternity hospital)
├── Practitioner[] / PractitionerRole[] (attending doctor, department head)
├── Condition[] (extragenital disease, current pregnancy complications, outcome diagnosis, past illness, gynecological, current pregnancy diagnosis)
├── Procedure[] (delivery, postpartum visits)
├── Observation[] (laboratory results, examinations, vital signs, past surgery, birth preparation, mothers' school, fetal assessment, risk factors, specialist conclusions, contraception type)
├── Immunization (staphylococcal toxoid)
├── CarePlan[] (recommendations per visit)
├── DocumentReference[] (sick-leave certificates)
└── Provenance[] (visit and document signatures)
```

### Example

See [Form 111 pregnant woman individual card example](Bundle-example-form-111-pregnant-woman-individual-card.html) for a complete FHIR document example.
