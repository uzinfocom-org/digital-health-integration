<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>


> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu sahifada gepatit reyestri ma’lumotlari FHIR resurslari sifatida qanday ifodalanishi tavsiflangan.

### Umumiy ma’lumot

Model bemor, davomli yordam ko‘rsatish epizodi, alohida tashrif, tashxis, laboratoriya va UTT natijalari hamda so‘rovnoma javoblarini ajratadi. Har bir bo‘limda profil va misol resurslariga havolalar hamda ma’lumotlarning FHIR maydonlariga mosligi keltirilgan. Gepatit profillari [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) dan meros oladi; e’lon qilingan profil cheklovlari asosiy manba hisoblanadi.

Condition, EpisodeOfCare va ikkala Observation profili `https://dhp.uz/fhir/core/sid/org/uz/hepatitis` tizimi va qiymatiga ega bitta `identifier[hepatitisRegistry]` ni talab qiladi. Questionnaire kamida bitta identifikatorni talab qiladi. QuestionnaireResponse identifikator elementi mavjud bo‘lsa, uning tizimini belgilaydi. Bular bemorning shaxsiy identifikatorlaridan alohida yozuv identifikatorlaridir.

[Yordam ko‘rsatish epizodi](#following-the-care-episode) [bemor](#registering-the-patient) va [tashxis](#recording-diagnosis-and-outcome) ga havola qiladi. [Tashrif](#recording-the-visit) epizodga, tashxis esa tashrifga havola qilishi mumkin. Kuzatuvlar va [so‘rovnoma javoblari](#recording-answers) bemorni mustaqil ko‘rsatadi. Misollar alohida resurslarni namoyish etadi va bitta to‘liq bog‘langan bemor yozuvini tashkil qilmaydi.

### Bemorni ro‘yxatga olish (Patient) {#registering-the-patient}

Bemor yozuvi identifikatsiya, demografik va aloqa ma’lumotlarini saqlaydi. HepatitisPatient UZ Core Patient profilidan meros oladi va `telecom` ni Must Support deb belgilaydi; bu belgi o‘z-o‘zidan maydonni majburiy qilmaydi.

Profil: [HepatitisPatient](StructureDefinition-hepatitis-patient.html)

Misol: [hepatitis-patient-example](Patient-hepatitis-patient-example.html)

| Qayd etiladigan ma’lumot | Ma’lumotnoma | Misol kodi yoki qiymati | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Milliy identifikator | - | `515050500505` | `identifier[nationalId].value` |
| Mahalliy pasport | - | `AB1234567` | `identifier[passportLocal].value` |
| Tibbiy karta raqami | - | `01234567890456` | `identifier[healthCardId].value` |
| Ism-sharifi | - | `Xalida Yusupova Maxmudovna` | `name` |
| Ma’muriy jins | [administrative-gender-vs](https://dhp.uz/fhir/core/ValueSet-administrative-gender-vs.html) | `female` | `gender` |
| Tug‘ilgan sana | - | `1990-02-01` | `birthDate` |
| Telefon | - | `998-90-123-45-45` | `telecom.value` |

### Yordam ko‘rsatish epizodini yuritish (EpisodeOfCare) {#following-the-care-episode}

EpisodeOfCare A, B, C yoki D gepatiti bo‘yicha hisobda turgan bemorga yordam ko‘rsatish jarayonini birlashtiradi. Resurs bemor, tashxis, mas’ul tashkilot va yordam ko‘rsatish koordinatori o‘rtasidagi bog‘lanishni saqlaydi.

Profil: [HepatitisEpisodeOfCare](StructureDefinition-hepatitis-episode-of-care.html)

Misol: [hepatitis-episode-of-care-example](EpisodeOfCare-hepatitis-episode-of-care-example.html)

| Qayd etiladigan ma’lumot | Ma’lumotnoma | Misol kodi yoki qiymati | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Reyestr identifikatori | - | `75dcdd0a-5a68-4cc6-8503-5ab15a42c63b` | `identifier[hepatitisRegistry].value` |
| Holat | [episode-of-care-status](https://hl7.org/fhir/R5/valueset-episode-of-care-status.html) | `active` | `status` |
| Xizmat turi | [episode-of-care-type-vs](https://dhp.uz/fhir/core/ValueSet-episode-of-care-type-vs.html) | `episode-of-care-type-cs#mserv-0001-00004` | `type[serviceType]` |
| Tashxis | - | [example-hepatitis-condition](Condition-example-hepatitis-condition.html) | `diagnosis.condition.reference` |
| Tashxisning vazifasi | [encounter-diagnosis-use](https://hl7.org/fhir/R5/valueset-encounter-diagnosis-use.html) | `encounter-diagnosis-use-cs#final` | `diagnosis.use` |
| Bemor | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `patient` |
| Mas’ul tashkilot | - | [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `managingOrganization` |
| Yordam ko‘rsatish koordinatori | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | `careManager` |
| Yordam ko‘rsatish davri | - | `2026-09-18T09:00:00+05:00` / `2026-11-10T17:00:00+05:00` | `period` |

Misol `active` holatida; tugash sanasi kutilayotgan sanadir. Epizod tavsifida B gepatiti tilga olingan bo‘lsa-da, tashxis havolasi o‘tkir C gepatiti (`B17.1`) misoliga olib boradi.

### Tashrifni qayd etish (Encounter) {#recording-the-visit}

Encounter alohida tashrifni ifodalaydi. Majburiy `subject` maydoni HepatitisPatient ga havola qiladi; `episodeOfCare` to‘ldirilganda HepatitisEpisodeOfCare ga havola qiladi.

Profil: [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html)

Misol: [hepatitis-encounter-example](Encounter-hepatitis-encounter-example.html)

| Qayd etiladigan ma’lumot | Ma’lumotnoma | Misol kodi yoki qiymati | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Tashrif holati | [encounter-status-vs](https://dhp.uz/fhir/core/ValueSet-encounter-status-vs.html) | `completed` | `status` |
| Tashrif sinfi | [encounter-class-vs](https://dhp.uz/fhir/core/ValueSet-encounter-class-vs.html) | `v3-ActCode#AMB` | `class` |
| Tashrif turi | [encounter-type-vs](https://dhp.uz/fhir/core/ValueSet-encounter-type-vs.html) | `encounter-type-cs#mserv-0001-00004` | `type` |
| Bemor | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Ishtirokchi roli | [encounter-participant-type-vs](https://dhp.uz/fhir/core/ValueSet-encounter-participant-type-vs.html) | `v3-ParticipationType#ATND` | `participant.type` |
| Tibbiyot xodimi | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | `participant.actor` |
| Yordam ko‘rsatuvchi tashkilot | - | [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `serviceProvider` |
| Haqiqiy davr | - | `2026-09-18T09:45:00+05:00` / `2026-09-18T11:00:00+05:00` | `actualPeriod` |
| Rejalashtirilgan boshlanish | - | `2026-09-18T09:30:00+05:00` | `plannedStartDate` |

Tashrif misolida `episodeOfCare` to‘ldirilmagan. Profil bu bog‘lanishni qo‘llab-quvvatlaydi, lekin tashrifni yordam ko‘rsatish epizodiga bog‘lash uchun uni aniq ko‘rsatish kerak.

### Tashxis va natijani qayd etish (Condition) {#recording-diagnosis-and-outcome}

Condition tashxis va klinik holatni saqlaydi. U HepatitisPatient ga va tashrif havolasi mavjud bo‘lsa, HepatitisEncounter ga bog‘lanadi. Ixtiyoriy outcome kengaytmasi davolashga javobni klinik holatdan alohida qayd etadi.

Profil: [HepatitisCondition](StructureDefinition-hepatitis-condition.html)

Misol: [example-hepatitis-condition](Condition-example-hepatitis-condition.html)

| Qayd etiladigan ma’lumot | Ma’lumotnoma | Misol kodi yoki qiymati | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Reyestr identifikatori | - | `69dcdd0a-5a68-4cc6-8503-5ab15a41c63b` | `identifier[hepatitisRegistry].value` |
| Tashxis | [condition-code-vs](https://dhp.uz/fhir/core/ValueSet-condition-code-vs.html) | `ICD-10#B17.1` | `code` |
| Klinik holat | [clinical-status-vs](https://dhp.uz/fhir/core/ValueSet-clinical-status-vs.html) | `condition-clinical#active` | `clinicalStatus` |
| Tashxis turi | [diagnosis-type-vs](https://dhp.uz/fhir/core/ValueSet-diagnosis-type-vs.html) | `diagnosis-type-cs#gencl-0001-00003` | `extension[diagnosisType]` |
| Davolash natijasi | [HepatitisConditionOutcomeCodesVS](ValueSet-hepatitis-condition-outcome-codes-vs.html) | `SNOMED CT#1137679005` | `extension[outcome].valueCodeableConcept` |
| Bemor | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Tashrif | - | [hepatitis-encounter-example](Encounter-hepatitis-encounter-example.html) | `encounter` |
| Qayd etilgan sana | - | `2026-09-18T10:45:00+05:00` | `recordedDate` |
| Tibbiyot xodimi | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | `participant.actor` |

[Natija kengaytmasi](StructureDefinition-hepatitis-condition-outcome.html) `0..1` kardinallikka ega va HepatitisConditionOutcomeCodesVS ga majburiy bog‘langan. Kodlar SNOMED CT dan olinadi; lokal CodeSystem tarjima qilingan nomlarni taqdim etuvchi qo‘shimchadir.

### Laboratoriya natijalarini qayd etish (Observation) {#recording-laboratory-results}

Laboratoriya kuzatuvlari tekshiruv, usul, natija, vaqt, bemor va ijrochilarni ko‘rsatadi. Misol kodi A gepatiti virusiga IgM antitanalar tekshiruvini anglatadi, garchi tavsifda B gepatiti DNK si tilga olingan bo‘lsa ham.

Profil: [HepatitisObservationAnalysis](StructureDefinition-hepatitis-observation-analysis.html)

Misol: [example-hepatitis-observation-analysis](Observation-example-hepatitis-observation-analysis.html)

| Qayd etiladigan ma’lumot | Ma’lumotnoma | Misol kodi yoki qiymati | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Reyestr identifikatori | - | `85dcdd0a-5a68-4cc6-8503-5ab15a42c63b` | `identifier[hepatitisRegistry].value` |
| Natija holati | [observation-status-vs](https://dhp.uz/fhir/core/ValueSet-observation-status-vs.html) | `final` | `status` |
| Tekshiruv | [observation-codes-vs](https://dhp.uz/fhir/core/ValueSet-observation-codes-vs.html) | `LOINC#22314-9` | `code` |
| Usul | [lab-method-vs](https://dhp.uz/fhir/core/ValueSet-lab-method-vs.html) | `lab-methods-cs#lab-method-1` (PCR) | `method` |
| Natija | [v3-ObservationInterpretation](https://terminology.hl7.org/CodeSystem-v3-ObservationInterpretation.html) | `v3-ObservationInterpretation#NEG` | `valueCodeableConcept` |
| Bemor | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Kuzatuv vaqti | - | `2026-09-18T10:00:00+05:00` | `effectiveDateTime` |
| Ijrochilar | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html), [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `performer` |

`effective[x]` dateTime yoki Period turida bo‘lishi mumkin. `value[x]` Attachment, Quantity yoki CodeableConcept turlarini, komponent qiymatlari esa string, CodeableConcept yoki Quantity turlarini qabul qiladi. Komponentlarda `dataAbsentReason` va ko‘pi bilan bitta `interpretation` ham qo‘llab-quvvatlanadi. Jadvaldagi natija kodi misoldan olingan; u barcha gepatit natijalari uchun majburiy qiymatlar to‘plami emas.

### UTT topilmalarini qayd etish (Observation) {#recording-ultrasound-findings}

Har bir UTT kuzatuvi kodlangan topilma va mantiqiy natijani saqlaydi. Misollarda sirroz mavjudligi va jigar zararlanishi yo‘qligi alohida resurslarda qayd etilgan.

Profil: [HepatitisObservationUltraSound](StructureDefinition-hepatitis-observation-ultra-sound.html)

Misol: [example-ultrasound-cirrhosis](Observation-example-ultrasound-cirrhosis.html), [example-ultrasound-lesion](Observation-example-ultrasound-lesion.html)

| Qayd etiladigan ma’lumot | Ma’lumotnoma | Misol kodi yoki qiymati | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Reyestr identifikatori | - | `85dcdd0a-5a68-4cc6-8503-5ab15a42c73b` | `identifier[hepatitisRegistry].value` |
| Natija holati | [observation-status-vs](https://dhp.uz/fhir/core/ValueSet-observation-status-vs.html) | `final` | `status` |
| Topilma | [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html) | `SNOMED CT#19943007` / `SNOMED CT#300332007` | `code` |
| Topilma mavjudligi | - | `true` / `false` | `valueBoolean` |
| Bemor | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Kuzatuv vaqti | - | `2026-09-18T10:30:00+05:00` | `effectiveDateTime` |
| Ijrochilar | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html), [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `performer` |

`code` SNOMED CT kodlari va nomlarning lokal tarjima qo‘shimchasidan foydalanuvchi HepatitisTypeOfUltraSoundVS ga majburiy bog‘langan. `effective[x]` dateTime yoki Period turida bo‘lishi mumkin; `value[x]` faqat boolean turini qabul qiladi.

### So‘rovnomani belgilash (Questionnaire) {#defining-the-assessment}

Questionnaire savollar va ularni shartli ko‘rsatish qoidalarini belgilaydi. Misolda avvalgi B/C gepatiti davolanishi, dorilar va homiladorlik trimestri keltirilgan.

Profil: [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html)

Misol: [hepatitis-questionnaire](Questionnaire-hepatitis-questionnaire.html)

| Qayd etiladigan ma’lumot | Ma’lumotnoma | Misol kodi yoki qiymati | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `HCV-HBV-QS-2026` | `identifier.value` |
| Nashr holati | [publication-status](https://hl7.org/fhir/R5/valueset-publication-status.html) | `active` | `status` |
| Subyekt turi | [resource-types](https://hl7.org/fhir/R5/valueset-resource-types.html) | `Patient` | `subjectType` |
| Savol identifikatori | - | `hx-tx-hcv-hbv` | `item.item.linkId` |
| Savol turi | [item-type](https://hl7.org/fhir/R5/valueset-item-type.html) | `boolean`, `string`, `coding` | `item.item.type` |
| Ko‘rsatish sharti | [questionnaire-enable-operator](https://hl7.org/fhir/R5/valueset-questionnaire-enable-operator.html) | `=` / `true` | `item.item.enableWhen.operator / answerBoolean` |
| Trimestr variantlari | SNOMED CT | `255246003`, `255247007`, `255248002` | `item.item.answerOption.valueCoding` |

Kanonik URL: `https://dhp.uz/fhir/integrations/Questionnaire/hepatitis-questionnaire`. Dorilar haqidagi savol `hx-tx-hcv-hbv` qiymati `true` bo‘lganda ko‘rsatiladi. Trimestr variantlari alohida qiymatlar to‘plamida emas, so‘rovnomaning o‘zida berilgan.

### Javoblarni qayd etish (QuestionnaireResponse) {#recording-answers}

QuestionnaireResponse to‘ldirilgan so‘rovnomani uning ta’rifi va bemor bilan bog‘laydi. `linkId` qiymatlari so‘rovnoma iyerarxiyasini saqlaydi va javob berilgan savollarni belgilaydi.

Profil: [HepatitisQuestionnaireResponse](StructureDefinition-hepatitis-questionnaire-response.html)

Misol: [example-hcv-response](QuestionnaireResponse-example-hcv-response.html)

| Qayd etiladigan ma’lumot | Ma’lumotnoma | Misol kodi yoki qiymati | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `6f9b9d8e-3b7d-4d87-8f6e-123456789abc` | `identifier.value` |
| Javoblar holati | [questionnaire-answers-status](https://hl7.org/fhir/R5/valueset-questionnaire-answers-status.html) | `completed` | `status` |
| So‘rovnoma | - | [hepatitis-questionnaire](Questionnaire-hepatitis-questionnaire.html) | `questionnaire` |
| Bemor | - | [example-hepatitis-patient](Patient-example-hepatitis-patient.html) | `subject` |
| Muallif | - | [muratova-gulshoda-role](PractitionerRole-muratova-gulshoda-role.html) | `author` |
| To‘ldirilgan vaqt | - | `2026-03-19T12:00:00Z` | `authored` |
| Avvalgi davolanish | - | `true` | `item.item.answer.valueBoolean` |
| Dorilar tarixi | - | `Sofosbuvir + Declatasvir` | `item.item.answer.valueString` |
| Homiladorlik trimestri | SNOMED CT | `255246003` | `item.item.answer.valueCoding` |

Profil `subject` ni HepatitisPatient, `author` ni UZCorePractitionerRole, `source` ni UZCoreRelatedPerson va `partOf` ni UZCoreSocioeconomicObservation bilan cheklaydi. Misolda yordam ko‘rsatish epizodidagidan boshqa bemor yozuvi ishlatilgan. Javoblar guruhlarga joylangan (`item.item.answer`); profildagi boolean/string cheklovi yuqori darajadagi `item.answer.value[x]` ga tegishli. Dorilar matni davolash tavsiyasi emas, javob misolidir.

### Yordamchi resurslar {#supporting-resources}

PractitionerRole tibbiyot xodimini tashkilot bilan bog‘laydi. Yordam ko‘rsatish epizodi, tashrif, tashxis va kuzatuvlar ushbu resurslarga havola qiladi.

| Resurs | Misol | Rol |
| :--- | :--- | :--- |
| PractitionerRole | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | Yordam ko‘rsatuvchi tashkilotdagi gepatolog |
| Practitioner | [example-hepatologist](Practitioner-example-hepatologist.html) | PractitionerRole da ko‘rsatilgan shifokor |
| Organization | [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | Yordam ko‘rsatuvchi va epizodni yurituvchi tashkilot |
