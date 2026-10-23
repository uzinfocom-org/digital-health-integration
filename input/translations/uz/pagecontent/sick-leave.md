<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.sl-badge { display: inline-block; padding: 1px 10px; border-radius: 999px; border: 1px solid; font-size: 0.85em; font-weight: 600; line-height: 1.6; white-space: nowrap; }
.sl-opened { background: #DCFCE7; color: #166534; border-color: #16A34A; }
.sl-extended { background: #DBEAFE; color: #1E40AF; border-color: #2563EB; }
.sl-closed { background: #E5E7EB; color: #1F2937; border-color: #4B5563; }
.sl-cancelled { background: #FEE2E2; color: #991B1B; border-color: #DC2626; }
.sl-grid { display: grid; grid-template-columns: minmax(0, 1fr) minmax(0, 1fr); gap: 12px; margin: 8px 0 20px; }
.sl-grid pre { max-height: 460px; overflow: auto; font-size: 12px; margin: 0 0 8px; }
.sl-label { font-weight: 600; font-size: 0.85em; margin: 0 0 4px; color: #4B5563; }
.sl-label.sl-fhir { color: #2563EB; }
@media (max-width: 900px) { .sl-grid { grid-template-columns: minmax(0, 1fr); } }
.sl-check ul { list-style: none; padding-left: 0; }
.sl-check li { padding-left: 1.8em; text-indent: -1.8em; margin-bottom: 6px; }
.sl-check li::before { content: "\2610"; color: #2563EB; font-size: 1.15em; margin-right: 0.6em; }
.sl-callout { border-left: 4px solid; border-radius: 6px; padding: 12px 16px; margin: 16px 0; }
.sl-callout > :last-child { margin-bottom: 0; }
.sl-info { background: #EFF6FF; border-color: #2563EB; }
.sl-alert { background: #FFFBEB; border-color: #D97706; }
.sl-callout-title { font-weight: 700; margin-bottom: 6px; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu sahifada DHP mehnatga layoqatsizlik varaqalari xizmatidan olingan mehnatga layoqatsizlik varaqasi (MLV) FHIR resurslari sifatida qanday ifodalanishi tavsiflangan.

<div class="sl-callout sl-info" markdown="1">
<div class="sl-callout-title">DHP kasallik varaqalari API v3 asosida qurilgan</div>

Ushbu sahifadagi moslik DHP kasallik varaqalari API ning 3-versiyasi, jumladan uning 2026-yil 18-avgustdagi o'zgarishlari (tashkilotning to'liq manzili hamda dastlabki va yakuniy tashxislar nomlari) asosida qurilgan. Quyidagi "Kasallik varaqalari API" ustunlaridagi har bir maydon - bu API qaytaradigan kasallik varaqasi obyektining maydoni; ushbu obyektning tuzilishi misol bilan [DHP wiki](https://wiki.dhp.uz/s/guide/doc/sickleave-JaIdi0iUkW) da tasvirlangan.
</div>

<div class="sl-callout sl-alert" id="auto-close" markdown="1">
<div class="sl-callout-title">Yopilgan varaqada tashxislardan biri bo'lmasligi mumkin</div>

Shifokorlar kasallik varaqalarini har doim ham yopmaydi va ularning bir qismi muddatsiz ochiq qolib ketardi. Bunga yo'l qo'ymaslik uchun yopilmagan kasallik varaqasi oxirgi mehnatga layoqatsizlik davri tugaganidan 5 kun o'tgach avtomatik ravishda yopiladi. Shu tarzda yopilgan varaqada yakuniy tashxissiz faqat dastlabki tashxis - yoki aksincha, dastlabkisiz faqat yakuniy tashxis bo'lishi mumkin. Iste'molchilar yopilgan (`closed`) varaqa ikkala [tashxisga](#recording-the-diagnoses-condition) havola qiladi deb hisoblamasligi kerak.
</div>

### Umumiy ma'lumot

Mehnatga layoqatsizlik varaqasi bemorning vaqtinchalik mehnatga layoqatsizlik davrini qayd etadi: u nima sababdan berilgani, tashxis, mehnatga layoqatsizlik davrlari, kim tomonidan berilgani va holatning hayotiy sikli. Mehnatga layoqatsizlik varaqalari xizmati bir xil tuzilishga ega besh turdagi hujjatni rasmiylashtiradi: mehnatga layoqatsizlik varaqasining o'zi, kasal bolani parvarish qilish bo'yicha (138/x), ta'lim oluvchilar uchun (095/x) va alkogol mastligi holati bo'yicha (094/x) mehnatga layoqatsizlik ma'lumotnomalari hamda TMEK ga yo'llanma. Ma'lumotlar DHP ga alohida, atomar FHIR resurslari sifatida qo'shiladi. Resurslar har bir bo'limda havola qilingan mehnatga layoqatsizlik profillariga, aks holda esa [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

Hujjat turi, holati va sababi o'zbek varaqasiga xos bo'lib, standart ekvivalentga ega emas, shuning uchun ular o'zbekcha, ruscha va inglizcha nomlanishlari bilan alohida CodeSystem da saqlanadigan lokal kodlardan foydalanadi; hujjat turi va holat kodlari mehnatga layoqatsizlik varaqalari API si yuboradigan kodlar bilan bir xil. Standart tushuncha mavjud bo'lgan joyda u bevosita ishlatiladi: kuzatuv kodi uchun SNOMED CT, tashxislar uchun ICD-10 va dastlabki tashxisni yakuniy tashxisdan farqlash uchun HL7 `condition-ver-status`. Quyidagi har bir bo'limda boshqaruvchi profil, misol resursi hamda mehnatga layoqatsizlik varaqalari API sining har bir maydoni qayerda saqlanishini ko'rsatuvchi jadval berilgan.

Odatdagi yozuv quyidagilarni bog'laydi: varaqaning o'zi bo'lgan [mehnatga layoqatsizlik holati](#opening-a-sick-leave-case-careplan), uning [tashxislari](#recording-the-diagnoses-condition), unga nisbatan qayd etilgan [qo'shimcha atributlar](#recording-additional-attributes-observation) va - hujjat uni nazarda tutsa - [bog'liq shaxs](#family-care-the-person-cared-for-relatedperson). Holat varaqa berilgan [bemor](#supporting-resources) ni, uni bergan va tasdiqlagan tibbiyot xodimlarini hamda uni bergan tashkilotni ko'rsatadi.

<div>{% include sick-leave-model-uz.svg %}</div><br clear="all"/>

| Ssenariy | Misol |
| :--- | :--- |
| Kasallik bo'yicha varaqa, bir marta uzaytirilgan va yopilgan; dastlabki tashxis aniqlashtirilgan | [sick-leave-extended](CarePlan-sick-leave-extended.html) |
| Kasal oila a'zosini parvarish qilish bo'yicha yashash joyidan tashqarida rasmiylashtirilgan ochiq varaqa | [sick-leave-family-care](CarePlan-sick-leave-family-care.html) |
| Ta'lim oluvchi uchun mehnatga layoqatsizlik ma'lumotnomasi (095/x), bekor qilingan | [sick-leave-cancelled](CarePlan-sick-leave-cancelled.html) |

### Ma'lumotlar oqimi {#data-flow}

Kasallik varaqalari xizmati resurslarni DHP ga havolalari tartibida yozadi: resurs o'zi havola qiladigan resurslardan keyin yoziladi. Patient, Practitioner va Organization DHP da allaqachon mavjud va ularga shundayligicha havola qilinadi. Varaqaning har bir o'zgarishi - o'sha CarePlan ning yangi versiyasi.

<div>{% include sick-leave-flow-uz.svg %}</div><br clear="all"/>

### Mehnatga layoqatsizlik holatini ochish (CarePlan) {#opening-a-sick-leave-case-careplan}

Varaqaning o'zi. CarePlan mehnatga layoqatsizlik holatini butun hayotiy sikli davomida ifodalaydi; `addresses` mehnatga layoqatsizlik sababini o'z ichiga oladi va tashxislarga havola qiladi, hayotiy sikl holati esa workflow-status kengaytmasida kuzatiladi.

Profil: [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html)

Misol: [sick-leave-extended](CarePlan-sick-leave-extended.html)

| Qayd etiladigan ma'lumot | Varaqalar API si | Ma'lumotnoma | Misol | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- | :--- |
| Varaqalar xizmatidagi identifikator | `id` | - | `550e8400-e29b-41d4-a716-446655440000` | `id` |
| Varaqa raqami (majburiy) | `code` | - | `02QR008593426` | `identifier[code]`, tizim [`https://dhp.uz/fhir/core/sid/doc/uz/sickleave`](NamingSystem-sick-leave-number-system.html) |
| Hujjat turi | `type` | [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html) | `sick-leave-category-cs#SL` (Mehnatga layoqatsizlik varaqasi) | `category` |
| Sabab | `reason` | [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html) | `care-plan-reason-cs#DIS` (Kasallik) | `addresses[reason]` |
| Dastlabki va yakuniy tashxis | `diagnosis` | - | [SickLeaveCondition](#recording-the-diagnoses-condition) ga havola | `addresses[diagnosis]` |
| Hayotiy sikl holati | `status` | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | `care-plan-status-local-cs#closed` | `extension[workflowStatus]` + asosiy `status` (ikkalasi ham doim to'ldiriladi) |
| Holatlar tarixi | `statuses[]` | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | har bir holat uchun o'z davri bilan bitta yozuv | `extension[statusHistory]` |
| Mehnatga layoqatsizlik davrlari | `dates[]` | - | `2026-08-04` dan `2026-08-06` gacha | `extension[incapacityPeriod]`, har bir davr uchun bittadan |
| Umumiy davr | `dates[]` | - | `2026-08-04` dan `2026-08-12` gacha | `period`, birinchi davr boshidan oxirgi davr oxirigacha |
| Yaratilgan sana | `createdAt` | - | `2026-08-04T09:15:32+05:00` | `created` |
| Oxirgi o'zgartirilgan sana | `updatedAt` | - | `2026-08-12T16:42:11+05:00` | `meta.lastUpdated` |
| Versiya | `versionId` | - | `3` | `meta.versionId` |
| Bemor | `patient` | - | [Patient](#supporting-resources) ga havola | `subject` |
| Varaqani bergan shifokor | `practitioner` | - | [Practitioner](#supporting-resources) ga havola | `contributor` |
| Bosh shifokor | `headPractitioner` | - | [Practitioner](#supporting-resources) ga havola | `extension[headPractitioner]` |
| Varaqani bergan tashkilot | `organization` | - | [Organization](#supporting-resources) ga havola | `custodian` |
| Bog'liq shaxs | `relatedPerson` | - | [RelatedPerson](#family-care-the-person-cared-for-relatedperson) ga havola | `extension[relatedPerson]` |

Varaqalar API sidagi `type` kodlari [SickLeaveCategoryCS](CodeSystem-sick-leave-category-cs.html) kodlaridir:

| `type` | Hujjat |
| :--- | :--- |
| `SL` | Mehnatga layoqatsizlik varaqasi |
| `CC` | Kasal bolani parvarish qilish bo'yicha mehnatga layoqatsizlik ma'lumotnomasi (138/x) |
| `ED` | Ta'lim oluvchilar uchun mehnatga layoqatsizlik ma'lumotnomasi (095/x) |
| `IT` | Alkogol mastligi holati bo'yicha mehnatga layoqatsizlik ma'lumotnomasi (094/x) |
| `MSEC` | TMEK ga yo'llanma |

Varaqalar API sidagi `reason` kodlari [CarePlanReasonCS](CodeSystem-care-plan-reason-cs.html) kodlaridir:

| `reason` | Sabab |
| :--- | :--- |
| `DIS` | Kasallik |
| `INJ` | Vaqtinchalik mehnatga layoqatsizlikka olib kelgan jarohat |
| `MAT` | Homiladorlik va tug'ruq ta'tili |
| `FMC` | Kasal oila a'zosini parvarish qilish |
| `PRO` | Ortopedik-protez muassasasining statsionar sharoitida protezlash |
| `SAN` | Sanator-kurort (yoki ambulator-kurort) davolanish |
| `QRT` | Karantin |
| `NBC` | Yangi tug'ilgan chaqaloqni parvarish qilish |

`extension[headPractitioner]` va `extension[relatedPerson]` faqat varaqada ular mavjud bo'lsa to'ldiriladi.

#### Hayotiy sikl holatini qayd etish {#recording-the-lifecycle-status}

Har bir yozuv bir vaqtning o'zida ikkita holatni o'z ichiga oladi: FHIR talab qiladigan umumlashtirilgan standart `CarePlan.status` va ushbu profilda majburiy (`1..1`) bo'lgan `extension[workflowStatus]` dagi varaqaning o'z holati. `extension[workflowStatus]` varaqalar API si yuboradigan `status` ni [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) dagi kod sifatida saqlaydi; ularning har biri aynan bitta standart `status` ga mos keladi, shuning uchun kengaytmani e'tiborsiz qoldiradigan iste'molchi ham to'g'ri umumlashtirilgan holatni oladi.

| `status` | `extension[workflowStatus]` | `CarePlan.status` |
| :--- | :--- | :--- |
| <span class="sl-badge sl-opened">opened</span> | `care-plan-status-local-cs#opened` | `active` |
| <span class="sl-badge sl-extended">extended</span> | `care-plan-status-local-cs#extended` | `active` |
| <span class="sl-badge sl-closed">closed</span> | `care-plan-status-local-cs#closed` | `completed` |
| <span class="sl-badge sl-cancelled">cancelled</span> | `care-plan-status-local-cs#cancelled` | `revoked` |

<div>{% include sick-leave-lifecycle-uz.svg %}</div><br clear="all"/>

Varaqaning hayotiy sikli: `opened` dan u uzaytiriladi, yopiladi yoki bekor qilinadi; bir necha marta uzaytirish mumkin.

`statuses` ning har bir elementi bitta `extension[statusHistory]` yozuviga aylanadi: `statuses[].type` `extension[status]` da, uning `start` va `end` qiymatlari esa `extension[period]` da saqlanadi, shunday qilib butun xronologiya saqlanib qoladi (opened → extended → closed). Joriy holat - tarixning oxirgi yozuvi.

`extension[statusHistory]` va `extension[incapacityPeriod]` - turli narsalar: tarix varaqa holati qachon o'zgarganini, `extension[incapacityPeriod]` esa bemor qachon mehnatga layoqatsiz bo'lganini qayd etadi. Bir necha marta uzaytirilgan varaqada har bir uzaytirish uchun bitta mehnatga layoqatsizlik davri bo'ladi, yopilgan varaqa esa o'z davrlarini saqlab qoladi, [uzaytirilgan misoldagi](CarePlan-sick-leave-extended.html) kabi.

<div>{% include sick-leave-timeline-uz.svg %}</div><br clear="all"/>

[Uzaytirilgan misol](CarePlan-sick-leave-extended.html) vaqt shkalasida: holatlar tarixi va layoqatsizlik davrlari mos kelishi shart emas, umumiy `period` barcha davrlarni qamrab oladi.

### Tashxislarni qayd etish (Condition) {#recording-the-diagnoses-condition}

Dastlabki va yakuniy tashxislarning har biri `addresses[diagnosis]` havola qiladigan alohida Condition dir. Ularni verifikatsiya holati farqlaydi: dastlabki tashxis uchun `provisional`, yakuniy tashxis uchun `confirmed`. Yakuniy tashxis dastlabkisi bilan bir xil bo'lsa, `confirmed` holatidagi bitta Condition yetarli.

Profil: [SickLeaveCondition](StructureDefinition-sick-leave-condition.html)

Misollar: [uzaytirilgan varaqaning](CarePlan-sick-leave-extended.html) [dastlabki](Condition-sick-leave-extended-diagnosis-preliminary.html) va [yakuniy](Condition-sick-leave-extended-diagnosis-final.html) tashxisi

| Qayd etiladigan ma'lumot | Varaqalar API si | Ma'lumotnoma | Misol | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- | :--- |
| Dastlabki tashxis | `diagnosis.preliminary` | [ICD10VS](ValueSet-icd-10-vs.html) | `ICD-10#J06.9` | `verificationStatus` = `provisional` bo'lgan Condition ning `code.coding` i |
| Dastlabki tashxis nomi | `diagnosis.preliminaryDisplay` | - | `Acute upper respiratory infection, unspecified` | o'sha Condition ning `code.text` i |
| Yakuniy tashxis | `diagnosis.final` | [ICD10VS](ValueSet-icd-10-vs.html) | `ICD-10#J18.9` | `verificationStatus` = `confirmed` bo'lgan Condition ning `code.coding` i |
| Yakuniy tashxis nomi | `diagnosis.finalDisplay` | - | `Pneumonia, unspecified` | o'sha Condition ning `code.text` i |
| Bemor | `patient` | - | [Patient](#supporting-resources) ga havola | `subject` |

`clinicalStatus` FHIR da majburiy: varaqa ochiq bo'lganda `active`, yopilgandan keyin `resolved`.

Yopilgan varaqada har doim ham ikkala tashxis bo'lavermaydi: [avtomatik yopilgan](#auto-close) varaqada faqat dastlabki yoki faqat yakuniy tashxis bo'lishi mumkin, shuning uchun `addresses[diagnosis]` ulardan istalgan birini alohida saqlashi mumkin.

### Qo'shimcha atributlarni qayd etish (Observation) {#recording-additional-attributes-observation}

Varaqaning holatdan tashqari atributlari CarePlan ga `basedOn` bo'lgan bitta Observation da qayd etiladi. Har bir atribut - [SickLeaveComponentVS](ValueSet-sick-leave-component-vs.html) dagi kodi bilan aniqlanadigan bitta `component`.

Profil: [SickLeaveObservation](StructureDefinition-sick-leave-observation.html)

Misol: [sick-leave-family-care-observation](Observation-sick-leave-family-care-observation.html)

| Qayd etiladigan ma'lumot | Varaqalar API si | Ma'lumotnoma | Misol | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- | :--- |
| Kuzatuv kodi | - | - | `SNOMED CT#224459001` (On sick leave from work) | `code` |
| Tegishli holat | - | - | [SickLeaveCarePlan](#opening-a-sick-leave-case-careplan) ga havola | `basedOn` |
| Bemor | `patient` | - | [Patient](#supporting-resources) ga havola | `subject` |
| Shahar aholisi | `patient.isUrban` | - | `true` (boolean): shahar, `false`: qishloq | `component[urbanResident]` |
| Yashash joyidan tashqarida rasmiylashtirilgan | `isNonLocal` | - | `true` (boolean) | `component[nonLocal]` |
| Epidemiologik anamnez | `epidemiologicalHistory` | - | `No contact with infectious patients in the last 21 days` (string) | `component[epidemiologicalHistory]` |

Komponentlar ixtiyoriy - faqat varaqada qiymati mavjud bo'lganlarini to'ldiring.

### Bog'liq shaxs (RelatedPerson) {#family-care-the-person-cared-for-relatedperson}

Agar hujjat bemor bilan bog'liq shaxsga - qonuniy vakil, vasiy, ota-ona, farzand, boshqa oila a'zosi yoki hujjatni rasmiylashtirish uchun ma'lumotlari zarur bo'lgan boshqa shaxsga tegishli bo'lsa, bu shaxs holatning `extension[relatedPerson]` i havola qiladigan RelatedPerson sifatida qayd etiladi. Uning mavjudligi hujjat turi va mehnatga layoqatsizlik sababiga bog'liq.

Profil: [SickLeaveRelatedPerson](StructureDefinition-sick-leave-related-person.html)

Misol: oila a'zosini parvarish qilish holati [sick-leave-family-care](CarePlan-sick-leave-family-care.html) havola qiladigan [sick-leave-related-person-mother](RelatedPerson-sick-leave-related-person-mother.html)

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| F.I.Sh. | - | `Mother Patient` | `name` |
| Jins | [administrative-gender](https://hl7.org/fhir/R5/valueset-administrative-gender.html) | `female` | `gender` |
| Jinsni aniqlashtirish (`other` bo'lganda) | [gender-other-vs](https://dhp.uz/fhir/core/ValueSet-gender-other-vs.html) | - | `gender.extension[otherGender]` |
| Tug'ilgan sana | - | `1962-03-15` | `birthDate` |
| Bemor | - | [Patient](#supporting-resources) ga havola | `patient` |

`gender.extension[otherGender]` faqat `gender` qiymati `other` bo'lganda ma'muriy jinsni aniqlashtirish uchun ishlatiladi.

### Yordamchi resurslar {#supporting-resources}

Yuqoridagi yozuvlar ushbu resurslarga havola qiladi.

| Varaqalar API si | Resurs | Misol | Moslik |
| :--- | :--- | :--- | :--- |
| `patient` | [UZ Core Patient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) | [sick-leave-patient](Patient-sick-leave-patient.html) | `identifierType` `ni` va `identifierValue` - `identifier[nationalId]`; `phone` - `telecom`; `lastName` - `name.family`, `firstName` va `middleName` - `name.given`; `birthdate` va `gender` - `birthDate` va `gender` |
| `practitioner` | [UZ Core Practitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | [sick-leave-practitioner](Practitioner-sick-leave-practitioner.html) | identifikator va F.I.Sh. - bemordagi kabi |
| `headPractitioner` | [UZ Core Practitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | [sick-leave-head-practitioner](Practitioner-sick-leave-head-practitioner.html) | `practitioner` dagi kabi |
| `organization` | [UZ Core Organization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | [sick-leave-organization](Organization-sick-leave-organization.html) | `identifierType` `tax` va `identifierValue` - `identifier[taxId]`; `name` - `name`; `state`, `district`, `city` va `line` - `contact.address.state`, `.district`, `.city` va `.line` |

### API javobidan FHIR ga {#from-the-api-response-to-fhir}

[Uzaytirilgan varaqa](CarePlan-sick-leave-extended.html) uchun API javobi guruhlarga bo'lingan. Chapda - kasallik varaqalari API javobining bir qismi, o'ngda - xuddi shu ma'lumotlar tushadigan FHIR elementlari. Qismlar qisqartirilgan; to'liq resurslar misollar sahifalarida va yuqoridagi [moslik jadvallarida](#opening-a-sick-leave-case-careplan).

#### 1. Identifikatsiya va tur {#api-identity}

`id` resurs id siga, `code` majburiy varaqa raqamiga, `type` esa `category` ga aylanadi.

<div class="sl-grid"><div><p class="sl-label">Kasallik varaqalari API</p><pre><code class="language-json">{
  &quot;id&quot;: &quot;550e8400-e29b-41d4-a716-446655440000&quot;,
  &quot;code&quot;: &quot;02QR008593426&quot;,
  &quot;type&quot;: &quot;SL&quot;
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;CarePlan&quot;,
  &quot;id&quot;: &quot;550e8400-e29b-41d4-a716-446655440000&quot;,
  &quot;identifier&quot;: [
    {
      &quot;system&quot;: &quot;https://dhp.uz/fhir/core/sid/doc/uz/sickleave&quot;,
      &quot;value&quot;: &quot;02QR008593426&quot;
    }
  ],
  &quot;intent&quot;: &quot;plan&quot;,
  &quot;category&quot;: [
    {
      &quot;coding&quot;: [
        {
          &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs&quot;,
          &quot;code&quot;: &quot;SL&quot;
        }
      ]
    }
  ]
}</code></pre></div></div>

#### 2. Holat {#api-status}

`status` `extension[workflowStatus]` ga tushadi va standart `status` ni belgilaydi; `statuses` ning har bir elementi - bitta `extension[statusHistory]` yozuvi.

<div class="sl-grid"><div><p class="sl-label">Kasallik varaqalari API</p><pre><code class="language-json">{
  &quot;status&quot;: &quot;closed&quot;,
  &quot;statuses&quot;: [
    {
      &quot;type&quot;: &quot;opened&quot;,
      &quot;start&quot;: &quot;2026-08-04&quot;,
      &quot;end&quot;: &quot;2026-08-06&quot;
    },
    {
      &quot;type&quot;: &quot;extended&quot;,
      &quot;start&quot;: &quot;2026-08-07&quot;,
      &quot;end&quot;: &quot;2026-08-12&quot;
    },
    {
      &quot;type&quot;: &quot;closed&quot;,
      &quot;start&quot;: &quot;2026-08-12&quot;,
      &quot;end&quot;: &quot;2026-08-12&quot;
    }
  ]
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;status&quot;: &quot;completed&quot;,
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status&quot;,
      &quot;valueCode&quot;: &quot;closed&quot;
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history&quot;,
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;status&quot;,
          &quot;valueCode&quot;: &quot;opened&quot;
        },
        {
          &quot;url&quot;: &quot;period&quot;,
          &quot;valuePeriod&quot;: {
            &quot;start&quot;: &quot;2026-08-04&quot;,
            &quot;end&quot;: &quot;2026-08-06&quot;
          }
        }
      ]
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history&quot;,
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;status&quot;,
          &quot;valueCode&quot;: &quot;extended&quot;
        },
        {
          &quot;url&quot;: &quot;period&quot;,
          &quot;valuePeriod&quot;: {
            &quot;start&quot;: &quot;2026-08-07&quot;,
            &quot;end&quot;: &quot;2026-08-12&quot;
          }
        }
      ]
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history&quot;,
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;status&quot;,
          &quot;valueCode&quot;: &quot;closed&quot;
        },
        {
          &quot;url&quot;: &quot;period&quot;,
          &quot;valuePeriod&quot;: {
            &quot;start&quot;: &quot;2026-08-12&quot;,
            &quot;end&quot;: &quot;2026-08-12&quot;
          }
        }
      ]
    }
  ]
}</code></pre></div></div>

#### 3. Sanalar va versiya {#api-dates}

`dates` ning har bir elementi - bitta `extension[incapacityPeriod]`, `period` esa ularning barchasini qamrab oladi; `versionId`, `createdAt` va `updatedAt` `meta` va `created` ga tushadi.

<div class="sl-grid"><div><p class="sl-label">Kasallik varaqalari API</p><pre><code class="language-json">{
  &quot;dates&quot;: [
    {
      &quot;start&quot;: &quot;2026-08-04&quot;,
      &quot;end&quot;: &quot;2026-08-06&quot;
    },
    {
      &quot;start&quot;: &quot;2026-08-07&quot;,
      &quot;end&quot;: &quot;2026-08-12&quot;
    }
  ],
  &quot;versionId&quot;: 3,
  &quot;createdAt&quot;: &quot;2026-08-04T09:15:32+05:00&quot;,
  &quot;updatedAt&quot;: &quot;2026-08-12T16:42:11+05:00&quot;
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;meta&quot;: {
    &quot;versionId&quot;: &quot;3&quot;,
    &quot;lastUpdated&quot;: &quot;2026-08-12T16:42:11+05:00&quot;
  },
  &quot;created&quot;: &quot;2026-08-04T09:15:32+05:00&quot;,
  &quot;period&quot;: {
    &quot;start&quot;: &quot;2026-08-04&quot;,
    &quot;end&quot;: &quot;2026-08-12&quot;
  },
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period&quot;,
      &quot;valuePeriod&quot;: {
        &quot;start&quot;: &quot;2026-08-04&quot;,
        &quot;end&quot;: &quot;2026-08-06&quot;
      }
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period&quot;,
      &quot;valuePeriod&quot;: {
        &quot;start&quot;: &quot;2026-08-07&quot;,
        &quot;end&quot;: &quot;2026-08-12&quot;
      }
    }
  ]
}</code></pre></div></div>

#### 4. Sabab va tashxislar {#api-diagnosis}

`reason` - bu `addresses[reason]`; har bir tashxis `verificationStatus` bo'yicha ajratiladigan alohida Condition bo'lib, unga `addresses[diagnosis]` havola qiladi.

<div class="sl-grid"><div><p class="sl-label">Kasallik varaqalari API</p><pre><code class="language-json">{
  &quot;reason&quot;: &quot;DIS&quot;,
  &quot;diagnosis&quot;: {
    &quot;preliminary&quot;: &quot;J06.9&quot;,
    &quot;preliminaryDisplay&quot;: &quot;Acute upper respiratory infection, unspecified&quot;,
    &quot;final&quot;: &quot;J18.9&quot;,
    &quot;finalDisplay&quot;: &quot;Pneumonia, unspecified&quot;,
    &quot;reason&quot;: null
  }
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;addresses&quot;: [
    {
      &quot;concept&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs&quot;,
            &quot;code&quot;: &quot;DIS&quot;
          }
        ]
      }
    },
    {
      &quot;reference&quot;: {
        &quot;reference&quot;: &quot;Condition/sick-leave-extended-diagnosis-preliminary&quot;
      }
    },
    {
      &quot;reference&quot;: {
        &quot;reference&quot;: &quot;Condition/sick-leave-extended-diagnosis-final&quot;
      }
    }
  ]
}</code></pre><p class="sl-label sl-fhir">Condition</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;Condition&quot;,
  &quot;clinicalStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-clinical&quot;,
        &quot;code&quot;: &quot;resolved&quot;
      }
    ]
  },
  &quot;verificationStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-ver-status&quot;,
        &quot;code&quot;: &quot;provisional&quot;
      }
    ]
  },
  &quot;code&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://hl7.org/fhir/sid/icd-10&quot;,
        &quot;code&quot;: &quot;J06.9&quot;
      }
    ],
    &quot;text&quot;: &quot;Acute upper respiratory infection, unspecified&quot;
  },
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  }
}</code></pre><p class="sl-label sl-fhir">Condition</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;Condition&quot;,
  &quot;clinicalStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-clinical&quot;,
        &quot;code&quot;: &quot;resolved&quot;
      }
    ]
  },
  &quot;verificationStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-ver-status&quot;,
        &quot;code&quot;: &quot;confirmed&quot;
      }
    ]
  },
  &quot;code&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://hl7.org/fhir/sid/icd-10&quot;,
        &quot;code&quot;: &quot;J18.9&quot;
      }
    ],
    &quot;text&quot;: &quot;Pneumonia, unspecified&quot;
  },
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  }
}</code></pre></div></div>

