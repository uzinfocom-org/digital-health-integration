<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu sahifada sil holatlarini boshqarish ma'lumotlari FHIR resurslari sifatida qanday ifodalanishi tavsiflangan.

### Umumiy ma'lumot

DHIS sil moduli sil (TB) bemorlarining ro'yxatga olinishini, tashxisini, laboratoriya tekshiruvini va davolanish jarayonini qamrab oladi. Ma'lumotlar DHIS sil axborot tizimidan keladi va DHP ga alohida, atomar FHIR resurslari sifatida qo'shiladi. Resurslar har bir bo'limda havola qilingan DHIS profillariga, aks holda esa [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) yoki standart FHIR profillariga mos keladi.

Tushuncha standart ekvivalentga ega bo'lgan har qanday holatda, resurslar standart kodni bevosita o'z ichiga oladi - tashxislar, namuna turlari, aniqlangan turlar va qayta ishlash holatlari uchun SNOMED CT, diagnostik testlar va dorilarga sezgirlikni aniqlash agentlari uchun LOINC. Manba tizimi bu ma'lumotlarni o'zining lokal kodlari bilan qayd etadi; har bir lokal kod o'zining DHIS CodeSystem'ida saqlanadi va ConceptMap orqali eng yaqin standart tushunchaga moslashtiriladi, shuning uchun integrator o'zida mavjud kod uchun standart kodni doimo topa oladi. Resurslarda aniq (`equivalent`) moslik mavjud bo'lgan har qanday holatda standart koddan foydalaning - har bir maydonga bog'langan ma'lumotnoma bunday tushunchalar uchun standart kodni taklif qiladi va faqat aniq standart ekvivalent bo'lmagan joyda lokal kodni saqlaydi (masalan, o'stirish muhiti variantlari, surtma/o'stirma darajalari va dorilarga sezgirlik diapazonlari). Quyidagi har bir bo'limda boshqaruvchi profil, aniq misol resursi, hamda kod tashuvchi har bir maydon uchun ma'lumotnoma va misol kodi jadvali keltirilgan.

Odatdagi yozuv quyidagilarni bog'laydi: [bemor](#registering-a-patient-patient), bir yoki bir nechta [sil tashxislari](#recording-a-tb-diagnosis-condition), davolanish jarayonini guruhlaydigan [parvarish epizodi](#grouping-the-treatment-course-episodeofcare), olingan [namunalar](#collecting-a-specimen-specimen), va ulardan olingan [diagnostik test natijalari](#recording-diagnostic-test-results-observation).

### Bemorni ro'yxatga olish (Patient) {#registering-a-patient-patient}

Har bir sil yozuvining sub'ekti. DHIS ga xos Patient profili mavjud emas; bevosita UZ Core dan foydalaning.

Profil: [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html)

Misol: [example-patient-john](Patient-example-patient-john.html)

| Qayd etiladigan ma'lumot | Qayerda saqlanadi |
| :--- | :--- |
| Milliy identifikator | `identifier` (milliy ID slice) |
| Ism, jins, tug'ilgan sana | `name`, `gender`, `birthDate` |
| Manzil | `address` (UZ manzil slice) |
| Mas'ul muassasa | `managingOrganization` → [Organization](#supporting-resources) |

### Sil tashxisini qayd etish (Condition) {#recording-a-tb-diagnosis-condition}

`Condition.code` ni sil tashxisiga (yoki tegishli birga keladigan kasallikka) o'rnating. Aksariyat tashxislar bevosita SNOMED CT dan foydalanadi; 1:1 SNOMED CT mosligiga ega bo'lmagan bir nechtasi lokal kodlardan foydalanadi.

Profil: [DHISCondition](StructureDefinition-dhis-condition.html)

