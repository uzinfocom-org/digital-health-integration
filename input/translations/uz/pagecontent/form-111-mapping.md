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

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### 111-shakl - Homilador va tuqqan ayolning individual kartasi

Ushbu sahifada 111-shakl (Homilador va tuqqan ayolning individual kartasi) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi.

---

### Umumiy ma'lumot

111-shakl — ayollar maslahatxonasi tomonidan yuritiladigan davomiy antenatal/postpartum yozuv bo'lib, ro'yxatga olish, tashxis, homiladorlik yakuni, anamnez, ko'riklar, takroriy tashriflar, tug'ishga tayyorlash, patronaj tashriflari, perinatal xavfni baholash va mutaxassislar xulosalarini qamrab oladi. Shakl ma'lumotlari [Form 111 Pregnant Woman Individual Card Composition](StructureDefinition-form-111-pregnant-woman-individual-card-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

Composition ning 16 ta bo'limining har biri o'zining `section.code` kodiga ega (mos keluvchi tushuncha bo'lsa LOINC, aks holda [Form 111 CodeSystem](CodeSystem-form111-cs.html) dan lokal kod) va shakl shu qismiga tegishli resurslarni sanab o'tadi.

To'liq namunaviy nusxa uchun [111-shakl homilador ayolning individual kartasi misoli](Bundle-example-form-111-pregnant-woman-individual-card.html)ga qarang.

**Lokal kod raqamlash haqida:** ushbu IG'dagi `chr-XXXX-YYYYY` lokal kodlari maydonlar amalga oshirilgan tartibda ketma-ket berilgan. Alohida DMED maydon moslashtirish tahlili ba'zi bir xil tushunchalar uchun boshqa raqamlash sxemasini taklif qildi; ular farq qilgan joyda, ushbu IG allaqachon nashr etilgan CodeSystem'larni qayta raqamlashdan ko'ra o'zining ichki izchil raqamlashini (quyida hujjatlashtirilgan) saqlab qoladi — raqamning o'zi, u noyob va hujjatlashtirilgan ekan, klinik ma'noga ega emas.

---

### Maydonlarni moslashtirish

# 111-shakl Homilador va tuqqan ayolning individual kartasi - FHIR bilan moslashtirish

---

### Hujjat ma'lumotlari

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
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

Bo'lim kodi: LOINC `LP36348-8` "Patient Information".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Qon guruhi | Группа крови | Observation.valueCodeableConcept | LOINC `883-9` "Qonda ABO guruhi turi" / SNOMED `112144000` | Blood group A |
| Homiladorning Rh mansubligi | Резус-принадлежность беременной | Observation.valueCodeableConcept | LOINC `10331-7` "Qonda Rh turi" / SNOMED `165747007` (RhD positive), `165746003` (RhD negative) | RhD positive |
| Homiladorning turmush o'rtog'ining Rh mansubligi | Резус-принадлежность супруга беременной | Observation.valueCodeableConcept (`focus` = RelatedPerson) | LOINC `10331-7` / SNOMED `165746003` | RhD negative |
| Ro'yxatga olingan kun | Дата постановки на учёт | EpisodeOfCare.period.start + Encounter.actualPeriod.start + Encounter.episodeOfCare[] | - | 2025-10-20 |
| WR I | RW I | Observation.valueString | [Analysis Test Code](CodeSystem-form111-analysis-test-code-cs.html) `chr-0001-00011` | Negative |
| WR II | RW II | Observation.valueString | Analysis Test Code `chr-0001-00012` | Negative |
| OIV | ВИЧ | Observation.valueString | Analysis Test Code `chr-0001-00004` | Negative |
| OIV tekshirilgan yil | Год обследования на ВИЧ | *(shu Observation'ning effectiveDateTime'i)* | - | 2025-10-22 |
| Hbs Ag I | HBsAg I | Observation.valueString | Analysis Test Code `chr-0001-00002` | Negative |
| Hbs Ag I tekshirilgan yil | Год обследования на HBsAg I | *(shu Observation'ning effectiveDateTime'i)* | - | 2025-10-22 |
| Hbs Ag II | HBsAg II | Observation.valueString | Analysis Test Code `chr-0001-00003` | Negative |
| Hbs Ag II tekshirilgan yil | Год обследования на HBsAg II | *(shu Observation'ning effectiveDateTime'i)* | - | 2026-02-10 |
| Gonokokk | Гонококк | Observation.valueString | Analysis Test Code `chr-0001-00001` | Negative |
| Toksoplazmoz | Токсоплазмоз | Observation.valueString | Analysis Test Code `chr-0001-00009` | Negative |
| Boshqa tekshiruv (siydik tahlili) | Другое обследование (анализ мочи) | Observation.valueString | Analysis Test Code `chr-0001-00006` "Boshqa tahlil" | Siydik tahlili: me'yor |
| Med ID raqami | Идентификатор медкарты | Patient.identifier[healthCardId] | - | HC-2025-00111 |
| Familiya, ismi, otasining ismi (F.I.Sh) | Фамилия, имя, отчество (Ф.И.О.) | Patient.name | - | Ergasheva Nilufar Baxtiyorovna |
| Tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1997-03-08 |
| Oilaviy sharoiti | Семейное положение | Patient.maritalStatus | `http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M` | Married |
| Yashash manzili | Адрес проживания | Patient.address | - | Chilonzor tumani, 7-kvartal, 21-uy |
| Telefon raqami (uy) | Номер домашнего телефона | Patient.telecom | - | +998901112233 |
| Ma'lumoti | Образование | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | SNOMED `105421008` "Educational achievement" / [Education Level](CodeSystem-form111-education-level-cs.html) `chr-0010-00002` | O'rta umumiy ta'lim |
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

Bo'lim kodi: LOINC `29308-4` "Diagnosis".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Homiladorlik soni | Количество беременностей | Observation.valueInteger | LOINC `11996-6` "Pregnancies" | 4 |
| Tug'ruq soni | Количество родов | Observation.valueInteger | LOINC `11977-6` "Parity" | 2 |
| Ushbu homiladorlik vaqtidagi asoratlari | Осложнения данной беременности | Condition.code | ICD-10 `O99.0`, `O21.9` | Anemiya, Homiladorlikdagi qusish |
| Ekstragenital kasalliklari (diagnoz) | Экстрагенитальные заболевания (диагноз) | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 `D50.9` | Iron deficiency anaemia, unspecified |

---

### 3. Homiladorlikning yakuni

Bo'lim kodi: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00001`.

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
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

Bo'lim kodi: LOINC `11348-0` "History of Past illness note".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
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

Bo'lim kodi: LOINC `10162-6` "History of pregnancies Narrative".

Namunada uchta avvalgi homiladorlik keltirilgan: 1-homiladorlik (2019, muddatidan kech tug'ruq), 2-homiladorlik (2022, vaqtida tug'ruq), 3-homiladorlik (2024, o'z-o'zidan tushish). Har biri uchun quyidagi maydonlar takrorlanadi (Encounter — faqat tashrifni guruhlash uchun, yil o'zi alohida Observation orqali beriladi):

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Yil | Год | Observation.valueDateTime | Form111 General Observation Code `chr-0035-00027` | 2019 / 2022 / 2024 |
| Homiladorlik qachon va qanday yakunlandi | Когда и чем завершилась беременность | Observation.valueCodeableConcept | LOINC `63893-2` / SNOMED `3950001` (birth), `17369002` (miscarriage) | Birth, Birth, Miscarriage |
| Abort turi | Вид аборта | *(значение того же Observation) valueCodeableConcept = abort* | - | *(в этом примере не применяется — ни одна предыдущая беременность не завершилась абортом)* |
| Tug'ruq turi (muddati bo'yicha) | Вид родов (по сроку) | Observation.valueCodeableConcept | Form111 General Observation Code `chr-0035-00015` / [Previous Delivery Term](ValueSet-form111-previous-delivery-term-vs.html) (SNOMED `21243004`, `367494004`, or local `chr-0026-00001`) | 1-homiladorlik: `chr-0026-00001` "Muddatidan kech tug'ruq"; 2-homiladorlik: SNOMED `21243004` "Term birth" |
| Bola tirik/o'lik tug'ilgani | Ребёнок родился живым/мёртвым | Observation.valueCodeableConcept | Form111 General Observation Code `chr-0035-00013` / [Newborn Birth Condition](ValueSet-form111-newborn-birth-condition-vs.html) (SNOMED `281050002`, `713202001`, `237362003`) | Livebirth |
| Vazni | Вес | Observation.valueQuantity | LOINC `8339-4` | 3.1 kg |
| Bola tirikligi (hozirgi holati) | Текущее состояние ребёнка | Observation.valueString | Form111 General Observation Code `chr-0035-00014` | Tirik, sog'lom (4 yoshda) |
| Qaysi yoshda o'lgani | В каком возрасте умер | Observation.valueAge | - | *(bu misolda qo'llanilmaydi — barcha tirik tug'ilgan bolalar tirik)* |
| Avvalgi homiladorliklarning o'ziga xosligi | Особенности предыдущих беременностей | Observation.valueString | Form111 General Observation Code `chr-0035-00016` | 1-homiladorlik (2019) — muddatidan kech tug'ruq. 2-homiladorlik (2022) — asoratsiz, vaqtida tug'ruq. 3-homiladorlik (2024) — 9-haftada o'z-o'zidan tushish. |

*"Abort turi" alohida maydon sifatida kodlanmaydi: DMED oldingi homiladorlik uchun faqat abort/tug'ruq natijasini beradi, abort turi haqida qo'shimcha tafsilot mavjud emas — sun'iy tafsilot qo'shilmaydi.*

---

### 6. Homiladorni birinchi ko'rigi

Bo'lim kodi: LOINC `29545-1` "Physical findings note".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
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

Bo'lim kodi: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00002`.

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Bachadon tubi balandligi | Высота дна матки | Observation.valueQuantity | LOINC `11881-0` "Uterus Fundal height Tape measure" | 9 cm |
| Qorin aylanasi | Окружность живота | Observation.valueQuantity | Pregnancy Monitoring Observation Code `chr-0023-00001` | 76 cm |
| Homilaning joylanish holati / oldin keluvchi qismi | Положение плода / предлежащая часть | Observation.valueCodeableConcept | SNOMED `364607000` / [Fetal Presentation](CodeSystem-form111-fetal-presentation-cs.html) `chr-0015-00003` | Aniqlanmagan |
| Homilaning yurak urishi | Сердцебиение плода | Observation.valueQuantity | LOINC `55283-6` "Fetal heart rate" | 158 /min |

---

### 8. Qin orqali tekshiruv

Bo'lim kodi: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00003`.

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
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

Bo'lim kodi: LOINC `18776-5` "Plan of care note".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Ko'rsatmalar, maslahatlar | Указания, рекомендации | CarePlan.description | - | Folat kislotasi, yod preparatlari, parhez |
| Ko'rikni o'tkazgan shifokor F.I.Sh | Ф.И.О врача | Provenance.agent.who (→ PractitionerRole/Practitioner) | - | Yusupova S.T. |
| Shifokor imzosi | Подпись врача | Provenance.signature | - | Yusupova S.T. |
| Vaqti | Время | Provenance.occurredDateTime (klinik vaqt) / Provenance.recorded (tizimga kiritilgan vaqt) | - | 2025-10-20 |

---

### 10. Homiladorlikning kechishi (takroriy kuzatuv tashriflari)

Bo'lim kodi: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00004`.

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
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

Bo'lim kodi: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00005`.

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
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

Bo'lim kodi: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00006`.

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
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

Bo'lim kodi: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00007`.

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Homiladorlik bo'yicha ta'til boshlanish va tugash sanasi | Даты начала и окончания дородового отпуска | Observation.effectivePeriod | Form111 General Observation Code `chr-0035-00017` | 2026-03-18 - 2026-05-26 |
| Mehnatga layoqatsizlik varog'i raqami | Номер листка нетрудоспособности | DocumentReference.identifier | Local (sick-leave number system) | MLV-2026-004512 |
| Tug'ruq sanasi | Дата родов | Procedure.occurrenceDateTime | Birth Type `chr-0003-00001` / SNOMED `236973005` | 2026-05-24 |
| Tug'ruq holati | Состояние родов | Observation.valueCodeableConcept | Form111 General Observation Code `chr-0035-00015` / SNOMED `21243004` | Term birth of newborn |
| Muddatdan farq (kun) | Разница со сроком (дни) | Observation.component.valueQuantity | Form111 General Observation Code `chr-0035-00021` | -3 kun |
| Tug'ruq bo'lib o'tgan tug'ruqxona nomi | Название роддома | Organization.name | - | Toshkent shahar 2-son tug'ruqxonasi |
| Tug'ruqdan keyingi ta'til muddati, boshlanish va tugash sanasi | Срок и даты послеродового отпуска | Observation.valueQuantity / Observation.effectivePeriod | Form111 General Observation Code `chr-0035-00018` | 56 kun (2026-05-27 - 2026-07-21) |
| Mehnatga layoqatsizlik varog'i raqami | Номер листка нетрудоспособности | DocumentReference.identifier | Local (sick-leave number system) | MLV-2026-007788 |

> `Tug'ruq bo'lib o'tgan tug'ruqxona nomi` bo'yicha boshqacha modellashtirish taklifi bor: `Procedure.location` → `Location` (`Organization.name` o'rniga). Bu IG'da hozircha `Organization.name` sifatida qoldirilgan — `UZCoreLocation` profilida majburiy `identifier`/`type` slice'lari mavjudligi sababli, to'liq mos `Location` resursini xato kiritmasdan yaratish qo'shimcha tekshiruvni talab qiladi.