#### 5. Qo'shimcha atributlar {#api-attributes}

`patient.isUrban` va `isNonLocal` Observation komponentlariga aylanadi; bu yerda `epidemiologicalHistory` `null`, shuning uchun uning komponenti yuborilmaydi.

<div class="sl-grid"><div><p class="sl-label">Kasallik varaqalari API</p><pre><code class="language-json">{
  &quot;isNonLocal&quot;: false,
  &quot;epidemiologicalHistory&quot;: null,
  &quot;patient&quot;: {
    &quot;isUrban&quot;: true
  }
}</code></pre></div><div><p class="sl-label sl-fhir">Observation</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;Observation&quot;,
  &quot;status&quot;: &quot;final&quot;,
  &quot;basedOn&quot;: [
    {
      &quot;reference&quot;: &quot;CarePlan/550e8400-e29b-41d4-a716-446655440000&quot;
    }
  ],
  &quot;code&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;224459001&quot;
      }
    ]
  },
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  },
  &quot;component&quot;: [
    {
      &quot;code&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs&quot;,
            &quot;code&quot;: &quot;urban-resident&quot;
          }
        ]
      },
      &quot;valueBoolean&quot;: true
    },
    {
      &quot;code&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs&quot;,
            &quot;code&quot;: &quot;non-local&quot;
          }
        ]
      },
      &quot;valueBoolean&quot;: false
    }
  ]
}</code></pre></div></div>

