<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

Ushbu sahifada bachadon bo'yni va sut bezi saratoni skriningi ma'lumotlari va FHIR resurslari o'rtasidagi moslik tavsiflangan.

### Umumiy ma'lumot

Bachadon bo'yni va sut bezi saratoni skriningi skrining dasturidan olingan laboratoriya natijalari, tasvirlash topilmalari, patomorfologik xulosalar, so'rovnoma javoblari va klinik kuzatuvlarni qamrab oladi. Ma'lumotlar Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System tizimidan keladi va DHP ga alohida, atomar FHIR resurslari sifatida qo'shiladi. Resurslar mavjud bo'lgan har bir bo'limda havola qilingan skrining profillariga, aks holda esa [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) yoki standart FHIR profillariga mos keladi.

Har bir bo'limda foydalaniladigan ma'lumotnoma, kod namunasi, boshqaruvchi profil va aniq misol resursi keltirilgan. Bo'y, vazn va TVI standart [FHIR hayotiy ko'rsatkichlari](https://hl7.org/fhir/observation-vitalsigns.html) profillaridan foydalanadi.

Kodlanadigan qiymatlar ekvivalent tushuncha mavjud bo'lgan hamma joyda SNOMED CT yoki LOINC dan foydalanadi. Mahalliy kodlar faqat standart tushuncha mos kelmagan joyda qoladi; ular `screening-*-cs` CodeSystem larida o'zbek, rus va ingliz tilidagi belgilanishlari bilan nashr etiladi.

<div>{% include screening-model-uz.svg %}</div><br clear="all"/>

### Test yoki muolajani buyurtirish (ServiceRequest)

`ServiceRequest.code` ni buyurtirilayotgan test yoki muolajaga o'rnating.

Profil: [ScreeningServiceRequest](StructureDefinition-screening-service-request.html)

Misollar: [ServiceRequest-cytology](ServiceRequest-ServiceRequest-cytology.html), [ServiceRequest-hpv](ServiceRequest-ServiceRequest-hpv.html), [ServiceRequest-colposcopy](ServiceRequest-ServiceRequest-colposcopy.html), [ServiceRequest-mammography](ServiceRequest-ServiceRequest-mammography.html)

| Nima buyurtiriladi | Ma'lumotnoma | Misol kodi |
| :--- | :--- | :--- |
| Sitologik surtma | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#18500-9` |
| OPV testi | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#82675-0` |
| Kolposkopiya | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#392003006` |
| Mammografiya | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#71651007` |

### Hisobot chiqarish (DiagnosticReport)

`DiagnosticReport.code` ni muolajaga o'rnating (yo'llanmadagi kodlar bilan bir xil). Mammografiya hisoboti `conclusionCode` da umumiy xulosani ham o'z ichiga olishi mumkin.

Profil: [ScreeningDiagnosticReport](StructureDefinition-screening-diagnostic-report.html)

