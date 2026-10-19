### Form 097 - Newborn Development Medical Record

This page documents the mapping between Form 097 (Newborn Development Medical Record) fields and FHIR resources.

---

### Overview

Form 097 captures the full clinical record of a newborn from birth through discharge, including maternal/antenatal history, the birth event, first newborn examination, daily observation and physician review, weight dynamics, prophylaxis and immunization, screening, and discharge. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 097 Newborn Development Composition](StructureDefinition-form-097-newborn-development-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles. Newborn maturity scoring (Apgar, Dubowitz-Ballard) and daily observation fields not covered by LOINC/SNOMED use local CodeSystems, pending publication of the official CHR (Common Health Registry) terminology.

For a complete reference instance, see the [Form 097 newborn development example](Bundle-example-form-097-newborn-development.html).

---

### Field Mapping

# UZ-097 Newborn Development Medical Record - FHIR Mapping

---

### Mother Information and Antenatal History

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Onaning JShShIRi | ПИНФЛ матери | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[nationalId].value | NI | 31234567890123 |
| Onaning F.I.Sh. | Ф.И.О. матери | Patient.name.text | - | Karimova Dilnoza Farkhodovna |
| Onaning tug'ilgan sanasi | Дата рождения матери | Patient.birthDate | - | 1992-03-12 |
| Oilaviy holati | Семейное положение | Patient.maritalStatus | v3-MaritalStatus | Married |
| Manzil | Адрес | Patient.address | - | 12 Amir Temur ko'chasi, Toshkent |
| Millati | Национальность | Patient.extension[nationality] | Local code | UZBEK |
| Ish joyi/kasbi | Место работы/профессия | Observation.valueCodeableConcept | SNOMED CT `224406003` "Details relating to place of work and employer" + Local profession code | Lecturer |
| Onaning qon guruhi | Группа крови матери | Observation.code `90905-1` + valueCodeableConcept | LOINC `90905-1`; value bound to `abo-blood-group-vs` (SNOMED CT) | Blood group A Rh(D) negative |
| Onaning rezus-omili | Резус-фактор матери | Observation.code `54416-3` + valueCodeableConcept | LOINC `54416-3`; value bound to `rh-factor-vs` (SNOMED CT) | Rh negative |
| Otaning qon guruhi | Группа крови отца | Observation.code `90906-9` + valueCodeableConcept | LOINC `90906-9`; value bound to `abo-blood-group-vs` (SNOMED CT) | Blood group A |
| Homiladorlik soni | Число беременностей | Observation.valueInteger | LOINC `11996-6` "Pregnancies" | 4 |
| Tug'ruq soni | Число родов | Observation.valueInteger | LOINC `11977-6` "Parity" | 2 |
| Homiladorlik muddati | Срок беременности | Observation.valueQuantity | LOINC `11884-4` "Gestational age Estimated" | 40 weeks |
| Homiladorlik asorati | Осложнение беременности | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | O24.4 |
| Amniotik suyuqlik ko'rinishi | Вид околоплодных вод | Observation.code `1887-9` + valueCodeableConcept | LOINC `1887-9` "Appearance of amniotic fluid"; value bound to `amniotic-fluid-characteristic-vs` (SNOMED CT `168090003` + local `chr-0084-*`) | Transparent |
| Naslli anamnez (ona) | Наследственный анамнез (мать) | FamilyMemberHistory.condition.code | - | Diabetes mellitus |
| Naslli anamnez (ota) | Наследственный анамнез (отец) | FamilyMemberHistory.condition.code | SNOMED CT | Bronchospasm |

---

### Birth Event

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Tug'ilgan bo'yi | Рост при рождении | Observation.valueQuantity | LOINC `89269-5` "Body height Measured --at birth" | 51 cm |
| Tug'ruq o'z vaqtidami | Своевременность родов | Observation.valueCodeableConcept | Local code | Timely delivery |
| Chaqaloqning muddat holati | Срок рождения новорождённого | Observation.valueCodeableConcept | Local code | Term |
| Hayotiylik natijasi | Исход плода | Observation.valueCodeableConcept | value bound to `newborn-vital-status-vs` (SNOMED CT `281050002` / `276506001`) | Alive |
| Chaqaloq qon guruhi | Группа крови новорождённого | Observation.code `883-9` + valueCodeableConcept | LOINC `883-9`; value bound to `abo-blood-group-vs` (SNOMED CT) | Group II (A) |
| Chaqaloq rezus-omili | Резус-фактор новорождённого | Observation.code `14908-8` + valueCodeableConcept | LOINC `14908-8`; value bound to `rh-factor-vs` (SNOMED CT) | Rh positive |
| Bosh aylanasi | Окружность головы | Observation.valueQuantity | LOINC `9843-4` "Head Occipital-frontal circumference" | 34 cm |
| Ko'krak aylanasi | Окружность груди | Observation.valueQuantity | Local code `chr-0122-0005` "Chest circumference" (no exact active LOINC/SNOMED concept) | 33 cm |
| Nafas olish belgisi | Признак дыхания | Observation.valueBoolean | Local code `chr-0127-0001` (no active SNOMED CT concept) | true |
| Yurak urishi belgisi | Признак сердцебиения | Observation.valueBoolean | Local code `chr-0127-0002` (no active SNOMED CT concept) | true |
| Kindik tomirlari pulsatsiyasi | Пульсация пуповины | Observation.valueBoolean | Local code `chr-0127-0003` (no active SNOMED CT concept) | true |
| Ixtiyorsiz mushak qisqarishi | Непроизвольное сокращение мышц | Observation.valueBoolean | Local code `chr-0127-0004` (no active SNOMED CT concept) | true |
| Teri-teriga kontakt vaqti | Время контакта кожа к коже | Observation.valueQuantity | Local code | 5 min |
| Teri-teriga kontakt davomiyligi | Продолжительность контакта кожа к коже | Observation.valueQuantity | Local code | 40 min |
| Ko'krakka berilgan vaqt | Время первого прикладывания к груди | Observation.valueCodeableConcept | Local code `chr-0122-0001`, bound to `breastfeeding-initiation-time-vs` | Within 30–60 minutes |
| Gonoblennoreya profilaktikasi | Профилактика гонобленореи | [Medication](http://hl7.org/fhir/StructureDefinition/Medication).code | ATC `S01AA17` | Erythromycin ophthalmic ointment |
| Apgar bali (1-daqiqa) | Оценка по Апгар (1 мин) | Observation.valueInteger + component[] | LOINC `9272-6` "1 minute Apgar Score" + 5 components | 8 |
| Apgar bali (5-daqiqa) | Оценка по Апгар (5 мин) | Observation.valueInteger + component[] | LOINC `9274-2` "5 minute Apgar Score" + 5 components | 9 |
| Terining yetukligi (Ballard) | Зрелость кожи (Баллард) | Observation.component.valueCodeableConcept | Local code | 1: smooth pink, visible veins |
| Lanugo yetukligi (Ballard) | Зрелость лануго (Баллард) | Observation.component.valueCodeableConcept | Local code | 1: abundant |
| Neyromushak yetukligi (Ballard) | Нейромышечная зрелость (Баллард) | Observation.valueCodeableConcept + component[] | Local code | 1 points |

---

### First Newborn Examination

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Umumiy ko'rinishi | Общий вид новорождённого | Observation.valueCodeableConcept | Local code `chr-0123-0001` | Satisfactory |
| Teri rangi | Цвет кожных покровов | Observation.valueCodeableConcept | Local code `chr-0123-0003` | Pink |
| Sianoz mavjudligi | Наличие цианоза | Observation.valueBoolean | SNOMED CT `3415004` "Cyanosis" | false |
| Kindik qoldig'i holati | Состояние остатка пуповины | Observation.valueCodeableConcept | Local code `chr-0123-0004` | Satisfactory |
| Nevrologik holat | Неврологический статус | Observation.valueCodeableConcept | Local code `chr-0123-0014` | Normal |
| Bosh fontanellari o'lchami (kichik) | Размер малого родничка | Observation.valueQuantity | Local code `chr-0123-0019` "Fontanelle size" | 1 cm |
| Bosh fontanellari o'lchami (katta) | Размер большого родничка | Observation.valueQuantity | Local code `chr-0123-0019` "Fontanelle size" | 2.5 cm |
| Ko'z shakli | Форма глаз | Observation.valueCodeableConcept | Local code | Almond-shaped |
| Nafas olish sur'ati | Частота дыхания | Observation.valueQuantity | LOINC `9279-1` "Respiratory rate" | 40/min |
| Yurak urish sur'ati | Частота сердечных сокращений | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 140/min |
| Sильверман shkalasi | Шкала Сильвермана | Observation.valueInteger + interpretation | Local code `chr-0123-0034` | 0 points |
| Yurak chegaralari / shovqinlar / ritmi | Границы/шумы/ритм сердца | One Observation, 3 components: component.code -> `cardiac-examination-aspect-vs`, component.value -> `normal-abnormal-status-vs` | Normal |
| Qorin holati | Состояние живота | Observation.valueCodeableConcept | Local code `chr-0123-0028` | Normal |
| Jigar/taloq o'lchami | Размер печени/селезёнки | Observation.valueCodeableConcept | Local code | Normal |
| Tashqi jinsiy a'zolar holati | Состояние наружных половых органов | Observation.valueCodeableConcept | Local code / SNOMED CT | Male pattern |
| Chanoq-son bo'g'imlari holati | Состояние тазобедренных суставов | Observation.valueCodeableConcept | Local code `chr-0123-0025` | Normal |
| Ko'rik xulosasi | Заключение осмотра | Observation.valueString | Local code `chr-0123-0006` | - |
| Taxminiy tashxis | Предварительный диагноз | Condition.code | ICD-10 | P59.9 |

---

### Daily Observation (Day 0-6)

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Teri | Кожа | Observation.component.valueCodeableConcept | Local code / SNOMED CT | Skin finding |
| Ko'zlar, shilliq qavatlar | Глаза, слизистые оболочки | Observation.component.valueCodeableConcept | SNOMED CT | Eye |
| Nafas yetishmovchiligi | Дыхательная недостаточность | Observation.component.valueCodeableConcept | SNOMED CT | Abnormal breathing |
| Tana vazni | Масса тела | Observation.component.valueQuantity | LOINC `3141-9` "Body weight Measured" | 3200 g |
| Tana harorati | Температура тела | Observation.component.valueQuantity | LOINC `8310-5` "Body temperature" | 36.8 °C |
| Emizish turi | Тип вскармливания | Observation.component.valueCodeableConcept | LOINC `63895-7` + Local code | Exclusive breastfeeding |
| Ovqatlanishni o'zlashtirish | Переносимость кормления | Observation.component.valueCodeableConcept | SNOMED CT `274540003` "Feeding difficulties and mismanagement" | - |
| Ich ketishi | Диарея | Observation.component.valueCodeableConcept | SNOMED CT `62315008` "Diarrhea" | No |
| Siydik chiqarish chastotasi | Частота мочеиспускания | Observation.component.valueInteger | SNOMED CT `300471006` | 6 |
| Kindik ajralish vaqti | Время отделения пуповины | Observation.component.valueDateTime | SNOMED CT `114961000119106` | - |
| Kindik yarasi holati | Состояние пупочной ранки | Observation.component.valueCodeableConcept | SNOMED CT `210458004` | No |

---

### Newborn Observation Sheet (Physician Daily Review, Day 0-6)

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Umumiy holati | Общее состояние новорождённого | Observation.component.valueCodeableConcept | Local code `chr-0125-0009` | Satisfactory |
| Faollik darajasi | Уровень активности | Observation.component.valueCodeableConcept | Local code `chr-0125-0013` | Moderate |
| Reflekslar holati | Состояние рефлексов | Observation.component.valueCodeableConcept | Local code `chr-0125-0004` | Sucking reflex |
| Mushak tonusi | Мышечный тонус | Observation.component.valueCodeableConcept | Local code `chr-0125-0005` | Normal |
| Teri rangi | Цвет кожи | Observation.component.valueCodeableConcept | Local code `chr-0125-0011` | Normal color |
| Nafas olish holati | Состояние дыхания | Observation.component.valueCodeableConcept | Local code `chr-0125-0012` | Normal |
| Yurak-qon tomir tizimi holati | Состояние сердечно-сосудистой системы | Observation.component.valueCodeableConcept | Local code `chr-0125-0010` | Normal |
| Qorin bo'shlig'i a'zolari holati | Состояние органов брюшной полости | Observation.component.valueCodeableConcept | Local code `chr-0125-0002` | Normal |
| Siydik va najas holati | Состояние мочеиспускания и стула | Observation.component.valueCodeableConcept | Local code `chr-0125-0007` | Normal |
| Laborator tekshiruvlar | Лабораторные исследования | Observation.component.valueString | LOINC `26436-6` "Laboratory studies (set)" | - |

---

### Weight Dynamics

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Tug'ilishdagi vazn | Вес при рождении | Observation.valueQuantity | LOINC `8339-4` "Birth weight" | 3200 g |
| Kunlik vazn (1-10 kun) | Ежедневный вес (день 1-10) | Observation.valueQuantity | LOINC `3141-9` "Body weight Measured" | 3100-3320 g |

---

### Prophylaxis and Immunization

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Gemorragik sindrom profilaktikasi | Профилактика геморрагического синдрома | MedicationAdministration.medication[x] | ATC `B02BA01` "phytomenadione" | 1 mg |
| Gepatit B emlash | Вакцинация против гепатита B | Immunization.vaccineCode | CVX `08` | 0.5 mL |
| Sil (BCG) emlash | Вакцинация БЦЖ | Immunization.vaccineCode | CVX `19` | 0.05 mL |

---

### Screening

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Audiologik skrining | Аудиологический скрининг | Observation.valueString | Local code `chr-0124-0003` | Pass |
| Tug'ma gipotireoz skriningi | Скрининг на врождённый гипотиреоз | Observation.valueString | Local code `chr-0124-0004` | Normal (negative) |

---

### Discharge, Transfer, or Death

| UZ | RU | FHIR Path | Code | Example |
|----|----|------------|------|---------|
| Chiqarishdagi umumiy holati | Общее состояние при выписке | Observation.valueCodeableConcept | Local code | Satisfactory |
| Chiqarish tashxisi | Диагноз при выписке | Condition.code | ICD-10 | Z38.0 |
| Tavsiyalar | Рекомендации | Observation.valueString | - | Routine follow-up with district pediatrician |
| Hamshiradan onaga topshirish | Передача от медсестры матери | Provenance.agent | - | - |
| Shifokor imzosi | Подпись врача | Provenance.signature | - | - |
| Muassasalar orasida o'tkazish | Перевод между учреждениями | Provenance.agent | - | - |

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
├── Encounter (inpatient stay, birth to discharge)
├── Practitioner[] / PractitionerRole[] (physician, nurse)
├── Condition[] (pregnancy complication, birth trauma, provisional/discharge diagnosis)
├── Observation[] (antenatal history, birth event, Apgar, Ballard maturity, first exam, daily observation, daily review, weight dynamics, screening, discharge)
├── Procedure[] (labor-related procedures)
├── Medication[] / MedicationAdministration[] (hemorrhagic prophylaxis, eye prophylaxis)
├── Immunization[] (Hepatitis B, BCG)
├── FamilyMemberHistory[] (mother's and father's hereditary history)
└── Provenance[] (record authorship, nurse-to-mother handoff, institution transfer, birth certificate)
```

### Example

See [Form 097 newborn development example](Bundle-example-form-097-newborn-development.html) for a complete FHIR document example.