Misol: [example-tbc-diagnosis](Condition-example-tbc-diagnosis.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Tashxis | [DHISConditionCodeVS](ValueSet-dhis-condition-code-vs.html) | `SNOMED CT#88356006` (Primary tuberculous complex) | `Condition.code` |
| Klinik holat | [condition-clinical](https://dhp.uz/fhir/core/CodeSystem-clinical-status-cs.html) | `condition-clinical#active` (Active) | `clinicalStatus` |
| Tasdiqlash holati | [condition-ver-status](https://dhp.uz/fhir/core/CodeSystem-condition-verification-status-cs.html) | `condition-ver-status#confirmed` (Confirmed) | `verificationStatus` |
| Toifa | [condition-category](http://terminology.hl7.org/CodeSystem/condition-category) | `condition-category#encounter-diagnosis` (Encounter Diagnosis) | `category` |
| Qachon boshlangani | - | `2025-06-03` | `onsetDateTime` |
| Sub'ekt | - | [Patient](#registering-a-patient-patient) ga havola | `subject` |

Aniq moslik mavjud bo'lgan har qanday holatda SNOMED CT kodidan foydalaning; faqat 1:1 SNOMED CT mosligiga ega bo'lmagan bir nechta tashxis (masalan, fibro-kavernoz sil va sil bo'lmagan birga keladigan kasalliklar) lokal kodni saqlaydi. [tuberculosis-to-snomed](ConceptMap-dhis-tuberculosis-to-snomed.html) ConceptMap har bir DHIS tashxis kodini uning SNOMED CT tushunchasiga moslashtiradi, shuning uchun integrator o'zida mavjud har qanday lokal kod uchun standart kodni topa oladi.

### Davolanish jarayonini guruhlash (EpisodeOfCare) {#grouping-the-treatment-course-episodeofcare}

Parvarish epizodi bemorning sil tashxisi, davolanishi va kuzatuvini butun parvarish jarayoni davomida guruhlaydi va parvarish menejerini ko'rsatadi.

Profil: [DHISEpisodeOfCare](StructureDefinition-dhis-episode-of-care.html)

Misol: [example-dhis-episode-of-care](EpisodeOfCare-example-dhis-episode-of-care.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Epizod turi | [episode-of-care-type-cs](https://dhp.uz/fhir/core/CodeSystem-episode-of-care-type-cs.html) | `episode-of-care-type-cs#mserv-0001-00004` (Treatment services) | `type` |
| Holat | [EpisodeOfCareStatus](https://hl7.org/fhir/R5/valueset-episode-of-care-status.html) | `active` | `status` |
| Parvarish davri | - | `2025-03-12` dan `2025-09-12` gacha | `period.start` / `period.end` |
| Davolanayotgan tashxis | - | [DHISCondition](#recording-a-tb-diagnosis-condition) ga havola | `diagnosis.condition` |
| Bemor | - | [Patient](#registering-a-patient-patient) ga havola | `patient` |
| Parvarish menejeri | - | [PractitionerRole](#supporting-resources) ga havola | `careManager` |

### Namuna olish (Specimen) {#collecting-a-specimen-specimen}

Laboratoriya tekshiruvi uchun olingan har bir namuna. `Specimen.type` namunaning qanday tur ekanligini qayd etadi; `Specimen.feature.type` uning qayta ishlash holatini qayd etadi (birlamchi namuna, cho'kma, o'stirma izolyati).

Profil: [DHISSpecimen](StructureDefinition-dhis-specimen.html)

Misol: [example-dhis-specimen](Specimen-example-dhis-specimen.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Namuna turi | [SpecimenTypeVS](ValueSet-specimen-type-vs.html) | `SNOMED CT#119334006` (Sputum specimen) | `Specimen.type` |
| Qayta ishlash holati | [SpecimenFeatureTypeVS](ValueSet-specimen-feature-type-vs.html) | `specimen-feature-type-cs#Spec002-0001` (Primary sample) | `feature.type` |
| Holat | [specimen-status](https://hl7.org/fhir/R5/valueset-specimen-status.html) | `available` | `status` |
| Sub'ekt | - | [Patient](#registering-a-patient-patient) ga havola | `subject` |
| Nimadan olingan | - | ota Specimen ga havola | `parent` |

Aniq moslik mavjud bo'lgan har qanday holatda SNOMED CT kodidan foydalaning; faqat 1:1 SNOMED CT mosligiga ega bo'lmagan joy guruhlari va o'stirish muhitlari lokal kodni saqlaydi. [specimen-type-conceptmap](ConceptMap-specimen-type-conceptmap.html) ConceptMap har bir DHIS namuna turini uning SNOMED CT tushunchasiga moslashtiradi, [specimen-feature-type-to-snomed](ConceptMap-specimen-feature-type-to-snomed.html) ConceptMap esa qayta ishlash holatlari uchun xuddi shunday qiladi (kultura izolyati SNOMED CT kodidan foydalanadi; birlamchi namuna va cho'kma lokal kodni saqlaydi).

### Diagnostik test natijalarini qayd etish (Observation) {#recording-diagnostic-test-results-observation}

Har bir laboratoriya yoki tasvirlash natijasi o'zining alohida Observation hisoblanadi. Quyidagi to'rtta profilning barchasida `Observation.code` testni aniqlaydi, u [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) dan olinadi - aniq kod mavjud bo'lganda LOINC, aks holda o'stirish muhiti va tahlil variantlari uchun lokal kod. [observation-tuberculosis-code](ConceptMap-dhis-observation-tuberculosis-code.html) ConceptMap har bir DHIS test kodini uning LOINC tushunchasiga moslashtiradi. Farqi - natija qanday saqlanishida:

- kodlangan natijalar [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) dan foydalanadi (aniqlangan turlar uchun SNOMED CT, surtma/o'stirma darajalari uchun lokal kodlar, hamda `POS`/`NEG` kabi HL7 interpretatsiya kodlari),
- natija komponentlari (masalan, sezgirlik panelida har bir dori uchun bitta qator) [DHISObservationComponentCodeVS](ValueSet-dhis-observation-component-code-vs.html) bilan belgilanadi,
- ha/yo'q topilmalari boolean dan foydalanadi.

Testga mos keladigan profilni tanlang:

| Test | Profil | Natija qanday saqlanadi |
| :--- | :--- | :--- |
| Balg'am surtmasi mikroskopiyasi | [DHISObservationMicroscopy](StructureDefinition-dhis-observation-microscopy.html) | komponentdagi kodlangan AFB darajasi |
| O'stirma, turlarni aniqlash, dorilarga sezgirlikni aniqlash (DST), line-probe tahlili | [DHISObservation](StructureDefinition-dhis-observation.html) | kodlangan qiymat va/yoki har bir agent uchun komponentlar |
| Ko'krak qafasi rentgeni | [DHISObservationXray](StructureDefinition-dhis-observation-xray.html) | boolean (topilma mavjud/yo'q) |
| OIV testi | [DHISObservationHIV](StructureDefinition-dhis-observation-hiv.html) | boolean |

#### Balg'am surtmasi mikroskopiyasi

Bo'yalgan surtmada topilgan kislotaga chidamli bakteriyalar (AFB) miqdorini qayd etadi. Daraja komponentda saqlanadi.

Profil: [DHISObservationMicroscopy](StructureDefinition-dhis-observation-microscopy.html)

Misol: [example-microscopy](Observation-example-microscopy.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Test kodi | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `LOINC#53904-9` (Sputum smear microscopy, fluorescent) | `Observation.code` |
| Komponent nimani bildiradi | [DHISObservationComponentCodeVS](ValueSet-dhis-observation-component-code-vs.html) | `dhis-observation-component-code-cs#Tub004-0032` (Grading) | `component.code` |
| AFB darajasi | [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) | `dhis-observation-codeable-concept-cs#Tub003-0008` (3+ / 40 fields) | `component.valueCodeableConcept` |
| Tekshirilgan namuna | - | [DHISSpecimen](#collecting-a-specimen-specimen) ga havola | `specimen` |

#### O'stirma, identifikatsiya va dorilarga sezgirlikni aniqlash

Qattiq/suyuq o'stirma, turlarni aniqlash va dorilarga sezgirlikni aniqlash (DST), shu jumladan line-probe tahlillarini qamrab oladi. Umumiy natija `valueCodeableConcept` ga joylashtiriladi; DST panelida har bir dori komponent bo'lib, uning kodi agent, qiymati esa sezgirlik natijasidir.

Profil: [DHISObservation](StructureDefinition-dhis-observation.html)

Misol: [example-tb-microscopy](Observation-example-tb-microscopy.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Test kodi | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | ` dhis-observation-code-cs#Tub002-0007` (Phenotypic DST on MGIT) | `Observation.code` |
| Umumiy natija | [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) | `SNOMED CT#113858008` (M. tuberculosis complex) | `valueCodeableConcept` |
| Tekshirilgan dori (DST) | [DHISObservationComponentCodeVS](ValueSet-dhis-observation-component-code-vs.html) | `dhis-observation-component-code-cs#Tub004-0008` (Isoniazid 0.1 mg/mL) | `component.code` |
| Sezgirlik natijasi | [DHISObservationCodeableConceptVS](ValueSet-dhis-observation-codeable-concept-vs.html) | `v3-ObservationInterpretation#R` (Resistant) | `component.valueCodeableConcept` |
| Tekshirilgan namuna | - | [DHISSpecimen](#collecting-a-specimen-specimen) ga havola | `specimen` |

Aniqlangan turlar hamda iz va identifikatsiya kvalifikatorlari bevosita o'zining SNOMED CT kodidan foydalanadi; [observation-result-to-snomed](ConceptMap-dhis-observation-result-to-snomed.html) ConceptMap ularning har biri almashtiradigan DHIS natija kodini qayd etadi, surtma/o'stirma darajalari va standart ekvivalentga ega bo'lmagan chidamlilik diapazoni natijalari esa lokal kodni saqlaydi.

DST komponentlari uchun oddiy dori nomli agentlar bevosita LOINC `<drug> [Susceptibility]` kodidan foydalanadi; konsentratsiyani o'z ichiga olgan agentlar lokal kodni saqlaydi (standart kod tushirib qoldiradigan kritik konsentratsiya). [observation-component-to-loinc](ConceptMap-dhis-observation-component-to-loinc.html) ConceptMap har bir DHIS dori agentini uning LOINC tushunchasiga moslashtiradi.

#### Ko'krak qafasi rentgeni

Ko'krak qafasi rentgenida sil bilan bog'liq topilma ko'rilgan-ko'rilmaganligini qayd etadi.

Profil: [DHISObservationXray](StructureDefinition-dhis-observation-xray.html)

Misol: [example-observation-xray](Observation-example-observation-xray.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Test kodi | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `LOINC#30745-4` (Chest X-ray) | `Observation.code` |
| Topilma mavjud | - | `false` | `Observation.value` (boolean) |

#### OIV testi

Sil/OIV ko-infeksiyasi skriningi doirasida o'tkazilgan OIV testi natijasini qayd etadi.

Profil: [DHISObservationHIV](StructureDefinition-dhis-observation-hiv.html)

Misol: [example-obs-hiv](Observation-example-obs-hiv.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Test kodi | [DHISObservationCodeVS](ValueSet-dhis-observation-code-vs.html) | `LOINC#56888-1` (HIV testing) | `Observation.code` |
| Natija | - | `true` | `Observation.value` (boolean) |

### Statsionarda yotishni hujjatlashtirish (Encounter)

Sil davolanishi uchun statsionarga yotqizish. DHIS ga xos Encounter profili mavjud emas; bevosita UZ Core dan foydalaning. `diagnosis.condition` yotqizishni sil tashxisiga bog'laydi.

Profil: [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition-uz-core-encounter.html)

Misol: [example-dhis-encounter](Encounter-example-dhis-encounter.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Sinf | [v3-ActCode](https://dhp.uz/fhir/core/CodeSystem-actcode-cs.html) | `v3-ActCode#IMP` (inpatient encounter) | `class` |
| Holat | [EncounterStatus](https://hl7.org/fhir/R5/valueset-encounter-status.html) | `completed` | `status` |
| Yotqizish davri | - | `2026-02-12` dan `2026-02-18` gacha | `actualPeriod` |
| Tashxis | - | [DHISCondition](#recording-a-tb-diagnosis-condition) ga havola | `diagnosis.condition` |
| Tashxis roli | [encounter-diagnosis-use](https://hl7.org/fhir/R5/codesystem-encounter-diagnosis-use.html) | `encounter-diagnosis-use#final` (Final) | `diagnosis.use` |

### Yordamchi resurslar {#supporting-resources}

Bu resurslar yuqoridagi yozuvlar tomonidan havola qilinadi va bevosita UZ Core profillaridan foydalanadi.

| Resurs | Profil | Misol | Rol |
| :--- | :--- | :--- | :--- |
| Organization | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | [example-organization](Organization-example-organization.html) | Sil davolash muassasasi |
| Practitioner | [UZCorePractitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | [example-practitioner](Practitioner-example-practitioner.html) | Parvarishda ishtirok etgan klinisist |
| PractitionerRole | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html) | [practitionerrole-001](PractitionerRole-practitionerrole-001.html) | Klinisistni muassasaga bog'laydi |
