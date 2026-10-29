<style>
/* Ширина столбцов таблиц сопоставления (096: одна таблица на раздел Composition). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 18%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 18%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 20%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 26%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 18%; }
</style>

### Форма 096 - История родов

На этой странице описано сопоставление полей Формы 096 (Tug'ruq tibbiy kartasi) с ресурсами FHIR.

---

### Обзор

Форма 096 - это медицинская запись о пребывании женщины в родильном доме: поступление, анамнез, осмотр, течение родов, каждый новорождённый, послеродовой период, назначения и подписи. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 096 Maternity Medical Record Composition](StructureDefinition-form-096-maternity-medical-record-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Каждый из 13 разделов Composition несёт собственный `section.code` и перечисляет ресурсы, относящиеся к этой части формы. Все разделы необязательны: раздел передаётся, только если в форме есть данные для него.

Каждое поле передаётся отдельным Observation со своим `code`. Поле, общее с Формой 111, использует код Формы 111, поэтому один и тот же факт кодируется в обеих формах одинаково. Сведения о плоде передаются для каждого плода отдельно, а `Observation.focus` ссылается на новорождённого, которым родился этот плод. Сведения о самом новорождённом имеют его в `subject`; сведения о родах в целом - мать.

Полный пример экземпляра см. в разделе [Пример истории родов по Форме 096](Bundle-example-form-096-maternity-medical-record.html): самопроизвольные роды двойней.

---

### Сопоставление полей

### Форма 096 - История родов - сопоставление с FHIR

---

### Информация о документе

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:09600000-1111-2222-3333-444444444444 |
| Hujjat UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:5f0a9c3e-8b1d-4c6e-9a27-0960a1b2c3d4 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 096 |
| Hujjat holati | Статус документа | Composition.status | `preliminary` во время пребывания, `final` после закрытия истории | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0016` "Maternity (delivery) medical record", а также LOINC `57057-2` "Labor and Delivery Summary Note" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" и [Document Category](CodeSystem-document-category-cs.html) `form-096` "Birth medical record" | - |
| Bemor | Пациентка | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Karimova Dilnoza Akmalovna |
| Kasallik tarixi | История болезни | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | MRN-096-2026-000123 |
| Hujjat sanasi | Дата документа | Composition.date | - | 2026-08-18T15:30:00+05:00 |
| Shifokor va akusherka | Врач и акушерка | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html), или [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html), если должность неизвестна | Rasulova M.B., Tursunova N.S. |
| Hujjat egasi | Организация-хранитель документа | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Toshkent City Perinatal Center |
| Muassasa STIR | ИНН учреждения | Organization.identifier[taxId] | `https://dhp.uz/fhir/core/sid/org/uz/soliq`, type `TAX` | 201234567 |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 096 - Maternity Medical Record |

---

### 1. Сведения о документе, поступление и выписка

Код раздела: LOINC `LP74442-2` "Admission Information".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Tibbiy karta raqami | Номер медкарты пациентки | Patient.identifier[healthCardId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/hc`<br>`type` `HC` | HC-096-2026-000123 |
| JShShIR | ПИНФЛ | Patient.identifier[nationalId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 31234567890123 |
| Bemor F.I.Sh. | ФИО пациентки | Patient.name | - | Karimova Dilnoza Akmalovna |
| Tug'ilgan sana | Дата рождения | Patient.birthDate | - | 1994-05-14 |
| Millati | Национальность | Patient.extension[nationality] | [UZ Core Nationality](https://dhp.uz/fhir/core/en/CodeSystem-nationality-cs.html) | O'zbek (`44`) |
| Oilaviy holati | Семейное положение | Patient.maritalStatus | [UZ Core Marital Status](https://dhp.uz/fhir/core/en/ValueSet-marital-status-vs.html) | Married (`M`) |
| Yashash manzili | Адрес проживания | Patient.address | - | Chilonzor-12, 15-uy, 24-xonadon |
| Telefon | Телефон | Patient.telecom | - | +998901234567 |
| Kasallik tarixi raqami | Номер истории болезни | Encounter.identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number` | MRN-096-2026-000123 |
| Qabul qilingan sana va vaqt | Дата и время поступления | Encounter.actualPeriod.start | - | 2026-08-16T08:20:00+05:00 |
| Chiqarilgan sana va vaqt | Дата и время выписки | Encounter.actualPeriod.end | - | 2026-08-18T15:00:00+05:00 |
| O'tkazilgan kunlar | Проведено койко-дней | Encounter.length | UCUM `d` | 2.28 d |
| Palata | Палата | Encounter.location.location → [Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html).identifier[unit] | [UZ Core Location Kinds](https://dhp.uz/fhir/core/en/CodeSystem-location-kinds-cs.html) `Ward` | 12 |
| Yo'llagan muassasa | Направившая организация | Encounter.admission.origin → Organization | Organization | Chilonzor District Polyclinic No. 5 |
| Gospitalizatsiya natijasi | Исход госпитализации | Encounter.admission.dischargeDisposition | [Form 096 Hospitalization Outcome](ValueSet-form-096-hospitalization-outcome-vs.html) | Discharged (`mserv-0004-00004`) |
| O'tkazilgan muassasa | Учреждение перевода | Encounter.admission.destination → Organization | Organization | - |
| Onaning o'limi | Смерть матери | Patient.deceasedDateTime, или Patient.deceasedBoolean, если дата неизвестна | - | - |
| Ona o'limining davri | Период смерти матери | Condition.code | [Maternal Death Timing](ValueSet-maternal-death-timing-vs.html) | - |
| Qon guruhi | Группа крови | Observation.valueCodeableConcept | `code` LOINC `883-9` "ABO group [Type] in Blood"<br>`value` [Blood Group](https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs) | A (II) (`112144000`) |
| Rezus omil | Резус-фактор | Observation.valueCodeableConcept | `code` LOINC `10331-7` "Rh [Type] in Blood"<br>`value` [Blood Rh](https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs) | Rh positive (`165747007`) |
| Gemoglobin | Гемоглобин | Observation.valueQuantity | [Admission Laboratory Test Codes](ValueSet-maternal-laboratory-and-blood-code-vs.html) LOINC `718-7` "Hemoglobin [Mass/volume] in Blood" | 112 g/L |
| Antitelolar | Антитела | Observation.valueCodeableConcept | `code` [Admission Laboratory Test Codes](ValueSet-maternal-laboratory-and-blood-code-vs.html) LOINC `890-4` "Blood group antibody screen [Presence] in Serum or Plasma"<br>`value` [Positive / Negative Result](ValueSet-positive-negative-result-vs.html) | Negative (`260385009`) |
| RW | RW | Observation.valueCodeableConcept | `code` LOINC `22461-8` "Reagin Ab [Presence] in Serum", как в Форме 111<br>`value` [Positive / Negative Result](ValueSet-positive-negative-result-vs.html) | Negative (`260385009`) |
| Gonokokk | Гонококк | Observation.valueCodeableConcept | `code` [Analysis Test Code](ValueSet-form111-analysis-test-code-vs.html) `chr-0001-00001` "Gonococcus test", как в Форме 111<br>`value` [Positive / Negative Result](ValueSet-positive-negative-result-vs.html) | Negative (`260385009`) |
| Homiladorlikdagi ko'riklar soni | Количество осмотров во время беременности | Observation.valueInteger | [Medical and Obstetric History Codes](ValueSet-pregnancy-obstetric-history-code-vs.html) LOINC `68493-6` "Prenatal visits for this pregnancy #" | 6 |
| Homiladorlik davrida kuzatilgan | Наблюдалась во время беременности | Observation.valueBoolean | только `code.text`, кода пока нет | true |
| Qabul tashxisi | Диагноз при поступлении | Condition.code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `admission` | Twin pregnancy (`O30.0`) |
| Klinik tashxis | Клинический диагноз | Condition.code | ICD-10 | Twin pregnancy (`O30.0`) |
| Yakuniy tashxis | Заключительный диагноз | Condition.code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `main` | Multiple delivery, all spontaneous (`O84.0`) |
| Tug'ruqdagi asoratlar | Осложнения родов | Condition.code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `complication` | First degree perineal laceration during delivery (`O70.0`) |
| Tug'ruqdan keyingi asoratlar | Послеродовые осложнения | Condition.code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `complication` | Disruption of perineal obstetric wound (`O90.1`) |
| Operatsiya | Операция | [Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html).code; occurrenceDateTime; performer.actor | SNOMED CT | Episiotomy (`85548006`), 2026-08-16T12:15:00+05:00 |
| Allergiya | Аллергия | [AllergyIntolerance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-allergy-intolerance.html).code | SNOMED CT; `716186003` "No known allergy" только если это указано в форме | No known allergy (`716186003`) |

---

### 2. Общий и акушерский анамнез

Код раздела: LOINC `11329-0` "History general Narrative - Reported".

Для каждой из двух предыдущих беременностей в примере передаются исход, срок родов и вес новорождённого с датой, равной году родов.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Turmush o'rtog'i | Супруг | [RelatedPerson](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-relatedperson.html).name; identifier[nationalId] | - | Karimov Jamshid Anvarovich |
| Turmush o'rtog'ining sog'lig'i | Здоровье супруга | Observation.valueString (`focus` = RelatedPerson) | [Medical and Obstetric History Codes](ValueSet-pregnancy-obstetric-history-code-vs.html) SNOMED `720372000` "Health status of spouse" | Healthy; no relevant hereditary disease reported. |
| Ish joyi | Место работы | Observation.valueString | LOINC `80427-8` "Employer name [Identifier]", как в Форме 111 | Tashkent City School No. 42 |
| Kasbi va lavozimi | Профессия и должность | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | `code` SNOMED `14679004` "Occupation", как в Форме 111<br>`value` [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | O'qituvchi (`2330.9`) |
| Xayz ko'rish necha yoshdan boshlangan | Возраст начала менструаций | Observation.valueQuantity | LOINC `42798-9` "Age at menarche" | 13 a |
| Jinsiy hayoti necha yoshdan boshlangan | Возраст начала половой жизни | Observation.valueQuantity | SNOMED `228456002` "Age became sexually active", как в Форме 111 | 20 a |
| Avvalgi homiladorliklar soni | Количество предыдущих беременностей | Observation.valueInteger | SNOMED `246211005` "Number of previous pregnancies" | 2 |
| Abortlar soni | Количество абортов | Observation.valueInteger | LOINC `11612-9` "[#] Abortions" | 0 |
| Avvalgi homiladorlik natijasi | Исход предыдущей беременности | Observation.valueCodeableConcept | `code` LOINC `63893-2` "Outcome of pregnancy"<br>`value` [Previous Pregnancy Outcome](ValueSet-form111-previous-pregnancy-outcome-vs.html), как в Форме 111 | Birth (`3950001`) |
| Tug'ruq turi (muddati bo'yicha) | Вид родов (по сроку) | Observation.valueCodeableConcept | `code` [Form111 General Observation Code](ValueSet-form111-general-observation-code-vs.html) `chr-0035-00015` "Type of delivery (by term)"<br>`value` [Previous Delivery Term](ValueSet-form111-previous-delivery-term-vs.html), как в Форме 111 | Term birth of newborn (`21243004`) |
| Avvalgi chaqaloqlar vazni | Вес предыдущих новорождённых | Observation.valueQuantity | LOINC `8339-4` "Birth weight Measured", как в Форме 111 | 3200 g, 3400 g |
| Boshdan o'tkazgan kasalliklari | Перенесённые заболевания | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | Iron deficiency anaemia, unspecified (`D50.9`) |
| Ginekologik kasalliklari | Гинекологические заболевания | Condition.code; note | ICD-10 | Acute vaginitis (`N76.0`), treated in 2023 |
| Akusherlik va epidemiologik anamnez | Акушерский и эпидемиологический анамнез | [QuestionnaireResponse](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-questionnaire-response.html).item.answer | [form-096-history](Questionnaire-form-096-history.html) `previous-pregnancies`, `epidemiological-history` | No recent infectious exposure or travel risk reported. |

---

### 3. Течение данной беременности и общий осмотр

Код раздела: LOINC `65869-0` "Pregnancy complication".

Артериальное давление передаётся по [шаблону vital-signs](https://hl7.org/fhir/R5/bp.html) FHIR, как в Форме 111: LOINC `85354-9` с компонентами систолического `8480-6` и диастолического `8462-4` давления в `mm[Hg]`, по одному Observation на каждую руку с `bodySite`.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Homiladorlikning kechishi va asoratlari | Течение и осложнения беременности | QuestionnaireResponse.item.answer | [form-096-current-pregnancy](Questionnaire-form-096-current-pregnancy.html) `current-pregnancy-course`, `condition-on-arrival` | Dichorionic diamniotic twin pregnancy; mild iron-deficiency anaemia. |
| Umumiy ahvoli | Общее состояние | Observation.valueCodeableConcept | `code` [Maternal and Fetal Examination Codes](ValueSet-maternal-examination-observation-code-vs.html) `chr-0005-00003` "General condition", как в Форме 111<br>`value` [Satisfactory Status](ValueSet-satisfactory-status-vs.html) | Satisfactory (`162669003`) |
| Yurak | Сердце | Observation.valueString | LOINC `8702-3` "Physical findings of Heart" | Regular rhythm, no murmur. |
| Puls | Пульс | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 82 /min |
| Arterial qon bosimi (o'ng qo'l) | Артериальное давление (правая рука) | Observation.component.valueQuantity; bodySite | `code` LOINC `85354-9` "Blood pressure panel with all children optional"<br>`component` LOINC `8480-6` "Systolic blood pressure", `8462-4` "Diastolic blood pressure"<br>`bodySite` SNOMED `368209003` "Right upper arm structure" | 118/76 mm[Hg] |
| Arterial qon bosimi (chap qo'l) | Артериальное давление (левая рука) | Observation.component.valueQuantity; bodySite | `code` LOINC `85354-9`<br>`bodySite` SNOMED `368208006` "Left upper arm structure" | 116/74 mm[Hg] |
| Nafas olish tizimi | Органы дыхания | Observation.valueString | LOINC `11412-4` "Physical findings of Respiratory system Narrative" | Breath sounds vesicular, no added sounds. |
| Hazm qilish tizimi | Органы пищеварения | Observation.valueString | LOINC `11399-3` "Physical findings of Gastrointestinal system Narrative" | Abdomen appropriate for gestation; no gastrointestinal complaint. |
| Siydik-tanosil tizimi | Мочеполовая система | Observation.valueString | только `code.text`, кода пока нет | No dysuria; renal angles non-tender. |
| Siydik tsentrifugati | Центрифугат мочи | Observation.valueString | [Analysis Test Code](ValueSet-form111-analysis-test-code-vs.html) `chr-0001-00006` "Other analysis", как в Форме 111 | No clinically significant sediment abnormality. |

---

### 4. Акушерский осмотр и оценка плода

Код раздела: SNOMED `163497009` "Obstetric examination".

Пельвиометрия - один Observation с отдельным компонентом для каждого размера, с кодами Формы 111. Строки о плоде повторяются для каждого плода, `focus` ссылается на новорождённого; в примере два плода.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Bo'yi | Рост | Observation.valueQuantity | LOINC `8302-2` "Body height" | 164 cm |
| Vazni | Вес | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 72 kg |
| Tana harorati | Температура тела | Observation.valueQuantity | LOINC `8310-5` "Body temperature" | 36.7 Cel |
| Homiladorliklar soni | Какая беременность | Observation.valueInteger | LOINC `11996-6` "[#] Pregnancies" | 3 |
| Tug'ruqlar soni | Какие роды | Observation.valueInteger | LOINC `11977-6` "[#] Parity" | 2 |
| Oxirgi hayz sanasi | Дата последней менструации | Observation.valueDateTime | LOINC `8665-2` "Last menstrual period start date" | 2025-11-10 |
| Homilaning birinchi qimirlashi | Первое шевеление плода | Observation.valueDateTime | LOINC `57065-5` "Quickening date" | 2026-03-25 |
| Chanoq o'lchovlari | Размеры таза | Observation.component.valueQuantity | `code` [Form111 General Observation Code](ValueSet-form111-general-observation-code-vs.html) `chr-0035-00002` "Pelvis measurements" | - |
| D. spinarum | D. spinarum | *(тот же Observation).component* | `chr-0035-00003` "Distantia spinarum (D.sp)" | 25 cm |
| D. cristarum | D. cristarum | *(тот же Observation).component* | `chr-0035-00004` "Distantia cristarum (D.Cr)" | 28 cm |
| D. trochanterica | D. trochanterica | *(тот же Observation).component* | `chr-0035-00005` "Distantia trochanterica (D.troch)" | 31 cm |
| C. externa | C. externa | *(тот же Observation).component* | `chr-0035-00006` "Conjugata externa (C.ext)" | 20 cm |
| C. diagonalis | C. diagonalis | *(тот же Observation).component* | `chr-0035-00007` "Conjugata diagonalis (C.diag)" | 12.5 cm |
| C. vera | C. vera | *(тот же Observation).component* | `chr-0035-00008` "Conjugata vera (C.vera)" | 11 cm |
| Chanoq aylanasi | Окружность таза | *(тот же Observation).component* | [Pregnancy Monitoring Observation Code](ValueSet-form111-pregnancy-monitoring-observation-code-vs.html) `chr-0023-00002` "Pelvic circumference" | 96 cm |
| Qorin aylanasi | Окружность живота | Observation.valueQuantity | SNOMED `396552003` "Abdominal circumference", как в Форме 111 | 104 cm |
| Bachadon tubi balandligi | Высота стояния дна матки | Observation.valueQuantity | LOINC `11881-0` "Uterus Fundal height Tape measure" | 38 cm |
| Qindan ajralma | Выделения из влагалища | Observation.valueCodeableConcept | `code` SNOMED `271939006` "Vaginal discharge"<br>`value` [Vaginal Discharge Color](ValueSet-vaginal-discharge-color-vs.html) | Bloodstained (`289547007`) |
| Homilaning joylashuvi | Положение плода | Observation.valueCodeableConcept (`focus` = новорождённый) | `code` [Maternal and Fetal Examination Codes](ValueSet-maternal-examination-observation-code-vs.html) SNOMED `249062004` "Lie of fetus"<br>`value` [Fetal Lie](ValueSet-fetal-lie-vs.html) | Longitudinal lie (`249063009`), оба плода |
| Homilaning pozitsiyasi va turi | Позиция и вид плода | Observation.valueCodeableConcept.text (`focus` = новорождённый) | SNOMED `364607000` "Position of fetus" | First position, anterior variety; second position, posterior variety |
| Homilaning oldinda keluvchi qismi | Предлежание плода | Observation.valueCodeableConcept (`focus` = новорождённый) | `code` SNOMED `271692001` "Presentation of fetus"<br>`value` [Fetal Presentation](ValueSet-fetal-presentation-vs.html) | Cephalic (`1209182005`); breech (`6096002`) |
| Yurak urishi eshitiladigan joy | Место выслушивания сердцебиения | Observation.valueString (`focus` = новорождённый) | SNOMED `373720003` "Site of loudest fetal heart sounds" | Left of the midline, below the umbilicus |
| Homila yurak urishi | Сердцебиение плода | Observation.valueQuantity (`focus` = новорождённый) | LOINC `55283-6` "Fetal Heart rate" | 142 /min; 136 /min |
| Homilaning taxminiy vazni | Предполагаемая масса плода | Observation.valueQuantity (`focus` = новорождённый) | LOINC `11727-5` "Fetal Body weight estimated by US" | 2900 g; 2750 g |
| Oldinda keluvchi qismning joylashuvi | Расположение предлежащей части | Observation.valueString (`focus` = новорождённый) | только `code.text`, кода пока нет | Engaged at the pelvic inlet |
| Tug'ruq faoliyati | Родовая деятельность | Observation.valueString | только `code.text`, кода пока нет | Regular contractions, three per ten minutes |

---

### 5. Течение родов

Код раздела: LOINC `57074-7` "Labor and delivery process Narrative", как в Форме 111.

Роды длятся от их начала до рождения последа. Продолжительность передаётся в минутах: 01:30 в форме - это 90 min.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Tug'ruqning boshlanishi va tugashi, umumiy davomiyligi | Начало и окончание родов, общая продолжительность | Observation.effectivePeriod; valueQuantity | [Labor, Delivery and Newborn Codes](ValueSet-labor-delivery-and-newborn-code-vs.html) SNOMED `271562002` "Total duration of labor" | 06:10 - 12:37, 387 min |
| I davr | I период | Observation.valueQuantity | SNOMED `169821004` "Duration of first stage of labor" | 355 min |
| II davr | II период | Observation.valueQuantity | SNOMED `169822006` "Duration of second stage of labor" | 22 min |
| III davr; tug'ilishdan yo'ldosh tushguncha | III период; от рождения до выделения последа | Observation.valueQuantity | SNOMED `169823001` "Duration of third stage of labor" | 10 min |
| Qog'onoq suvi ketgan vaqt | Время излития вод | Observation.valueDateTime | SNOMED `289251005` "Time rupture of membranes detected" | 2026-08-16T10:05:00+05:00 |
| Qog'onoq suvi hajmi | Объём околоплодных вод | Observation.valueQuantity | [Amniotic Fluid Volume Code](ValueSet-amniotic-fluid-volume-measurement-code-vs.html) `chr-0087-0001` "Amniotic fluid volume" | 650 mL |
| Qog'onoq suvi | Характер околоплодных вод | Observation.valueCodeableConcept | `code` [Amniotic Fluid Appearance Code](ValueSet-amniotic-fluid-observation-code-vs.html) LOINC `1887-9` "Appearance of Amniotic fluid"<br>`value` [Amniotic Fluid Characteristic](ValueSet-amniotic-fluid-characteristic-vs.html) | Clear (`168090003`) |
| Bachadon bo'yni to'liq ochilgan vaqt | Время полного раскрытия | Observation.valueQuantity; effectiveDateTime | [Cervical Dilation Code](ValueSet-cervical-dilation-measurement-code-vs.html) SNOMED `289825001` "Diameter of cervical dilatation" | 10 cm в 2026-08-16T12:05:00+05:00 |
| Kuchanish boshlangan vaqt | Начало потуг | Observation.valueDateTime | только `code.text`, кода пока нет | 2026-08-16T12:10:00+05:00 |
| Tug'ruqni qabul qildi | Роды принимала | Procedure.performer.function; performer.actor | `code` SNOMED `236973005` "Delivery procedure"<br>`function` [Birth Attendant](CodeSystem-birth-attendant-cs.html) `chr-0091-0001` "Birth attendant" | Tursunova N.S. |
| Psixologik yordam va uning natijasi | Психологическая поддержка и её результат | Procedure.code; outcome | `code` SNOMED `698506008` "Supportive counseling"<br>`outcome` [Intervention Effectiveness](ValueSet-intervention-effectiveness-vs.html) | Successful (`385669000`) |
| Og'riqsizlantirish uchun dori vositalari | Обезболивающие препараты | [MedicationAdministration](https://hl7.org/fhir/R5/medicationadministration.html).medication; occurence[x]; dosage | SNOMED CT | Analgesic (`373265006`) |
| Yuborilgan dori vositalarining samarasi | Эффект введённых препаратов | Observation.valueCodeableConcept (`focus` = MedicationAdministration) | `code` [Labor Pain Relief Effect Code](ValueSet-maternal-labor-medication-effect-code-vs.html) `chr-0127-0001` "Effect of administered medication"<br>`value` [Intervention Effectiveness](ValueSet-intervention-effectiveness-vs.html) | Successful (`385669000`) |

---

### 6. Сведения о новорождённых

Код раздела: LOINC `57075-4` "Newborn delivery information".

Каждый новорождённый - отдельный [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html). Пока у новорождённого нет ПИНФЛ, он идентифицируется номером медкарты DMED; Форма 097 использует тот же Patient и добавляет ПИНФЛ, когда он выдан. Строки от «Ребёнок родился живым / мёртвым» до пуповины повторяются для каждого новорождённого, с ним в `subject`.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Chaqaloq tibbiy kartasi | Медкарта ребёнка | Patient.identifier[healthCardId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/hc`<br>`type` `HC` | NB-096-2026-000123-1 |
| Jinsi | Пол | Patient.gender | - | male; female |
| Tug'ilgan sana | Дата рождения | Patient.birthDate | - | 2026-08-16 |
| Egizaklar tartibi | Порядок рождения двойни | Patient.multipleBirthInteger | - | 1; 2 |
| Bola tirik / o'lik tug'ilgani | Ребёнок родился живым / мёртвым | Observation.valueCodeableConcept | `code` [Form111 General Observation Code](ValueSet-form111-general-observation-code-vs.html) `chr-0035-00013` "Live/stillbirth status", как в Форме 111<br>`value` [Newborn Birth Condition](ValueSet-form111-newborn-birth-condition-vs.html) | Livebirth (`281050002`); см. примеры [антенатальной](Bundle-example-form-096-antepartum-stillbirth.html) и [интранатальной](Bundle-example-form-096-intrapartum-stillbirth.html) гибели плода |
| Oldinda kelgan qismi | Предлежание | Observation.valueCodeableConcept | `code` SNOMED `271692001` "Presentation of fetus"<br>`value` [Fetal Presentation](ValueSet-fetal-presentation-vs.html) | Cephalic (`1209182005`); breech (`6096002`) |
| Vazni | Масса | Observation.valueQuantity | [Labor, Delivery and Newborn Codes](ValueSet-labor-delivery-and-newborn-code-vs.html) LOINC `8339-4` "Birth weight Measured" | 2850 g; 2700 g |
| Bo'yi | Рост | Observation.valueQuantity | LOINC `89269-5` "Body height Measured --at birth" | 49 cm; 48 cm |
| Bosh aylanasi | Окружность головы | Observation.valueQuantity | LOINC `9843-4` "Head Occipital-frontal circumference" | 34 cm; 33 cm |
| Ko'krak aylanasi | Окружность груди | Observation.valueQuantity | SNOMED `248366000` "Chest circumference" | 32 cm; 31 cm |
| Umumiy ahvoli | Общее состояние | Observation.valueCodeableConcept | `code` `chr-0005-00003` "General condition"<br>`value` [Satisfactory Status](ValueSet-satisfactory-status-vs.html) | Satisfactory (`162669003`) |
| Apgar bahosi | Оценка по Апгар | Observation.valueInteger | LOINC `9272-6` "1 minute Apgar Score" | 8 |
| Kindik uzunligi | Длина пуповины | Observation.valueQuantity | SNOMED `249194006` "Length of umbilical cord" | 55 cm; 52 cm |
| Kindik o'ralishi | Обвитие пуповины | Observation.valueBoolean | только `code.text`, кода пока нет | false |
| Kindik xususiyatlari | Особенности пуповины | Observation.valueString | только `code.text`, кода пока нет | Three vessels, no true knot |
| Gonoblenoreya profilaktikasi | Профилактика гонобленнореи | Procedure.code; occurrenceDateTime | [Newborn Eye Prophylaxis Code](ValueSet-newborn-eye-prophylaxis-code-vs.html) `chr-0085-0001` "Neonatal ocular prophylaxis against gonococcal ophthalmia" | 2026-08-16T12:28:00+05:00 |
| Tirik tug'ilganlar soni | Живорождённых | Observation.valueInteger (`subject` = мать) | LOINC `73773-4` "Number of infants in this delivery delivered alive" | 2 |
| O'lik tug'ilganlar soni | Мертворождённых | Observation.valueInteger (`subject` = мать) | SNOMED `252112002` "Number of stillbirths" | 0 |
| Tug'ilgandan keyin vafot etganlar soni | Умерших после рождения | Observation.valueInteger (`subject` = мать) | только `code.text`, кода пока нет | 0 |
| Yo'ldosh ajralishi | Отделение последа | Procedure.code; occurrenceDateTime | [Placenta Delivery Method](ValueSet-placenta-delivery-method-vs.html) | O'z-o'zidan ajraldi (`chr-0086-0002`) |
| Yo'ldosh butunligi | Целостность плаценты | Observation.valueCodeableConcept | `code` SNOMED `364343000` "Completeness of placenta"<br>`value` [Placenta and Membranes Completeness](ValueSet-tissue-integrity-status-vs.html) | Complete (`249170006`) |
| Pardalar butunligi | Целостность оболочек | Observation.valueCodeableConcept | `code` SNOMED `364351002` "Completeness of membranes"<br>`value` [Placenta and Membranes Completeness](ValueSet-tissue-integrity-status-vs.html) | Complete (`249181009`) |
| Qon yo'qotish | Кровопотеря | Observation.valueQuantity (`subject` = мать) | SNOMED `364332008` "Blood loss in labor" | 320 mL |

---

### 7. Послеродовой период

Код раздела: SNOMED `133906008` "Postpartum care", как в Форме 111.

Строки повторяются для каждого дня наблюдения.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Umumiy ahvoli | Общее состояние | Observation.valueCodeableConcept | `code` [Postpartum Observation Codes](ValueSet-maternal-postpartum-assessment-code-vs.html) `chr-0005-00003` "General condition"<br>`value` [Satisfactory Status](ValueSet-satisfactory-status-vs.html) | Satisfactory, afebrile (`162669003`) |
| Sut bezlari | Молочные железы | Observation.valueString | LOINC `10193-1` "Physical findings of Breasts Narrative", как в Форме 111 | Soft, lactation established |
| Bachadon tubi balandligi | Высота дна матки | Observation.valueQuantity | LOINC `11881-0` "Uterus Fundal height Tape measure" | 14 cm |
| Loxiyalar | Лохии | Observation.valueCodeableConcept | `code` SNOMED `364239002` "Lochia feature"<br>`value` находка SNOMED о лохиях | Lochia rubra, moderate (`278072004`) |
| Siydik pufagi | Мочевой пузырь | Observation.valueString | SNOMED `249585009` "Urinary bladder finding" | Spontaneous urination |
| Ich kelishi | Стул | Observation.valueString | SNOMED `39211005` "Bowel action" | Normal |
| Davolash bo'yicha tavsiyalar | Рекомендации по лечению | Observation.valueString | только `code.text`, кода пока нет | Breastfeeding support, hydration and routine postpartum monitoring |
| Parhez stoli | Диетический стол | Observation.valueInteger | только `code.text`, кода пока нет | 15 |

---

### 8. Назначение и введение лекарственных средств

Код раздела: LOINC `29549-3` "Medication administered Narrative".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Dori buyurilishi | Назначение лекарственного средства | [MedicationRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-medicationrequest.html).medication; dosageInstruction | SNOMED CT | Acetaminophen (`387517004`), 500 mg orally every 8 hours as needed |
| Dori yuborilishi | Введение лекарственного средства | [MedicationAdministration](https://hl7.org/fhir/R5/medicationadministration.html).medication; occurence[x]; dosage | SNOMED CT | Acetaminophen (`387517004`), 500 mg |

---

### 9. Назначенные исследования

Код раздела: LOINC `18776-5` "Plan of care note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Tekshiruv buyurilishi | Назначение исследования | [ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html).code; authoredOn | LOINC | CBC panel - Blood by Automated count (`58410-2`) |
| Tekshiruv natijasi | Результат исследования | Observation.value[x] (`basedOn` = ServiceRequest) | LOINC | Hemoglobin 108 g/L (`718-7`) |

---

### 10. Назначенные процедуры

Код раздела: LOINC `29554-3` "Procedure Narrative".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Muolaja buyurilishi | Назначение процедуры | ServiceRequest.code | `code.text`, если у процедуры нет кода | Perineal wound care |
| Muolaja bajarilishi | Выполнение процедуры | Procedure.code; occurrenceDateTime (`basedOn` = ServiceRequest) | `code.text`, если у процедуры нет кода | Perineal wound care, 2026-08-17T08:45:00+05:00 |

---

### 11. Использованные материалы

Код раздела: LOINC `46264-8` "History of medical device use".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Ishlatilgan materiallar | Использованные материалы | [SupplyDelivery](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-supply-delivery.html).suppliedItem | SNOMED CT | Dressing (`129003000`), 2 |

---

### 12. Листки нетрудоспособности

Код раздела: LOINC `34109-9` "Note", как в Форме 066.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Mehnatga layoqatsizlik varaqasi | Листок нетрудоспособности | [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html) | - | - |

---

### 13. Ответственные лица и подписи

Код раздела: LOINC `51899-3` "Details Document".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Shifokor | Врач | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Rasulova Malika Bahodirovna (`2222.1`) |
| Akusherka | Акушерка | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Tursunova Nodira Saidovna (`3222.1`) |
| Imzo | Подпись | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | `type` [UZ Core Signature Type](https://dhp.uz/fhir/core/en/CodeSystem-signature-type-cs.html) | soliqAuth, 2026-08-18T15:30:00+05:00 |

---

### Другие примеры

- [Антенатальная гибель плода](Bundle-example-form-096-antepartum-stillbirth.html)
- [Интранатальная гибель плода](Bundle-example-form-096-intrapartum-stillbirth.html)
- [Минимальный документ](Bundle-example-form-096-minimal.html)
- [Автор без известной должности](Bundle-example-form-096-author-without-role.html)