---

### 14. Perinatal xavf omillari

Bo'lim kodi: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00008`.

"Guruh" va "Omillar" — alohida FHIR resursi yaratilmaydi, bu shaklning strukturaviy sarlavhalari; har bir belgilangan omil mustaqil Observation sifatida quyida ifodalanadi (bitta omil = bitta Observation).

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
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

Bo'lim kodi: LOINC `11488-4` "Consult note".

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
|----|----|------------|------|---------------|
| Mutaxassis xulosasi (terapevt) | Заключение специалиста (терапевт) | Observation.valueString | Assessment Observation Code `chr-0005-00005` | Patologiya aniqlanmadi |
| Mutaxassis xulosasi (stomatolog) | Заключение специалиста (стоматолог) | Observation.valueString | Assessment Observation Code `chr-0005-00005` | Sanatsiya qilindi |
| Mutaxassis xulosasi (venerolog) | Заключение специалиста (венеролог) | Observation.valueString | Assessment Observation Code `chr-0005-00005` | Infeksiyalar aniqlanmadi |
| Kun | Дата | *(tegishli Observation'ning effectiveDateTime'i)* | - | 2025-11-05 / 2025-11-06 / 2025-11-06 |
| Homiladorlikning kechishi va patronaj kuzatuv ma'lumotlari | Течение беременности и данные патронажного наблюдения | Observation.valueString | Assessment Observation Code `chr-0005-00008` | Homiladorlik asoratsiz kechdi |
| Maslahat | Рекомендации | CarePlan.description | - | Temir preparatlarini davom ettirish, og'iz bo'shlig'i gigiyenasi |