#### 6. Shaxslar va tashkilot {#api-people}

Bemor, tibbiyot xodimlari va tashkilot - DHP dagi identifikatorlari bo'yicha topilgan resurslarga havolalar; `relatedPerson` `null`, shuning uchun `extension[relatedPerson]` yo'q.

<div class="sl-grid"><div><p class="sl-label">Kasallik varaqalari API</p><pre><code class="language-json">{
  &quot;patient&quot;: {
    &quot;identifierType&quot;: &quot;ni&quot;,
    &quot;identifierValue&quot;: &quot;12345678901112&quot;,
    &quot;firstName&quot;: &quot;TEST&quot;,
    &quot;lastName&quot;: &quot;PATIENT&quot;,
    &quot;middleName&quot;: null
  },
  &quot;practitioner&quot;: {
    &quot;identifierType&quot;: &quot;ni&quot;,
    &quot;identifierValue&quot;: &quot;12345678901113&quot;,
    &quot;firstName&quot;: &quot;TEST&quot;,
    &quot;lastName&quot;: &quot;DOCTOR&quot;,
    &quot;middleName&quot;: null
  },
  &quot;headPractitioner&quot;: {
    &quot;identifierType&quot;: &quot;ni&quot;,
    &quot;identifierValue&quot;: &quot;12345678901114&quot;,
    &quot;firstName&quot;: &quot;TEST&quot;,
    &quot;lastName&quot;: &quot;HEADDOCTOR&quot;,
    &quot;middleName&quot;: null
  },
  &quot;organization&quot;: {
    &quot;identifierType&quot;: &quot;tax&quot;,
    &quot;identifierValue&quot;: &quot;1234556&quot;,
    &quot;name&quot;: &quot;Test medical organization&quot;,
    &quot;state&quot;: &quot;1726&quot;
  },
  &quot;relatedPerson&quot;: null
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  },
  &quot;contributor&quot;: [
    {
      &quot;reference&quot;: &quot;Practitioner/sick-leave-practitioner&quot;
    }
  ],
  &quot;custodian&quot;: {
    &quot;reference&quot;: &quot;Organization/sick-leave-organization&quot;
  },
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-head-practitioner&quot;,
      &quot;valueReference&quot;: {
        &quot;reference&quot;: &quot;Practitioner/sick-leave-head-practitioner&quot;
      }
    }
  ]
}</code></pre></div></div>

