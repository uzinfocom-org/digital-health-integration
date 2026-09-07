<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td {
  overflow-wrap: anywhere;
  word-break: break-word;
  vertical-align: top;
}
</style>

### Bemorni ro'yxatga olish (Patient)

Gepatit reyestridagi bemorlar [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) profilini kengaytiruvchi [HepatitisPatient](StructureDefinition-hepatitis-patient.html) profili yordamida ifodalanadi.

**Misollar:** [`hepatitis-patient-example`](Patient-hepatitis-patient-example.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Namunaviy kod | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Milliy identifikator | - | `515050500505` | `identifier[nationalId]` |
| Ichki pasport | - | `AB1234567` | `identifier[passportLocal]` |
| Tibbiy karta identifikatori | - | `01234567890456` | `identifier[healthCardId]` |
| Faollik holati | - | `true` | `active` |
| F.I.Sh. | - | `To'lanboev Tolibjon` | `name` |
| Jinsi | AdministrativeGender | `male` | `gender` |
| Tug'ilgan sana | - | `1990-02-01` | `birthDate` |
| Aloqa ma'lumotlari | - | `998-90-123-45-45` (mobil) | `telecom` |
| Millati | - | `44` kodi | `extension[nationality]` |
| Fuqaroligi | ISO 3166 | `UZ` (O'zbekiston) | `extension[citizenship]` |
| Manzil | - | Toshkent shahri, Mirzo Ulug'bek tumani | `address` |

[UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) asosiy profilidan farqli o'laroq, `HepatitisPatient` profilida `telecom` elementi majburiy (`Must Support`) hisoblanadi, chunki kuzatuv va davolanish monitoringi uchun aloqa ma'lumotlari zarur.

---

### Tibbiy uchrashuvni qayd etish (Encounter)

Bemorning gepatitga oid klinik tashrifi [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) profilini kengaytiruvchi [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html) profili yordamida ifodalanadi.

**Misollar:** [`hepatitis-encounter-example`](Encounter-hepatitis-encounter-example.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Namunaviy kod | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Uchrashuv holati | Encounter Status | `completed` | `status` |
| Identifikator | - | `ENC-2026-9901` | `identifier` |
| Identifikator turi | Identifier Type | `PHC` (Jamoat sog'liqni saqlash holati identifikatori) | `identifier.type` |
| Uchrashuv turi | - | `mserv-0001-00004` (Davolash xizmatlari) | `type` |
| Uchrashuv sinfi | ActCode | `AMB` (Ambulatoriya) | `class` |
| Bemor | - | [HepatitisPatient](StructureDefinition-hepatitis-patient.html) ga havola | `subject` |
| Xizmat ko'rsatuvchi tashkilot | - | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) ga havola | `serviceProvider` |
| Ishtirokchi turi | Participant Type | `ATND` | `participant.type` |
| Uchrashuvni o'tkazgan shifokor | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) ga havola | `participant.actor` |
| Haqiqiy/rejalashtirilgan boshlanish | - | `2026-01-26` / `2026-01-26T09:41:00+05:00` | `actualPeriod` |

`HepatitisEncounter` profilida `subject` elementi `1..1` kardinallik bilan cheklangan, faqat [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga havolani qabul qiladi va majburiy (`Must Support`) hisoblanadi.

---

### Bemorning gepatit tashxisini qayd etish (Condition)

Gepatit tashxisi [UZCoreCondition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) profilini kengaytiruvchi [HepatitisCondition](StructureDefinition-hepatitis-condition.html) profili yordamida ifodalanadi.

**Misollar:** [`example-hepatitis-condition`](Condition-example-hepatitis-condition.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Namunaviy kod | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `COND-2026-5541` | `identifier` |
| Identifikator turi | Identifier Type | `PHC` (Jamoat sog'liqni saqlash holati identifikatori) | `identifier.type` |
| Klinik holat | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Tashxis turi | [DiagnosisTypeVS](https://dhp.uz/fhir/core/ValueSet/diagnosis-type-vs.html) | `gencl-0001-00003` (Asosiy tashxis) | `extension[diagnosisType]` |
| Tashxis | ICD-10 | `B17.1` (O'tkir gepatit C) | `code` |
| Bemor | - | [HepatitisPatient](StructureDefinition-hepatitis-patient.html) ga havola | `subject` |
| Uchrashuv | - | [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html) ga havola | `encounter` |
| Ro'yxatga olish sanasi | - | `2025-11-09T13:31:00Z` | `recordedDate` |
| Mas'ul mutaxassis | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) ga havola | `participant.actor` |
| Davolash natijasi | [HepatitisConditionOutcomeCodesCS](CodeSystem-hepatitis-condition-outcome-codes-cs.html) | SNOMED CT `1137679005` (Dori-darmonlar yaxshi ta'sir etdi) | `extension[outcome]` |
| Izohlar | - | erkin matn | `note` |

`HepatitisCondition` profili [UZCoreCondition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) asosiy profilida mavjud bo'lmagan ikkita elementni qo'shadi:

- `identifier` (`0..*`, `Must Support`) — alohida identifikator tizimidan olingan gepatitga xos holat identifikatorini qayd etish uchun ishlatiladi.
- `extension[outcome]` (`0..1`, `Must Support`, `HepatitisConditionOutcome` kengaytmasi) — davolash natijasini `valueCodeableConcept` sifatida qayd etish uchun ishlatiladi.

#### Davolash natijasi kodlari

Davolash natijasi [HepatitisConditionOutcomeCodesCS](CodeSystem-hepatitis-condition-outcome-codes-cs.html) — o'zbekcha va ruscha nomlanishlarga ega SNOMED CT qo'shimchasidan tanlanadi:

| Kod | RU | UZ | ENG |
| :--- | :--- | :--- | :--- |
| `1137679005` | Хороший ответ на лечение | Dori-darmonlar yaxshi ta'sir etdi | Good response to medication |
| `405786003` | Плохой ответ на лечение | Dori-darmonlar ta'sir etmadi | Poor response to treatment |

---

### Laboratoriya tahlili natijalarini qayd etish (Observation)

Gepatit bo'yicha laboratoriya tekshiruvi natijalari [UZCoreObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation) profilini kengaytiruvchi [HepatitisObservationAnalysis](StructureDefinition-hepatitis-observation-analysis.html) profili yordamida ifodalanadi.

**Misollar:** [`example-hepatitis-observation-analysis`](Observation-example-hepatitis-observation-analysis.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Namunaviy kod | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Kuzatuv holati | Observation Status | `final` | `status` |
| Identifikator | - | `PZR-2026-001` | `identifier` |
| Identifikator turi | Identifier Type | `PHC` (Jamoat sog'liqni saqlash holati identifikatori) | `identifier.type` |
| Laboratoriya usuli | [LabMethodsCS](https://dhp.uz/fhir/core/CodeSystem/lab-methods-cs.html) | `lab-method-1` (PZR) | `method` |
| Test turi | LOINC | `22314-9` (Hepatitis A virus IgM Ab [Presence] in Serum) | `code` |
| Bemor | - | [HepatitisPatient](StructureDefinition-hepatitis-patient.html) ga havola | `subject` |
| Natija sanasi | - | `2026-01-27T09:57:00Z` | `effectiveDateTime` |
| Natija | Observation Interpretation | `NEG` (Manfiy) | `valueCodeableConcept` |
| Bajaruvchi | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) va [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) ga havola | `performer` |

`HepatitisObservationAnalysis` profilida `identifier`, `subject` ([UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) bilan cheklangan), `effective[x]` (`dateTime` yoki `Period`) va `value[x]` (`Attachment`, `Quantity` yoki `CodeableConcept`) majburiy (`Must Support`) hisoblanadi — bu natijani kodlangan talqin, sonli qiymat yoki biriktirilgan hisobot sifatida taqdim etish imkonini beradi. Natija bir nechta komponentga (analitga) bo'lib berilganda, `component.value[x]` (`string`, `CodeableConcept` yoki `Quantity`), `component.dataAbsentReason` va `component.interpretation` ham majburiy (`Must Support`) hisoblanadi.

---

### Ultratovush tekshiruvi natijalarini qayd etish (Observation)

Jigar ultratovush tekshiruvi natijalari [UZCoreObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation) profilini kengaytiruvchi [HepatitisObservationUltraSound](StructureDefinition-hepatitis-observation-ultra-sound.html) profili yordamida ifodalanadi.

**Misollar:** [`example-ultrasound-cirrhosis`](Observation-example-ultrasound-cirrhosis.html), [`example-ultrasound-lesion`](Observation-example-ultrasound-lesion.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Namunaviy kod | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Kuzatuv holati | Observation Status | `final` | `status` |
| Identifikator | - | `OBS-2026-5541` | `identifier` |
| Identifikator turi | Identifier Type | `PHC` (Jamoat sog'liqni saqlash holati identifikatori) | `identifier.type` |
| Ultratovush belgisi turi | [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html) | SNOMED CT `19943007` (Jigar sirrozi belgilari) | `code` |
| Bemor | - | [HepatitisPatient](StructureDefinition-hepatitis-patient.html) ga havola | `subject` |
| Tekshiruv sanasi | - | `2026-01-26` | `effectiveDateTime` |
| Belgining mavjudligi | - | `true` / `false` | `valueBoolean` |
| Bajaruvchi | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) va [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) ga havola | `performer` |

`code` elementi [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html) bilan bog'langan (`required`), `value[x]` esa faqat `boolean` turi bilan cheklangan — bu har bir ultratovush kuzatuvi tekshiruv vaqtida ma'lum bir belgi topilgan yoki topilmaganligini qayd etish imkonini beradi.

#### Ultratovush belgilari kodlari

Belgi turi [HepatitisTypeOfUltraSoundCS](CodeSystem-hepatitis-type-of-ultra-sound-cs.html) — o'zbekcha va ruscha nomlanishlarga ega SNOMED CT qo'shimchasidan tanlanadi:

| Kod | RU | UZ | ENG |
| :--- | :--- | :--- | :--- |
| `19943007` | Признаки цирроза | Jigar sirrozi belgilari | Signs of cirrhosis |
| `300332007` | Признаки образований в печени | Jigar shikastlanishining belgilari | Signs of liver lesions |

Har bir qayd etilayotgan belgi turi uchun alohida `HepatitisObservationUltraSound` namunasi yaratilishi kerak, bunda `valueBoolean` ushbu aniq belgi topilgan-topilmaganligini ko'rsatadi.

---

### Anamnez va epidemiologik ma'lumotlarni to'plash (Questionnaire)

Klinik va epidemiologik ma'lumotlar [UZCoreQuestionnaire](https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire) profilini kengaytiruvchi [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) profili yordamida to'planadi.

**Misollar:** [`hepatitis-questionnaire`](Questionnaire-hepatitis-questionnaire.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Misol | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `HCV-HBV-QS-2026` | `identifier` |
| Subyekt turi | Resource Types | `Patient` | `subjectType` |
| Bo'lim guruhlanishi | - | «ASOSIY MA'LUMOT» | `item` (`type = group`) |
| Shartli savol | - | «HCV/HBV ga qarshi qanday dorilar qabul qilingan?» | `item.item`, `hx-tx-hcv-hbv` = `true` bo'lganda ko'rsatiladi |
| Kodlangan javob variantlari | - | Homiladorlik trimestri (birinchi / ikkinchi / uchinchi) | `item.item.answerOption` |

`HepatitisQuestionnaire` profilida `identifier` va `subjectType` majburiy (`Must Support`) hisoblanadi. Bandlar `enableBehavior` bilan ichma-ich guruhlanishni (`item.item`), shuningdek `item.item.enableWhen` orqali shartli ko'rsatish mantig'ini qo'llab-quvvatlaydi — bu profilda faqat `boolean` javob bilan cheklangan (`enableWhen.answer[x] only boolean`). Kodlangan savollar uchun `string` yoki `Coding` qiymatlari bilan cheklangan `item.item.answerOption` ishlatiladi.

Misolda «HCV/HBV ga qarshi qanday dorilar qabul qilingan?» degan savol faqat bemor HCV/HBV bo'yicha ilgari davolanganligiga `true` deb javob bergan taqdirdagina ko'rsatiladi, alohida guruh esa homiladorlikka oid ma'lumotlarni, jumladan homiladorlik trimestrini kodlangan javob sifatida to'playdi.

---

### So'rovnoma javoblarini qayd etish (QuestionnaireResponse)

[HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) ga berilgan javoblar [UZCoreQuestionnaireResponse](https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response) profilini kengaytiruvchi [HepatitisQuestionnaireResponse](StructureDefinition-hepatitis-questionnaire-response.html) profili yordamida ifodalanadi.

**Misollar:** [`example-hcv-response`](QuestionnaireResponse-example-hcv-response.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Misol | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Javob holati | QuestionnaireResponse Status | `completed` | `status` |
| So'rovnoma | - | [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) ga havola | `questionnaire` |
| Bemor | - | [HepatitisPatient](StructureDefinition-hepatitis-patient.html) ga havola | `subject` |
| Javob sanasi | - | `2026-03-19T12:00:00Z` | `authored` |
| Muallif | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) ga havola | `author` |
| Oldingi davolanish | - | `true` | `item.item.answer` (`valueBoolean`) |
| Qabul qilingan dorilar | - | «Sofosbuvir + Declatasvir» | `item.item.answer` (`valueString`) |
| Bog'liq ijtimoiy-iqtisodiy yozuv | - | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) ga havola | `partOf` |
| Ma'lumot bergan qarindosh | - | [UZCoreRelatedPerson](https://dhp.uz/fhir/core/StructureDefinition/uz-core-related-person) ga havola | `source` |

`HepatitisQuestionnaireResponse` profilida havola turlari cheklangan: `partOf` — faqat [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) ga, `subject` — faqat [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga, `author` — faqat [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) ga, `source` — faqat [UZCoreRelatedPerson](https://dhp.uz/fhir/core/StructureDefinition/uz-core-related-person) ga. Javob qiymatlari (`item.answer.value[x]`) `boolean` yoki `string` turlari bilan cheklangan.

---

### Terminologiya bo'yicha xulosa

Gepatit reyestri resurslarida qo'llaniladigan terminologiya quyida umumlashtirilgan.

| Terminologiya | Resurs / Element | Vazifasi |
| :--- | :--- | :--- |
| [DiagnosisTypeVS](https://dhp.uz/fhir/core/ValueSet/diagnosis-type-vs.html) | `Condition.extension[diagnosisType]` | Asosiy yoki ikkilamchi tashxis |
| ICD-10 | `Condition.code` | Gepatit tashxisi |
| [HepatitisConditionOutcomeCodesCS](CodeSystem-hepatitis-condition-outcome-codes-cs.html) | `Condition.extension[outcome]` | Davolash natijasi |
| LOINC | `Observation.code` (tahlil) | Laboratoriya testi turi |
| Observation Interpretation | `Observation.valueCodeableConcept` (tahlil) | Laboratoriya natijasi |
| [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html) / [HepatitisTypeOfUltraSoundCS](CodeSystem-hepatitis-type-of-ultra-sound-cs.html) | `Observation.code` (ultratovush) | Ultratovush belgisi turi |
| SNOMED CT | `Condition.code` (nogironlik, mavjud bo'lsa) | Qo'shimcha klinik topilmalar |

---

### Resurslar o'rtasidagi bog'liqlik

Odatiy gepatit reyestri yozuvi resurslarni quyidagicha bog'lashi mumkin:

- [HepatitisPatient](StructureDefinition-hepatitis-patient.html) markaziy subyekt hisoblanadi.
- [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html) bemorning gepatitga oid tibbiy tashrifini qayd etadi.
- [HepatitisCondition](StructureDefinition-hepatitis-condition.html) gepatit tashxisini, uning davolash natijasini qayd etadi va tegishli uchrashuvga havola qilishi mumkin.
- [HepatitisObservationAnalysis](StructureDefinition-hepatitis-observation-analysis.html) bemorning laboratoriya tekshiruvi natijalarini (masalan, PZR, seroligiya) qayd etadi.
- [HepatitisObservationUltraSound](StructureDefinition-hepatitis-observation-ultra-sound.html) bemorning jigar ultratovush tekshiruvi natijalarini qayd etadi.
- [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) anamnez va epidemiologik ma'lumotlarni to'plash uchun tuzilgan shaklni belgilaydi.
- [HepatitisQuestionnaireResponse](StructureDefinition-hepatitis-questionnaire-response.html) bemorning (yoki bog'liq shaxsning) so'rovnomaga bergan javoblarini qayd etadi va tegishli ijtimoiy-iqtisodiy kuzatuvga havola qilishi mumkin.

Ushbu resurslar bemor, uchrashuv, mutaxassis roli, tashkilot va bog'liq shaxsga havolalar orqali bog'langan bo'lib, bemorning gepatit tashxisini, laboratoriya va instrumental tekshiruv natijalarini, davolash natijasini va to'plangan anamnezni ifodalaydi.