<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

Ushbu sahifada bachadon bo'yni va sut bezi saratoni skriningi ma'lumotlari va FHIR resurslari o'rtasidagi moslik tavsiflangan.

### Umumiy ma'lumot

Bachadon bo'yni va sut bezi saratoni skriningi skrining dasturidan olingan laboratoriya natijalari, tasvirlash topilmalari va klinik kuzatuvlarni qamrab oladi. Ma'lumotlar Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System tizimidan keladi va DHP ga alohida, atomar FHIR resurslari sifatida qo'shiladi. Resurslar mavjud bo'lgan har bir bo'limda havola qilingan skrining profillariga, aks holda esa [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) yoki standart FHIR profillariga mos keladi.

Har bir bo'limda foydalaniladigan ma'lumotnoma, kod namunasi, boshqaruvchi profil va aniq misol resursi keltirilgan. Bo'y, vazn va TVI standart [FHIR hayotiy ko'rsatkichlari](https://hl7.org/fhir/observation-vitalsigns.html) profillaridan foydalanadi.

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

Profil: [ScreeningObservation](StructureDefinition-screening-observation.html)

Misol: [mammography-summary](Observation-mammography-summary.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi (komponent kodi) |
| :--- | :--- | :--- | :--- |
| BI-RADS toifasi | [ScreeningBiradsVS](ValueSet-screening-birads-vs.html) | `screening-birads-cs#src-birads-2` (BI-RADS 2) | `SNOMED CT#1348266008` |
| Sut bezi zichligi | [ScreeningBreastFormVS](ValueSet-screening-breast-form-vs.html) | `screening-breast-form-cs#src-breast-density-4` (D turi) | `SNOMED CT#129793001` |
| Tasvir sifati | [ScreeningImageQualityVS](ValueSet-screening-image-quality-vs.html) | `screening-image-quality-cs#src-img-quality-3` (o'rtacha) | `SNOMED CT#246646005` |

### Sut bezidagi topilma

Mammografiyada ko'rilgan har bir topilma uchun u nimaligi, qaysi sut bezi va kvadrant ekanligi hamda u mavjudligi qayd etiladi. Kuzatuvning `code` qiymati `SNOMED CT#71651007` (Mammografiya).

Profil: [ScreeningObservation](StructureDefinition-screening-observation.html)

Misollar: [mammography-right-breast-finding](Observation-mammography-right-breast-finding.html), [mammography-left-breast-finding](Observation-mammography-left-breast-finding.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Topilma (mavjud = `true`) | [ScreeningBreastFindingVS](ValueSet-screening-breast-finding-vs.html) | `SNOMED CT#109285009` (melanocytic nevus, right)<br>`SNOMED CT#129797000` (skin thickening, left) | `component.code` (qiymat = boolean) |
| Sut bezi | [ScreeningBodySiteVS](ValueSet-screening-body-site-vs.html) | `SNOMED CT#73056007` (Right)<br>`SNOMED CT#80248007` (Left) | `Observation.bodySite` |
| Kvadrant | [ScreeningBreastQuadrantVS](ValueSet-screening-breast-quadrant-vs.html) | `screening-breast-quadrant-cs#src-breast-quadrant-2` (UE)<br>`screening-breast-quadrant-cs#src-breast-quadrant-1` (UI) | `bodySite` kvadrant kengaytmasi |

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
