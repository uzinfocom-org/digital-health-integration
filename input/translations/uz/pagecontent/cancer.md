<style>
/* Bo'limlardagi ustunlar soni turlicha bo'lsa ham, jadvallar to'liq kenglikda ko'rsatiladi. */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

Ushbu sahifada Onkologiya registri ma'lumotlarini FHIR resurslari ko'rinishida ifodalash tartibi bayon etilgan.

### Umumiy ma'lumot

Onkologiya registri saraton tashxislari, davolash epizodlari, tashriflar, o'sma morfologiyasi va xulqi, gistologik daraja, kasallikning rivojlanishi hamda TNM bosqichlarini qayd etadi. Ma'lumotlar DHP ga o'zaro bog'langan atomar FHIR resurslari sifatida yuboriladi. Har bir resurs tegishli bo'limda ko'rsatilgan Cancer profiliga va [UZ Core](https://dhp.uz/fhir/core/uz/artifacts.html) talablariga mos keladi.

Asosiy resurs — `CancerCondition`. `CancerEpisodeOfCare` davolash kursini birlashtiradi, `CancerEncounter` esa shu kurs doirasidagi tashrifni qayd etadi. `focus` orqali tashxisga bog'langan kuzatuvlar morfologiya, xulq, daraja, rivojlanish va bosqichlashni tavsiflaydi. Barcha resurslar bir bemorga havola qiladi.

Mavjud bo'lsa, standart ICD-10, ICD-O-3, SNOMED CT va LOINC kodlari ishlatiladi. Registrga xos tushunchalar mahalliy Cancer CodeSystem larida saqlanadi. ConceptMap lar registrning raqamli identifikatorlarini DHP terminologiyasiga o'giradi.

### Saraton tashxisini qayd etish (CancerCondition)

Saraton tashxisi, registr identifikatori, laterallik, aniqlanish sharti va umumiy TNM bosqichini qayd etadi. Tashxis ICD-10 bilan kodlanadi. Laterallik `bodySite` da, aniqlanish sharti esa shu elementning kengaytmasida saqlanadi.

Profil: [CancerCondition](StructureDefinition-cancer-condition.html)

Misol: [cancer-condition-example](Condition-cancer-condition-example.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod misoli | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Onkologiya registri identifikatori | - | `57dcdd0a-5a68-4cc6-8503-5ab15a41c62b` | `identifier[cancerRegistry]` |
| Tashxis | [CancerICD10VS](ValueSet-cancer-icd-10-vs.html) | `ICD-10#C02` | `Condition.code` |
| Tashxis manbasi/turi | UZ Core tashxis turi | `diagnosis-type-cs#cancer-0003-0003` | `extension[diagnosisType]` |
| ICCC-3 guruhi | ICCC-3 | `iccc-3-cs#IIId2` | `extension[cancer-iccc-3-group]` |
| Laterallik | [CancerLateralityQualifierVS](ValueSet-cancer-laterality-qualifier-vs.html) | `SNOMED CT#7771000` (chap) | `bodySite` |
| Aniqlanish sharti | [CancerDetectionConditionVS](ValueSet-cancer-detection-condition-vs.html) | `cancer-detection-condition-cs#cancer-0005-0002` | `bodySite.extension[detection-condition]` |
| Umumiy bosqich | [CancerTNMStageVS](ValueSet-cancer-tnm-stage-vs.html) | `SNOMED CT#1352944009` (UICC II bosqich) | `stage.summary` |
| Bosqichlash asosi | - | bosqich guruhi Observation resursiga havola | `stage.assessment` |
| Bemor / tashrif | - | Patient va CancerEncounter ga havolalar | `subject` / `encounter` |
| Boshlanish / ro'yxatga olish sanasi | - | `2026-08-15` / `2026-08-20` | `onsetDateTime` / `recordedDate` |
| Mas'ul tashkilot | - | Organization ga havola | `participant.actor` |

### Davolash kursini birlashtirish (CancerEpisodeOfCare)

Tashxis va uning davolash kursini birlashtiradi. Standart SNOMED CT davolash maqsadi afzal hisoblanadi. Registr qiymatiga standart tushuncha mos kelmasa, mahalliy maqsad kesimi ishlatiladi. Davolash usuli mahalliy Cancer kodi sifatida saqlanadi.

Profil: [CancerEpisodeOfCare](StructureDefinition-cancer-episode-of-care.html)

Misol: [cancer-episode-of-care-example](EpisodeOfCare-cancer-episode-of-care-example.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod misoli | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Onkologiya registri identifikatori | - | registr UUID si | `identifier[cancerRegistry]` |
| DHP xizmat turi | UZ Core EpisodeOfCare turi | `episode-of-care-type#mserv-0001-00004` | `type[serviceType]` |
| Standart davolash maqsadi | [CancerTreatmentIntentSnomedVS](ValueSet-cancer-treatment-intent-snomed-vs.html) | `SNOMED CT#373808002` (radikal) | `type[treatmentIntent]` |
| Mahalliy davolash maqsadi | [CancerTreatmentIntentVS](ValueSet-cancer-treatment-intent-vs.html) | `cancer-treatment-intent-cs#cancer-0017-0001` | `type[localTreatmentIntent]` |
| Davolash usuli | [CancerSpecialTreatmentVS](ValueSet-cancer-special-treatment-vs.html) | `cancer-special-treatment-cs#cancer-0018-0002` (jarrohlik davolash) | `type[specialTreatment]` |
| Tashxis | - | CancerCondition ga havola | `diagnosis.condition` |
| Bemor / tashkilot / davolash koordinatori | - | resurslarga havolalar | `patient` / `managingOrganization` / `careManager` |
| Davolash davri | - | boshlanish va ixtiyoriy tugash sanasi | `period` |

### Tashrifni qayd etish (CancerEncounter)

Saraton bilan bog'liq tashrifni qayd etadi va uni davolash epizodi hamda tashxis bilan bog'laydi.

Profil: [CancerEncounter](StructureDefinition-cancer-encounter.html)

Misol: [cancer-encounter-example](Encounter-cancer-encounter-example.html)

| Qayd etiladigan ma'lumot | Misol | Qayerda saqlanadi |
| :--- | :--- | :--- |
| Holat va sinf | `completed`, `v3-ActCode#IMP` | `status`, `class` |
| Tashrif turi | `encounter-type-cs#mserv-0001-00002` | `type` |
| Davolash epizodi | CancerEpisodeOfCare ga havola | `episodeOfCare` |
| Tashxis va uning roli | CancerCondition, `final` | `diagnosis.condition`, `diagnosis.use` |
| Bemor / tashkilot / davolovchi mutaxassis | resurslarga havolalar | `subject`, `serviceProvider`, `participant.actor` |
| Tashrif davri | boshlanish va tugash sana-vaqti | `actualPeriod` |
| Chiqarish natijasi | `encounter-discharge-disposition-home-cs#mserv-0004-00004` | `admission.dischargeDisposition` |

### O'sma morfologiyasi paneli

Panel o'sma xulqi va gistologik daraja kuzatuvlarini birlashtiradi. Tarkibiy kuzatuvlar `focus` orqali ayni `CancerCondition` ga havola qiladi.

Profil: [CancerObservationTumorMorphology](StructureDefinition-cancer-observation-tumor-morphology.html)

Misol: [cancer-observation-tumor-morphology-example](Observation-cancer-observation-tumor-morphology-example.html)

| Qayd etiladigan ma'lumot | Kod misoli | Qayerda saqlanadi |
| :--- | :--- | :--- |
| Panel turi | `LOINC#77753-2` (o'sma morfologiyasi paneli) | `Observation.code` |
| Xulq kuzatuvi | CancerObservationBehavior ga havola | `hasMember` |
| Gistologik daraja kuzatuvi | CancerObservationHistologicGrade ga havola | `hasMember` |
| Bemor / saraton tashxisi | Patient va CancerCondition ga havolalar | `subject` / `focus` |

### O'sma xulqi va birlamchi joylashuvi

ICD-O-3 morfologiya/xulq kodi va birlamchi topografiyani qayd etadi. `bodySite` ICD-O-3 topografiyasi bilan birga SNOMED CT anatomik kodini ham saqlaydi; shu kod UZ Core body-site bog'lanishini ham qanoatlantiradi.

Profil: [CancerObservationBehavior](StructureDefinition-cancer-observation-behavior.html)

Misol: [cancer-observation-behavior-example](Observation-cancer-observation-behavior-example.html)

| Qayd etiladigan ma'lumot | Kod misoli | Qayerda saqlanadi |
| :--- | :--- | :--- |
| Kuzatuv turi | `LOINC#31206-6` (ICD-O-3 bo'yicha o'sma xulqi) | `Observation.code` |
| Morfologiya va xulq | `ICD-O-3#8070/3` (yassi hujayrali karsinoma, QA) | `valueCodeableConcept` |
| Birlamchi topografiya | `ICD-O-3#C15.1` (ko'krak qafasidagi qizilo'ngach) | `bodySite.coding[icdO3]` |
| Anatomik ekvivalent | `SNOMED CT#59609004` (ko'krak qafasidagi qizilo'ngach tuzilmasi) | `bodySite.coding[snomed]` |

### Gistologik daraja

O'sma darajasi va uni tasdiqlash usulini qayd etadi.

Profil: [CancerObservationHistologicGrade](StructureDefinition-cancer-observation-histologic-grade.html)

Misol: [cancer-observation-histologic-grade-example](Observation-cancer-observation-histologic-grade-example.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod misoli | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Kuzatuv turi | [CancerTumorMorphologyPanelVS](ValueSet-cancer-tumor-morphology-panel-vs.html) | `LOINC#21858-6` (saraton darajasi) | `Observation.code` |
| Tasdiqlash usuli | [CancerConfirmationMethodVS](ValueSet-cancer-confirmation-method-vs.html) | `cancer-confirmation-method-cs#cancer-0002-0003` (gistologiya) | `method` |
| Daraja | [CancerDegreeDifferentiationVS](ValueSet-cancer-degree-differentiation-vs.html) | `SNOMED CT#1155701009` (G1, yuqori darajada differensiallashgan) | `valueCodeableConcept` |

### Rivojlanish yoki metastazni qayd etish

Retsidiv, mintaqaviy yoki uzoq metastaz, progressiya yoxud boshqa rivojlanayotgan jarayon va zararlangan anatomik joyni qayd etadi.

Profil: [CancerObservationMetastase](StructureDefinition-cancer-observation-metastase.html)

Misol: [cancer-observation-metastase-example](Observation-cancer-observation-metastase-example.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod misoli | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Kuzatuv turi | - | `LOINC#97509-4` (saraton kasalligining rivojlanishi) | `Observation.code` |
| Rivojlanish turi | [CancerEmergingProcessVS](ValueSet-cancer-emerging-process-vs.html) | `cancer-emerging-process-cs#cancer-0015-0003` (uzoq metastazlar) | `valueCodeableConcept` |
| Zararlangan joy | [CancerBodyLocationVS](ValueSet-cancer-body-location-vs.html) | `SNOMED CT#110549009` (o'pka va plevra) | `bodySite` |

### TNM toifalarini qayd etish

Mavjud har bir cT, pT, cN, pN, cM yoki pM toifasi uchun alohida Observation yaratiladi. `Observation.code` o'qni, `method` bosqichlash nashrini, `valueCodeableConcept` esa shu o'q uchun ruxsat etilgan toifa qiymatini bildiradi.

Profil: [CancerObservationTNMCategory](StructureDefinition-cancer-observation-tnm-category.html)

Misollar: [cT](Observation-cancer-observation-tnm-category-ct.html), [cN](Observation-cancer-observation-tnm-category-cn.html), [pN](Observation-cancer-observation-tnm-category-pn.html), [cM](Observation-cancer-observation-tnm-category-cm.html), [pM](Observation-cancer-observation-tnm-category-pm.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod misoli | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| TNM o'qi | [CancerTNMCategoryVS](ValueSet-cancer-tnm-category-vs.html) | `SNOMED CT#399504009` (cT toifasi) | `Observation.code` |
| Bosqichlash nashri | [CancerStagingEditionVS](ValueSet-cancer-staging-edition-vs.html) | `SNOMED CT#897275008` (AJCC 8-nashri) | `method` |
| Toifa qiymati | alohida cT/pT/cN/pN/cM/pM qiymatlar to'plami | `SNOMED CT#1352983006` (cT qiymati) | `valueCodeableConcept` |
| Bemor / tashxis / ijrochi | resurslarga havolalar | Patient, CancerCondition va PractitionerRole | `subject` / `focus` / `performer` |

Alohida o'qlar uchun qiymatlar to'plamlari: [CancerCCCtCategoryVS](ValueSet-cancer-ccc-t-category-vs.html), [CancerCCpTCategoryVS](ValueSet-cancer-cc-p-t-category-vs.html), [CancerCCcNCategoryVS](ValueSet-cancer-cc-c-n-category-vs.html), [CancerCCpNCategoryVS](ValueSet-cancer-cc-p-n-category-vs.html), [CancerCCcMCategoryVS](ValueSet-cancer-cc-c-m-category-vs.html) va [CancerCCpMCategoryVS](ValueSet-cancer-cc-p-m-category-vs.html). Ko'p qiymatlar SNOMED CT dan olinadi; aniq SNOMED CT toifasi mavjud bo'lmaganda mahalliy kodlar saqlanadi.

### Umumiy TNM bosqichini qayd etish

Umumiy bosqich va uni asoslovchi alohida TNM toifasi kuzatuvlariga havolalarni qayd etadi.

Profil: [CancerObservationTNMStageGroup](StructureDefinition-cancer-observation-tnm-stage-group.html)

Misol: [cancer-observation-tnm-stage-group-example](Observation-cancer-observation-tnm-stage-group-example.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod misoli | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Kuzatuv turi | - | `SNOMED CT#399390009` (TNM bosqichlarini guruhlash) | `Observation.code` |
| Umumiy bosqich | [CancerTNMStageVS](ValueSet-cancer-tnm-stage-vs.html) | `SNOMED CT#1352927005` (I bosqich) | `valueCodeableConcept` |
| Asoslovchi toifalar | - | cT, cN, pN, cM va pM kuzatuvlariga havolalar | `hasMember` |

### Onkologiya registri kodlarini o'girish

Kiruvchi ma'lumotlarda DHP terminologiya kodlari o'rniga Onkologiya registrining raqamli identifikatorlari bo'lsa, quyidagi ConceptMap lardan foydalaniladi.

| Manba ma'lumoti | ConceptMap | Maqsad terminologiya |
| :--- | :--- | :--- |
| Registr holati va tegishli mahalliy identifikatorlar | [Onkologiya registri holatidan DHP holatiga](ConceptMap-cancer-registry-dictionary-to-dhp-status-cm.html) | DHP va Cancer CodeSystem lari |
| Registr ICD-10 identifikatori | [Onkologiya registri ICD-10 dan DHP ICD-10 ga](ConceptMap-cancer-registry-dictionary-icd10-to-dhp-icd10-cm.html) | ICD-10 |
| Registr ICD-O-3 topografiya identifikatori | [Onkologiya registri ICD-O-3 topografiyasidan DHP ICD-O-3 topografiyasiga](ConceptMap-cancer-registry-dict-icdo3-topography-to-dhp-icdo3-cm.html) | ICD-O-3 |

### Yordamchi resurslar

Misollarda [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html), [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) va [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html) resurslariga ham havola qilingan.
