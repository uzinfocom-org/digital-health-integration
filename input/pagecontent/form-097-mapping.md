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

### Form 097 - Newborn Development Medical Record

This page documents the mapping between Form 097 (Yangi tug'ilgan chaqaloq rivojlanishining tibbiy kartasi) fields and FHIR resources.

---

### Overview

Form 097 records a newborn's stay in the maternity hospital from birth to discharge, transfer or death: the mother's antenatal history, the birth event, the first newborn examination, feeding, daily observation and physician review, weight dynamics, prophylaxis and immunization, screening, and discharge. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 097 Newborn Development Composition](StructureDefinition-form-097-newborn-development-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

Each of the 11 sections of the Composition carries its own `section.code` (LOINC where a suitable concept exists, otherwise a local [Form 097 section codes](ValueSet-form-097-section-vs.html) code) and lists the resources belonging to that part of the form.

Delivery facts that Form 096 and Form 097 share keep the mother as their subject and the mother's delivery encounter, so the two documents describe the same delivery with the same business identifiers.

For a complete reference instance, see the [Form 097 newborn development example](Bundle-example-form-097-newborn-development.html).

---

### Field Mapping

### Form 097 Newborn Development Medical Record - FHIR Mapping

---

### Document Information

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Hujjat instansiyasi UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:997f9511-f30c-52e5-b827-557766550097 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 097 |
| Hujjat holati | Статус документа | Composition.status | `preliminary` while the newborn is in the maternity hospital, `final` at discharge, transfer or death | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0017` "Newborn development medical record", plus LOINC `18842-5` "Discharge summary" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" and [Document Category](ValueSet-document-category-vs.html) `form-097` "Newborn development medical record" | - |
| Yangi tug'ilgan chaqaloq | Новорождённый | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Karimov Aziz Shavkatovich |
| Tug'ruqxonada bo'lish davri | Пребывание в родильном доме | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | 2026-06-01 - 2026-06-07 |
| Davolovchi shifokor | Лечащий врач | Encounter.participant.actor | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) | Attending neonatologist |
| Hujjat shakllantirilgan sana | Дата составления документа | Composition.date | - | 2026-06-07T12:00:00+05:00 |
| Hujjatni saqlagan foydalanuvchi | Пользователь, сохранивший документ | Composition.author | PractitionerRole, or [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) when the role is not known | Nurse |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 097 - Newborn Development Medical Record |

---

### 1. Mother information and antenatal history

Section code: LOINC `57073-9` "Prenatal records".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Onaning JShShIRi | ПИНФЛ матери | Patient.identifier[nationalId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 31234567890123 |
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
| Amniotik suyuqlik ko'rinishi | Вид околоплодных вод | Observation.valueCodeableConcept | `code` LOINC `1887-9` "Appearance of amniotic fluid"<br>`value` [Amniotic Fluid Characteristic](ValueSet-amniotic-fluid-characteristic-vs.html) | Amniotic fluid - clear (`168090003`) |
| Naslli anamnez (ona) | Наследственный анамнез (мать) | FamilyMemberHistory.condition.code | `relationship` v3-RoleCode `MTH` "mother"<br>`code` ICD-10 | `E14.9` "Unspecified diabetes mellitus : Without complications" |
| Naslli anamnez (ota) | Наследственный анамнез (отец) | FamilyMemberHistory.condition.code | `relationship` v3-RoleCode `FTH` "father"<br>`code` ICD-10 | `J45.9` "Asthma, unspecified" |

---

### 2. Birth event

Section code: LOINC `57075-4` "Newborn delivery information".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Tug'ilgan bo'yi | Рост при рождении | Observation.valueQuantity | `code` LOINC `89269-5` "Body height Measured --at birth" | 51 cm |
| Tug'ruq o'z vaqtidami | Своевременность родов | Observation.valueCodeableConcept | `code` [Form 111 General Observation Code](ValueSet-form111-general-observation-code-vs.html) `chr-0035-00015` "Type of delivery (by term)"<br>`value` [Previous Delivery Term](ValueSet-form111-previous-delivery-term-vs.html): SNOMED CT `21243004` "Term birth of newborn" or `367494004` "Premature birth of newborn" | Term birth of newborn (`21243004`) |
| Chaqaloqning muddat holati | Срок рождения новорождённого | Observation.valueCodeableConcept | `code` [Newborn Maturity Assessment](ValueSet-newborn-maturity-assessment-code-vs.html) `chr-0126-0001` "Newborn term status assessment"<br>`value` [Newborn Term Status](ValueSet-newborn-term-status-vs.html) (SNOMED CT) | Term infant (`57891003`) |
| Hayotiylik natijasi | Исход плода | Observation.valueCodeableConcept | `code` [Form 111 General Observation Code](ValueSet-form111-general-observation-code-vs.html) `chr-0035-00013` "Live/stillbirth status"<br>`value` [Newborn Birth Condition](ValueSet-form111-newborn-birth-condition-vs.html): SNOMED CT `281050002` "Livebirth", `713202001` "Antepartum stillbirth" or `237362003` "Fetal intrapartum death" | Livebirth (`281050002`); stillbirths: see the [antepartum](Bundle-example-form-097-antepartum-stillbirth.html) and [intrapartum](Bundle-example-form-097-intrapartum-stillbirth.html) examples |
| Chaqaloq qon guruhi | Группа крови новорождённого | Observation.valueCodeableConcept | `code` LOINC `883-9` "ABO group [Type] in Blood"<br>`value` [Blood Group](https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs) | Blood group A (`112144000`) |
| Chaqaloq rezus-omili | Резус-фактор новорождённого | Observation.valueCodeableConcept | `code` LOINC `14908-8` "Rh [Type] in Blood from Newborn"<br>`value` [Blood Rh](https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs) | RhD positive (`165747007`) |
| Bosh aylanasi | Окружность головы | Observation.valueQuantity | `code` LOINC `9843-4` "Head Occipital-frontal circumference" | 34 cm |
| Ko'krak aylanasi | Окружность груди | Observation.valueQuantity | `code` [Newborn Birth And Anthropometry](ValueSet-newborn-birth-and-anthropometry-code-vs.html): SNOMED CT `248366000` "Chest circumference" | 33 cm |
| Nafas olish belgisi | Признак дыхания | Observation.valueBoolean | `code` [Newborn Signs of Life](ValueSet-newborn-signs-of-life-vs.html) `chr-0127-0001` "Presence of respiration" | true |
| Yurak urishi belgisi | Признак сердцебиения | Observation.valueBoolean | `code` [Newborn Signs of Life](ValueSet-newborn-signs-of-life-vs.html) `chr-0127-0002` "Presence of heartbeat" | true |
| Kindik tomirlari pulsatsiyasi | Пульсация пуповины | Observation.valueBoolean | `code` [Newborn Signs of Life](ValueSet-newborn-signs-of-life-vs.html) `chr-0127-0003` "Presence of umbilical cord pulsation" | true |
| Ixtiyorsiz mushak qisqarishi | Непроизвольное сокращение мышц | Observation.valueBoolean | `code` [Newborn Signs of Life](ValueSet-newborn-signs-of-life-vs.html) `chr-0127-0004` "Presence of involuntary muscle movement" | true |
| Gonoblennoreya profilaktikasi | Профилактика гонобленореи | Procedure.code; occurrenceDateTime; note | [Newborn Eye Prophylaxis Code](ValueSet-newborn-eye-prophylaxis-code-vs.html) `chr-0085-0001` "Neonatal ocular prophylaxis against gonococcal ophthalmia" | 2026-06-01T14:40:00+05:00 |
| Apgar bali (1-daqiqa) | Оценка по Апгар (1 мин) | Observation.valueInteger | `code` LOINC `9272-6` "1 minute Apgar Score" | 8 |
| Apgar bali (5-daqiqa) | Оценка по Апгар (5 мин) | Not sent | DMED sends only the 1-minute total. Do not send a 5-minute score or Apgar components it does not have | - |
| Jismoniy yetuklik (Ballard) | Физическая зрелость (Баллард) | Observation.component.valueCodeableConcept | `code` [Newborn Maturity Assessment](ValueSet-newborn-maturity-assessment-code-vs.html) `chr-0126-0007` "Newborn physical maturity assessment"<br>`value` the Ballard ValueSets, such as [Skin](ValueSet-ballard-skin-maturity-vs.html) and [Lanugo](ValueSet-ballard-lanugo-maturity-vs.html) | 1: smooth pink, visible veins |
| Neyromushak yetuklik (Ballard) | Нейромышечная зрелость (Баллард) | Observation.valueCodeableConcept + component | `code` [Newborn Maturity Assessment](ValueSet-newborn-maturity-assessment-code-vs.html) `chr-0126-0010` "Newborn neuromuscular maturity assessment"<br>`value` [Ballard Neuromuscular Score](ValueSet-ballard-neuromuscular-score-vs.html)<br>`component.code` [Form 097 Observation Codes](ValueSet-form-097-observation-code-vs.html) `ballard-square-window` "Square window (wrist)", `ballard-arm-recoil`, `ballard-popliteal-angle` | `chr-0118-0003` |

---

### 3. First newborn examination

Section code: LOINC `29545-1` "Physical findings note".

Yes/no findings use HL7 [v2-0532](https://terminology.hl7.org/CodeSystem-v2-0532.html) `Y` "Yes" or `N` "No". Where SNOMED CT has an exact concept, the ValueSets use it in place of a local code; [Form 097 SNOMED CT Displays](CodeSystem-form-097-snomed-supplement-cs.html) gives their Uzbek and Russian wording.

| UZ | RU | FHIR Path | Code | Example Value |
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

### 4. Feeding and skin-to-skin contact

Section code: LOINC `61144-2` "Diet and nutrition Narrative".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Teri-teriga kontakt vaqti | Время контакта кожа к коже | Observation.valueQuantity | `code` [Newborn Birth and Anthropometry](ValueSet-newborn-birth-and-anthropometry-code-vs.html) `chr-0122-0004` "Skin-to-skin contact between mother and newborn" | 5 min |
| Teri-teriga kontakt davomiyligi | Продолжительность контакта кожа к коже | Observation.valueQuantity | `code` [Newborn Birth and Anthropometry](ValueSet-newborn-birth-and-anthropometry-code-vs.html) `chr-0122-0003` "Duration of skin-to-skin contact" | 40 min |
| Ko'krakka berilgan vaqt | Время первого прикладывания к груди | Observation.valueCodeableConcept | `code` [Newborn Birth and Anthropometry](ValueSet-newborn-birth-and-anthropometry-code-vs.html) `chr-0122-0001` "Time to first breastfeeding"<br>`value` [Breastfeeding Initiation Time](ValueSet-breastfeeding-initiation-time-vs.html) | Within 30-60 minutes (`chr-0105-0001`) |

---

### 5. Daily newborn observation (days 0-6)

Section code: LOINC `8716-3` "Vital signs note".

Each day is one Observation coded [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html) `daily-observation-panel` "Daily newborn observation panel", with one component per field.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Teri | Кожа | Observation.component.valueString | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `106076001` "Skin finding" | Pink, clean, no rash |
| Ko'zlar, shilliq qavatlar | Глаза, слизистые оболочки | Observation.component.valueString | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `118235002` "Eye / vision finding" | Eyes clean, mucous membranes pink and moist |
| Nafas yetishmovchiligi | Дыхательная недостаточность | Observation.component.valueString | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `271825005` "Respiratory distress" | No signs of respiratory distress |
| Tana vazni | Масса тела | Observation.component.valueQuantity | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): LOINC `3141-9` "Body weight Measured" | 3200 g |
| Tana harorati | Температура тела | Observation.component.valueQuantity | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): LOINC `8310-5` "Body temperature" | 36.8 °C |
| Emizish turi | Тип вскармливания | Observation.component.valueCodeableConcept | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): LOINC `63895-7` "Breastfeeding status"<br>`value` [Infant Feeding Type](ValueSet-infant-feeding-type-vs.html) (SNOMED CT; formula feeding stays local) | Exclusively breastfed (`1145307003`) |
| Ovqatlanishni o'zlashtirish | Переносимость кормления | Observation.component.valueString | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): `chr-0125-0003` "Feeding tolerance" | Tolerating feeds well |
| Ich ketishi | Диарея | Observation.component.valueCodeableConcept | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `62315008` "Diarrhea"<br>`value` HL7 v2-0532 `Y` "Yes" / `N` "No" | No (`N`) |
| Siydik chiqarish chastotasi | Частота мочеиспускания | Observation.component.valueInteger | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `300471006` "Finding of frequency of urination" | 6 |
| Kindik ajralish vaqti | Время отделения пуповины | Observation.component.valueDateTime | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `772131003` "Umbilical cord stump separated" | 2026-06-01 |
| Kindik yarasi holati | Состояние пупочной ранки | Observation.component.valueString | `code` [Daily Observation Component](ValueSet-newborn-daily-observation-component-vs.html): SNOMED CT `249229001` "Finding of umbilical stump" | Clean and dry, no discharge |

---

### 6. Physician's daily review (days 0-6)

Section code: LOINC `8648-8` "Hospital course note".

Each day is one Observation coded [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0014` "Newborn daily review panel", with one component per field.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Umumiy holati | Общее состояние новорождённого | Observation.component.valueCodeableConcept | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0009` "General condition of newborn"<br>`value` SNOMED CT `162669003` "Patient's condition satisfactory" or `162667001` "Patient's condition poor", per the Form 111 [general condition ConceptMap](ConceptMap-dmed-form-111-general-condition-cm.html) | Patient's condition satisfactory (`162669003`) |
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

### 7. Weight dynamics

Section code: local [Form 097 section codes](ValueSet-form-097-section-vs.html) `weight-dynamics`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Tug'ilishdagi vazn | Вес при рождении | Observation.valueQuantity | `code` LOINC `8339-4` "Birth weight Measured" | 3200 g |
| Kunlik vazn (1-10 kun) | Ежедневный вес (день 1-10) | Observation.valueQuantity | `code` LOINC `3141-9` "Body weight Measured" + `29463-7` "Body weight" | 3050-3200 g |

---

### 8. Prophylaxis and immunization

Section code: LOINC `11369-6` "History of Immunization note".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Gemorragik sindrom profilaktikasi | Профилактика геморрагического синдрома | MedicationAdministration.medication → Medication.code | [UZ Core Medication Classification](https://dhp.uz/fhir/core/en/ValueSet-medication-classification-vs.html): INN `008052` "phytomenadione" | 1 mg |
| Gepatit B emlash | Вакцинация против гепатита B | Immunization.vaccineCode | [UZ Core Vaccine Code](https://dhp.uz/fhir/core/en/ValueSet-vaccine-code-vs.html): CVX `08` "Hep B, adolescent or pediatric" | 0.5 mL |
| Sil (BCG) emlash | Вакцинация БЦЖ | Immunization.vaccineCode | [UZ Core Vaccine Code](https://dhp.uz/fhir/core/en/ValueSet-vaccine-code-vs.html): CVX `19` "BCG" | 0.05 mL |

---

### 9. Screening

Section code: local [Form 097 section codes](ValueSet-form-097-section-vs.html) `screening`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Audiologik skrining | Аудиологический скрининг | Observation.valueString | `code` [Newborn Care and Feeding](ValueSet-newborn-care-and-feeding-code-vs.html) `chr-0124-0003` "Neonatal audiological screening" | Pass |
| Tug'ma gipotireoz skriningi | Скрининг на врождённый гипотиреоз | Observation.valueString | `code` [Newborn Care and Feeding](ValueSet-newborn-care-and-feeding-code-vs.html) `chr-0124-0004` "Neonatal screening for congenital hypothyroidism" | Normal (negative) |

---

### 10. Discharge, transfer or death

Section code: LOINC `8650-4` "Hospital discharge disposition note".

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Chiqarishdagi umumiy holati | Общее состояние при выписке | Observation.valueCodeableConcept | `code` [Newborn Daily Monitoring](ValueSet-newborn-daily-monitoring-code-vs.html) `chr-0125-0009` "General condition of newborn"<br>`value` SNOMED CT `162669003` "Patient's condition satisfactory" or `162667001` "Patient's condition poor", per the Form 111 [general condition ConceptMap](ConceptMap-dmed-form-111-general-condition-cm.html) | Patient's condition satisfactory (`162669003`) |
| Chiqarish tashxisi | Диагноз при выписке | Condition.code | ICD-10 | `Z38.0` "Singleton, born in hospital" |
| Tavsiyalar | Рекомендации | Observation.valueString | `code` [Form 097 Observation Codes](ValueSet-form-097-observation-code-vs.html) `discharge-recommendations` "Recommendations at discharge" | Routine follow-up with district pediatrician within 3 days of discharge |
| Hamshiradan onaga topshirish | Передача от медсестры матери | [Provenance](https://hl7.org/fhir/R5/provenance.html).agent | `performer` nurse, `custodian` mother | - |
| Shifokor imzosi | Подпись врача | Provenance.signature | - | - |
| Muassasalar orasida o'tkazish | Перевод между учреждениями | Provenance.agent | `informant` nurse, `custodian` receiving organization | - |

---

### 11. Responsible persons

Section code: local [Form 097 section codes](ValueSet-form-097-section-vs.html) `responsible-persons`.

| UZ | RU | FHIR Path | Code | Example Value |
|----|----|------------|------|---------------|
| Davolovchi shifokor | Лечащий врач | PractitionerRole | `code` [Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Vrach neonatolog (`2212.71`) |
| Hamshira | Медсестра | PractitionerRole | `code` [Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Yetakchi hamshira (`3221.1`) |

---

### Bundle structure

The Form 097 document is structured as a FHIR Bundle containing a [Form097NewbornDevelopmentComposition](StructureDefinition-form-097-newborn-development-composition.html) Composition:

```
Bundle (document)
├── Composition (Form097NewbornDevelopmentComposition)
├── Patient (newborn)
├── Patient[] (mother, father)
├── RelatedPerson[] (mother, father - as legal relations to newborn)
├── Organization (maternity hospital)
├── Location (ward)
├── Encounter (newborn's stay, birth to discharge; mother's delivery encounter)
├── Practitioner[] / PractitionerRole[] (physician, nurse)
├── Condition[] (pregnancy complication, birth trauma, provisional and discharge diagnosis)
├── Observation[] (antenatal history, birth event, Apgar, Ballard maturity, first exam, feeding, daily observation, daily review, weight dynamics, screening, discharge)
├── Procedure[] (labour-related procedures, eye prophylaxis)
├── Medication[] / MedicationAdministration[] (haemorrhagic disease prophylaxis)
├── Immunization[] (hepatitis B, BCG)
├── FamilyMemberHistory[] (mother's and father's hereditary history)
└── Provenance[] (nurse-to-mother handover, physician signature, transfer between facilities, birth certificate)
```