### Bitta varaqa, uchta versiya {#one-sick-leave-three-versions}

Kasallik varaqalari xizmati har bir o'zgarishda varaqani keyingi `versionId` bilan to'liq yuboradi. FHIR da har bir o'zgarish - o'sha CarePlan ning to'liq yozilgan yangi versiyasi (`PUT CarePlan/{id}`), shuning uchun `meta.versionId` API dagi `versionId` bilan birga o'sadi. Quyida - har bir qadamdan keyingi [uzaytirilgan misol](CarePlan-sick-leave-extended.html); versiyalar orasidagi o'zgarishlar diff ko'rinishida.

#### <span class="sl-badge sl-opened">opened</span> 1-versiya - 4 avgustda ochilgan {#version-1}

Shifokor varaqani dastlabki tashxis bilan uch kunga ochadi. Holatlar tarixida tugash sanasisiz bitta yozuv, bitta layoqatsizlik davri bor.

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "versionId": "1",
    "lastUpdated": "2026-08-04T09:15:32+05:00",
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
    ]
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
      "valueCode": "opened"
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "opened"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-04"
          }
        }
      ]
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period",
      "valuePeriod": {
        "start": "2026-08-04",
        "end": "2026-08-06"
      }
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-head-practitioner",
      "valueReference": {
        "reference": "Practitioner/sick-leave-head-practitioner"
      }
    }
  ],
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/sickleave",
      "value": "02QR008593426"
    }
  ],
  "status": "active",
  "intent": "plan",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs",
          "code": "SL"
        }
      ]
    }
  ],
  "subject": {
    "reference": "Patient/sick-leave-patient"
  },
  "period": {
    "start": "2026-08-04",
    "end": "2026-08-06"
  },
  "created": "2026-08-04T09:15:32+05:00",
  "custodian": {
    "reference": "Organization/sick-leave-organization"
  },
  "contributor": [
    {
      "reference": "Practitioner/sick-leave-practitioner"
    }
  ],
  "addresses": [
    {
      "concept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs",
            "code": "DIS"
          }
        ]
      }
    },
    {
      "reference": {
        "reference": "Condition/sick-leave-extended-diagnosis-preliminary"
      }
    }
  ]
}
```

#### <span class="sl-badge sl-extended">extended</span> 2-versiya - 7 avgustda uzaytirilgan {#version-2}

Varaqa 12 avgustgacha uzaytiriladi. `opened` yozuvi tugash sanasini oladi, `extended` yozuvi va ikkinchi layoqatsizlik davri qo'shiladi, `period.end` suriladi.

```diff
@@ -2,6 +2,6 @@
   "resourceType": "CarePlan",
   "meta": {
-    "versionId": "1",
-    "lastUpdated": "2026-08-04T09:15:32+05:00",
+    "versionId": "2",
+    "lastUpdated": "2026-08-07T10:02:45+05:00",
     "profile": [
       "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
@@ -11,5 +11,5 @@
     {
       "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
-      "valueCode": "opened"
+      "valueCode": "extended"
     },
     {
@@ -23,5 +23,21 @@
           "url": "period",
           "valuePeriod": {
-            "start": "2026-08-04"
+            "start": "2026-08-04",
+            "end": "2026-08-06"
+          }
+        }
+      ]
+    },
+    {
+      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
+      "extension": [
+        {
+          "url": "status",
+          "valueCode": "extended"
+        },
+        {
+          "url": "period",
+          "valuePeriod": {
+            "start": "2026-08-07"
           }
         }
@@ -33,4 +49,11 @@
         "start": "2026-08-04",
         "end": "2026-08-06"
+      }
+    },
+    {
+      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period",
+      "valuePeriod": {
+        "start": "2026-08-07",
+        "end": "2026-08-12"
       }
     },
