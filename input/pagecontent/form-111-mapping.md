### Form 111 - Individual Pregnancy Card

This page documents the mapping between Form 111 (Индивидуальная карта беременной и родильницы) fields and FHIR resources.

### Overview

Form 111 is the individual antenatal care record maintained throughout a woman's pregnancy and postpartum period. The form captures demographics, laboratory results, obstetric and medical anamnesis, serial prenatal visit observations, and delivery outcomes. It maps to a FHIR Document Bundle conforming to the [Form 111 Pregnancy Composition](StructureDefinition-form-111-pregnancy-composition.html) profile. All clinical resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles where applicable.

### Field Mapping

#### Patient Demographics

| Field (Ru) | FHIR Element | Code / Notes | Example |
|---|---|---|---|
| Номер Med ID | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[healthCardId] | system: `https://gov.uz/ssv/identifier/healthcard` | MED-2025-004512 |
| Фамилия, имя, отчество | Patient.name | — | Каримова Нилуфар Бахтиёровна |
| Дата рождения | Patient.birthDate | — | 1998-05-15 |
| Семейное положение | Patient.maritalStatus | `http://terminology.hl7.org/CodeSystem/v3-MaritalStatus` | M (Married) |
| Адрес проживания | Patient.address | — | г. Ташкент, ул. Амира Темура, д. 45, кв. 12 |
| Телефон | Patient.telecom | system = phone | +998901234567 |
| Образование | UzCoreSocioeconomicObservation.valueCodeableConcept | EducationVS | Среднее специальное |
| Специальность | UzCoreSocioeconomicObservation.value[valueString] | — | Педагог |
| Должность | UzCoreSocioeconomicObservation.value[PositionAndProfessionVS] | — | Учитель |
| Условия труда | UzCoreSocioeconomicObservation.value[x] | — | Нормальные |

#### Husband Information

| Field (Ru) | FHIR Element | Code / Notes | Example |
|---|---|---|---|
| Ф.И.О. супруга | [RelatedPerson](https://hl7.org/fhir/R5/relatedperson.html).name | relationship = `$v3-RoleCode#SPS` | Каримов Жасур Абдуллаевич |
| Место работы супруга (телефон) | RelatedPerson.telecom | system = phone | +998907654321 |

#### Registration

| Field (Ru) | FHIR Element | Code / Notes | Example |
|---|---|---|---|
| Дата постановки на учёт | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).actualPeriod.start | — | 2025-01-15 |

---

#### Laboratory Results

All lab results map to [UZCoreObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html) resources collected in the `labResults` section (LOINC `26436-6`).

| Field (Ru) | Observation.code | Input Values | valueCodeableConcept codes |
|---|---|---|---|
| Группа крови | LOINC `883-9` "ABO group [Type] in Blood" | I / II / III / IV | I → SNOMED `112144000` Blood group O · II → SNOMED `112141000` Blood group A · III → SNOMED `112142007` Blood group B · IV → SNOMED `112143002` Blood group AB |
| Rh-принадлежность беременной | LOINC `10331-7` "Rh [Type] in Blood" · subject = Patient | Rh+ / Rh− | SNOMED `165747005` RhD positive · SNOMED `165748000` RhD negative |
| Rh-принадлежность супруга | LOINC `10331-7` "Rh [Type] in Blood" · subject = RelatedPerson (husband) | Rh+ / Rh− | SNOMED `165747005` RhD positive · SNOMED `165748000` RhD negative |
| RW I (реакция Вассермана I) | LOINC `5292-8` "Reagin Ab [Presence] in Serum by VDRL" | положительный / отрицательный | SNOMED `10828004` Positive · SNOMED `260385009` Negative |
| RW II (реакция Вассермана II) | LOINC `20507-0` "Reagin Ab [Presence] in Serum by RPR" | положительный / отрицательный | SNOMED `10828004` Positive · SNOMED `260385009` Negative |
| ВИЧ | LOINC `56888-1` "HIV 1+2 Ab + HIV1 p24 Ag [Presence]" (4th gen Ag/Ab combo) or LOINC `31201-7` (Ab only) | положительный / отрицательный | SNOMED `10828004` Positive · SNOMED `260385009` Negative |
| HBsAg I | LOINC `109335-0` "Hepatitis B virus surface Ag [Measurement] in Serum" · Observation.issued = test date | положительный / отрицательный | SNOMED `10828004` Positive · SNOMED `260385009` Negative |
| HBsAg II | LOINC `109335-0` "Hepatitis B virus surface Ag [Measurement] in Serum" · Observation.issued = second test date | положительный / отрицательный | SNOMED `10828004` Positive · SNOMED `260385009` Negative |
| Гонококк | LOINC `24111-7` "Neisseria gonorrhoeae DNA [Presence] by NAA" | положительный / отрицательный | SNOMED `10828004` Positive · SNOMED `260385009` Negative |
| Токсоплазмоз | LOINC `22580-5` "Toxoplasma gondii IgG Ab [Presence] in Serum" | положительный / отрицательный | SNOMED `10828004` Positive · SNOMED `260385009` Negative |
| Другие исследования | UZCoreObservation.code (local/LOINC) | free | UZCoreObservation.value[x] |