Misollar: [DiagnosticReport-cytology](DiagnosticReport-DiagnosticReport-cytology.html), [DiagnosticReport-colposcopy](DiagnosticReport-DiagnosticReport-colposcopy.html), [DiagnosticReport-mammography](DiagnosticReport-DiagnosticReport-mammography.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi |
| :--- | :--- | :--- |
| Hisobot turi | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) / [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `LOINC#18500-9` (sitologiya)<br>`SNOMED CT#392003006` (kolposkopiya)<br>`SNOMED CT#71651007` (mammografiya) |
| Umumiy BI-RADS xulosasi (mammografiya) | [ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-birads-cs#src-birads-2` (BI-RADS 2) |

### Sitologiya natijasi

Sitologik surtma darajasini qayd etadi.

Profil: [ScreeningObservation](StructureDefinition-screening-observation.html)

Misol: [cytology-result](Observation-cytology-result.html) (sun'iy intellekt varianti: [cytology-ai-analysis](Observation-cytology-ai-analysis.html), uning natijasi `Observation.value` da erkin matn sifatida saqlanadi)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Test kodi | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#18500-9` (sitologik surtma) | `Observation.code` |
| Sitologiya darajasi | [ScreeningCervicalCytologyVS](ValueSet-screening-cervical-cytology-vs.html) | `screening-cervical-cytology-cs#scr-cyt-3` (LSIL) | `Observation.value` |

### OPV testi natijasi

Yuqori xavfli OPV DNK natijasini qayd etadi.

Profil: [ScreeningObservation](StructureDefinition-screening-observation.html)

Misol: [hpv-result](Observation-hpv-result.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Test kodi | [ScreeningLaboratoryVS](ValueSet-screening-laboratory-vs.html) | `LOINC#82675-0` (OPV testi) | `Observation.code` |
| OPV natijasi | [ScreeningHPVVS](ValueSet-screening-hpv-vs.html) | `screening-hpv-cs#scr-hpv-3` (Positive) | `Observation.value` |

### Kolposkopiya natijasi

Kolposkopiya xulosasi va bachadon bo'yni transformatsiya zonasini qayd etadi.

Profil: [ScreeningObservation](StructureDefinition-screening-observation.html)

Misol: [colposcopy-result](Observation-colposcopy-result.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Muolaja kodi | [ScreeningDiagnosticProcedureVS](ValueSet-screening-diagnostic-procedure-vs.html) | `SNOMED CT#392003006` (kolposkopiya) | `Observation.code` |
| Kolposkopiya xulosasi | [ScreeningColposcopyVS](ValueSet-screening-colposcopy-vs.html) | `screening-colposcopy-cs#scr-colpo-2` (LSIL) | `Observation.value` |
| Transformatsiya zonasi turi | [ScreeningTransformationZoneVS](ValueSet-screening-transformation-zone-vs.html) | `screening-transformation-zone-cs#scr-tz-2` (Type 2) | `component` (kod `SNOMED CT#1285652007`) |

### Mammografiya tavsifi

Tuzilmali mammografiya bahosi. `SNOMED CT#71651007` (Mammografiya) muolaja kodi kuzatuvni aniqlaydi; quyidagi har bir o'lchov komponent sifatida qayd etiladi.

Profil: [ScreeningMammographyObservation](StructureDefinition-screening-mammography-observation.html)

Misollar: [ScreeningMammographyObservationExample](Observation-screening-mammography-observation-example.html), [mammography-summary](Observation-mammography-summary.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi (komponent kodi) |
| :--- | :--- | :--- | :--- |
| BI-RADS toifasi | [ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-birads-cs#src-birads-2` (BI-RADS 2) | `SNOMED CT#1348266008` |
| Sut bezi zichligi | [ScreeningBreastFormVS](ValueSet-screening-breast-form-vs.html) | `screening-breast-form-cs#src-breast-density-4` (D turi) | `SNOMED CT#129793001` |
| Tasvir sifati | [ScreeningImageQualityVS](ValueSet-screening-image-quality-vs.html) | `screening-image-quality-cs#src-img-quality-3` (o'rtacha) | `SNOMED CT#246646005` |
| O'qish raqami (1-3) | - | `2` | `screening-specialized-observation-parameter-cs#scrn-0073-00026` |
| Konsensus natijasi sifatida tanlangan | - | `true` | `screening-specialized-observation-parameter-cs#scrn-0073-00027` |
| Uchinchi, arbitraj o'qish natijasi | - | `true` | `screening-specialized-observation-parameter-cs#scrn-0073-00028` |

Ikki marta o'qish har bir o'qish uchun alohida Observation sifatida modellashtiriladi, har biri o'z o'qish raqamiga ega. Yakuniy deb tanlangan o'qish konsensus belgisini o'rnatadi; uchinchi, arbitraj o'qish esa arbitraj belgisini o'rnatadi.

### Sut bezidagi topilma

Mammografiyada ko'rilgan har bir topilma uchun u nimaligi, qaysi sut bezi va kvadrant ekanligi hamda u mavjudligi qayd etiladi. Kuzatuvning `code` qiymati `SNOMED CT#71651007` (Mammografiya).

Profil: [ScreeningObservation](StructureDefinition-screening-observation.html)

Misollar: [mammography-right-breast-finding](Observation-mammography-right-breast-finding.html), [mammography-left-breast-finding](Observation-mammography-left-breast-finding.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Topilma (mavjud = `true`) | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html) | `SNOMED CT#400096001` (melanotsitar nevus)<br>`SNOMED CT#17417006` (teri qalinlashishi) | `component.code` (qiymat = boolean) |
| Sut bezi | [ScreeningBodySiteVS](ValueSet-screening-body-site-vs.html) | `SNOMED CT#73056007` (Right)<br>`SNOMED CT#80248007` (Left) | `Observation.bodySite` |
| Kvadrant | [ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `screening-breast-quadrant-cs#src-breast-quadrant-2` (UE)<br>`screening-breast-quadrant-cs#src-breast-quadrant-1` (UI) | `bodySite` kvadrant kengaytmasi |

### Sut bezlari UTT

Sut bezlarining tuzilmali ultratovush tekshiruvi. `Observation.code` qiymati `SNOMED CT#47079000` (Sut bezi ultratovush tekshiruvi), `bodySite` esa tekshirilgan tomonni qayd etadi. Butun bez parametrlari va o'choqli hosila tavsiflari komponent sifatida qayd etiladi.

Profil: [ScreeningBreastUltrasoundObservation](StructureDefinition-screening-breast-ultrasound-observation.html)

Misol: [ScreeningBreastUltrasoundObservationExample](Observation-screening-breast-ultrasound-observation-example.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Qayerda saqlanadi (komponent kodi) |
| :--- | :--- | :--- |
| Tekshirilgan tomon | [ScreeningUltrasoundBreastSideVS](ValueSet-screening-ultrasound-breast-side-vs.html) | `Observation.bodySite` |
| Sut bezlari simmetriyasi | [ScreeningUltrasoundBreastSymmetryVS](ValueSet-screening-ultrasound-breast-symmetry-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00004` |
| ACR bo'yicha tarkib | [ScreeningUltrasoundAcrCompositionVS](ValueSet-screening-ultrasound-acr-composition-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00005` |
| Teri va so'rg'ich holati | [ScreeningUltrasoundSkinNippleStatusVS](ValueSet-screening-ultrasound-skin-nipple-status-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00006` |
| Yo'llar holati | [ScreeningUltrasoundDuctStatusVS](ValueSet-screening-ultrasound-duct-status-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00012` |
| Qo'ltiq limfa tugunlari holati | [ScreeningUltrasoundAxillaryNodeStatusVS](ValueSet-screening-ultrasound-axillary-node-status-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00017` |
| O'choqli hosila shakli | [ScreeningUltrasoundLesionShapeVS](ValueSet-screening-ultrasound-lesion-shape-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00027` |
| O'choqli hosila yo'nalishi | [ScreeningUltrasoundLesionOrientationVS](ValueSet-screening-ultrasound-lesion-orientation-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00028` |
| O'choqli hosila konturi | [ScreeningUltrasoundLesionContourVS](ValueSet-screening-ultrasound-lesion-contour-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00029` |
| O'choqli hosila exogenligi | [ScreeningUltrasoundLesionEchogenicityVS](ValueSet-screening-ultrasound-lesion-echogenicity-vs.html) | `screening-ultrasound-parameter-cs#scrn-0052-00030` |
| Hosilaning o'lchami, joylashuvi va so'rg'ichdan masofasi | - | `scrn-0052-00022` dan `scrn-0052-00026` gacha |

Parametrlarning to'liq ro'yxati [profil sahifasida](StructureDefinition-screening-breast-ultrasound-observation.html) keltirilgan; har bir kodlanadigan parametrning [ScreeningUltrasoundParameterVS](ValueSet-screening-ultrasound-parameter-vs.html) tarkibida o'z ma'lumotnomasi bor.

### Patomorfologik tekshiruvni buyurtirish

Gistologik, sitologik yoki immunogistokimyoviy tekshiruv uchun so'rov. `code` qiymati `SNOMED CT#714797009` (Gistologik tekshiruv) sifatida belgilangan; laboratoriyaga aslida nima yuborilgani `orderDetail.parameter` da uzatiladi.

Profil: [ScreeningPathologyServiceRequest](StructureDefinition-screening-pathology-service-request.html)

Misol: [ScreeningPathologyRequestExample](ServiceRequest-screening-pathology-request-example.html)

| Parametr | Ma'lumotnoma | Parametr kodi |
| :--- | :--- | :--- |
| Material sinfi | [ScreeningBreastMaterialClassVS](ValueSet-screening-breast-material-class-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00001` |
| Biopsiya kichik turi | [ScreeningBreastBiopsySubtypeVS](ValueSet-screening-breast-biopsy-subtype-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00002` |
| Jarrohlik amaliyoti turi | [ScreeningBreastSurgicalProcedureTypeVS](ValueSet-screening-breast-surgical-procedure-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00003` |
| Sut bezi sitologik materiali turi | [ScreeningBreastCytologyMaterialTypeVS](ValueSet-screening-breast-cytology-material-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00004` |
| Bachadon bo'yni materiali turi | [ScreeningCervicalMaterialTypeVS](ValueSet-screening-cervical-material-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00005` |
| Maxsus davolash turi (takrorlanadi) | [ScreeningSpecialTreatmentTypeVS](ValueSet-screening-special-treatment-type-vs.html) | `screening-histology-order-parameter-cs#scrn-0069-00006` |
| Davolash sanasi yoki davri | `Period` | `screening-histology-order-parameter-cs#scrn-0069-00007` |
| Boshqa davolash | `string` | `screening-histology-order-parameter-cs#scrn-0069-00008` |

Beshta invariant ikkinchi parametrni material sinfiga bog'liq qiladi va maxsus davolash turi `Boshqa` bo'lsa va faqat shunda boshqa davolash matnini talab qiladi. Bitta davolash sanasi `start` va `end` qiymatlari teng bo'lgan `Period` sifatida uzatiladi; sana noma'lum bo'lsa, ixtiyoriy parametr uzatilmaydi. Bu tarixiy davolash davri so'ralgan patologiya xizmati qachon bajarilishi kerakligini bildiradigan `ServiceRequest.occurrencePeriod` dan farq qiladi.

### Namuna (Specimen)

Patomorfologik tekshiruv so'rovi tegishli bo'lgan material.

Profil: [ScreeningSpecimen](StructureDefinition-screening-specimen.html) ([UZCoreSpecimen](https://dhp.uz/fhir/core/StructureDefinition-uz-core-specimen.html) asosida)

Misol: [ScreeningSpecimenExample](Specimen-screening-breast-biopsy-specimen-example.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Namuna turi | [ScreeningPathologySpecimenTypeVS](ValueSet-screening-pathology-specimen-type-vs.html) | `SNOMED CT#258415003` (biopsiya namunasi) | `Specimen.type` |
| Bemor | - | - | `Specimen.subject` |
| Qanday va qachon olingani | - | - | `Specimen.collection` |

### Sut bezi biopsiyasi

Biopsiyaga so'rov ham, bajarilgan biopsiya ham kichik turini `code` da qayd etadi.

Profillar: [ScreeningBreastBiopsyServiceRequest](StructureDefinition-screening-breast-biopsy-service-request.html), [ScreeningBreastBiopsyProcedure](StructureDefinition-screening-breast-biopsy-procedure.html)

Misollar: [ScreeningBreastBiopsyRequestExample](ServiceRequest-screening-breast-biopsy-request-example.html), [ScreeningBreastBiopsyProcedureExample](Procedure-screening-breast-biopsy-procedure-example.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi |
| :--- | :--- | :--- |
| Biopsiya kichik turi | [ScreeningBreastBiopsySubtypeVS](ValueSet-screening-breast-biopsy-subtype-vs.html) | `SNOMED CT#9911007` (kor-biopsiya) |

### Sut bezi gistologiyasi natijasi

Sut bezi bo'yicha gistologik xulosa, patomorfologik TNM bosqichini ham o'z ichiga oladi. `Observation.code` qiymati `SNOMED CT#394597005` (Gistopatologiya); har bir topilma komponent sifatida qayd etiladi.

Profil: [ScreeningBreastHistologyObservation](StructureDefinition-screening-breast-histology-observation.html)

Misol: [ScreeningBreastHistologyObservationExample](Observation-screening-breast-histology-observation-example.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Qayerda saqlanadi (komponent kodi) |
| :--- | :--- | :--- |
| Material sinfi (majburiy) | [ScreeningBreastMaterialClassVS](ValueSet-screening-breast-material-class-vs.html) | `SNOMED CT#371439000` |
| Gistologik tur | [ScreeningBreastHistologicTypeVS](ValueSet-screening-breast-histologic-type-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00006` |
| Nottingem ballari (tubulyar tuzilmalar, yadro polimorfizmi, mitozlar) | - | `LOINC#85321-8`, `LOINC#44645-0`, `LOINC#85300-2` |
| Eng katta invaziv o'choq (mm) | - | `LOINC#44635-1` |
| DCIS xavflilik darajasi | [ScreeningDCISMalignancyGradeVS](ValueSet-screening-dcis-malignancy-grade-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00009` |
| DCIS arxitektonik turi | [ScreeningHistologyDCISArchitecturalPatternVS](ValueSet-screening-histology-dcis-architectural-pattern-vs.html) | `LOINC#85302-8` |
| Limfovaskulyar invaziya | [ScreeningHistologyLymphovascularInvasionVS](ValueSet-screening-histology-lymphovascular-invasion-vs.html) | `LOINC#59544-7` |
| Bosqich modifikatori | [ScreeningStageModifierVS](ValueSet-screening-stage-modifier-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00010` |
| Patomorfologik T / N / M | [ScreeningPathologicalTVS](ValueSet-screening-pathological-t-vs.html), [ScreeningPathologicalNVS](ValueSet-screening-pathological-n-vs.html), [ScreeningPathologicalMVS](ValueSet-screening-pathological-m-vs.html) | `scrn-0073-00011`, `scrn-0073-00012`, `scrn-0073-00013` |
| Rezeksiya chegaralari holati (invaziv komponent, DCIS) | [ScreeningResectionMarginStatusVS](ValueSet-screening-resection-margin-status-vs.html) | `scrn-0073-00038`, `scrn-0073-00039` |
| Qoldiq o'sma yuki (RCB) sinfi | [ScreeningResidualCancerBurdenClassVS](ValueSet-screening-residual-cancer-burden-class-vs.html) | `SNOMED CT#444987009` |
| O'sma fokalligi | - | `SNOMED CT#396199003` |

TNM toifalari AJCC patomorfologik bosqichlash tushunchalaridan foydalanadi (masalan, `SNOMED CT#1228957006` pT1, `SNOMED CT#1229947003` pN0). AJCC da patomorfologik M0 toifasi aniqlanmagan, shuning uchun `ScreeningPathologicalMVS` `SNOMED CT#1229901006` (cM0) ni `SNOMED CT#1229916009` (pM1) bilan birga ishlatadi.

### Bachadon bo'yni gistologiyasi natijasi

Bachadon bo'yni bo'yicha gistologik xulosa. `Observation.code` qiymati `SNOMED CT#394597005` (Gistopatologiya), `bodySite` `SNOMED CT#71252005` (Bachadon bo'yni tuzilmasi) sifatida belgilangan, morfologik tashxis esa `Observation.value` da qayd etiladi.

Profil: [ScreeningCervicalHistologyObservation](StructureDefinition-screening-cervical-histology-observation.html)

Misol: [ScreeningCervicalHistologyObservationExample](Observation-screening-cervical-histology-observation-example.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Qayerda saqlanadi |
| :--- | :--- | :--- |
| Morfologik tashxis | [ScreeningCervicalHistologyMorphologyVS](ValueSet-screening-cervical-histology-morphology-vs.html) | `Observation.value` |
| Differensiatsiya darajasi | [ScreeningCervicalHistologicGradeVS](ValueSet-screening-cervical-histologic-grade-vs.html) | `LOINC#33732-9` |
| Stromaga invaziya chuqurligi | - | `SNOMED CT#396235003` |
| Limfovaskulyar invaziya | [ScreeningHistologyLymphovascularInvasionVS](ValueSet-screening-histology-lymphovascular-invasion-vs.html) | `LOINC#59544-7` |
| Rezeksiya chegaralari holati | [ScreeningResectionMarginStatusVS](ValueSet-screening-resection-margin-status-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00019` |
| Boshqa a'zolarning jalb etilishi | [ScreeningOtherOrganInvolvementVS](ValueSet-screening-other-organ-involvement-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00020` |
| Metastazlanish turi | [ScreeningMetastasisTypeVS](ValueSet-screening-metastasis-type-vs.html) | `screening-specialized-observation-parameter-cs#scrn-0073-00022` |
| Signal limfa tugunini tekshirish | [ScreeningSentinelLymphNodeExaminationVS](ValueSet-screening-sentinel-lymph-node-examination-vs.html) | `SNOMED CT#396487001` |
| Makro- va mikroskopik tavsif | - | `LOINC#22634-0`, `LOINC#22635-7` |

### Sut bezi sitologiyasi natijasi

Yokohama tizimi bo'yicha baholangan sut bezi sitologik xulosasi.

Profil: [ScreeningBreastCytologyObservation](StructureDefinition-screening-breast-cytology-observation.html)

Misol: [ScreeningBreastCytologyObservationExample](Observation-screening-breast-cytology-observation-example.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Qayerda saqlanadi |
| :--- | :--- | :--- |
| Tekshiruv kodi | - | `Observation.code` = `screening-specialized-observation-parameter-cs#scrn-0073-00029` |
| Yokohama toifasi | [ScreeningYokohamaCategoryVS](ValueSet-screening-yokohama-category-vs.html) | `Observation.value` |
| Material sinfi | [ScreeningBreastMaterialClassVS](ValueSet-screening-breast-material-class-vs.html) | `SNOMED CT#371439000` |

### Immunogistokimyo natijasi

Bitta immunogistokimyoviy tekshiruvning ER, PR, Ki-67, HER2 va p16 natijalari. `Observation.code` qiymati `SNOMED CT#117617002` (Immunogistokimyoviy tekshiruv).

Profil: [ScreeningImmunohistochemistryObservation](StructureDefinition-screening-immunohistochemistry-observation.html)

Misol: [ScreeningImmunohistochemistryObservationExample](Observation-screening-immunohistochemistry-observation-example.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Qayerda saqlanadi (komponent kodi) |
| :--- | :--- | :--- |
| Allred bali, ER | - | `screening-specialized-observation-parameter-cs#scrn-0073-00002` |
| Allred bali, PR | - | `screening-specialized-observation-parameter-cs#scrn-0073-00003` |
| HER2 IGX bali | [ScreeningHer2IhcScoreVS](ValueSet-screening-her2-ihc-score-vs.html) | profilga qarang |
| p16 natijasi | [ScreeningP16ResultVS](ValueSet-screening-p16-result-vs.html) | profilga qarang |

### Skrining so'rovnomalari

Uchta so'rovnoma nashr etiladi. Javoblar QuestionnaireResponse ko'rinishida qaytadi, uning `item` ierarxiyasi so'rovnomani takrorlaydi va har bir `linkId` nashr etilgan savol bilan aniq mos keladi. Kodlanadigan javoblar `answerValueSet` orqali bog'lanadi.

| So'rovnoma | Kanonik havola | Javob misoli |
| :--- | :--- | :--- |
| [Sut bezi saratoni xavfi](Questionnaire-screening-breast-risk.html) | `https://dhp.uz/fhir/integrations/Questionnaire/screening-breast-risk` | [ScreeningBreastRiskResponseExample](QuestionnaireResponse-screening-breast-risk-response-example.html) |
| [Bachadon bo'yni saratoni xavfi](Questionnaire-screening-cervical-risk.html) | `https://dhp.uz/fhir/integrations/Questionnaire/screening-cervical-risk` | [ScreeningCervicalRiskResponseExample](QuestionnaireResponse-screening-cervical-risk-response-example.html) |
| [Ayolning tibbiy ko'rigi](Questionnaire-screening-woman-exam.html) | `https://dhp.uz/fhir/integrations/Questionnaire/screening-woman-exam` | [ScreeningWomanExamResponse128](QuestionnaireResponse-screening-woman-exam-response-128.html) |

### Skrining yakuniy hujjati

Skrining yakuniy hujjati bitta skrining tsikli doirasida qayd etilgan hamma narsani bitta yuklab olinadigan hujjatga jamlaydi. U tsiklning istalgan bosqichida shakllantirilishi mumkin: hali kiritilmagan narsalar hujjatga tushmaydi, shuning uchun erta shakllantirilgan hujjat faqat so'rovnoma javoblarini o'z ichiga oladi.

Alohida bosqichlar o'z Composition iga ega bo'lmaydi - har bir natija Observation bo'lib qoladi, bu hujjat esa ularga havola qiladi.

Profil: [ScreeningComposition](StructureDefinition-screening-composition.html)

Misollar: [ScreeningCompositionExample](Composition-screening-composition-example.html), [ScreeningCompositionDocumentExample](Bundle-screening-composition-document-example.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Hujjat turi | - | `LOINC#34133-9` (Summary of episode note) | `Composition.type` |
| So'rovnomalar | - | `LOINC#74465-6` | `section[questionnaire].entry` (QuestionnaireResponse) |
| Bajarilgan barcha bosqichlar natijalari | - | `LOINC#30954-2` | `section[results].entry` (Observation) |
| MKB-10 bo'yicha yakuniy tashxis | - | `LOINC#29308-4` | `section[diagnosis].entry` (Condition) |
| Muallif | - | - | `Composition.author` (PractitionerRole) |
| Mas'ul tashkilot | - | - | `Composition.custodian` |
| Hujjatlashtirilgan yo'llanmalar va muolajalar | - | - | `Composition.event.detail` |

Yakuniy hujjatni o'zgarmas ko'rinishda uzatish uchun uni `type = document` bo'lgan `Bundle` ga joylashtiring: Composition **birinchi** yozuv bo'lishi, u havola qiladigan barcha resurslar - Patient, Condition, Observation, QuestionnaireResponse va boshqalar - o'sha Bundle ichida bo'lishi kerak.

### Hayotiy ko'rsatkichlar (bo'y, vazn, TVI)

Bo'y, vazn va TVI standart [FHIR hayotiy ko'rsatkichlari](https://hl7.org/fhir/observation-vitalsigns.html) bo'lib, ularning har biri alohida Observation sifatida qayd etiladi - ular skriningga taalluqli emas. Har biri uchun FHIR profilidan foydalaning; kod profil tomonidan belgilanadi.

Profillar: [bodyheight](https://hl7.org/fhir/bodyheight.html), [bodyweight](https://hl7.org/fhir/bodyweight.html), [bmi](https://hl7.org/fhir/bmi.html)

Misollar: [body-height](Observation-body-height.html), [body-weight](Observation-body-weight.html), [body-mass-index](Observation-body-mass-index.html)

| O'lchov | FHIR profili | Kod | Misol qiymati |
| :--- | :--- | :--- | :--- |
| Bo'y | `bodyheight` | `LOINC#8302-2` | 160 sm |
| Vazn | `bodyweight` | `LOINC#29463-7` | 52 kg |
| Tana massasi indeksi | `bmi` | `LOINC#39156-5` | 20.3 kg/m2 |

### Erkin matnli klinik yozuvlar

Bu kuzatuvlar kodlangan qiymatlar emas, balki erkin matn saqlaydi; `Observation.code` ni yozuv turiga o'rnating.

Profil: [ScreeningObservation](StructureDefinition-screening-observation.html)

| Observation | Observation.code | Nimani saqlaydi |
| :--- | :--- | :--- |
| [gynecological-physical-exam](Observation-gynecological-physical-exam.html) | `SNOMED CT#5880005` (jismoniy ko'rik) | Akusherlik va ginekologik anamnez, `note` da |
| [gynecological-complaints](Observation-gynecological-complaints.html) | `SNOMED CT#1269489004` (asosiy shikoyat) | Bemor bildirgan shikoyatlar, `note` da |
| [oncogynecological-followup](Observation-oncogynecological-followup.html) | `SNOMED CT#281036007` (nazorat konsultatsiyasi) | Kuzatuv topilmalari, `component` da |

### Jamoa rollari (PractitionerRole)

`PractitionerRole.code` ni [ScreeningRolesVS](ValueSet-screening-roles-vs.html) dan o'rnating.

Profil: [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html)

Misollar: [practitioner-role-laborant](PractitionerRole-practitioner-role-laborant.html), [practitioner-role-gynecologist](PractitionerRole-practitioner-role-gynecologist.html), [practitioner-role-radiologist](PractitionerRole-practitioner-role-radiologist.html), [practitioner-role-nurse](PractitionerRole-practitioner-role-nurse.html)

| Rol | Misol kodi |
| :--- | :--- |
| Laborant | `screening-roles-cs#his_laboratory_laborant` |
| Akusher-ginekolog | `screening-roles-cs#his_centre_obstetrics_gynecology_obstetrician_gynecologist` |
| Radiolog | `screening-roles-cs#his_ris_ragiologist_head` |
| Patronaj hamshira | `screening-roles-cs#his_poliklinika_patronage_nurse` |
