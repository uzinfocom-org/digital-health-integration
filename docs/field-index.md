# Cross-form field index

This index lists the fields that recur across the form mapping pages (`input/pagecontent/form-*-mapping.md`), with one canonical FHIR mapping for each.
Look a field up here by meaning, not by label, before mapping it in a new form or reviewing a mapping: the same concept appears under different uz/ru labels in different forms.
A field that is similar but not identical (another subject, a narrower answer list, an extra option) reuses the canonical path and code and states the difference on its own page.
Add a concept here when a second form maps it, and record any form that deviates as drift in the notes rather than as a second canonical answer.
"Reference" is the form whose page and example are the reference instance for the concept; "Also in" lists the other forms that map it.

## Composition header and document info

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Document profile | - | `Parent: UZCoreComposition` | - | 096 | 097 | Category slices `dhpCategory` + `formCategory`, custodian `only Reference(UZCoreOrganization)`, `^short` on every header element and section. Drift: 066, 066-1, 011 and 111 derive from base Composition; 066-1 and 111 allow any Organization as custodian. |
| Document version UUID | Hujjat versiyasi UUID / Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | 096 | 111 | |
| Document instance UUID | Hujjat UUID, Hujjat instansiyasi UUID / Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | 096 | 097, 111 | |
| Form number | Shakl raqami / Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 096 | 097, 111 | |
| Document status | Hujjat holati / Статус документа | Composition.status | `preliminary` while the record is open, `final` once closed | 096 | 097, 111 | A record kept during the stay leaves status open; 066, 066-1 and 011 fix `final` because they are written once, at discharge or per session. |
| Document type | Hujjat turi / Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-*` plus a LOINC coding | 096 | 097 | Drift: 111 sends LOINC `34133-9` only. |
| Document category | Hujjat kategoriyasi / Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" and [Document Category](https://dhp.uz/fhir/integrations/en/CodeSystem-document-category-cs.html) `form-0XX` | 096 | 097 | Drift: 111 sends only the Document Category code. |
| Patient | Bemor / Пациент(ка) | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | 096 | 097, 111 | |
| Stay or episode | Kasallik tarixi / История болезни | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | 096 | 097 | 111 is an outpatient card: `Composition.event.period` plus EpisodeOfCare. |
| Document date | Hujjat sanasi, Hujjat shakllantirilgan sana / Дата документа | Composition.date | - | 096 | 097, 111 | Time of the last edit, not the admission or examination time. |
| Author | Shifokor, Hujjatni saqlagan foydalanuvchi / Врач, Пользователь, сохранивший документ | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html), or [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html) when the role is not known | 096 | 097, 111 | |
| Custodian | Hujjat egasi, Kartani saqlovchi muassasa / Организация-хранитель | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | 096 | 111 | |
| Title | Hujjat sarlavhasi / Заголовок документа | Composition.title | - | 096 | 097, 111 | |
| Institution name | Muassasa nomi / Наименование учреждения | Organization.name | - | 066 | 066-1, 111 | |
| Institution tax ID | Muassasa kodi, Muassasa STIR / Код учреждения, ИНН учреждения | Organization.identifier[taxId] | `https://dhp.uz/fhir/core/sid/org/uz/soliq`, type `TAX` | 096 | 066, 066-1 | |

