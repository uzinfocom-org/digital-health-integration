<style>

/* Bir xil, to‘liq kenglikdagi mapping jadvallari (bo‘limlarda ustunlar soni turlicha bo‘lishi mumkin). */

.col-12 table { table-layout: fixed; width: 100%; }

.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }

</style>

Ushbu sahifada onkologik bemorlarni boshqarish ma’lumotlari FHIR resurslari ko‘rinishida qanday ifodalanishi hujjatlashtirilgan.

### Umumiy ko‘rinish

Cancer registry moduli onkologik bemorlarni ro‘yxatga olish, tashxislash, bosqichini aniqlash, davolash va kuzatuv ma’lumotlarini qamrab oladi. Ma’lumotlar Cancer axborot tizimidan olinadi va DHP tizimiga alohida, atomar FHIR resurslari sifatida qo‘shiladi. Resurslar har bir bo‘limda ko‘rsatilgan Cancer profillariga, aks holda esa UZ Core yoki standart FHIR profillariga mos keladi.

Konsepsiyaning standart ekvivalenti mavjud bo‘lgan barcha holatlarda resurslarda standart kod to‘g‘ridan-to‘g‘ri ishlatiladi — kodlangan tashxis uchun ICD-10, tana sohasi uchun esa SNOMED CT. Manba tizim o‘zining mahalliy kodlarini (registrdagi holat, tasdiqlash usuli, TNM kategoriyalari, topografiya, morfologiya, davolash xarakteri va boshqalar) saqlaydi; har bir mahalliy kod o‘zining Cancer CodeSystem tizimida saqlanadi va mos standart yoki DHP kodiga ConceptMap orqali bog‘lanadi. Shu sababli integrator o‘zida mavjud bo‘lgan kod uchun standart/target kodni har doim topishi mumkin. Resurslarda aniq (`equivalent`) moslik mavjud bo‘lgan joylarda standart yoki DHP kodidan foydalaniladi — har bir maydonga bog‘langan value set ushbu kodni taqdim etadi va faqat aniq standart ekvivalenti mavjud bo‘lmagan hollarda mahalliy kodni saqlab qoladi (masalan, TNM kategoriya darajalari, bosqichning quyi klassifikatsiyalari va davolash usullarining kombinatsiyalari tashqi terminologiyalarda 1:1 ekvivalentga ega emas). Quyidagi har bir bo‘lim tegishli profilni, aniq misol resursni va kod saqlaydigan har bir maydon uchun value set hamda misol kodni ko‘rsatadi.