@@ -65,5 +88,5 @@
   "period": {
     "start": "2026-08-04",
-    "end": "2026-08-06"
+    "end": "2026-08-12"
   },
   "created": "2026-08-04T09:15:32+05:00",
```

#### <span class="sl-badge sl-closed">closed</span> 3-versiya - 12 avgustda yopilgan {#version-3}

Varaqa yopiladi: `status` `completed` ga aylanadi, `closed` yozuvi va yakuniy tashxisga havola qo'shiladi. Bir vaqtda yakuniy Condition yaratiladi, dastlabkisi esa `resolved` bo'ladi. Bu versiya - [sick-leave-extended](CarePlan-sick-leave-extended.html) misoli.

```diff
@@ -2,6 +2,6 @@
   "resourceType": "CarePlan",
   "meta": {
-    "versionId": "2",
-    "lastUpdated": "2026-08-07T10:02:45+05:00",
+    "versionId": "3",
+    "lastUpdated": "2026-08-12T16:42:11+05:00",
     "profile": [
       "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
@@ -11,5 +11,5 @@
     {
       "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
-      "valueCode": "extended"
+      "valueCode": "closed"
     },
     {
@@ -39,5 +39,22 @@
           "url": "period",
           "valuePeriod": {
-            "start": "2026-08-07"
+            "start": "2026-08-07",
+            "end": "2026-08-12"
+          }
+        }
+      ]
+    },
+    {
+      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
+      "extension": [
+        {
+          "url": "status",
+          "valueCode": "closed"
+        },
+        {
+          "url": "period",
+          "valuePeriod": {
+            "start": "2026-08-12",
+            "end": "2026-08-12"
           }
         }
@@ -71,5 +88,5 @@
     }
   ],
