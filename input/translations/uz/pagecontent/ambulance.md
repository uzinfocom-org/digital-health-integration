<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu sahifada tez tibbiy yordam (TTY) chaqiruvi (TTY chaqiruv kartasi) FHIR resurslari sifatida qanday ifodalanishi tasvirlangan.

### Umumiy ko'rinish {#overview}

TTY chaqiruv kartasi tez yordam brigadasining bemorga bitta chiqishini qayd etadi: chaqiruv kartasi raqami, chaqiruvni qabul qilgan TTY xizmati, chaqiruv sababi, brigada bemor bilan bo'lgan vaqt, bemor holati va tashxis, shuningdek yordamdan so'ng bemor qayerga yo'naltirilgani. Ma'lumotlar TTY MAT dan keladi va DHP ga alohida, atomar FHIR resurslari sifatida qo'shiladi. Resurslar har bir bo'limda ko'rsatilgan TTY profiliga, boshqa hollarda esa [UZ Core](https://dhp.uz/fhir/core/uz/artifacts.html) yoki standart FHIR profillariga mos keladi.

Standart tushuncha mavjud bo'lsa, u to'g'ridan-to'g'ri ishlatiladi: uchrashuv klassi uchun HL7 `v3-ActCode`, ustuvorlik uchun HL7 `v3-ActPriority`, brigada a'zosi roli uchun HL7 `v3-ParticipationType`, tibbiy sabab va tashxis uchun XKT-10 hamda bemor olingan joy uchun SNOMED CT joy kodlari. O'zbekiston TTY xizmatiga xos tushunchalar - uchrashuv turi, chaqiruv sababi, bemor holati va chaqiruv natijasi - o'zbek, rus va ingliz tillaridagi nomlari bilan UZ Core mahalliy kod tizimlaridan foydalanadi. Ularning har biri tegishli maydonga bog'langan UZ Core qiymatlar to'plami orqali taqdim etiladi. Quyidagi har bir bo'limda amaldagi profil, aniq resurs misoli va har bir maydon uchun qiymatlar to'plami hamda kod misoli keltirilgan jadval berilgan.

Odatiy yozuv quyidagilarni bog'laydi: chaqiruv kartasining o'zi bo'lgan [TTY chaqiruvi](#recording-an-ambulance-call-encounter), [brigada chaqirilgan joy](#recording-the-call-address-location) va brigada chaqirilgan [bemor](#supporting-resources). Chaqiruv, shuningdek, u bajarilgan so'rovga, chaqiruvga sabab bo'lgan Condition ga va bemor olib borilgan kasalxonaga havola qilishi mumkin.

<div>{% include ambulance-model-uz.svg %}</div><br clear="all"/>

### TTY chaqiruvini qayd etish (Encounter) {#recording-an-ambulance-call-encounter}

Chaqiruv kartasining o'zi. Encounter chaqiruvni qabul qilingan paytdan boshlab brigada bemor bilan ishni tugatgan paytgacha ifodalaydi; `reason` chaqiruv sababini, `admission` esa yordamdan so'ng bemor bilan nima bo'lganini saqlaydi.

Profil: [AmbulanceEncounter](StructureDefinition-ambulance-encounter.html)