Odatdagi yozuv quyidagi resurslarni o‘zaro bog‘laydi: [patient](#bemorni-ro‘yxatga-olish-patient), [primary cancer diagnosis](#birlamchi-tashxisni-qayd-etish-cancerconditionprimary) va tegishli [secondary/metastatic condition](#metastatik-yoki-retsidiv-kasallikni-qayd-etish-cancerconditionsecondary), davolash kursini guruhlovchi [episode of care](#davolash-kursini-guruhlash-cancerepisodeofcare), bemorning holati va davolash rejasi aniqlanadigan [encounter](#tashrifni-hujjatlashtirish-cancerencounter), shuningdek, tekshiruv natijasida olingan [staging observations](#bosqichni-qayd-etish-cancerobservationtnmcategory-va-cancerobservationtnmstagegroup) (alohida TNM kategoriyalari va umumiy stage group).

### Bemorni ro‘yxatga olish (Patient)

Har bir saraton yozuvining subyekti. Cancer uchun maxsus Patient profili mavjud emas; bevosita UZ Core profilidan foydalaniladi.

Profile: [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html)

| Qayd etiladigan ma’lumot | Saqlanadigan joy |
| :--- | :--- |
| Milliy identifikator | `identifier` (national ID slice) |
| Ism, jins, tug‘ilgan sana | `name`, `gender`, `birthDate` |
| Manzil | `address` (UZ address slice) |
| Mas’ul muassasa | `managingOrganization` → [Organization](#qo‘llab-quvvatlovchi-resurslar) |

### Birlamchi tashxisni qayd etish (CancerConditionPrimary)

O‘smaning topografiyasini (kelib chiqish joyi) va morfologiyasini (gistologik turi) belgilaydi. `Condition.code` tashxisni ICD-10 orqali kodlaydi; o‘smaga xos tafsilotlar — laterallik, ICD-O-3 topografiyasi va morfologiyasi, differensiallashish darajasi, o‘sma biologik xususiyati, aniqlanish holati, ICCC-3 guruhi va tasdiqlash usuli — base `Condition` elementida ular uchun to‘g‘ridan-to‘g‘ri joy mavjud emasligi sababli extensionlarda saqlanadi.

Profile: [CancerConditionPrimary](StructureDefinition-cancer-condition-primary.html)

Example: [cancer-condition-primary-example](Condition-cancer-condition-primary-example.html)

| Qayd etiladigan ma’lumot | Value set | Misol kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Tashxis | ICD10VS | `ICD-10#C02` | `Condition.code` |
| Laterallik | [CancerLaterlityQualifierCS](CodeSystem-cancer-laterlity-qualifier-cs.html) | `cancer-laterlity-qualifier-cs#cancer-0004-0002` (Chap tomonda / Слева / Left) | `extension[lateralityQualifier]` |
| Topografiya (ICD-O-3) | [CancerICD3TopographyCS](CodeSystem-cancer-icd3-topography-cs.html) | `cancer-icd3-topography-cs#C020` (tilning yuqori yuzasi QA / языка верхняя поверхность БДУ) | `extension[topography]` |
| Morfologiya (ICD-O-3) | [CancerICD3morphologyCS](CodeSystem-cancer-icd3-morphology-cs.html) | `cancer-icd3-morphology-cs#8000` (Xavfli o‘smalar QA / Новообразование злокачественное БДУ) | `extension[morphology]` |
| Differensiallashish darajasi | [CancerDegreeDifferentiationCS](CodeSystem-cancer-degree-differentiation-cs.html) | `cancer-degree-differentiation-cs#cancer-0020-0002` (G2, o‘rtacha differensiallashgan) | `extension[gradeDifferentiation]` |
| O‘sma biologik xususiyati | [CancerTumorBehaviorCS](CodeSystem-cancer-tumor-behavior-cs.html) | `cancer-tumor-behavior-cs#cancer-0019-0004` (Yomon sifatli / Malignant) | `extension[tumorBehavior]` |
| Aniqlanish holati | [CancerDetectionCircumstanceCS](CodeSystem-cancer-detection-circumstance-cs.html) | `cancer-detection-circumstance-cs#cancer-0005-0002` (Onkonazorat kabinetida aniqlangan) | `extension[detectionCircumstance]` |
| ICCC-3 guruhi | `$iccc-3-cs` | `iccc-3-cs#III` | `extension[cancer-iccc-3-group]` |
| Tasdiqlash usuli | [CancerConfirmationMethodCS](CodeSystem-cancer-confirmation-method-cs.html) | `cancer-confirmation-method-cs#cancer-0002-0003` (Gistologiya / Histology) | `extension[confirmationMethod]` |
| Klinik holat | [condition-clinical](https://dhp.uz/fhir/core/CodeSystem-clinical-status-cs.html) | `condition-clinical#active` | `clinicalStatus` |
| Verifikatsiya holati | [condition-ver-status](https://dhp.uz/fhir/core/CodeSystem-condition-verification-status-cs.html) | `condition-ver-status#confirmed` | `verificationStatus` |
| Kategoriya | [condition-category](http://terminology.hl7.org/CodeSystem/condition-category) | `condition-category#problem-list-item` | `category` |
| Tana sohasi | SNOMED CT | `SNOMED CT#422005` | `bodySite` |
| Boshlanish / qayd etilgan sana | - | `2026-08-15` / `2020-08-15` | `onsetDateTime` / `recordedDate` |
| Umumiy bosqich | [CancerStageCS](CodeSystem-cancer-stage-cs.html) | `cancer-stage-cs#cancer-0012-0002` (I) | `stage.summary` |
| Quyi bosqich | [CancerSubStageCS](CodeSystem-cancer-sub-stage-cs.html) | `cancer-sub-stage-cs#cancer-0013-0007` (a1) | `stage.summary` |
| Bosqichlash dalili | - | [CancerObservationTNMStageGroup](#bosqichni-qayd-etish-cancerobservationtnmcategory-va-cancerobservationtnmstagegroup) ga reference | `stage.assessment` |
| Subyekt / encounter | - | [Patient](#bemorni-ro‘yxatga-olish-patient) / [CancerEncounter](#tashrifni-hujjatlashtirish-cancerencounter) ga reference | `subject` / `encounter` |
| Mas’ul klinitsist | - | [PractitionerRole](#qo‘llab-quvvatlovchi-resurslar) ga reference | `participant.actor` |

Topografiya, morfologiya, laterallik, aniqlanish holati, tasdiqlash usuli, differensiallashish darajasi yoki o‘sma xususiyati kodlarining hech birida 1:1 tashqi terminologik ekvivalent mavjud emas. Shu sababli ularning har biri Cancer’dan olingan mahalliy kodni (`cancer-000X-YYYY`) saqlaydi; faqat asosiy tashxis (ICD-10) va tana sohasi (SNOMED CT) standart kodlardan foydalanadi.

Ro‘yxatga olish darajasidagi holatni aniqlash usuli (`CancerIdCS` #505–#513) va chiqarilish holatiga o‘xshash hayotiy holat (#29–#33) kodlari [cancer-id-status-to-dhp-status-cm](ConceptMap-cancer-id-status-to-dhp-status-cm.html) ConceptMap orqali tegishli DHP tashxis turi va discharge disposition code systemlariga hamda Cancer-specific `CancerDiagnosisTypeCS` / `CancerEncounterDischargeDispositionCS` code systemlariga moslashtiriladi.

Manba tizimining raqamli `CancerIdICD3TopographyCS` topografiya kodlari [cancer-id-icd3-topography-to-cancer-icd3-topography-cm](ConceptMap-cancer-id-icd3-topography-to-cancer-icd3-topography-cm.html) ConceptMap orqali `CancerICD3TopographyCS` alfanumerik (`Cxxx`) kodlariga 1:1 moslashtiriladi. Shu sababli integrator ikkala kod to‘plamidan biriga ega bo‘lsa, ikkinchi kodga o‘tishi mumkin.

### Metastatik yoki retsidiv kasallikni qayd etish (CancerConditionSecondary)

Metastatik, retsidiv yoki boshqa ikkilamchi onkologik jarayonni va u ta’sir qilgan anatomik sohani qayd etadi hamda uni birlamchi tashxis bilan bog‘laydi.

Profile: [CancerConditionSecondary](StructureDefinition-condition-cancer-secondary.html)

Example: [cancer-condition-secondary-example](Condition-cancer-condition-secondary-example.html)

| Qayd etiladigan ma’lumot | Value set | Misol kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Birlamchi tashxis bilan bog‘lanish | - | [CancerConditionPrimary](#birlamchi-tashxisni-qayd-etish-cancerconditionprimary) ga reference | `extension[relatedCondition]` |
| Jarayonning tabiati | [CancerEmergingProcessCS](CodeSystem-cancer-emerging-process-cs.html) | `cancer-emerging-process-cs#cancer-0015-0001` (Retsidiv / Рецидив / Recurrence) | `code` |
| Zararlangan anatomik soha | [CancerDamageAreaCS](CodeSystem-cancer-damage-area-cs.html) | `cancer-damage-area-cs#cancer-0014-0002` (Suyaklar / Кости / Bones) | `bodySite` |
| Klinik / verifikatsiya holati | - | `condition-clinical#active` / `condition-verification-status#confirmed` | `clinicalStatus` / `verificationStatus` |
| Subyekt / encounter | - | [Patient](#bemorni-ro‘yxatga-olish-patient) / [CancerEncounter](#tashrifni-hujjatlashtirish-cancerencounter) ga reference | `subject` / `encounter` |
| Boshlanish sanasi | - | `2026-08-15` | `onsetDateTime` |

Retsidiv/metastatik jarayon va zararlangan soha tushunchalarining hech birida ushbu registr uchun standart terminologik ekvivalent mavjud emas. Shu sababli ikkala tushuncha ham Cancer mahalliy kodlari sifatida saqlanadi.

### Tashrifni hujjatlashtirish (CancerEncounter)

Bemorning onkologik holati va davolashi baholanadigan encounter. UZ Core Encounter profilini onkologik encounter class va unga tegishli episode of care bilan majburiy bog‘lanish orqali kengaytiradi.

Profile: [CancerEncounter](StructureDefinition-cancer-encounter.html)

Example: [cancer-encounter-example](Encounter-cancer-encounter-example.html)

| Qayd etiladigan ma’lumot | Value set | Misol kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Class | [v3-ActCode](https://dhp.uz/fhir/core/CodeSystem-actcode-cs.html) | `v3-ActCode#IMP` (statsionar encounter) | `class` |
| Holat | [EncounterStatus](https://hl7.org/fhir/R5/valueset-encounter-status.html) | `completed` | `status` |
| Episode of care | - | [CancerEpisodeOfCare](#davolash-kursini-guruhlash-cancerepisodeofcare) ga reference | `episodeOfCare` |
| Tashrif davri | - | `2026-08-18T09:00` dan `2026-08-18T10:30` gacha | `actualPeriod` |
| Tashxis | - | [CancerConditionPrimary](#birlamchi-tashxisni-qayd-etish-cancerconditionprimary) ga reference | `diagnosis.condition` |
| Tashxis roli | [encounter-diagnosis-use](https://hl7.org/fhir/R5/codesystem-encounter-diagnosis-use.html) | `encounter-diagnosis-use#final` (Yakuniy) | `diagnosis.use` |
| Chiqarilish holati | [discharge-disposition-home-cs](https://dhp.uz/fhir/core/CodeSystem-discharge-disposition-home-cs.html) | `discharge-disposition-home-cs#mserv-0004-00002` | `admission.dischargeDisposition` |

Registrning hayotiy holat/disposition kodlari (`CancerIdCS` #29–#33 — tirik, vafot etgan, ko‘chib ketgan, tashxis tasdiqlanmagan, kuzatuv davri tugagan) [cancer-id-status-to-dhp-status-cm](ConceptMap-cancer-id-status-to-dhp-status-cm.html) ConceptMap orqali ushbu DHP discharge-disposition code systemiga va Cancer-specific disposition kodlariga moslashtiriladi.

### Davolash kursini guruhlash (CancerEpisodeOfCare)

Episode of care bemorning saraton tashxisi va unga ko‘rsatilgan davolash kursini bir guruhga birlashtiradi hamda ushbu kursning davolash maqsadi (xarakteri) va usulini (maxsus davolash) qayd etadi.

Profile: [CancerEpisodeOfCare](StructureDefinition-cancer-episode-of-care.html)

Example: [cancer-episode-of-care-example](EpisodeOfCare-cancer-episode-of-care-example.html)

| Qayd etiladigan ma’lumot | Value set | Misol kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Episode turi | [episode-of-care-type](https://dhp.uz/fhir/core/CodeSystem-episode-of-care-type-cs.html) | `episode-of-care-type#mserv-0001-00004` (Davolash xizmatlari) | `type[serviceType]` |
| Davolash xarakteri | [CancerCharacterTreatmentCS](CodeSystem-cancer-character-treatment-cs.html) | `cancer-character-treatment-cs#cancer-0017-0002` (Radikal / Радикальное / Radical) | `type[characterTreatment]` |
| Maxsus (davolash usuli) | [CancerSpecialTreatmentCS](CodeSystem-cancer-special-treatment-cs.html) | `cancer-special-treatment-cs#cancer-0018-0002` (Jarrohlik davolash / Хирургическое / Surgical treatment) | `type[specialTreatment]` |
| Holat | [EpisodeOfCareStatus](https://hl7.org/fhir/R5/valueset-episode-of-care-status.html) | `active` | `status` |
| Davolash davri | - | `2026-08-15` dan `2026-08-15` gacha | `period.start` / `period.end` |
| Davolanayotgan tashxis | - | [CancerConditionPrimary](#birlamchi-tashxisni-qayd-etish-cancerconditionprimary) ga reference | `diagnosis.condition` |
| Bemor / boshqaruvchi tashkilot | - | [Patient](#bemorni-ro‘yxatga-olish-patient) / [Organization](#qo‘llab-quvvatlovchi-resurslar) ga reference | `patient` / `managingOrganization` |
| Davolash menejeri | - | [PractitionerRole](#qo‘llab-quvvatlovchi-resurslar) ga reference | `careManager` |

Davolash xarakteri va maxsus davolash registrga xos kombinatsiyalarni ifodalaydi (masalan, “jarrohlik + tashqi nurli radiatsiya + kimyoterapiya” bitta qiymat sifatida). Ushbu kombinatsiyalar uchun standart terminologiyada ekvivalent mavjud emas, shuning uchun ikkalasi ham boshidan oxirigacha Cancer mahalliy kodlari sifatida saqlanadi.

### Bosqichni qayd etish (CancerObservationTNMCategory va CancerObservationTNMStageGroup)

Bosqichlash ikki observation profiliga bo‘linadi: har bir individual TNM kategoriyasi (cT, cN, cM, pT, pN, pM) uchun bittadan instance va tekshiruv natijasida aniqlangan umumiy stage grouping uchun bitta summary instance.

#### Individual TNM kategoriyasi

Profile: [CancerObservationTNMCategory](StructureDefinition-cancer-observation-tnm-category.html)

Example: [cancer-observation-tnm-category-ct](Observation-cancer-observation-tnm-category-ct.html)

| Qayd etiladigan ma’lumot | Value set | Misol kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Qaysi kategoriya qayd etilmoqda | [CancerTNMCategoryCS](CodeSystem-cancer-tnm-category-cs.html) | `cancer-tnm-category-cs#cancer-0022-0003` (cT category) | `Observation.code` |
| Kategoriya qiymati | Yuqoridagi kategoriya bilan mos keladigan `CancerCCcTCategoryCS` / `CancerCCcNCategoryCS` / `CancerCCcMCategoryCS` / `CancerCCpTCategoryCS` / `CancerCCpNCategoryCS` / `CancerCCpMCategoryCS` dan biri | `cancer-cc-p-n-category-cs#cancer-0010-0001` (X) | `valueCodeableConcept` |
| Holat | [ObservationStatus](https://hl7.org/fhir/R5/valueset-observation-status.html) | `final` | `status` |
| Kategoriya (kuzatuv turi) | [observation-category](https://hl7.org/fhir/R5/valueset-observation-category.html) | `observation-category#imaging` | `category` |
| Subyekt / focus | - | [Patient](#bemorni-ro‘yxatga-olish-patient) / [CancerConditionPrimary](#birlamchi-tashxisni-qayd-etish-cancerconditionprimary) ga reference | `subject` / `focus` |
| Bajaruvchi | - | [PractitionerRole](#qo‘llab-quvvatlovchi-resurslar) ga reference | `performer` |

Oltita kategoriya qiymatining har bir code systemi tegishli TNM o‘qiga xos shkala hisoblanadi (klinik yoki patologik, T, N yoki M). Shu sababli kategoriya qiymatlari Cancer mahalliy kodlarini saqlaydi; faqat qaysi o‘q qayd etilayotgani (`CancerTNMCategoryCS`) qat’iy yopiq ro‘yxat hisoblanadi.

#### Umumiy stage group

Profile: [CancerObservationTNMStageGroup](StructureDefinition-cancer-observation-tnm-stage-group.html)

Example: [cancer-observation-tnm-stage-group-example](Observation-cancer-observation-tnm-stage-group-example.html)

| Qayd etiladigan ma’lumot | Value set | Misol kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Observation turi | [CancerStageGroupCS](CodeSystem-cancer-stage-group-cs.html) | `cancer-stage-group-cs#cancer-0021-0001` (TNM bosqichlarini guruhlash / TNM stage grouping) | `Observation.code` |
| Bosqich | `cancer-stage-group-cs#cancer-0021-0004` component kodi orqali [CancerStageCS](CodeSystem-cancer-stage-cs.html) | `cancer-stage-cs#cancer-0012-0002` (I) | `component[stage].valueCodeableConcept` |
| Bosqich aniqlashtirishi (quyi bosqich) | `cancer-stage-group-cs#cancer-0021-0005` component kodi orqali [CancerSubStageCS](CodeSystem-cancer-sub-stage-cs.html) | `cancer-sub-stage-cs#cancer-0013-0007` (a1) | `component[stageClarification].valueCodeableConcept` |
| Subyekt / focus | - | [Patient](#bemorni-ro‘yxatga-olish-patient) / [CancerConditionPrimary](#birlamchi-tashxisni-qayd-etish-cancerconditionprimary) ga reference | `subject` / `focus` |
| Qo‘llab-quvvatlovchi kategoriya observationlari | - | [CancerObservationTNMCategory](#individual-tnm-kategoriyasi) ga reference(lar) | `hasMember` |
| Samarali sana / bajaruvchi | - | `2025-08-15T10:30` / [PractitionerRole](#qo‘llab-quvvatlovchi-resurslar) ga reference | `effectiveDateTime` / `performer` |

Bosqich va quyi bosqich oddiy ordinal/harf shkalalari (0, I–IV va a–d hamda a1/b2 kabi quyi bo‘linmalar) bo‘lib, ushbu registrda ularga mos standart staging terminologiyasi mavjud emas. Shu sababli ikkalasi ham Cancer mahalliy kodlari sifatida saqlanadi. `hasMember` stage-group observationni uni qo‘llab-quvvatlovchi individual kategoriya observationlari (masalan, cT) bilan bog‘lash uchun ishlatiladi.

### Qo‘llab-quvvatlovchi resurslar

Yuqoridagi yozuvlarda reference sifatida ishlatiladigan ushbu resurslar bevosita UZ Core profillaridan foydalanadi.

| Resurs | Profil | Roli |
| :--- | :--- | :--- |
| Organization | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | Onkologik davolash muassasasi |
| Practitioner | [UZCorePractitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | Davolashda ishtirok etuvchi klinitsist |
| PractitionerRole | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html) | Klinitsistni muassasa bilan bog‘laydi |