## Patient

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Full name | Bemor F.I.Sh., Familiyasi / Ismi / Otasining ismi / ФИО | Patient.name | - | 066 | 066-1, 096, 111, 130, 011 | Separate fields go to `family` and `given` (patronymic is the second `given`); a single field goes to `name.text`. |
| PINFL | JShShIR / ПИНФЛ | Patient.identifier[nationalId] | `https://dhp.uz/fhir/core/sid/pid/uz/ni`, type `NI` | 096 | 066, 066-1, 130 | |
| Med ID | Med ID raqami / Идентификатор медкарты | Patient.identifier[healthCardId] | `https://dhp.uz/fhir/core/sid/pid/uz/hc`, type `HC` | 111 | 096 | The patient-level health card, not the inpatient record number (see Encounter). |
| ID card or passport | ID yoki Pasport / ID или паспорт | Patient.identifier[passportLocal] | `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`, type `PPN` | 066-1 | 066 | |
| Birth date | Tug'ilgan sana(si) / Дата рождения | Patient.birthDate | - | 066 | 066-1, 096, 097, 111, 130 | Age on the paper form is derived, not sent. |
| Sex | Jinsi / Пол | Patient.gender | AdministrativeGender | 066 | 066-1, 096, 130 | |
| Address | Yashash manzili, Manzil / Адрес проживания | Patient.address | - | 066 | 066-1, 096, 097, 111 | Region `state`, district `district`, mahalla `city`, street/house/flat `line`, `postalCode`. |
| Phone, e-mail | Telefon, E-mail / Телефон, E-mail | Patient.telecom | - | 066 | 066-1, 096, 111 | |
| Marital status | Oilaviy holati / Семейное положение | Patient.maritalStatus | [UZ Core Marital Status](https://dhp.uz/fhir/core/en/ValueSet-marital-status-vs.html) | 096 | 097, 111 | |
| Nationality | Millati / Национальность | Patient.extension[nationality] | [UZ Core Nationality](https://dhp.uz/fhir/core/en/ValueSet-nationality-vs.html) | 096 | 097 | Drift: 066 and 066-1 map "Fuqaroligi" (citizenship, a different concept) to this extension as "Local code". |
| Attached clinic | Bemor biriktirilgan muassasa / Прикреплённое учреждение | Patient.managingOrganization | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | 066 | 066-1 | |
| Allergy | Allergiya / Аллергия | AllergyIntolerance.code | SNOMED CT; `716186003` "No known allergy" only when the form says so | 096 | - | Bound to recur. |
| Spouse | Turmush o'rtog'i / Супруг | RelatedPerson.name; identifier[nationalId]; telecom | - | 096 | 111 | |

## Encounter admission, transfer and discharge

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Inpatient record number | Kasallik tarixi raqami, Tibbiy karta raqami, Bemor ro'yxat raqami / Номер истории болезни | Encounter.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number` | 066 | 066-1, 096, 097 | Drift: 066-1 also maps "Tibbiy bayonnoma №" and 096 maps "Tibbiy karta raqami" to Patient healthCardId; check whether they mean the record number. |
| Admission date and time | Yotqizilgan sanasi va vaqti, Qabul qilingan sana / Дата и время госпитализации | Encounter.actualPeriod.start | - | 066 | 066-1, 096, 111 | |
| Discharge date and time | Chiqarilgan sanasi va vaqti / Дата и время выписки | Encounter.actualPeriod.end | - | 066 | 066-1, 096 | |
| Bed-days | O'rin kunlari, Jami o'rin kunlar, O'tkazilgan kunlar / Койко-дни | Encounter.length | UCUM `d` | 096 | 066, 066-1 | Drift: 066 offers "Observation.valueQuantity / Encounter.length" with LOINC `78033-8`. |
| Days in intensive care | Shundan, reanimatsiyada / Дни в реанимации | Observation.valueQuantity | LOINC `LP76050-1` "Intensive care unit" | 066 | 066-1 | |
| Admission type / source | Yotqizish turi, Bemorni kelish usuli / Тип госпитализации | Encounter.admission.admitSource | [Admit Source Local](https://dhp.uz/fhir/core/en/CodeSystem-admit-source-local-cs.html) | 066 | 066-1 | 066 pages say "Local code"; the codes are the core `mserv-0006-*`. |
| Referring institution | Yo'llagan muassasa / Направившее учреждение | Encounter.admission.origin → Organization | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | 096 | 066, 066-1 | Drift: 066 and 066-1 map it as `Organization.name`; 066-1 "Qaerdan keldi" puts a local code in `admission.origin`. |
| Brought by ambulance | Tez tibbiy yordam mashinasida keldi / Доставлен скорой помощью | Observation.valueBoolean | LOINC `LP97912-7` "Ambulance transport" | 066 | 066-1 | |
| Referral present | Yo'llanma mavjud / Наличие направления | Observation.valueBoolean | LOINC `57133-1` "Referral note" | 066 | 066-1 | |
| Emergency care given | Tezkor yordam ko'rsatildi / Экстренная помощь оказана | Observation.valueBoolean | LOINC `57276-8` | 066 | 066-1 | |
| Hospitalized | Shifoxonaga yotqizildi / Госпитализирован(а) | Observation.valueBoolean | SNOMED `32485007` "Hospital admission" | 066-1 | 111 | Drift: 111 uses local `chr-0035-00019`. |
| Previous hospitalizations | Avval necha marta shifoxonada davolangan / Количество предыдущих госпитализаций | Observation.valueInteger | local `num-previous-hospitalizations` | 066-1 | - | Bound to recur. |
| Bed type | O'rin joy turi / Тип койки | Encounter.location.form | local code | 066 | 066-1 | |
| Ward | Palata / Палата | Encounter.location.location → [Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html).identifier[unit] | [UZ Core Location Kinds](https://dhp.uz/fhir/core/en/CodeSystem-location-kinds-cs.html) `Ward` | 096 | - | Bound to recur. |
| Payment type | To'lov turi / Тип оплаты | Coverage.type | local code | 066 | 066-1 | |
| Discharge disposition | Shifoxonadan chiqarish holati, Gospitalizatsiya natijasi / Исход госпитализации | Encounter.admission.dischargeDisposition | core [encounter-discharge-disposition-vs](https://dhp.uz/fhir/core/en/ValueSet-encounter-discharge-disposition-vs.html): discharged `mserv-0004-00004`, transferred `other-hcf`, died `exp` | 096 | 066, 066-1, 111 | 096 lists the three codes in its own value set. Drift: 066 and 066-1 say "Local code"; 111 links only the home code system. |
| Transfer destination | O'tkazilgan muassasa / Учреждение перевода | Encounter.admission.destination → Organization | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | 096 | - | Goes with `other-hcf`. |
| Condition at discharge (treatment outcome) | Bemor holati, Davolash natijasi / Состояние пациента, Результат лечения | Encounter.subjectStatus | core [encounter-local-subject-status-cs](https://dhp.uz/fhir/core/en/CodeSystem-encounter-local-subject-status-cs.html) `loc-cs-001`..`004` | 066 | 066-1 | Not a separate Observation. |
| Attending physician | Davolovchi shifokor / Лечащий врач | PractitionerRole (section of responsible persons, or Encounter.participant.actor) | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | 096 | 066, 066-1, 097, 011 | Drift: 066 and 066-1 say "Local code" for the role. |

## Diagnoses

Every diagnosis is one [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html) with an ICD-10 `code`; its role goes in `Condition.category` from [Diagnosis Role](https://dhp.uz/fhir/integrations/en/CodeSystem-diagnosis-role-integration.html), and the Condition sits in the Composition sub-section for that role. `Encounter.diagnosis.use` and the core `diagnosis-type-cs` are not used for the role.

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Referring institution diagnosis | Yo'llagan muassasa tashxisi / Диагноз направившего учреждения | Condition.code; category | ICD-10; `referral` | 066 | 066-1 | |
| Admission diagnosis | Qabul bo'limi tashxisi, Qabul tashxisi / Диагноз при поступлении | Condition.code; category | ICD-10; `admission` | 066 | 066-1, 096 | |
| Provisional diagnosis | Taxminiy tashxis / Предварительный диагноз | Condition.code; category; verificationStatus | ICD-10; `main`; `provisional` | 097 | - | Drift: the 097 page row shows only `Condition.code`; the example sets category and status. |
| Clinical diagnosis | Klinik tashxis / Клинический диагноз | Condition.code; category; verificationStatus | ICD-10; `main`; `confirmed` | - | 096 | Drift: 096 sends it with no category, so only its section identifies it. |
| Final main diagnosis | Asosiy tashxis, Yakuniy tashxis, Chiqarish tashxisi / Основной, Заключительный диагноз | Condition.code; category; verificationStatus | ICD-10; `main`; `confirmed` | 066 | 066-1, 096, 097 | |
| Complication | Asorat, Tug'ruqdagi asoratlar / Осложнение | Condition.code; category | ICD-10; `complication` | 066 | 066-1, 096, 097 | |
| Concomitant disease | Yondosh tashxis / Сопутствующий диагноз | Condition.code; category | ICD-10; `concomitant` | 066 | 066-1 | |
| Competing disease | Raqobat tashxis / Конкурирующий диагноз | Condition.code; category | ICD-10; `competing` | 066 | 066-1 | |
| Background disease | Fon tashxis / Фоновый диагноз | Condition.code; category | ICD-10; `background` | 066 | 066-1 | |
| Past diseases | Boshdan o'tkazgan kasalliklari / Перенесённые заболевания | Condition.code | ICD-10 | 111 | 096 | History, no Diagnosis Role. |
| Pregnancy complication | Homiladorlik asorati / Осложнение беременности | Condition.code | ICD-10 | 111 | 097 | 111 also sends the risk-factor Observation `chr-0027-00003`. |

## Observations

Vitals, anthropometry, exam findings and history

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Complaints | Shikoyatlari / Жалобы | Observation.valueString | LOINC `8661-1` "Chief complaint - Reported" | 111 | - | Bound to recur. |
| Body temperature | Tana harorati, t(°C) / Температура тела | Observation.valueQuantity | LOINC `8310-5` | 096 | 097, 011 | |
| Pulse / heart rate | Puls, PS, Yurak urish sur'ati / Пульс, ЧСС | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 096 | 097, 111, 011 | |
| Blood pressure | Arterial qon bosimi / Артериальное давление | Observation.component.valueQuantity; bodySite | LOINC `85354-9` panel, components `8480-6` / `8462-4`; arm in `bodySite` | 096 | 111, 011 | |
| Respiratory rate | Nafas olish sur'ati / Частота дыхания | Observation.valueQuantity | LOINC `9279-1` | 097 | - | Bound to recur. |
| Oxygen saturation | SPO / Сатурация кислорода | Observation.valueQuantity | LOINC `2708-6`, additional `59408-5` | 011 | - | Bound to recur. |
| Body weight | Vazni, Tana vazni / Вес, Масса тела | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 111 | 096, 097 | 097 daily weights add `3141-9` "Body weight Measured". |
| Body height | Bo'yi / Рост | Observation.valueQuantity | LOINC `8302-2` "Body height" | 111 | 096 | |
| Birth weight | Vazni, Tug'ilishdagi vazn, Bola og'irligi / Вес при рождении | Observation.valueQuantity | LOINC `8339-4` "Birth weight Measured" | 097 | 066, 096, 111 | |
| Birth length | Bo'yi, Tug'ilgan bo'yi / Рост при рождении | Observation.valueQuantity | LOINC `89269-5` "Body height Measured --at birth" | 097 | 066, 096, 111 | |
| Head circumference | Bosh aylanasi / Окружность головы | Observation.valueQuantity | LOINC `9843-4` | 097 | 096 | |
| Chest circumference | Ko'krak aylanasi / Окружность груди | Observation.valueQuantity | SNOMED `248366000` | 097 | 096 | |
| General condition | Umumiy ahvoli / Общее состояние | Observation.valueCodeableConcept | `chr-0005-00003` "General condition"; value [Satisfactory Status](https://dhp.uz/fhir/integrations/en/ValueSet-satisfactory-status-vs.html) | 096 | 111 | |
| Breasts | Sut bezlari, Ko'krak bezi holati / Молочные железы | Observation.value[x] | LOINC `10193-1` | 096 | 111 | |
| Heart / cardiovascular findings | Yurak, Qon tomir tizimi / Сердце, Сердечно-сосудистая система | Observation.value[x] | LOINC `8702-3` (heart), `11421-5` (cardiovascular system) | 096 | 111 | Use the code matching the paper label. |
| Respiratory findings | Nafas olish tizimi / Органы дыхания | Observation.valueString | LOINC `11412-4` | 096 | - | Bound to recur. |
| Digestive findings | Hazm qilish tizimi / Органы пищеварения | Observation.valueString | LOINC `11399-3` | 096 | - | Bound to recur. |
| Illness duration / onset to admission | Kasallikning davomiyligi, Kasallik yoki jarohatlangandan so'ng necha soatda / Продолжительность заболевания | Observation.value[x] | LOINC `77977-7` "Illness duration" (quantity); local delay code (interval) | 066-1 | 066 | 066 sends the interval as "Local code". |
| Disability | Nogironlik / Инвалидность | Observation.valueCodeableConcept | local code | 066-1 | - | Bound to recur. |

Socioeconomic

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Occupation / position | Kasbi va lavozimi, Lavozimi, Ish joyi/kasbi / Профессия и должность | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | SNOMED `14679004` "Occupation"; value [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | 111 | 096, 097 | Drift: 066-1 "Ish joyi, lavozimi" says "Local code". |
| Workplace | Ish joyi / Место работы | Observation.valueString | LOINC `80427-8` "Employer name [Identifier]" | 111 | 096 | Organization only when it has an identifier. |
| Education | Ma'lumoti / Образование | UZCoreSocioeconomicObservation.valueCodeableConcept | SNOMED `105421008`; value [UZ Core Education](https://dhp.uz/fhir/core/en/CodeSystem-education-cs.html) | 111 | 066-1 | Drift: 066-1 says "Local code". |
| Social status | Ijtimoiy holati / Социальное положение | UZCoreSocioeconomicObservation.valueCodeableConcept | local code | 066 | 066-1 | |
| Benefit category | Imtiyoz toifasi / Льготная категория | UZCoreSocioeconomicObservation.valueCodeableConcept | local code | 066 | 066-1 | |
| Spouse health | Turmush o'rtog'ining sog'lig'i, Erining sog'ligi / Здоровье супруга | Observation.value[x] (`focus` = RelatedPerson) | SNOMED `720372000` "Health status of spouse" | 096 | 111 | Drift: 111 uses local `chr-0029-00001`. |

Obstetric

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Gestational age | Homiladorlik muddati / Срок беременности | Observation.valueQuantity | LOINC `18185-9` | 111 | 097 | |
| Gravidity | Homiladorlik soni / Количество беременностей | Observation.valueInteger | LOINC `11996-6` | 111 | 096, 097 | |
| Parity | Tug'ruq soni / Количество родов | Observation.valueInteger | LOINC `11977-6` | 111 | 096, 097 | |
| Last menstrual period | Oxirgi hayz sanasi / Дата последней менструации | Observation.valueDateTime | LOINC `8665-2` | 111 | 096 | |
| Age at menarche | Xayz ko'rish necha yoshdan boshlangan / Возраст начала менструаций | Observation.valueQuantity | LOINC `42798-9` | 111 | 096 | |
| Age at sexual debut | Jinsiy hayoti necha yoshdan boshlangan / Возраст начала половой жизни | Observation.valueQuantity | SNOMED `228456002` | 111 | 096 | |
| Quickening date | Homilaning birinchi qimirlashi / Первое шевеление плода | Observation.valueDateTime | LOINC `57065-5` | 111 | 096 | |
| Fundal height | Bachadon tubi balandligi / Высота дна матки | Observation.valueQuantity | LOINC `11881-0` | 111 | 096 | |
| Abdominal circumference | Qorin aylanasi / Окружность живота | Observation.valueQuantity | SNOMED `396552003` | 111 | 096 | |
| Pelvis measurements | Chanoq o'lchovlari / Размеры таза | Observation.component | `chr-0035-00002`, components `chr-0035-00003`..`00008` | 111 | 096 | |
| Fetal heart rate | Homilaning yurak urishi / Сердцебиение плода | Observation.valueQuantity | LOINC `55283-6` | 111 | 096 | 096 sets `focus` = newborn. |
| Fetal position / presentation | Homilaning holati, oldin keluvchi qismi / Положение, предлежание плода | Observation.valueCodeableConcept | SNOMED `364607000` (position), `271692001` (presentation), `249062004` (lie); value [Fetal Presentation](https://dhp.uz/fhir/integrations/en/ValueSet-fetal-presentation-vs.html) | 096 | 111 | 111 folds presentation into `364607000`. |
| Previous pregnancy outcome | Avvalgi homiladorlik natijasi / Исход предыдущей беременности | Observation.valueCodeableConcept | LOINC `63893-2`; value [Previous Pregnancy Outcome](https://dhp.uz/fhir/integrations/en/ValueSet-form111-previous-pregnancy-outcome-vs.html) | 111 | 096 | |
| Live / stillbirth | Bola tirik / o'lik tug'ilgani, Hayotiylik natijasi / Ребёнок родился живым / мёртвым | Observation.valueCodeableConcept | `chr-0035-00013` "Live/stillbirth status" | 111 | 096, 097 | |
| Delivery type by term | Tug'ruq turi (muddati bo'yicha), Tug'ruq o'z vaqtidami / Вид родов (по сроку) | Observation.valueCodeableConcept | `chr-0035-00015` "Type of delivery (by term)" | 111 | 096, 097 | |
| Apgar score | Apgar bahosi / Оценка по Апгар | Observation.valueInteger | LOINC `9272-6` "1 minute Apgar Score" | 097 | 096 | DMED sends only the 1-minute total. |
| Amniotic fluid appearance | Qog'onoq suvi / Характер околоплодных вод | Observation.valueCodeableConcept | LOINC `1887-9` | 096 | 097 | |

## Lab and instrumental results

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Blood group | Qon guruhi / Группа крови | Observation.valueCodeableConcept | LOINC `883-9`; value [Blood Group](https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs) (SNOMED, e.g. `112144000` "Blood group A") | 096 | 097, 111 | No LOINC answer codes. |
| Rh factor | Rezus omil / Резус-фактор | Observation.valueCodeableConcept | LOINC `10331-7` (`14908-8` for a newborn); value [Blood Rh](https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs) (SNOMED, e.g. `165747007` "RhD positive") | 096 | 097, 111 | |
| HIV | OITS, OIV / ВИЧ | Observation.valueCodeableConcept | LOINC `56888-1` (Ab+p24 Ag) or `7918-6` (Ab only), as the test was done; value SNOMED `260385009` "Negative", as in 111 | 066 | 066-1, 111 | Coded Observation, not a DiagnosticReport conclusion. |
| Syphilis (RW) | RW, WR / RW | Observation.valueCodeableConcept | LOINC `22461-8` "Reagin Ab [Presence] in Serum" | 111 | 096 | Drift: 066 and 066-1 use `47236-5` (treponemal IgG+IgM); RW is a reagin test. |
| HBsAg | Gepatit B, Hbs Ag / Гепатит B, HBsAg | Observation.valueCodeableConcept | LOINC `5196-1` (serum or plasma) | 066 | 066-1, 111 | Drift: 111 uses `5195-3` (serum). |
| Hepatitis C | Gepatit C / Гепатит C | Observation.valueCodeableConcept | LOINC `13955-0` | 066 | 066-1 | |
| TB drug susceptibility | O'pka silida doriga sezgirlik / Чувствительность туберкулёза к препаратам | Observation.valueCodeableConcept | LOINC `18769-0` | 066 | 066-1 | |
| Hemoglobin | Gemoglobin / Гемоглобин | Observation.valueQuantity | LOINC `718-7` | 096 | 111 | Drift: 130 sends a local laboratory code. |
| Gonococcus smear | Gonokokk / Гонококк | Observation.valueCodeableConcept | `chr-0001-00001` "Gonococcus test" | 111 | 096 | |
| Other analysis | Siydik tsentrifugati, Boshqa tekshiruv / Другое обследование | Observation.valueString | `chr-0001-00006` "Other analysis" | 111 | 096 | Only when no specific code exists. |
| Ordered test | Tekshiruv buyurilishi, Laboratoriya tekshiruvi / Назначение исследования | ServiceRequest.code; authoredOn | LOINC | 096 | 130 | Results point back with `basedOn`. |

## Procedures and medications

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Surgical operation | Operatsiya, Kod (ICHI) / Операция | [Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html).code; occurrenceDateTime; performer.actor | [ICHI Codes Accepted by DMED](https://terminology.dhp.uz/fhir/integrations/ValueSet/dmed-ichi-vs) | 066 | 096 | Drift: 096 codes operations in SNOMED. |
| Medication order | Dori buyurilishi / Назначение лекарственного средства | [MedicationRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-medicationrequest.html).medication; dosageInstruction | SNOMED CT or [UZ Core Medication Classification](https://dhp.uz/fhir/core/en/ValueSet-medication-classification-vs.html) | 096 | - | Bound to recur. |
| Medication given | Dori yuborilishi / Введение лекарственного средства | MedicationAdministration.medication; occurence[x]; dosage | SNOMED CT or UZ Core Medication Classification | 096 | 097, 011 | Base resource (no UZ Core profile). |
| Neonatal eye prophylaxis | Gonoblenoreya profilaktikasi / Профилактика гонобленнореи | Procedure.code; occurrenceDateTime | `chr-0085-0001` | 096 | 097 | |
| Recommendations | Tavsiyalar, Maslahat / Рекомендации | CarePlan.description | - | 111 | 096, 097 | Drift: 096 uses Observation with `code.text` only, 097 uses Observation `discharge-recommendations`. |

## Sick leave and work capacity

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Sick leave certificate | Mehnatga layoqatsizlik varaqasi / Листок нетрудоспособности | [SickLeaveCarePlan](https://dhp.uz/fhir/integrations/en/StructureDefinition-sick-leave-careplan.html): identifier, period | `https://dhp.uz/fhir/core/sid/doc/uz/sickleave` | 111 | 096 | Drift: 066 and 066-1 send an Observation (LOINC `105583-9`) with `effectivePeriod`. |

## Death

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Death | Vafot etdi, Onaning o'limi / Смерть | Encounter.admission.dischargeDisposition `exp`; Patient.deceasedDateTime | - | 096 | - | |
| Causes of death | O'limga olib kelgan bevosita sabab, Asosiy kasallik, Boshqa muhim kasalliklar / Непосредственная причина смерти | Condition.code; category | ICD-10; `immediate-cause-of-death`, `underlying-cause-of-death`, `main-disease-death`, `other-significant-death` | 066 | 066-1 | |
| Maternal death timing | Ona o'limining davri / Период смерти матери | Condition.code | [Maternal Death Timing](https://dhp.uz/fhir/integrations/en/ValueSet-maternal-death-timing-vs.html) (SNOMED `31868001`, `5866003`) | 096 | - | Reuse for any form recording antepartum or postpartum death. |

## Signatures and responsible persons

| Concept | Labels (uz / ru) | FHIR path | Code / value set | Reference | Also in | Notes |
|---|---|---|---|---|---|---|
| Signature | Imzo, Shifokor imzosi, Bo'lim boshlig'i imzosi / Подпись | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | `signature.type[nationalType]` [UZ Core Signature Type](https://dhp.uz/fhir/core/en/CodeSystem-signature-type-cs.html) `soliqAuth` | 096 | 097, 111 | |
| Responsible persons | Davolovchi shifokor, Bo'lim boshlig'i, Katta hamshira / Лечащий врач, Заведующий отделением, Старшая медсестра | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | 096 | 066, 066-1, 097, 130 | Drift: 066 and 066-1 say "Local code" for the role. |
