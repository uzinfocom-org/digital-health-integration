<style>
/* Per-form mapping-table column widths (097: long local-code paths across 11 sections). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 18%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 18%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 22%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 26%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 16%; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### 097-shakl - Yangi tug'ilgan chaqaloq rivojlanishining tibbiy kartasi

Ushbu sahifada [097-shakl](forms-volume-01-inpatient.html) (Yangi tug'ilgan chaqaloq rivojlanishining tibbiy kartasi) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi.

---

### Umumiy ma'lumot

097-shakl yangi tug'ilgan chaqaloqning tug'ruqxonada tug'ilishidan chiqarilishi, o'tkazilishi yoki vafotigacha bo'lgan davrini qayd etadi: onaning antenatal anamnezi, tug'ruq, yangi tug'ilgan chaqaloqning birlamchi ko'rigi, oziqlantirish, kundalik kuzatuv va shifokor ko'rigi, tana vazni dinamikasi, profilaktika va immunizatsiya, skrining hamda chiqarish. Shakl ma'lumotlari [Form 097 Newborn Development Composition](StructureDefinition-form-097-newborn-development-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

Composition'ning 11 ta bo'limining har biri o'z `section.code` qiymatiga ega (mos tushuncha mavjud bo'lsa LOINC, aks holda [Form 097 section codes](ValueSet-form-097-section-vs.html) lokal kodi) va shaklning shu qismiga tegishli resurslarni sanab o'tadi.

096 va 097-shakllar uchun umumiy bo'lgan tug'ruq ma'lumotlari subyekt sifatida onani va onaning tug'ruq Encounter'ini saqlaydi, shu sababli ikkala hujjat bir xil tug'ruqni bir xil biznes identifikatorlari bilan tavsiflaydi.

To'liq namunaviy nusxa uchun [097-shakl misoli](Bundle-example-form-097-newborn-development.html)ga qarang.

---

### Maydonlarni moslashtirish

### 097-shakl - Yangi tug'ilgan chaqaloq rivojlanishining tibbiy kartasi - FHIR bilan moslashtirish

---

### Hujjat haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Hujjat instansiyasi UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:997f9511-f30c-52e5-b827-557766550097 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 097 |
| Hujjat holati | Статус документа | Composition.status | `preliminary` chaqaloq tug'ruqxonada bo'lganda, `final` chiqarish, o'tkazish yoki vafotda | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0017` "Newborn development medical record", hamda LOINC `18842-5` "Discharge summary" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" va [Document Category](ValueSet-document-category-vs.html) `form-097` "Newborn development medical record" | - |
| Yangi tug'ilgan chaqaloq | Новорождённый | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Karimov Aziz Shavkatovich |
| Tug'ruqxonada bo'lish davri | Пребывание в родильном доме | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | 2026-06-01 - 2026-06-07 |
| Davolovchi shifokor | Лечащий врач | Encounter.participant.actor | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) | Davolovchi neonatolog |
| Hujjat shakllantirilgan sana | Дата составления документа | Composition.date | - | 2026-06-01T09:00:00+05:00 |
| Hujjatni saqlagan foydalanuvchi | Пользователь, сохранивший документ | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html), lavozimi noma'lum bo'lsa [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) | Hamshira |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 097 - Newborn Development Medical Record |

---

### 1. Ona haqida ma'lumot va antenatal anamnez

Bo'lim kodi: LOINC `57073-9` "Prenatal records".

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Onaning JShShIRi | ПИНФЛ матери | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[nationalId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 31234567890123 |
| Onaning F.I.Sh. | Ф.И.О. матери | Patient.name.text | - | Karimova Dilnoza Farkhodovna |
| Onaning tug'ilgan sanasi | Дата рождения матери | Patient.birthDate | - | 1992-03-12 |
| Oilaviy holati | Семейное положение | Patient.maritalStatus | `value` [UZ Core Marital Status](https://dhp.uz/fhir/core/en/ValueSet-marital-status-vs.html) | Married (`M`) |
| Manzil | Адрес | Patient.address | - | 12 Amir Temur ko'chasi |
| Millati | Национальность | Patient.extension[nationality] | `value` [UZ Core Nationality](https://dhp.uz/fhir/core/en/ValueSet-nationality-vs.html) | `44` |
| Ish joyi/kasbi | Место работы/профессия | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | `code` SNOMED CT `14679004` "Occupation"<br>`value` [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | O'qituvchi (`2310.8`) |
| Onaning qon guruhi | Группа крови матери | Observation.valueCodeableConcept | `code` LOINC `883-9` "ABO group [Type] in Blood"<br>`value` [Blood Group](https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs) | Blood group A (`112144000`) |
| Onaning rezus-omili | Резус-фактор матери | Observation.valueCodeableConcept | `code` LOINC `10331-7` "Rh [Type] in Blood"<br>`value` [Blood Rh](https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs) | RhD negative (`165746003`) |
| Otaning qon guruhi | Группа крови отца | Observation.valueCodeableConcept | `code` LOINC `883-9` "ABO group [Type] in Blood"<br>`value` [Blood Group](https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs) | Blood group A (`112144000`) |
| Otaning rezus-omili | Резус-фактор отца | Observation.valueCodeableConcept | `code` LOINC `10331-7` "Rh [Type] in Blood"<br>`value` [Blood Rh](https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs) | RhD positive (`165747007`) |
| Homiladorlik soni | Число беременностей | Observation.valueInteger | `code` LOINC `11996-6` "[#] Pregnancies" | 4 |
| Tug'ruq soni | Число родов | Observation.valueInteger | `code` LOINC `11977-6` "[#] Parity" | 2 |
| Homiladorlik muddati | Срок беременности | Observation.valueQuantity | `code` LOINC `18185-9` "Gestational age" | 40 wk |
| Tug'ruqning birinchi davri | Первый период родов | Observation.valueString | `code` SNOMED CT `364329005` "Characteristic of first stage of labor" | First stage 6 h 20 min, regular contractions, no complications |
| Tug'ruqning ikkinchi davri | Второй период родов | Observation.valueString | `code` SNOMED CT `364337002` "Characteristic of second stage of labor" | Second stage 25 min, spontaneous vaginal delivery |
| Homiladorlik asorati | Осложнение беременности | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | `O24.4` "Diabetes mellitus arising in pregnancy" |
| Amniotik suyuqlik ko'rinishi | Вид околоплодных вод | Observation.valueCodeableConcept | `code` LOINC `1887-9` "Appearance of amniotic fluid"<br>`value` [Amniotic Fluid Characteristic](ValueSet-amniotic-fluid-characteristic-vs.html) | Amniotic fluid clear (`168090003`) |
| Naslli anamnez (ona) | Наследственный анамнез (мать) | FamilyMemberHistory.condition.code | `relationship` v3-RoleCode `MTH` "mother"<br>`code` ICD-10 | `E14.9` "Unspecified diabetes mellitus : Without complications" |
| Naslli anamnez (ota) | Наследственный анамнез (отец) | FamilyMemberHistory.condition.code | `relationship` v3-RoleCode `FTH` "father"<br>`code` ICD-10 | `J45.9` "Asthma, unspecified" |

---

### 2. Tug'ruq

Bo'lim kodi: LOINC `57075-4` "Newborn delivery information".

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Tug'ilgan bo'yi | Рост при рождении | Observation.valueQuantity | `code` LOINC `89269-5` "Body height Measured --at birth" | 51 cm |
| Tug'ruq o'z vaqtidami | Своевременность родов | Observation.valueCodeableConcept | `code` [Form 111 General Observation Code](ValueSet-form111-general-observation-code-vs.html) `chr-0035-00015` "Type of delivery (by term)"<br>`value` [Previous Delivery Term](ValueSet-form111-previous-delivery-term-vs.html): SNOMED CT `21243004` "Term birth of newborn" yoki `367494004` "Premature birth of newborn" | Term birth of newborn (`21243004`) |
| Chaqaloqning muddat holati | Срок рождения новорождённого | Observation.valueCodeableConcept | `code` [Newborn Maturity Assessment](ValueSet-newborn-maturity-assessment-code-vs.html) `chr-0126-0001` "Newborn term status assessment"<br>`value` [Newborn Term Status](ValueSet-newborn-term-status-vs.html) (SNOMED CT) | Term infant (`57891003`) |
| Hayotiylik natijasi | Исход плода | Observation.valueCodeableConcept | `code` [Form 111 General Observation Code](ValueSet-form111-general-observation-code-vs.html) `chr-0035-00013` "Live/stillbirth status"<br>`value` [Newborn Birth Condition](ValueSet-form111-newborn-birth-condition-vs.html): SNOMED CT `281050002` "Livebirth", `713202001` "Antepartum stillbirth" yoki `237362003` "Fetal intrapartum death" | Livebirth (`281050002`); o'lik tug'ilish: [antenatal](Bundle-example-form-097-antepartum-stillbirth.html) va [intranatal](Bundle-example-form-097-intrapartum-stillbirth.html) misollarga qarang |
| Chaqaloq qon guruhi | Группа крови новорождённого | Observation.valueCodeableConcept | `code` LOINC `883-9` "ABO group [Type] in Blood"<br>`value` [Blood Group](https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs) | Blood group A (`112144000`) |
| Chaqaloq rezus-omili | Резус-фактор новорождённого | Observation.valueCodeableConcept | `code` LOINC `14908-8` "Rh [Type] in Blood from Newborn"<br>`value` [Blood Rh](https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs) | RhD positive (`165747007`) |
| Bosh aylanasi | Окружность головы | Observation.valueQuantity | `code` LOINC `9843-4` "Head Occipital-frontal circumference" | 34 cm |
| Ko'krak aylanasi | Окружность груди | Observation.valueQuantity | `code` SNOMED CT `248366000` "Chest circumference" | 33 cm |
| Nafas olish belgisi | Признак дыхания | Observation.valueBoolean | `code` [Newborn Signs of Life](ValueSet-newborn-signs-of-life-vs.html) `chr-0127-0001` "Presence of respiration" | true |
| Yurak urishi belgisi | Признак сердцебиения | Observation.valueBoolean | `code` [Newborn Signs of Life](ValueSet-newborn-signs-of-life-vs.html) `chr-0127-0002` "Presence of heartbeat" | true |
| Kindik tomirlari pulsatsiyasi | Пульсация пуповины | Observation.valueBoolean | `code` [Newborn Signs of Life](ValueSet-newborn-signs-of-life-vs.html) `chr-0127-0003` "Presence of umbilical cord pulsation" | true |
| Ixtiyorsiz mushak qisqarishi | Непроизвольное сокращение мышц | Observation.valueBoolean | `code` [Newborn Signs of Life](ValueSet-newborn-signs-of-life-vs.html) `chr-0127-0004` "Presence of involuntary muscle movement" | true |
| Gonoblennoreya profilaktikasi | Профилактика гонобленореи | Procedure.code; occurrenceDateTime; note | [Newborn Eye Prophylaxis Code](ValueSet-newborn-eye-prophylaxis-code-vs.html) `chr-0085-0001` "Neonatal ocular prophylaxis against gonococcal ophthalmia" | 2026-06-01T14:40:00+05:00 |
| Apgar bali (1-daqiqa) | Оценка по Апгар (1 мин) | Observation.valueInteger | `code` LOINC `9272-6` "1 minute Apgar Score" | 8 |
| Apgar bali (5-daqiqa) | Оценка по Апгар (5 мин) | Yuborilmaydi | DMED faqat 1-daqiqadagi umumiy balni yuboradi. 5-daqiqadagi balni va DMED'da yo'q Apgar komponentlarini yubormang | - |
| Jismoniy yetuklik (Ballard) | Физическая зрелость (Баллард) | Observation.component.valueCodeableConcept | `code` [Newborn Maturity Assessment](ValueSet-newborn-maturity-assessment-code-vs.html) `chr-0126-0007` "Newborn physical maturity assessment"<br>`value` Ballard ValueSet'lari, masalan [Skin](ValueSet-ballard-skin-maturity-vs.html) va [Lanugo](ValueSet-ballard-lanugo-maturity-vs.html) | 1: smooth pink, visible veins |
| Neyromushak yetuklik (Ballard) | Нейромышечная зрелость (Баллард) | Observation.valueCodeableConcept + component | `code` [Newborn Maturity Assessment](ValueSet-newborn-maturity-assessment-code-vs.html) `chr-0126-0010` "Newborn neuromuscular maturity assessment"<br>`value` [Ballard Neuromuscular Score](ValueSet-ballard-neuromuscular-score-vs.html)<br>`component.code` [Form 097 Observation Codes](ValueSet-form-097-observation-code-vs.html) `ballard-square-window` "Square window (wrist)", `ballard-arm-recoil`, `ballard-popliteal-angle` | `chr-0118-0003` |

---

### 3. Yangi tug'ilgan chaqaloqning birlamchi ko'rigi

Bo'lim kodi: LOINC `29545-1` "Physical findings note".

Ha/yo'q topilmalari HL7 [v2-0532](https://terminology.hl7.org/CodeSystem-v2-0532.html) `Y` "Yes" yoki `N` "No" bilan kodlanadi. SNOMED CT'da aniq tushuncha bo'lsa, ValueSet lokal kod o'rniga undan foydalanadi; o'zbekcha va ruscha nomlari [Form 097 SNOMED CT Displays](CodeSystem-form-097-snomed-supplement-cs.html)da keltirilgan.

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Umumiy ko'rinishi | Общий вид новорождённого | Observation.valueCodeableConcept | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0001` "General appearance of newborn"<br>`value` [Satisfactory Status](ValueSet-satisfactory-status-vs.html) | Patient's condition satisfactory (`162669003`) |
| Teri rangi | Цвет кожных покровов | Observation.valueCodeableConcept | `code` LOINC `39107-8` "Color of Skin"<br>`value` [Newborn Skin Color Detailed](ValueSet-newborn-skin-color-detailed-vs.html) | Pink skin (`304230005`) |
| Sianoz mavjudligi | Наличие цианоза | Observation.valueBoolean | `code` SNOMED CT `3415004` "Cyanosis" | false |
| Kindik qoldig'i holati | Состояние остатка пуповины | Observation.valueCodeableConcept | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0004` "Umbilical stump status"<br>`value` [Satisfactory Status](ValueSet-satisfactory-status-vs.html) | Patient's condition satisfactory (`162669003`) |
| Nevrologik holat | Неврологический статус | Observation.valueCodeableConcept | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0014` "Neurological status"<br>`value` [Normal/Abnormal Status](ValueSet-normal-abnormal-status-vs.html) | Normal (`17621005`) |
| Kichik liqildoq o'lchami | Размер малого родничка | Observation.valueQuantity | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0019` "Fontanelle size" | 1 cm |
| Katta liqildoq o'lchami | Размер большого родничка | Observation.valueQuantity | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0019` "Fontanelle size" | 2.5 cm |
| Ko'zlar holati | Положение глаз | Observation.valueString | `code` [Form 097 Observation Codes](ValueSet-form-097-observation-code-vs.html) `eye-position` "Eye position" | Symmetric, no deviation or nystagmus |
| Ko'z shakli | Форма глаз | Observation.valueCodeableConcept | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0013` "Eye shape"<br>`value` [Eyelid Shape](ValueSet-eyelid-shape-vs.html) | `chr-0097-0001` |
| Nafas olish sur'ati | Частота дыхания | Observation.valueQuantity | `code` LOINC `9279-1` "Respiratory rate" | 40 /min |
| Yurak urish sur'ati | Частота сердечных сокращений | Observation.valueQuantity | `code` LOINC `8867-4` "Heart rate" | 140 /min |
| Silverman shkalasi | Шкала Сильвермана | Observation.valueInteger + component | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0034` "Total Silverman respiratory score"<br>`component.code` [Form 097 Observation Codes](ValueSet-form-097-observation-code-vs.html) `silverman-severity` "Silverman respiratory distress severity"<br>`value` [Silverman Respiratory Severity](ValueSet-silverman-respiratory-severity-vs.html) | 0 (`chr-0100-0001`) |
| Yurak chegaralari, shovqinlar, ritmi | Границы, шумы, ритм сердца | Observation.component | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0029` "Cardiac examination"<br>`component.code` [Cardiac Examination Aspect](ValueSet-cardiac-examination-aspect-vs.html)<br>`value` [Normal/Abnormal Status](ValueSet-normal-abnormal-status-vs.html) | Normal (`17621005`) |
| Qorin holati | Состояние живота | Observation.valueCodeableConcept | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0028` "Abdominal condition"<br>`value` [Normal/Abnormal Status](ValueSet-normal-abnormal-status-vs.html) | Normal (`17621005`) |
| Jigar o'lchami | Размер печени | Observation.valueCodeableConcept | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0023` "Liver size"<br>`value` [Normal/Abnormal Status](ValueSet-normal-abnormal-status-vs.html) | Normal (`17621005`) |
| Taloq o'lchami | Размер селезёнки | Observation.valueCodeableConcept | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0024` "Spleen condition"<br>`value` [Normal/Abnormal Status](ValueSet-normal-abnormal-status-vs.html) | Normal (`17621005`) |
| Tashqi jinsiy a'zolar holati | Состояние наружных половых органов | Observation.valueCodeableConcept | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0015` "External genitalia condition"<br>`value` [External Genital Pattern](ValueSet-external-genital-pattern-vs.html) | `chr-0103-0001` |
| Chanoq-son bo'g'imlari holati | Состояние тазобедренных суставов | Observation.valueCodeableConcept | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0025` "Hip joint condition"<br>`value` [Normal/Abnormal Status](ValueSet-normal-abnormal-status-vs.html) | Normal (`17621005`) |
| Ko'rik xulosasi | Заключение осмотра | Observation.valueString | `code` [Newborn Physical Examination](ValueSet-newborn-physical-examination-code-vs.html) `chr-0123-0006` "Newborn examination conclusion" | Healthy term newborn; no abnormalities detected on initial examination |
| Taxminiy tashxis | Предварительный диагноз | Condition.code | ICD-10 | `P59.9` "Neonatal jaundice, unspecified" |

---

### 4. Oziqlantirish va teri-teriga kontakt

Bo'lim kodi: LOINC `61144-2` "Diet and nutrition Narrative".

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Teri-teriga kontakt vaqti | Время контакта кожа к коже | Observation.valueQuantity | `code` [Newborn Birth and Anthropometry](ValueSet-newborn-birth-and-anthropometry-code-vs.html) `chr-0122-0004` "Skin-to-skin contact between mother and newborn" | 5 min |
| Teri-teriga kontakt davomiyligi | Продолжительность контакта кожа к коже | Observation.valueQuantity | `code` [Newborn Birth and Anthropometry](ValueSet-newborn-birth-and-anthropometry-code-vs.html) `chr-0122-0003` "Duration of skin-to-skin contact" | 40 min |
| Ko'krakka berilgan vaqt | Время первого прикладывания к груди | Observation.valueCodeableConcept | `code` [Newborn Birth and Anthropometry](ValueSet-newborn-birth-and-anthropometry-code-vs.html) `chr-0122-0001` "Time to first breastfeeding"<br>`value` [Breastfeeding Initiation Time](ValueSet-breastfeeding-initiation-time-vs.html) | Within 30-60 minutes (`chr-0105-0001`) |

---

### 5. Chaqaloqni kundalik kuzatish (0-6 kunlar)

Bo'lim kodi: LOINC `8716-3` "Vital signs note".

Har bir kun [Newborn Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html) `daily-observation-panel` "Daily newborn observation panel" kodli bitta Observation bo'lib, har bir maydon uchun bitta component bor.

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Teri | Кожа | Observation.component.valueString | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `106076001` "Skin finding" | Pink, clean, no rash |
| Ko'zlar, shilliq qavatlar | Глаза, слизистые оболочки | Observation.component.valueString | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `118235002` "Eye / vision finding" | Eyes clean, mucous membranes pink and moist |
| Nafas yetishmovchiligi | Дыхательная недостаточность | Observation.component.valueString | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `271825005` "Respiratory distress" | No signs of respiratory distress |
| Tana vazni | Масса тела | Observation.component.valueQuantity | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): LOINC `3141-9` "Body weight Measured" | 3200 g |
| Tana harorati | Температура тела | Observation.component.valueQuantity | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): LOINC `8310-5` "Body temperature" | 36.8 °C |
| Emizish turi | Тип вскармливания | Observation.component.valueCodeableConcept | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): LOINC `63895-7` "Breastfeeding status"<br>`value` [Infant Feeding Type](ValueSet-infant-feeding-type-vs.html) (SNOMED CT; sun'iy oziqlantirish lokal kod bo'lib qoladi) | Exclusively breastfed (`1145307003`) |
| Ovqatlanishni o'zlashtirish | Переносимость кормления | Observation.component.valueString | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): `chr-0125-0003` "Feeding tolerance" | Tolerating feeds well |
| Ich ketishi | Диарея | Observation.component.valueCodeableConcept | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `62315008` "Diarrhea"<br>`value` HL7 v2-0532 `Y` "Yes" / `N` "No" | No (`N`) |
| Siydik chiqarish chastotasi | Частота мочеиспускания | Observation.component.valueInteger | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `300471006` "Finding of frequency of urination" | 6 |
| Kindik ajralish vaqti | Время отделения пуповины | Observation.component.valueDateTime | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `772131003` "Umbilical cord stump separated" | 2026-06-01 |
| Kindik yarasi holati | Состояние пупочной ранки | Observation.component.valueString | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `249229001` "Finding of umbilical stump" | Clean and dry, no discharge |

---

### 6. Shifokorning kundalik ko'rigi (0-6 kunlar)

Bo'lim kodi: LOINC `8648-8` "Hospital course note".

Har bir kun [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0014` "Newborn daily review panel" kodli bitta Observation bo'lib, har bir maydon uchun bitta component bor.

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Umumiy holati | Общее состояние новорождённого | Observation.component.valueCodeableConcept | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0009` "General condition of newborn"<br>`value` SNOMED CT `162669003` "Patient's condition satisfactory" yoki `162667001` "Patient's condition poor", per the Form 111 [general condition ConceptMap](ConceptMap-dmed-form-111-general-condition-cm.html) | Patient's condition satisfactory (`162669003`) |
| Faollik darajasi | Уровень активности | Observation.component.valueCodeableConcept | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0013` "Activity level"<br>`value` [Newborn Activity Level](ValueSet-newborn-activity-level-vs.html) | `chr-0115-0002` |
| Reflekslar holati | Состояние рефлексов | Observation.component.valueCodeableConcept | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0004` "Reflex status"<br>`value` [Primitive Reflex Type](ValueSet-primitive-reflex-type-vs.html) | Sucking reflex (`45596005`) |
| Mushak tonusi | Мышечный тонус | Observation.component.valueCodeableConcept | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0005` "Muscle tone"<br>`value` [Muscle Tone Status](ValueSet-muscle-tone-status-vs.html) (SNOMED CT) | Normal tone in skeletal muscle (`827065006`) |
| Teri rangi | Цвет кожи | Observation.component.valueCodeableConcept | `code` LOINC `39107-8` "Color of Skin"<br>`value` [Newborn Skin Color Detailed](ValueSet-newborn-skin-color-detailed-vs.html) | Normal color (`chr-0117-0001`) |
| Nafas olish holati | Состояние дыхания | Observation.component.valueString | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0012` "Respiratory condition" | Breathing regular, no distress |
| Yurak-qon tomir tizimi holati | Состояние сердечно-сосудистой системы | Observation.component.valueString | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0010` "Cardiovascular system condition" | Heart sounds clear and rhythmic |
| Tana harorati | Температура тела | Observation.component.valueQuantity | `code` LOINC `8310-5` "Body temperature" | 37.0 °C |
| Qorin bo'shlig'i a'zolari holati | Состояние органов брюшной полости | Observation.component.valueString | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0002` "Abdominal organ condition" | Abdomen soft, not distended |
| Siydik va najas holati | Состояние мочеиспускания и стула | Observation.component.valueString | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0007` "Urination and stool status" | Urine and stool normal |
| Laborator tekshiruvlar | Лабораторные исследования | Observation.component.valueString | `code` LOINC `26436-6` "Laboratory studies (set)" | Complete blood count within normal limits |

---

### 7. Tana vazni dinamikasi

Bo'lim kodi: lokal [Form 097 section codes](ValueSet-form-097-section-vs.html) `weight-dynamics`.

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Tug'ilishdagi vazn | Вес при рождении | Observation.valueQuantity | `code` LOINC `8339-4` "Birth weight Measured" | 3200 g |
| Kunlik vazn (1-10 kun) | Ежедневный вес (день 1-10) | Observation.valueQuantity | `code` LOINC `3141-9` "Body weight Measured" + `29463-7` "Body weight" | 3100-3320 g |

---

### 8. Profilaktika va immunizatsiya

Bo'lim kodi: LOINC `11369-6` "History of Immunization note".

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Gemorragik sindrom profilaktikasi | Профилактика геморрагического синдрома | MedicationAdministration.medication → Medication.code | SNOMED CT `74226000` "Vitamin K and/or vitamin K derivative-containing product" | 1 mg |
| Gepatit B emlash | Вакцинация против гепатита B | Immunization.vaccineCode | CVX `08` "Hep B, adolescent or pediatric" | 0.5 mL |
| Sil (BCG) emlash | Вакцинация БЦЖ | Immunization.vaccineCode | CVX `19` "BCG" | 0.05 mL |

---

### 9. Skrining

Bo'lim kodi: lokal [Form 097 section codes](ValueSet-form-097-section-vs.html) `screening`.

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Audiologik skrining | Аудиологический скрининг | Observation.valueString | `code` [Newborn Care and Feeding](ValueSet-newborn-care-and-feeding-code-vs.html) `chr-0124-0003` "Neonatal audiological screening" | Pass |
| Tug'ma gipotireoz skriningi | Скрининг на врождённый гипотиреоз | Observation.valueString | `code` [Newborn Care and Feeding](ValueSet-newborn-care-and-feeding-code-vs.html) `chr-0124-0004` "Neonatal screening for congenital hypothyroidism" | Normal (negative) |

---

### 10. Chiqarish, o'tkazish yoki vafot

Bo'lim kodi: LOINC `8650-4` "Hospital discharge disposition note".

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Chiqarishdagi umumiy holati | Общее состояние при выписке | Observation.valueCodeableConcept | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0009` "General condition of newborn"<br>`value` SNOMED CT `162669003` "Patient's condition satisfactory" yoki `162667001` "Patient's condition poor", per the Form 111 [general condition ConceptMap](ConceptMap-dmed-form-111-general-condition-cm.html) | Patient's condition satisfactory (`162669003`) |
| Chiqarish tashxisi | Диагноз при выписке | Condition.code | ICD-10 | `Z38.0` "Singleton, born in hospital" |
| Tavsiyalar | Рекомендации | Observation.valueString | `code` [Form 097 Observation Codes](ValueSet-form-097-observation-code-vs.html) `discharge-recommendations` "Recommendations at discharge" | Routine follow-up with district pediatrician within 3 days of discharge |
| Hamshiradan onaga topshirish | Передача от медсестры матери | [Provenance](https://hl7.org/fhir/R5/provenance.html).agent | `performer` hamshira, `custodian` ona | - |
| Shifokor imzosi | Подпись врача | Provenance.signature | - | - |
| Muassasalar orasida o'tkazish | Перевод между учреждениями | Provenance.agent | `informant` hamshira, `custodian` qabul qiluvchi tashkilot | - |

---

### 11. Mas'ul shaxslar

Bo'lim kodi: lokal [Form 097 section codes](ValueSet-form-097-section-vs.html) `responsible-persons`.

| UZ | RU | FHIR yo'li | Kod | Qiymat misoli |
|----|----|------------|------|---------------|
| Davolovchi shifokor | Лечащий врач | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) | `code` [Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Vrach neonatolog (`2212.71`) |
| Hamshira | Медсестра | PractitionerRole | `code` [Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Yetakchi hamshira (`3221.1`) |

---

### Bundle tuzilmasi

097-shakl hujjati quyidagi Composition'ni o'z ichiga olgan FHIR Bundle sifatida tuzilgan: [Form097NewbornDevelopmentComposition](StructureDefinition-form-097-newborn-development-composition.html):

```
Bundle (document)
├── Composition (Form097NewbornDevelopmentComposition)
├── Patient (yangi tug'ilgan chaqaloq)
├── Patient[] (ona, ota)
├── RelatedPerson[] (ona, ota - chaqaloqning qonuniy vakillari sifatida)
├── Organization (tug'ruqxona)
├── Location (palata)
├── Encounter (chaqaloqning tug'ilishdan chiqarilishgacha bo'lishi; onaning tug'rug'i)
├── Practitioner[] / PractitionerRole[] (shifokor, hamshira)
├── Condition[] (homiladorlik asorati, tug'ruq jarohati, taxminiy va yakuniy tashxis)
├── Observation[] (antenatal anamnez, tug'ruq, Apgar, Ballard bo'yicha yetuklik, birlamchi ko'rik, oziqlantirish, kundalik kuzatuv, kundalik ko'rik, vazn dinamikasi, skrining, chiqarish)
├── Procedure[] (tug'ruq bilan bog'liq muolajalar, gonoblennoreya profilaktikasi)
├── Medication[] / MedicationAdministration[] (gemorragik sindrom profilaktikasi)
├── Immunization[] (gepatit B, BCG)
├── FamilyMemberHistory[] (ona va otaning naslli anamnezi)
└── Provenance[] (hamshiradan onaga topshirish, shifokor imzosi, muassasalar orasida o'tkazish, tug'ilganlik haqidagi guvohnoma)
```