---

#### Medical Anamnesis

Resources in the `anamnesis` section (LOINC `11329-0`).

| Field (Ru) | FHIR Element | Code / Notes | Example |
|---|---|---|---|
| Анамнез (общий) | UZCoreObservation.code | SNOMED `363788007` "Clinical history/examination observable" | — |
| Перенесённые заболевания | [Condition](https://hl7.org/fhir/R5/condition.html).clinicalStatus = completed · Condition.code | ICD-10 | ОРВИ, краснуха |
| Гинекологические заболевания | Condition.code | ICD-10 | — |
| Операции | [Procedure](https://hl7.org/fhir/R5/procedure.html).status = completed · Procedure.code | SNOMED or ICD-10 | Аппендэктомия |
| Половая жизнь (возраст начала) | UZCoreObservation.code | `yoshdan` (local) | 21 |
| Состояние здоровья мужа | Observation.category = social-history · Observation.code | LOINC `10157-6` "History of family member diseases note" | Здоров |

---

#### Obstetric History

Resources in the `obstetricsHistory` section (LOINC `10162-6`).

| Field (Ru) | FHIR Element | Code / Notes | Example |
|---|---|---|---|
| Диагноз: беременность (количество) | Observation.code | LOINC `11996-6` "Pregnancies" | valueInteger = 2 |
| Роды (количество) | Observation.code | LOINC `11977-6` "Parity" | valueInteger = 1 |
| Осложнения в период данной беременности | Observation.code | LOINC `65869-0` "Pregnancy complication" | Observation.value[x] |
| Экстрагенитальные заболевания (диагноз) | Condition.code | ICD-10 | — |
| Исход беременности — аборт | UZCoreObservation.code | LOINC `63893-2` "Outcome of pregnancy" | valueCodeableConcept: SNOMED `386639001` Termination of pregnancy · SNOMED `17369002` Miscarriage |
| Исход беременности — роды | UZCoreObservation.code | LOINC `63893-2` | valueCodeableConcept: SNOMED `367494004` Premature birth · SNOMED `21243004` Term birth |
| Ребёнок (живой / мертворождённый) | Observation.value[x] | LOINC `63893-2` | LOINC `LA14270-5` Live birth · LOINC `LA14271-3` Stillborn |
| Масса тела ребёнка | UZCoreObservation.code | SNOMED `364589006` Birth weight | valueQuantity (kg) |
| Рост ребёнка | UZCoreObservation.code | SNOMED `50373000` Body height | valueQuantity (cm) |
| Выписан из роддома | UZCoreEncounter.admission.dischargeDisposition | — | — |
| Умер | Patient.deceasedBoolean | — | false |
| Переведён в стационар (диагноз) | UZCoreEncounter.admission.destination · UZCoreCondition.code | ICD-10 | — |
| Особенности предыдущих беременностей | UZCoreQuestionnaireResponse | — | free text |

---

#### Menstrual and Reproductive History

Resources in the `menstrualHistory` section (LOINC `49033-4`).

| Field (Ru) | FHIR Element | Code / Notes | Example |
|---|---|---|---|
| Особенности менструального цикла | Observation.code | LOINC `42798-9` "Age at menarche" · Observation.valueInteger | 13 |
| Длительность цикла | Observation.code | LOINC `64700-8` "Menstrual cycle duration" | valueQuantity = 28 d |
| Длительность менструации | Observation.code | LOINC `3144-3` "Days of menstruation" | valueQuantity = 5 d |
| С момента последней менструации | Observation.code | LOINC `8665-2` "Last menstrual period start date" | valueDateTime = 2024-11-18 |
| Первое шевеление плода | Observation.code | LOINC `57088-7` "Fetal movement - Reported" | valueDateTime = 2025-04-05 |

---

#### Initial Obstetric Examination

Resources in the `initialExamination` section (LOINC `57059-8`).

| Field (Ru) | FHIR Element | Code / Notes | Example |
|---|---|---|---|
| Рост | UZCoreObservation.code | SNOMED `50373000` Body height | valueQuantity = 165 cm |
| Масса тела (вес) | UZCoreObservation.code | SNOMED `27113001` Body weight | valueQuantity = 58 kg |
| Особенности телосложения | Observation.code, Observation.value[x] | — | Нормостеническое |
| Состояние молочных желёз | Observation.code | LOINC `10193-1` "Physical findings of Breasts Narrative" | Observation.value[x] |
| Сердечно-сосудистая система | Observation.code | LOINC `LP7473-4` Peripheral vascular system | Observation.value[x] |
| Артериальное давление (правая рука) | UZCoreObservation.code | LOINC `85354-9` Blood pressure panel · bodySite = SNOMED `368209003` Right upper arm | component systolic `8480-6` / diastolic `8462-4` |
| Артериальное давление (левая рука) | UZCoreObservation.code | LOINC `85354-9` Blood pressure panel · bodySite = SNOMED `368208006` Left upper arm | component systolic `8480-6` / diastolic `8462-4` |
| Размеры таза (D.sp, D.cr, D.troch, C.ext, C.diag, C.vera) | Observation.code, Observation.value[x] | LOINC `10204-6` "Physical findings of Pelvis Narrative" | numeric (cm) |
| Наружное акушерское обследование | Observation.performer | — | — |
| Высота стояния дна матки | Observation.code | LOINC `11881-0` "Uterine fundal height" | valueQuantity (cm) |
| Окружность живота | Observation.code | LOINC `8280-0` "Waist Circumference at umbilicus by Tape measure" | valueQuantity (cm) |
| Положение плода | Observation.code | SNOMED `364607000` "Position of fetus" | valueString |
| Предлежащая часть плода | Observation.code | LOINC `11877-8` "Fetal presentation US" | valueCodeableConcept (головка / тазовое / ножное) |
| Сердцебиение плода | Observation.code | LOINC `55283-6` "Fetal Heart rate" | valueQuantity (bpm) |

**Влагалищное исследование**

| Field (Ru) | FHIR Element | Code / Notes |
|---|---|---|
| Наружные половые органы | Observation.code | LOINC `11432-2` "Physical findings of Female genitalia" |
| Влагалище | Observation.code · Observation.bodySite | LOINC `32487-1` "Physical findings of Vagina" · SNOMED `181441005` Entire vagina |
| Шейка матки | Observation.code · Observation.bodySite | LOINC `32486-3` "Physical findings of Cervix Narrative" · SNOMED `71252005` Cervix uteri structure |
| Тело матки | Observation.code · Observation.bodySite | LOINC `30705-8` "US Uterus and Fallopian tubes" · SNOMED `35039007` Uterine structure |
| Яичники, маточные трубы | Observation.code, Observation.value[x] | — |

---

#### Diagnosis

Resources in the `diagnosis` section (LOINC `29308-4`).

| Field (Ru) | FHIR Element | Code / Notes | Example |
|---|---|---|---|
| Диагноз (МКБ-10) | [Condition](https://hl7.org/fhir/R5/condition.html).code | ICD-10 | Z34.2 Normal second pregnancy |
| Срок беременности — недели | Observation.code | LOINC `11884-4` "Gestational age Estimated" | valueQuantity = 28 wk |
| Предполагаемая дата родов | Observation.code | LOINC `11778-8` "Delivery date Estimated" | valueDateTime = 2025-08-25 |
| Ф.И.О. врача | [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html).name | — | Тошматова Д.К. |
| Подпись, время | UZCoreProvenance.date · Provenance.signature | — | 2025-04-10T10:30:00+05:00 |

---

#### Prenatal Visit Records (repeating per visit)

Each visit is a separate `visitRecord` section (LOINC `57073-9`). The section can repeat for every antenatal encounter.

| Field (Ru) | FHIR Element | Code / Notes | Example |
|---|---|---|---|
| Дата | Observation.issued | — | 2025-04-10 |
| Жалобы | Observation.code | LOINC `75322-8` "Complaint" | Без жалоб |
| Общее состояние | Condition | МКБ-10 | Z34.2 |
| Масса тела (вес) | Observation.code | SNOMED `27113001` Body weight | valueQuantity (kg) = 67 |
| Артериальное давление | Observation.code | LOINC `85354-9` | component systolic / diastolic |
| Пульс | Observation.code | LOINC `8867-4` "Heart rate" | valueQuantity = 78 /min |
| Окружность живота | Observation.code | LOINC `8280-0` Waist circumference | valueQuantity (cm) |
| Высота стояния дна матки | Observation.code | LOINC `11881-0` Uterine fundal height | valueQuantity (cm) |
| Предлежащая часть и положение плода | Observation.code | LOINC `11877-8` Fetal presentation | valueCodeableConcept |
| Сердцебиение плода | Observation.code | LOINC `55283-6` Fetal Heart rate | valueQuantity (bpm) |
| Шевеление плода | Observation.code | LOINC `57088-7` Fetal movement | valueDateTime |
| Содержание белка в моче | Observation.code | LOINC `14956-7` Microalbumin 24h Urine | valueQuantity |
| Уровень Hb в крови | Observation.code | LOINC `718-7` "Hemoglobin [Mass/volume] in Blood" | valueQuantity (g/dL); interpretation L/N/H |
| Диагноз (срок беременности, недели) | Condition.code · Condition.stage.summary | ICD-10 · SNOMED `412726003` Length of gestation | — |
| Патологические изменения | Observation.code | LOINC `34122-2` Pathology procedure note | Observation.value[x] |
| Показания, рекомендации | Observation.note or CarePlan.activity.detail.description | — | — |
| Госпитализирована | Encounter.class | — | IMP (inpatient) |
| Введён стафилококковый анатоксин | Immunization or MedicationAdministration | — | — |
| Следующий визит | [Appointment](https://hl7.org/fhir/R5/appointment.html).start | status = booked | 2025-05-08 |
| Подпись | UZCoreProvenance.date | — | — |
| Осмотр терапевта | Observation.note or CarePlan.activity.detail.description | — | — |
| Осмотр стоматолога | Observation.note or CarePlan.activity.detail.description | — | — |

---

### Bundle Structure

```text
Bundle (document)
├── Composition (Form111PregnancyComposition)
├── Patient (pregnant woman demographics)
├── RelatedPerson (husband)
├── Encounter (registration / antenatal visit)
├── Practitioner (gynecologist)
├── Observation[] — lab tests, vitals, obstetric measurements (many)
├── Condition[] — diagnoses, past diseases (ICD-10)
├── Procedure[] — prior surgeries
├── Appointment (next scheduled visit)
└── Provenance (physician signature)
```

---

### Example

See [Form 111 pregnancy card example](Bundle-example-form-111-pregnancy-card.html) for a complete FHIR document example.
