### Форма 097 - Медицинская карта развития новорождённого

Данная страница описывает соответствие между полями Формы 097 (Медицинская карта развития новорождённого) и ресурсами FHIR.

---

### Обзор

Форма 097 фиксирует полную клиническую карту новорождённого от рождения до выписки, включая анамнез матери и антенатальный период, событие родов, первичный осмотр новорождённого, ежедневное наблюдение и врачебный осмотр, динамику массы тела, профилактику и иммунизацию, скрининг и выписку. Данные формы отображаются на несколько ресурсов FHIR, объединённых в FHIR-документ, соответствующий профилю [Form 097 Newborn Development Composition](StructureDefinition-form-097-newborn-development-composition.html). При наличии соответствующих профилей ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html). Оценка зрелости новорождённого (шкала Апгар, шкала Дубовица-Балларда) и поля ежедневного наблюдения, не имеющие соответствия LOINC/SNOMED, используют локальные CodeSystem до публикации официальной терминологии CHR (Common Health Registry).

Полный пример см. в [примере формы 097 - развитие новорождённого](Bundle-example-form-097-newborn-development.html).

---

### Сопоставление полей

# UZ-097 Медицинская карта развития новорождённого - сопоставление с FHIR

---

### Информация о матери и антенатальный анамнез

| UZ | RU | FHIR Path | Код | Пример |
|----|----|------------|------|---------|
| Onaning JShShIRi | ПИНФЛ матери | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[nationalId].value | NI | 31234567890123 |
| Onaning F.I.Sh. | Ф.И.О. матери | Patient.name.text | - | Karimova Dilnoza Farkhodovna |
| Onaning tug'ilgan sanasi | Дата рождения матери | Patient.birthDate | - | 1992-03-12 |
| Oilaviy holati | Семейное положение | Patient.maritalStatus | v3-MaritalStatus | Married |
| Manzil | Адрес | Patient.address | - | 12 Amir Temur ko'chasi, Toshkent |
| Millati | Национальность | Patient.extension[nationality] | Локальный код | UZBEK |
| Ish joyi/kasbi | Место работы/профессия | Observation.valueCodeableConcept | SNOMED CT `224406003` "Details relating to place of work and employer" + локальный код профессии | Lecturer |
| Onaning qon guruhi | Группа крови матери | Observation.code `90905-1` + valueCodeableConcept | LOINC `90905-1`; value bound to `abo-blood-group-vs` (SNOMED CT) | Blood group A Rh(D) negative |
| Onaning rezus-omili | Резус-фактор матери | Observation.code `54416-3` + valueCodeableConcept | LOINC `54416-3`; value bound to `rh-factor-vs` (SNOMED CT) | Rh negative |
| Otaning qon guruhi | Группа крови отца | Observation.code `90906-9` + valueCodeableConcept | LOINC `90906-9`; value bound to `abo-blood-group-vs` (SNOMED CT) | Blood group A |
| Homiladorlik soni | Число беременностей | Observation.valueInteger | LOINC `11996-6` "Pregnancies" | 4 |
| Tug'ruq soni | Число родов | Observation.valueInteger | LOINC `11977-6` "Parity" | 2 |
| Homiladorlik muddati | Срок беременности | Observation.valueQuantity | LOINC `11884-4` "Gestational age Estimated" | 40 weeks |
| Homiladorlik asorati | Осложнение беременности | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | O24.4 |
| Amniotik suyuqlik ko'rinishi | Вид околоплодных вод | Observation.code `1887-9` + valueCodeableConcept | LOINC `1887-9`; значение привязано к `amniotic-fluid-characteristic-vs` (SNOMED CT `168090003` + локальные `chr-0084-*`) | Transparent |
| Naslli anamnez (ona) | Наследственный анамнез (мать) | FamilyMemberHistory.condition.code | - | Diabetes mellitus |
| Naslli anamnez (ota) | Наследственный анамнез (отец) | FamilyMemberHistory.condition.code | SNOMED CT | Bronchospasm |

---

### Событие родов

