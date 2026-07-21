<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu sahifada mehnatga layoqatsizlik varaqasi (MLV) FHIR resurslari sifatida qanday ifodalanishi tavsiflangan.

### Umumiy ma'lumot

Mehnatga layoqatsizlik varaqasi bemorning vaqtinchalik mehnatga layoqatsizlik davrini qayd etadi: u nima sababdan berilgani, asosidagi tashxis, qancha davom etishi, kim tomonidan berilgani va holatning hayotiy sikli. Ma'lumotlar elektron tibbiy hujjatlar tizimidan keladi va DHP ga alohida, atomar FHIR resurslari sifatida qo'shiladi. Resurslar har bir bo'limda havola qilingan mehnatga layoqatsizlik profillariga, aks holda esa [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) yoki standart FHIR profillariga mos keladi.

Mehnatga layoqatsizlik varaqasi o'z ichiga oladigan tushunchalarning aksariyati o'zbek hujjatiga xos (sabab, toifa, shahar aholisiga mansublik, hodisa sodir bo'lgan joy, qarindoshlik darajasi, rejim buzilishlari, xulosalar) va standart ekvivalentga ega emas, shuning uchun ular o'zbekcha, ruscha va inglizcha nomlanishlari bilan alohida CodeSystem da saqlanadigan lokal kodlardan foydalanadi. Standart tushuncha mavjud bo'lgan joyda u bevosita ishlatiladi: kuzatuv kodi uchun SNOMED CT, tashxis uchun ICD-10, hayotiy sikl holati uchun HL7 `request-status` va davolash rejimi uchun HL7 `v3-ActCode` - har biri o'z maydoniga bog'langan ma'lumotnoma orqali taqdim etiladi. Quyidagi har bir bo'limda boshqaruvchi profil, aniq misol resursi hamda kod tashuvchi har bir maydon uchun ma'lumotnoma va misol kodi keltirilgan jadval berilgan.

Odatdagi yozuv quyidagilarni bog'laydi: varaqaning o'zi bo'lgan [mehnatga layoqatsizlik holati](#opening-a-sick-leave-case-careplan), unga nisbatan qayd etilgan [qo'shimcha atributlar](#recording-additional-attributes-observation) va - oila a'zosini parvarish qilish varaqalari uchun - [parvarish qilinayotgan shaxs](#family-care-the-person-cared-for-relatedperson). Holat varaqa berilgan [bemor](#supporting-resources) ni va uni bergan tibbiyot xodimlarini ko'rsatadi.

### Mehnatga layoqatsizlik holatini ochish (CarePlan) {#opening-a-sick-leave-case-careplan}

Varaqaning o'zi. CarePlan mehnatga layoqatsizlik holatini uning butun hayotiy sikli davomida ifodalaydi; `addresses` ham varaqa berilish sababini, ham ICD-10 bo'yicha tashxisni o'z ichiga oladi, hayotiy sikl holati esa workflow-status kengaytmasida kuzatib boriladi.

Profil: [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html)

Misol: [SickLeaveCarePlanExample](CarePlan-SickLeaveCarePlanExample.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Varaqa raqami | - | `01ТШ 005591125` | `identifier[series]` |
| Toifa | [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html) | `sick-leave-category-cs#mserv-0005-00001` (Mehnatga layoqatsizlik varaqasi) | `category` |
| Sabab | [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html) | `care-plan-reason-cs#emdoc-0001-0001` (Kasallik) | `addresses[reason]` |
| Tashxis (ICD-10) | [ICD10VS](ValueSet-icd-10-vs.html) | `ICD-10#J11.0` | `addresses[diagnosis]` |
| Hayotiy sikl holati | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | `request-status#completed` (Yopiq) | `extension[workflowStatus]` + asosiy `status` (ikkalasi ham doim to'ldiriladi) |
| Holatlar tarixi | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | har bir o'tgan holat uchun bittadan yozuv, uning amal qilgan davri bilan | `extension[statusHistory]` |
| Tashxis turi | [diagnosis-type-vs](https://dhp.uz/fhir/core/ValueSet-diagnosis-type-vs.html) | `diagnosis-type-cs#gencl-0001-00008` (yakuniy tashxis) | `extension[diagnosisUse]` |
| Ochilgan sana | - | `2025-08-20` | `created` |
| Amal qilish muddati | - | `2025-08-20` dan `2025-08-24` gacha | `period` |
| Varaqani bergan shifokor | - | [Practitioner](#supporting-resources) ga havola | `contributor` |
| Bo'lim mudiri | - | [Practitioner](#supporting-resources) ga havola | `custodian` |
| Bemor | - | [Patient](#supporting-resources) ga havola | `subject` |
| Parvarish qilinayotgan shaxs | - | [RelatedPerson](#family-care-the-person-cared-for-relatedperson) ga havola | `extension[relatedPerson]` |

Sabab va tashxis ular olinadigan kod tizimi bo'yicha farqlanadi: sabablar `care-plan-reason-cs` dan, tashxislar ICD-10 dan olinadi. `extension[relatedPerson]` va `extension[diagnosisUse]` faqat tegishli hollarda to'ldiriladi (mos ravishda oila a'zosini parvarish qilish va tashxis turini ko'rsatish). Holatning hayotiy sikl holati qanday qayd etilishi keyingi bo'limda tavsiflangan.

#### Hayotiy sikl holatini qayd etish

Mehnatga layoqatsizlik holati ochilgandan yopilgunga qadar bir necha ish jarayoni bosqichidan o'tadi. Har bir yozuv ikkala holatni bir vaqtda o'z ichiga oladi: FHIR talab qiladigan yiriklashtirilgan standart `CarePlan.status` - `draft`, `active`, `revoked`, `completed`, `entered-in-error` - va `extension[workflowStatus]` dagi aniq o'zbek ish jarayoni bosqichi, u ushbu profilda majburiy (`1..1`) va shuning uchun doim to'ldiriladi. Ikkalasi ham kodlarni [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) dan oladi, u standart `request-status` kodlarini lokal [care-plan-status-local-cs](CodeSystem-care-plan-status-local-cs.html) bosqichlari bilan birlashtiradi. Joriy bosqich beshta standart holatdan biri bo'lganda, `workflowStatus` shunchaki standart kodni takrorlaydi; aniqroq bosqichlar (tasdiqlashga yuborilgan, qaytarilgan, TMEKga yuborilgan, TMEK ma'lumotlari bilan to'ldirilgan, uzaytirilgan) standart ekvivalentga ega emas va faqat `workflowStatus` da uchraydi.

Har bir `workflowStatus` aynan bitta standart `status` ga moslanadi, shuning uchun kengaytmani e'tiborsiz qoldirgan iste'molchi ham to'g'ri yiriklashtirilgan holatni o'qiydi. To'liq moslik:

| Ish jarayoni bosqichi | `workflowStatus` | `status` (asosiy) |
| :--- | :--- | :--- |
| Qoralama | `request-status#draft` | `draft` |
| Faol / amalda | `request-status#active` | `active` |
| Faolsizlantirilgan | `request-status#revoked` | `revoked` |
| Yopiq / yakunlangan | `request-status#completed` | `completed` |
| Xato kiritilgan | `request-status#entered-in-error` | `entered-in-error` |
| Tasdiqlashga yuborilgan | `care-plan-status-local-cs#emdoc-0002-0004` | `draft` |
| Qaytarilgan | `care-plan-status-local-cs#emdoc-0002-0005` | `draft` |
| TMEKga yuborilgan | `care-plan-status-local-cs#emdoc-0002-0002` | `draft` |
| TMEK ma'lumotlari bilan to'ldirilgan | `care-plan-status-local-cs#emdoc-0002-0003` | `draft` |
| Uzaytirilgan | `care-plan-status-local-cs#emdoc-0002-0001` | `active` |

Varaqa ustida hali ish olib borilayotgan paytda (tasdiqlash kutilmoqda, tuzatish uchun qaytarilgan, TMEK ko'rib chiqmoqda) lokal bosqichlar `draft` ga keltiriladi; faqat *Uzaytirilgan* holatni `active` holida saqlaydi. Beshta standart holat uchun `status` va `workflowStatus` bir xil kodni o'z ichiga oladi.

`CarePlan.status` va `extension[workflowStatus]` doim holatning joriy vaziyatini saqlaydi. Har safar holat o'zgarganda, endigina tugagan bosqich uchun `extension[statusHistory]` yozuvi qo'shiladi - uning kodi va amal qilgan `period` i bilan - shu tariqa to'liq xronologiya saqlanadi (tasdiqlashga yuborilgan → faol → yopiq). [Misolda](CarePlan-SickLeaveCarePlanExample.html) ushbu tarix qayd etilgan.

### Qo'shimcha atributlarni qayd etish (Observation) {#recording-additional-attributes-observation}

Mehnatga layoqatsizlik varaqasi holatning o'zidan tashqari o'z ichiga oladigan qo'shimcha atributlar - shahar aholisiga mansublik, hodisa sodir bo'lgan joy, davolash rejimi, rejim buzilishlari, xulosalar va shu kabilar - CarePlan ga `basedOn` orqali bog'langan yagona Observation sifatida qayd etiladi. Har bir atribut - bu bitta `component`, u [SickLeaveComponentVS](ValueSet-sick-leave-component-vs.html) dan olingan kodi bilan aniqlanadi; qiymat turi komponentga qarab farq qiladi (kodlangan, mantiqiy yoki dateTime).

Profil: [SickLeaveObservation](StructureDefinition-sick-leave-observation.html)

Misol: [sickleave-observation-01](Observation-sickleave-observation-01.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Kuzatuv kodi | - | `SNOMED CT#224459001` (On sick leave from work) | `code` |
| Tegishli holat | - | [SickLeaveCarePlan](#opening-a-sick-leave-case-careplan) ga havola | `basedOn` |
| Shahar aholisiga mansublik | [CarePlanBelongingVS](ValueSet-care-plan-belonging-vs.html) | `care-plan-belonging-cs#emdoc-0003-0001` (Shahar aholisi) | `component[cityBelonging]` |
| Hodisa sodir bo'lgan joy | [PlaceOfIncidentVS](ValueSet-place-of-incident-vs.html) | `place-of-incident-cs#emdoc-0004-0002` (kundalik hayotda) | `component[placeOfIncident]` |
| Boshqa shahardan kelgan | - | `false` (boolean) | `component[fromAnotherCity]` |
| Yuqumli kasallik bilan aloqa | - | `false` (boolean) | `component[infectiousContact]` |
| Qarindoshlik darajasi | [RelationDegreeVS](ValueSet-relation-degree-vs.html) | `relation-degree-cs#emdoc-0005-0001` (Ona) | `component[kinshipDegree]` |
| Davolash rejimi | [EncounterClassVS](ValueSet-encounter-class-vs.html) | `v3-ActCode#AMB` (Ambulator) | `component[regime]` |
| Rejim buzilishi | [RegimenViolationVS](ValueSet-regimen-violation-vs.html) | `regimen-violation-cs#emdoc-0007-0005` (Boshqa qoidabuzarliklar) | `component[regimenViolation]` |
| Boshqa ishga vaqtincha o'tkazilgan sana | - | `2025-08-25` (dateTime) | `component[tempJobTransfer]` |
| Xulosalar | [ConclusionsVS](ValueSet-conclusions-vs.html) | `conclusions-cs#emdoc-0008-0001` | `component[conclusions]` |
| Tekshirilgan sana | - | `2025-08-22` (dateTime) | `component[verificationDate]` |

Davolash rejimi standart mos kelgan joyda HL7 `v3-ActCode` (`AMB`, `IMP`) dan foydalanadi va standart qamrab olmagan rejimlar uchun lokal kodlar qo'shadi (masalan, sanatoriy); qolgan barcha kodlangan komponentlar lokal koddan foydalanadi, chunki bu tushunchalar o'zbek varaqasiga xosdir. Komponentlar ixtiyoriy - faqat varaqada qayd etilganlarini to'ldiring.

### Oila a'zosini parvarish qilish: parvarish qilinayotgan shaxs (RelatedPerson) {#family-care-the-person-cared-for-relatedperson}

Mehnatga layoqatsizlik varaqasi kasal oila a'zosini parvarish qilish uchun berilganda (masalan, 14 yoshgacha bo'lgan bola yoki nogiron bola), parvarish qilinayotgan shaxs holatning `extension[relatedPerson]` idan havola qilingan RelatedPerson sifatida qayd etiladi.

Profil: [SickLeaveRelatedPerson](StructureDefinition-sick-leave-related-person.html)

Misol: [relatedperson-01](RelatedPerson-relatedperson-01.html), u oila a'zosini parvarish qilish holati [SickLeaveFamilyCareExample](CarePlan-SickLeaveFamilyCareExample.html) dan `extension[relatedPerson]` orqali havola qilinadi

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| To'liq ism-sharifi | - | `Boltayev Damir Ketmonovich` | `name` |
| Jinsi | [administrative-gender](https://hl7.org/fhir/R5/valueset-administrative-gender.html) | `male` | `gender` |
| Jinsni aniqlashtirish (`other` bo'lganda) | [gender-other-vs](https://dhp.uz/fhir/core/ValueSet-gender-other-vs.html) | - | `gender.extension[otherGender]` |
| Tug'ilgan sana | - | `1950-01-01` | `extension[birthdate]` |
| Parvarish qilinayotgan bemor | - | [Patient](#supporting-resources) ga havola | `patient` |

`gender.extension[otherGender]` faqat `gender` qiymati `other` bo'lganda ma'muriy jinsni aniqlashtirish uchun ishlatiladi.

### Yordamchi resurslar {#supporting-resources}

Bu resurslar yuqoridagi yozuvlar tomonidan havola qilinadi. `subject` UZ Core Patient bilan cheklangan; tibbiyot xodimlariga havolalar profillanmagan, `contributor` / `custodian` esa PractitionerRole, Organization yoki CareTeam ni ham qabul qiladi.

| Resurs | Qanday havola qilinadi | Misol | Rol |
| :--- | :--- | :--- | :--- |
| Patient | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) | [example](Patient-example.html) | Mehnatga layoqatsizlik varaqasi berilgan shaxs (`subject`) |
| Practitioner | `Practitioner` (yoki PractitionerRole / Organization / CareTeam) | [examplePractitioner](Practitioner-examplePractitioner.html) | Varaqani bergan shifokor (`contributor`) |
| Practitioner | `Practitioner` (yoki PractitionerRole / Organization / CareTeam) | [exampleCustodian](Practitioner-exampleCustodian.html) | Varaqa uchun mas'ul bo'lim mudiri (`custodian`) |