Misol: [example-ambulance-call-encounter](Encounter-example-ambulance-call-encounter.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod misoli | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Chaqiruv kartasi raqami | - | `01.CM5742/26` | `identifier` (system `https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card`) |
| Chaqiruv holati | [EncounterStatusVS](https://dhp.uz/fhir/core/ValueSet-encounter-status-vs.html) | `completed` | `status` |
| Klass | [EncounterClassVS](https://dhp.uz/fhir/core/ValueSet-encounter-class-vs.html) | `v3-ActCode#EMER` (shoshilinch) | `class[dhpClass]` |
| Ustuvorlik | [EncounterPriorityVS](https://dhp.uz/fhir/core/ValueSet-encounter-priority-vs.html) | `v3-ActPriority#EM` (shoshilinch) | `priority` |
| Chaqiruv turi | [EncounterTypeVS](https://dhp.uz/fhir/core/ValueSet-encounter-type-vs.html) | `encounter-type-ambulance-cs#emer5-0006-1` (birlamchi) | `type[nationalType]` |
| Ko'rsatilgan xizmat | - | [HealthcareService](https://dhp.uz/fhir/core/StructureDefinition-uz-core-healthcareservice.html) ga havola | `serviceType` |
| Bemor | - | [Patient](#supporting-resources) ga havola | `subject` |
| Bemor holati | [EncounterSubjectStatusVS](https://dhp.uz/fhir/core/ValueSet-encounter-subject-status-vs.html) | `encounter-subject-status-cs#gencl-0003-00002` (hushsiz) | `subjectStatus` |
| Chaqiruv bajarilgan so'rov | - | ServiceRequest yoki MedicationRequest ga havola | `basedOn` |
| Chaqiruv qismi bo'lgan uchrashuv | - | Encounter ga havola | `partOf` |
| TTY tashkiloti | - | [Organization](#supporting-resources) ga havola | `serviceProvider` |
| Brigada a'zosining roli | [EncounterParticipantTypeVS](https://dhp.uz/fhir/core/ValueSet-encounter-participant-type-vs.html) | `v3-ParticipationType#ATND` (davolovchi) | `participant.type` |
| Brigada a'zosi | - | [PractitionerRole](#supporting-resources) ga havola | `participant.actor` |
| Chaqiruv sababi | [EncounterReasonUseVS](https://dhp.uz/fhir/core/ValueSet-encounter-reason-use-vs.html) | `encounter-reason-use-ambulance-cs#emer103054` (qon bosimining sezilarli darajada o'zgarishi) | `reason.use` |
| Tibbiy sabab | [ICD-10](ValueSet-icd-10-vs.html) | `ICD-10#I10` | `reason.value` |
| Chaqiruv boshlanishi va tugashi | - | `2026-03-01T09:30` - `2026-03-01T10:15` | `actualPeriod` |
| Tashxis | [ICD-10](ValueSet-icd-10-vs.html) | `ICD-10#I10` | `diagnosis.condition` |
| Bemor qayerdan olingani | [EncounterAdmitSourceVS](https://dhp.uz/fhir/core/ValueSet-encounter-admit-source-vs.html) | `SNOMED CT#257630004` (House) | `admission.admitSource` |
| Takroriy chaqiruv | [EncounterReAdmissionVS](https://dhp.uz/fhir/core/ValueSet-encounter-reAdmission-vs.html) | - | `admission.reAdmission` |
| Bemor qayerga olib borilgani | - | kasalxonaning Location yoki Organization iga havola | `admission.destination` |
| Chaqiruv natijasi | [EncounterDischargeDispositionVS](https://dhp.uz/fhir/core/ValueSet-encounter-discharge-disposition-vs.html) | `encounter-discharge-disposition-home-cs#mserv-0004-00001` (kasalxonaga yotqizildi) | `admission.dischargeDisposition` |
| Brigada chaqirilgan joy | - | [Location](#recording-the-call-address-location) ga havola | `location.location` |
| Brigadaning joyda bo'lgan vaqti | - | `2026-03-01T09:42` - `2026-03-01T10:05` | `location.period` |

Chaqiruv kartasi raqami, holat, tur, bemor, TTY tashkiloti, chaqiruv boshlanishi va tugashi hamda brigada chaqirilgan joy har doim yuboriladi. `reason.value` va `diagnosis.condition` CodeableReference turida: XKT-10 kodini `concept` da yoki bemor uchun allaqachon qayd etilgan Condition ga havolani yuboring. `admission` faqat chaqiruvning qayd etiladigan natijasi bo'lganda yuboriladi va bu holda har doim natijani o'z ichiga oladi. [Profil sahifasida](StructureDefinition-ambulance-encounter.html) JSON bosqichma-bosqich quriladi.

### Chaqiruv manzilini qayd etish (Location) {#recording-the-call-address-location}

Brigada chaqirilgan manzil - bemorning uyi, ko'cha, ish joyi - chaqiruvning `location.location` i havola qiladigan Location dir. Bemor olib borilgan kasalxona `admission.destination` da Location yoki Organization sifatida ko'rsatiladi.

Profil: [UZCoreLocation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-location.html)

Misol: [example-ambulance-call-location](Location-example-ambulance-call-location.html)

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod misoli | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Joy nomi | - | `Bemorning uyi` | `name` |
| Manzil | - | `Toshkent shahar, Yunusobod tumani, Amir Temur ko'chasi 108` | `address.text` |
| Holat | - | `active` | `status` |
| Nusxa yoki tur | - | `instance` | `mode` |

### Yordamchi resurslar {#supporting-resources}

Yuqoridagi yozuvlar ushbu resurslarga havola qiladi. Har bir havola tegishli UZ Core profili bilan cheklangan.

| Resurs | Havola turi | Misol | Roli |
| :--- | :--- | :--- | :--- |
| Patient | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) | [example-salim](Patient-example-salim.html) | Brigada chaqirilgan shaxs (`subject`) |
| Organization | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | [xonobod-medical-association](Organization-xonobod-medical-association.html) | Chaqiruv uchun mas'ul TTY xizmati (`serviceProvider`) |
| PractitionerRole | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html) | [example-practitionerrole](PractitionerRole-example-practitionerrole.html) | TTY brigadasi a'zosi (`participant.actor`) |
| Location | [UZCoreLocation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-location.html) | [example-location](Location-example-location.html) | Bemor olib borilgan kasalxona (`admission.destination`) |
