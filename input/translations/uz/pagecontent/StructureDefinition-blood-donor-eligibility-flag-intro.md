> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Blood Donor Eligibility Flag qon donori qon topshirishi mumkinligini qayd etadi. Bu donorning [Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html) yozuvidagi `blood-donation-eligible`, `blood-donation-deferred-temporary` yoki `blood-donation-deferred-permanent` kodli [UZ Core Flag](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-flag.html). Chetlatishda [workflow-reason](https://hl7.org/fhir/extensions/StructureDefinition-workflow-reason.html) kengaytmasi bitta [chetlatish sababini](ValueSet-donor-deferral-reason-vs.html) o'z ichiga oladi va unga asos bo'lgan narsaga, masalan, tahlil natijasi bo'lgan [Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html), DiagnosticReport yoki Condition ga havola qilishi mumkin; ruxsatda sabab bo'lmaydi. Ikki sabab bilan chetlatilgan donorda ikkita flag bo'ladi. Vaqtincha chetlatishda `period.end` bor - donor qayta qon topshirishi mumkin bo'lgan sana; doimiy chetlatishda `period.end` yo'q. Vaqtincha flag `inactive` ga o'tkazilmaguncha `active` bo'lib qoladi, shuning uchun chetlatish hali amal qilayotganini bilish uchun `period.end` ni `status` bilan birga o'qing. Chetlatish qayd etilganda donorning amaldagi ruxsat flagi shu vaqtdagi `period.end` bilan `inactive` ga o'tkaziladi. [Blood Service](blood-service.html#eligibility) ruxsat va chetlatishlarning qon xizmatidagi o'rnini ko'rsatadi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](https://dhp.uz/fhir/core/uz/must-support.html)) - hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir Blood Donor Eligibility Flag quyidagilarga ega bo'lishi shart

Har bir flagda `status`, `blood-donation-eligible`, `blood-donation-deferred-temporary` yoki `blood-donation-deferred-permanent` kodi, donor (`subject`) va ruxsat yoki chetlatish boshlanishi (`period.start`) bo'lishi shart. Chetlatishda `workflow-reason` kengaytmasida bitta chetlatish sababi (`concept`) bo'lishi shart; ruxsatda u bo'lmasligi kerak.

#### Har bir Blood Donor Eligibility Flag quyidagilarni qo'llab-quvvatlashi shart

- chetlatishda sabab va unga asos bo'lgan narsa, masalan, tahlil natijasi, hisobot yoki kasallik (`workflow-reason`);
- flag holati (active / inactive / entered-in-error): ruxsat yoki chetlatish amalda ekan `active`;
- flag turi (`category`: ruxsat uchun `admin`, tibbiy chetlatish uchun `clinical`);
- ruxsat yoki chetlatish kodi (`code`) va donor (`subject`);
- ruxsat yoki chetlatish boshlangan vaqt va vaqtincha chetlatish uchun tugash vaqti (`period`);
- uni kim qayd etgani (`author`).

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar ruxsatdan unga olib kelgan natija bilan doimiy chetlatishgacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar - [ruxsat](Flag-example-blood-donor-eligible.html), [vaqtincha chetlatish](Flag-example-blood-donor-temporary-deferral.html) va [doimiy chetlatish](Flag-example-blood-donor-permanent-deferral.html).

#### Eng kichik Blood Donor Eligibility Flag

Bazaviy resurs `status`, `code` va `subject` ni talab qiladi, ushbu profil `period.start` ni talab qiladi, va har bir resurs o'z profilini `meta.profile` da ko'rsatadi. Ushbu ruxsat validatsiyadan o'tadi:

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "status": "active",
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-eligible"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-09-24T09:30:00+05:00" }
}
```

#### Vaqtincha chetlatish

Chetlatishga sabab ham kerak. Ushbu vaqtincha chetlatish validatsiyadan o'tadi:

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "extension": [ {
    "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason",
    "valueCodeableReference": {
      "concept": { "coding": [ {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
        "code": "donrsn-0001-00001"
      } ] }
    }
  } ],
  "status": "active",
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-deferred-temporary"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-11-10T10:00:00+05:00", "end": "2027-05-09T10:00:00+05:00" }
}
```

#### Toifa va muallif bilan vaqtincha chetlatish

HL7 flag toifasini va chetlatishni kim qayd etganini qo'shing. HL7 toifa kodlari asl tizimini saqlaydi; tibbiy chetlatish `clinical` toifasiga kiradi.

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "extension": [ {
    "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason",
    "valueCodeableReference": {
      "concept": { "coding": [ {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
        "code": "donrsn-0001-00001"
      } ] }
    }
  } ],
  "status": "active",
  "category": [ { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/flag-category", "code": "clinical" } ] } ],
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-deferred-temporary"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "author": { "reference": "PractitionerRole/[id]" },
  "period": { "start": "2026-11-10T10:00:00+05:00", "end": "2027-05-09T10:00:00+05:00" }
}
```

#### Asosi bilan doimiy chetlatish

Doimiy chetlatishda `period.end` yo'q. Sababning `reference` elementi chetlatishga olib kelgan tasdiqlangan ijobiy natijaga ishora qiladi; u DiagnosticReport yoki Condition ga ham ishora qilishi mumkin.

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "extension": [ {
    "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason",
    "valueCodeableReference": {
      "concept": { "coding": [ {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
        "code": "donrsn-0001-00013"
      } ] },
      "reference": { "reference": "Observation/[id]" }
    }
  } ],
  "status": "active",
  "category": [ { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/flag-category", "code": "clinical" } ] } ],
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-deferred-permanent"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "author": { "reference": "PractitionerRole/[id]" },
  "period": { "start": "2026-11-13T12:00:00+05:00" }
}
```

API chaqiruvlari misollari uchun ushbu sahifaning pastidagi [Tez boshlash](#quick-start) bo'limiga qarang.