| UZ | RU | FHIR Path | Код | Пример |
|----|----|------------|------|---------|
| Tug'ilgan bo'yi | Рост при рождении | Observation.valueQuantity | LOINC `89269-5` "Body height Measured --at birth" | 51 cm |
| Tug'ruq o'z vaqtidami | Своевременность родов | Observation.valueCodeableConcept | Локальный код | Timely delivery |
| Chaqaloqning muddat holati | Срок рождения новорождённого | Observation.valueCodeableConcept | Локальный код | Term |
| Hayotiylik natijasi | Исход плода | Observation.valueCodeableConcept | value bound to `newborn-vital-status-vs` (SNOMED CT `281050002` / `276506001`) | Alive |
| Chaqaloq qon guruhi | Группа крови новорождённого | Observation.code `883-9` + valueCodeableConcept | LOINC `883-9`; value bound to `abo-blood-group-vs` (SNOMED CT) | Group II (A) |
| Chaqaloq rezus-omili | Резус-фактор новорождённого | Observation.code `14908-8` + valueCodeableConcept | LOINC `14908-8`; value bound to `rh-factor-vs` (SNOMED CT) | Rh positive |
| Bosh aylanasi | Окружность головы | Observation.valueQuantity | LOINC `9843-4` "Head Occipital-frontal circumference" | 34 cm |
| Ko'krak aylanasi | Окружность груди | Observation.valueQuantity | Local code `chr-0122-0005` "Chest circumference" (no exact active LOINC/SNOMED concept) | 33 cm |
| Nafas olish belgisi | Признак дыхания | Observation.valueBoolean | Локальный код `chr-0127-0001` (нет активного понятия SNOMED CT) | true |
| Yurak urishi belgisi | Признак сердцебиения | Observation.valueBoolean | Локальный код `chr-0127-0002` (нет активного понятия SNOMED CT) | true |
| Kindik tomirlari pulsatsiyasi | Пульсация пуповины | Observation.valueBoolean | Локальный код `chr-0127-0003` (нет активного понятия SNOMED CT) | true |
| Ixtiyorsiz mushak qisqarishi | Непроизвольное сокращение мышц | Observation.valueBoolean | Локальный код `chr-0127-0004` (нет активного понятия SNOMED CT) | true |
| Teri-teriga kontakt vaqti | Время контакта кожа к коже | Observation.valueQuantity | Локальный код | 5 min |
| Teri-teriga kontakt davomiyligi | Продолжительность контакта кожа к коже | Observation.valueQuantity | Локальный код | 40 min |
| Ko'krakka berilgan vaqt | Время первого прикладывания к груди | Observation.valueCodeableConcept | Локальный код `chr-0122-0001`, привязка к `breastfeeding-initiation-time-vs` | Within 30–60 minutes |
| Gonoblennoreya profilaktikasi | Профилактика гонобленореи | [Medication](http://hl7.org/fhir/StructureDefinition/Medication).code | ATC `S01AA17` | Erythromycin ophthalmic ointment |
| Apgar bali (1-daqiqa) | Оценка по Апгар (1 мин) | Observation.valueInteger + component[] | LOINC `9272-6` "1 minute Apgar Score" + 5 компонентов | 8 |
| Apgar bali (5-daqiqa) | Оценка по Апгар (5 мин) | Observation.valueInteger + component[] | LOINC `9274-2` "5 minute Apgar Score" + 5 компонентов | 9 |
| Terining yetukligi (Ballard) | Зрелость кожи (Баллард) | Observation.component.valueCodeableConcept | Локальный код | 1: smooth pink, visible veins |
| Lanugo yetukligi (Ballard) | Зрелость лануго (Баллард) | Observation.component.valueCodeableConcept | Локальный код | 1: abundant |
| Neyromushak yetukligi (Ballard) | Нейромышечная зрелость (Баллард) | Observation.valueCodeableConcept + component[] | Локальный код | 1 points |

---

### Первичный осмотр новорождённого

| UZ | RU | FHIR Path | Код | Пример |
|----|----|------------|------|---------|
| Umumiy ko'rinishi | Общий вид новорождённого | Observation.valueCodeableConcept | Локальный код `chr-0123-0001` | Satisfactory |
| Teri rangi | Цвет кожных покровов | Observation.valueCodeableConcept | Локальный код `chr-0123-0003` | Pink |
| Sianoz mavjudligi | Наличие цианоза | Observation.valueBoolean | SNOMED CT `3415004` "Cyanosis" | false |
| Kindik qoldig'i holati | Состояние остатка пуповины | Observation.valueCodeableConcept | Локальный код `chr-0123-0004` | Satisfactory |
| Nevrologik holat | Неврологический статус | Observation.valueCodeableConcept | Локальный код `chr-0123-0014` | Normal |
| Bosh fontanellari o'lchami (kichik) | Размер малого родничка | Observation.valueQuantity | Локальный код `chr-0123-0019` "Fontanelle size" | 1 cm |
| Bosh fontanellari o'lchami (katta) | Размер большого родничка | Observation.valueQuantity | Локальный код `chr-0123-0019` "Fontanelle size" | 2.5 cm |
| Ko'z shakli | Форма глаз | Observation.valueCodeableConcept | Локальный код | Almond-shaped |
| Nafas olish sur'ati | Частота дыхания | Observation.valueQuantity | LOINC `9279-1` "Respiratory rate" | 40/min |
| Yurak urish sur'ati | Частота сердечных сокращений | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 140/min |
| Sилверман shkalasi | Шкала Сильвермана | Observation.valueInteger + interpretation | Локальный код `chr-0123-0034` | 0 points |
| Yurak chegaralari / shovqinlar / ritmi | Границы/шумы/ритм сердца | Одна Observation, 3 компонента: component.code -> `cardiac-examination-aspect-vs`, component.value -> `normal-abnormal-status-vs` | Normal |
| Qorin holati | Состояние живота | Observation.valueCodeableConcept | Локальный код `chr-0123-0028` | Normal |
| Jigar/taloq o'lchami | Размер печени/селезёнки | Observation.valueCodeableConcept | Локальный код | Normal |
| Tashqi jinsiy a'zolar holati | Состояние наружных половых органов | Observation.valueCodeableConcept | Локальный код / SNOMED CT | Male pattern |
| Chanoq-son bo'g'imlari holati | Состояние тазобедренных суставов | Observation.valueCodeableConcept | Локальный код `chr-0123-0025` | Normal |
| Ko'rik xulosasi | Заключение осмотра | Observation.valueString | Локальный код `chr-0123-0006` | - |
| Taxminiy tashxis | Предварительный диагноз | Condition.code | ICD-10 | P59.9 |

---

### Ежедневное наблюдение (день 0-6)

| UZ | RU | FHIR Path | Код | Пример |
|----|----|------------|------|---------|
| Teri | Кожа | Observation.component.valueCodeableConcept | Локальный код / SNOMED CT | Skin finding |
| Ko'zlar, shilliq qavatlar | Глаза, слизистые оболочки | Observation.component.valueCodeableConcept | SNOMED CT | Eye |
| Nafas yetishmovchiligi | Дыхательная недостаточность | Observation.component.valueCodeableConcept | SNOMED CT | Abnormal breathing |
| Tana vazni | Масса тела | Observation.component.valueQuantity | LOINC `3141-9` "Body weight Measured" | 3200 g |
| Tana harorati | Температура тела | Observation.component.valueQuantity | LOINC `8310-5` "Body temperature" | 36.8 °C |
| Emizish turi | Тип вскармливания | Observation.component.valueCodeableConcept | LOINC `63895-7` + локальный код | Exclusive breastfeeding |
| Ovqatlanishni o'zlashtirish | Переносимость кормления | Observation.component.valueCodeableConcept | SNOMED CT `274540003` "Feeding difficulties and mismanagement" | - |
| Ich ketishi | Диарея | Observation.component.valueCodeableConcept | SNOMED CT `62315008` "Diarrhea" | No |
| Siydik chiqarish chastotasi | Частота мочеиспускания | Observation.component.valueInteger | SNOMED CT `300471006` | 6 |
| Kindik ajralish vaqti | Время отделения пуповины | Observation.component.valueDateTime | SNOMED CT `114961000119106` | - |
| Kindik yarasi holati | Состояние пупочной ранки | Observation.component.valueCodeableConcept | SNOMED CT `210458004` | No |

---

### Лист наблюдения за новорождённым (врачебный осмотр, день 0-6)

| UZ | RU | FHIR Path | Код | Пример |
|----|----|------------|------|---------|
| Umumiy holati | Общее состояние новорождённого | Observation.component.valueCodeableConcept | Локальный код `chr-0125-0009` | Satisfactory |
| Faollik darajasi | Уровень активности | Observation.component.valueCodeableConcept | Локальный код `chr-0125-0013` | Moderate |
| Reflekslar holati | Состояние рефлексов | Observation.component.valueCodeableConcept | Локальный код `chr-0125-0004` | Sucking reflex |
| Mushak tonusi | Мышечный тонус | Observation.component.valueCodeableConcept | Локальный код `chr-0125-0005` | Normal |
| Teri rangi | Цвет кожи | Observation.component.valueCodeableConcept | Локальный код `chr-0125-0011` | Normal color |
| Nafas olish holati | Состояние дыхания | Observation.component.valueCodeableConcept | Локальный код `chr-0125-0012` | Normal |
| Yurak-qon tomir tizimi holati | Состояние сердечно-сосудистой системы | Observation.component.valueCodeableConcept | Локальный код `chr-0125-0010` | Normal |
| Qorin bo'shlig'i a'zolari holati | Состояние органов брюшной полости | Observation.component.valueCodeableConcept | Локальный код `chr-0125-0002` | Normal |
| Siydik va najas holati | Состояние мочеиспускания и стула | Observation.component.valueCodeableConcept | Локальный код `chr-0125-0007` | Normal |
| Laborator tekshiruvlar | Лабораторные исследования | Observation.component.valueString | LOINC `26436-6` "Laboratory studies (set)" | - |

---

### Динамика массы тела

| UZ | RU | FHIR Path | Код | Пример |
|----|----|------------|------|---------|
| Tug'ilishdagi vazn | Вес при рождении | Observation.valueQuantity | LOINC `8339-4` "Birth weight" | 3200 g |
| Kunlik vazn (1-10 kun) | Ежедневный вес (день 1-10) | Observation.valueQuantity | LOINC `3141-9` "Body weight Measured" | 3100-3320 g |

---

### Профилактика и иммунизация

| UZ | RU | FHIR Path | Код | Пример |
|----|----|------------|------|---------|
| Gemorragik sindrom profilaktikasi | Профилактика геморрагического синдрома | MedicationAdministration.medication[x] | ATC `B02BA01` "phytomenadione" | 1 mg |
| Gepatit B emlash | Вакцинация против гепатита B | Immunization.vaccineCode | CVX `08` | 0.5 mL |
| Sil (BCG) emlash | Вакцинация БЦЖ | Immunization.vaccineCode | CVX `19` | 0.05 mL |

---

### Скрининг

| UZ | RU | FHIR Path | Код | Пример |
|----|----|------------|------|---------|
| Audiologik skrining | Аудиологический скрининг | Observation.valueString | Локальный код `chr-0124-0003` | Pass |
| Tug'ma gipotireoz skriningi | Скрининг на врождённый гипотиреоз | Observation.valueString | Локальный код `chr-0124-0004` | Normal (negative) |

---

### Выписка, перевод или смерть

| UZ | RU | FHIR Path | Код | Пример |
|----|----|------------|------|---------|
| Chiqarishdagi umumiy holati | Общее состояние при выписке | Observation.valueCodeableConcept | Локальный код | Satisfactory |
| Chiqarish tashxisi | Диагноз при выписке | Condition.code | ICD-10 | Z38.0 |
| Tavsiyalar | Рекомендации | Observation.valueString | - | Routine follow-up with district pediatrician |
| Hamshiradan onaga topshirish | Передача от медсестры матери | Provenance.agent | - | - |
| Shifokor imzosi | Подпись врача | Provenance.signature | - | - |
| Muassasalar orasida o'tkazish | Перевод между учреждениями | Provenance.agent | - | - |

---

### Структура Bundle

Документ Формы 097 структурирован как FHIR Bundle, содержащий Composition [Form097NewbornDevelopmentComposition](StructureDefinition-form-097-newborn-development-composition.html):

```
Bundle (document)
├── Composition (Form097NewbornDevelopmentComposition)
├── Patient (новорождённый)
├── Patient[] (мать, отец)
├── RelatedPerson[] (мать, отец - как законные представители новорождённого)
├── Organization (родильный дом)
├── Location (палата)
├── Encounter (стационарное пребывание, от родов до выписки)
├── Practitioner[] / PractitionerRole[] (врач, медсестра)
├── Condition[] (осложнение беременности, родовая травма, предварительный/выписной диагноз)
├── Observation[] (антенатальный анамнез, событие родов, шкала Апгар, зрелость по Балларду, первичный осмотр, ежедневное наблюдение, врачебный осмотр, динамика веса, скрининг, выписка)
├── Procedure[] (процедуры, связанные с родами)
├── Medication[] / MedicationAdministration[] (профилактика геморрагического синдрома, профилактика гонобленореи)
├── Immunization[] (гепатит B, БЦЖ)
├── FamilyMemberHistory[] (наследственный анамнез матери и отца)
└── Provenance[] (авторство записи, передача от медсестры матери, перевод между учреждениями, свидетельство о рождении)
```

### Пример

Полный пример FHIR-документа см. в [примере формы 097 - развитие новорождённого](Bundle-example-form-097-newborn-development.html).