---

### 16. Tug'ruqdan keyingi davrdagi kuzatuv

Bo'lim kodi: [Form111 CodeSystem](CodeSystem-form111-cs.html) `chr-0034-00009`.

| UZ | RU | FHIR yo'li | Kod | Misol qiymati |
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

### Terminologiya haqida izohlar / DMED maydon moslashtirish tahlilidan bilinigan farqlar

Alohida DMED maydon moslashtirish tahlili aniq lokal kod raqamlarini va bir qator strukturaviy yechimlarni taklif qiladi, ular ushbu IG'da ataylab qo'llanilmagan — sabablari quyida:

- **Rh SNOMED kodlari**: tahlil RhD musbat/manfiy uchun `165747005`/`165748000`'ni ko'rsatadi. SNOMED CT'da to'g'ridan-to'g'ri tekshiruv bu kodlar mavjud emasligini tasdiqlaydi; ushbu IG tekshirilgan haqiqiy kodlarni ishlatadi: `165747007` (RhD positive) / `165746003` (RhD negative).
- **Arterial qon bosimi kodi**: tahlil qon bosimi matni uchun `chr-0034-00001`'ni qayta ishlatishni taklif qiladi, lekin bu kod allaqachon [Form111 CodeSystem](CodeSystem-form111-cs.html)'da 3-bo'lim kodi hisoblanadi. Ushbu IG buning o'rniga `chr-0035-00024`'ni ishlatadi. Qon bosimi shuningdek LOINC `85354-9` ("Blood pressure panel") bilan **kodlanmaydi**, chunki FHIR validatori bu kodni ishlatgan har qanday Observation'ga avtomatik ravishda asosiy `http://hl7.org/fhir/StructureDefinition/bp` profilini qo'llaydi, bu esa sistolik/diastolik `component` slice'larini talab qiladi — DMED taqdim etadigan erkin matnli `valueString` bilan mos kelmaydi.
- **Lokal kod raqamlash**: bir qator tushunchalar ushbu IG'da bir xil tushunchalar uchun allaqachon mavjud bo'lgan `chr-0035-*` General Observation Code yozuvlaridan boshqa raqamlar ostida taklif qilingan:
  - `chr-0023-00003` (tahlil) va `chr-0035-00012` (ushbu IG) — "Tug'ruqning alohida xususiyatlari"
  - `chr-0005-00007` (tahlil) va `chr-0035-00020` (ushbu IG) — "Boshqa a'zolari"
  - `chr-0035-00001` (tahlil, to'qnashuvga olib kelardi) — ushbu IG taklif qilinganidek "yangi tug'ilgan bola holati" uchun `chr-0035-00001`ni qayta ishlata olmaydi, chunki u allaqachon "Ro'yxatga olingan kun" maydoniga biriktirilgan; buning o'rniga `chr-0035-00013` ishlatiladi
  - `chr-0036-00001`/`chr-0036-00002` (tahlil) va `chr-0035-00011`/`chr-0035-00009` (ushbu IG) — xayz xususiyati / oxirgi xayz tugash sanasi
  - `chr-0037-00004` (tahlil) va `chr-0035-00021` (ushbu IG) — "Muddatdan farq (kun)"
  - `chr-0037-00001`/`00002` (tahlil) va yagona `chr-0035-00017` `effectivePeriod` (ushbu IG) — homiladorlik ta'tili boshlanish/tugash sanalari
  - `chr-0037-00005`/`00006`/`00007` (tahlil, 3 ta alohida maydon) va yagona `chr-0035-00018` `valueQuantity` + `effectivePeriod` (ushbu IG) — tug'ruqdan keyingi ta'til muddati/boshlanish/tugash sanasi bu yerda bitta Observation'ning sub-elementlari, uchta alohida resurs emas, chunki DMED ularni bitta yozuv sifatida beradi

  Tushuncha tahlil qabul qilinishidan oldin ishlaydigan, tekshirilgan raqam ostida allaqachon amalga oshirilgan bo'lsa, ushbu IG o'z raqamini saqlaydi, qayta raqamlamaydi (sahifa boshidagi izohga qarang).
- **Kontratseptsiya usuli tafsiloti** (`form111-contraception-details-vs`: to'siqli/gormonal/bachadon ichi va h.k.), **abort turi/bosqichi/kategoriyasi** (`form111-abortion-*-vs`), **hujjat turi** (`form111-document-type-vs`, `document-category-cs#form-111` bilan dublikat) va **musbat/manfiy** (`form111-positive-negative-vs`, erkin matnli tahlil natijasi bilan almashtirilgan) — misolda ishlatilmagan haqiqiy nashr etilgan ValueSet'lar, chunki DMED maydon moslashtirish tahlilining o'zi manba ma'lumotlari qo'llab-quvvatlamaydigan joyda bunday tafsilot qo'shmaslikni ko'rsatadi.
- **Dopplerografiya natijasi** (`chr-0013-00001`) — shaklning o'z tuzilishida mos maydoni bo'lmagan nashr etilgan kod, shuning uchun misolda ishlatilmaydi.
- **Ona/bola o'limi natijasi kodlari** (`chr-0024-00001`/`chr-0024-00002`, `form111-pregnancy-outcome-vs`ning qismi) faqat *joriy* homiladorlik natijasiga (3-bo'lim) tegishli va bu misolda tug'ruqdan keyingi kuzatuv va kontratseptsiya maslahati orqali tirik ona va bolani tasvirlaydigan hujjatning qolgan qismiga zid kelmasdan qo'llanilishi mumkin emas.
- **Ta'lim darajasi raqamlashi**: ushbu IG'da `chr-0010-00001` = "Oliy ta'lim" / `chr-0010-00002` = "O'rta umumiy ta'lim" (ichki izchil — misoldagi `chr-0010-00002` "O'rta umumiy ta'lim" ushbu IG'ning o'z CodeSystem'iga to'g'ri mos keladi). DMED tahlilidagi raqamlash teskari (`chr-0010-00001` = boshlang'ich, `chr-0010-00002` = oliy). Yuqoridagi bilan bir xil "boshqa raqamlash sxemasi" holati.
- **Perinatal xavf kodlari, ikkita nomzod raqam**: misolda xavf darajasi/ballar yig'indisi uchun `chr-0027-00005`/`chr-0027-00006` (Risk Factor Observation Code) ishlatiladi, ularni 14-bo'limning boshqa xavf omili kodlari bilan birga guruhlab. Xuddi shu ikki tushuncha uchun eskiroq `chr-0035-00022`/`chr-0035-00023` (General Observation Code) yozuvlari hamon mavjud (CodeSystem `#draft`, tashqi havolalarni buzmaslik uchun olib tashlanmagan), lekin misolda **ishlatilmaydi** — `chr-0027-00005`/`chr-0027-00006` asosiy hisoblansin.
- **Chaqaloqning chiqarilish holati**: alohida yangi tug'ilgan Encounter'idagi ikkinchi `Encounter.dischargeDisposition` o'rniga `Observation.valueCodeableConcept` (`observation-111-newborn-discharge-status`) sifatida modellashtirilgan, chunki ushbu IG chaqaloqni o'zining `Patient`/`Encounter` sub'ekti sifatida modellashtirmaydi. Onaning o'z chiqarilish holati kutilganidek `Encounter.admission.dischargeDisposition`ni ishlatadi.
- **Ish joyi Organization'i**: `organization-111-workplace` endi tasdiqlangan `identifier`ga ega (tashkilot kodi tizimi), bu DMED tahlilining identifikatorsiz erkin matndan `Organization` yaratishga qarshi ogohlantirishiga mos keladi; "Ish joyi" maydonining asosiy ifodasi yuqoridagi `Observation.valueString` qatorida qolmoqda.
- **Qo'shimcha ishlatilmagan lug'at**: `chr-0005-00002` "Doctor recommendations" va `chr-0005-00004` "Other examination" (Clinical Assessment Observation Code) ishlatilmagan — 9/10-bo'lim tavsiyalari kodsiz oddiy `CarePlan.description`dan foydalanadi, "Boshqa tekshiruv" esa Analysis Test Code `chr-0001-00006`ni ishlatadi. `chr-0001-00005` (OIV uchun muqobil belgi), `chr-0001-00007` (surtma), `chr-0001-00008` (najas), `chr-0001-00010` (siydik) va LOINC `56888-1`/`31201-7` (metodga xos OIV testlari) `form111-analysis-test-code-vs`da nashr etilgan, lekin misolda ishlatilmagan — misol har bir test toifasi uchun faqat bitta vakillik natijasini ko'rsatadi.
- **Homila qimirlashi**: [Boolean](CodeSystem-form111113-boolean-cs.html) CodeSystem'idan `Observation.valueCodeableConcept` (`chr-0031-00002` "Ha") sifatida modellashtirilgan — bu ushbu IG'dagi barcha boshqa ha/yo'q maydonlarining (masalan, gospitalizatsiya, tug'ruqqa tayyorgarlik bulean maydonlari) ifodalanish uslubiga mos keladi, DMED tahlili faqat shu bitta maydon uchun taklif qilgan tabiiy FHIR `valueBoolean` o'rniga.
- **Kodlar display tili konventsiyasi**: ushbu IG'dagi barcha lokal `chr-XXXX-YYYYY` kodlari asosiy `display` sifatida o'zbek tilini ishlatadi (CodeSystem'ning `language`si `#uz`), ingliz/rus tillar `designation` sifatida beriladi — masalan, `chr-0001-00004`ning asosiy display'i "OIV" (`designation[en] = "HIV test"` bilan). Bu IG'dagi barcha CodeSystem'lar uchun izchil, faqat shu kodga xos emas.

---

### Bundle strukturasi

111-shakl hujjati [Form111_PregnantWomanIndividualCardComposition](StructureDefinition-form-111-pregnant-woman-individual-card-composition.html) Composition'ni o'z ichiga olgan FHIR Bundle sifatida tuzilgan:

```
Bundle (document)
├── Composition (Form111_PregnantWomanIndividualCardComposition)
├── Patient (homilador ayolning demografik ma'lumotlari)
├── RelatedPerson (turmush o'rtog'i)
├── EpisodeOfCare (antenatal epizod)
├── Encounter[] (antenatal epizod, tug'ruq, takroriy tashriflar, patronaj tashriflari, avvalgi homiladorliklar, tug'ruqdan keyingi tashriflar)
├── Organization[] (ayollar maslahatxonasi, ish joylari, tug'ruqxona)
├── Practitioner[] / PractitionerRole[] (kartani yurituvchi shifokor, bo'lim boshlig'i)
├── Condition[] (ekstragenital kasalliklar, joriy homiladorlik asoratlari, yakun tashxisi, o'tgan kasalliklar, ginekologik, joriy homiladorlik tashxisi)
├── Procedure[] (tug'ruq, tug'ruqdan keyingi tashriflar)
├── Observation[] (laboratoriya natijalari, ko'riklar, hayotiy ko'rsatkichlar, o'tgan operatsiya, tug'ruqqa tayyorgarlik, onalar maktabi, homila baholash, xavf omillari, mutaxassis xulosalari, kontratseptsiya turi)
├── Immunization (stafilokokk anatoksini)
├── CarePlan[] (har bir tashrif bo'yicha tavsiyalar)
├── DocumentReference[] (mehnatga layoqatsizlik varaqalari)
└── Provenance[] (tashrif va hujjat imzolari)
```

### Misol

To'liq FHIR hujjat misoli uchun [111-shakl homilador ayolning individual kartasi misoli](Bundle-example-form-111-pregnant-woman-individual-card.html)ga qarang.