-  "status": "active",
+  "status": "completed",
   "intent": "plan",
   "category": [
@@ -114,4 +131,9 @@
         "reference": "Condition/sick-leave-extended-diagnosis-preliminary"
       }
+    },
+    {
+      "reference": {
+        "reference": "Condition/sick-leave-extended-diagnosis-final"
+      }
     }
   ]
```

### Integrator uchun nazorat ro'yxati {#integrator-checklist}

Varaqalarni DHP ga yuborishdan oldin quyidagilarni tekshiring:

<div class="sl-check" markdown="1">

- varaqaning Patient, Practitioner va Organization resurslari [DHP da mavjud](#supporting-resources) va CarePlan ularga havola qiladi;
- CarePlan da `identifier[code]` dagi varaqa raqami bor - [u majburiy](StructureDefinition-sick-leave-careplan.html);
- `category` - [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html) bo'yicha API dagi `type`, `addresses[reason]` esa [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html) bo'yicha API dagi `reason`;
- `extension[workflowStatus]` va `status` [bir-biriga mos](#recording-the-lifecycle-status): `opened` va `extended` - `active`, `closed` - `completed`, `cancelled` - `revoked`;
- `statuses` ning har bir elementi - `extension[statusHistory]` yozuvi, `dates` ning har bir elementi - `extension[incapacityPeriod]`, `period` esa barcha davrlarni qamrab oladi;
- har bir tashxis - [SickLeaveCondition](#recording-the-diagnoses-condition): dastlabkisi uchun `provisional`, yakuniysi uchun `confirmed`, varaqa yopilgandan keyin `resolved`;
- [Observation](#recording-additional-attributes-observation) CarePlan ga `basedOn` orqali havola qiladi va faqat qiymatli komponentlarni o'z ichiga oladi;
- [RelatedPerson](#family-care-the-person-cared-for-relatedperson) unga havola qiladigan CarePlan dan oldin va faqat hujjatda bo'lsa yoziladi;
- har bir o'zgarish - API dagi `meta.versionId` va `meta.lastUpdated` bilan butun CarePlan ning [yangi versiyasi](#one-sick-leave-three-versions);
- resurslar ushbu qo'llanma profillari bo'yicha validatsiyadan o'tadi, masalan [HL7 FHIR validatori](https://confluence.hl7.org/spaces/FHIR/pages/35718580/Using+the+FHIR+Validator) bilan.

</div>

### Mas'ul jamoa {#responsible-team}

Mehnatga layoqatsizlik varaqasi profillari, kengaytmalari va terminologiyasini **DHP SickLeave** ishchi guruhi yuritadi. Savollar, moslikdagi xatolar va o'zgartirish so'rovlarini quyidagilarga yuboring:

| Kanal | Kontakt |
| :--- | :--- |
| Ishchi guruh | DHP SickLeave |
| Elektron pochta | [rustam.sadikov17@gmail.com](mailto:rustam.sadikov17@gmail.com) |
| Telegram | [@roosyabuddy](https://t.me/roosyabuddy) |

Xuddi shu kontakt mehnatga layoqatsizlik varaqasining har bir profili, kengaytmasi, kod tizimi, qiymatlar to'plami va nomlash tizimining `contact` elementida ko'rsatilgan.
