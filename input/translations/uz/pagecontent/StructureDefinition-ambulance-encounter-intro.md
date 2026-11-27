> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ambulance Encounter bitta tez tibbiy yordam (TTY) chaqiruvini qayd etadi: brigada kimga, qaysi TTY xizmati tomonidan, qanday sabab bilan chaqirilgani, brigada bemor bilan qachon bo'lgani, nima aniqlangani va yordamdan so'ng bemor qayerga yo'naltirilgani. Profil [UZ Core Encounter](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-encounter.html) asosida qurilgan, shuning uchun o'qish va qidirish uchun Encounter endpointidan foydalaning. Subyekt - [UZ Core Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html), xizmat ko'rsatuvchi - TTY tashkiloti ([UZ Core Organization](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-organization.html)), chaqiruv manzili esa [UZ Core Location](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-location.html). Har bir chaqiruv TTY MAT dagi chaqiruv kartasi raqami bilan aniqlanadi: Encounter yaratishdan oldin shu raqam bo'yicha qidiring, shunda qayta yuborilgan chaqiruv dublikat yaratmasdan mavjud yozuvni yangilaydi.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](https://dhp.uz/fhir/core/uz/must-support.html)) - hammasi ham talab qilinmaydi, lekin sizning tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir Ambulance Encounter quyidagilarga ega bo'lishi shart

Har bir Ambulance Encounter aynan bitta identifikator - tizimi bilan chaqiruv kartasi raqami, - shuningdek status, milliy uchrashuv turi, subject - brigada chaqirilgan [Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html), serviceProvider - chaqiruv uchun mas'ul TTY tashkiloti, chaqiruv boshlanishidan tugashigacha bo'lgan haqiqiy davr va aynan bitta location - brigada chaqirilgan joyni olib yurishi kerak. admission ma'lumotlari yuborilsa, ular natijani (dischargeDisposition) o'z ichiga olishi shart. Har bir ishtirokchi uchun actor ko'rsatilishi shart.

#### Har bir Ambulance Encounter quyidagilarni qo'llab-quvvatlashi shart

- chaqiruv klassi (shoshilinch) va ustuvorligi;
- chaqiruv vaqtidagi bemor holati (masalan, hushida / hushsiz);
- ishtirokchilar - TTY brigadasining tibbiyot xodimlari yoki lavozimlari, shuningdek qarindoshlar - roli bilan;
- chaqiruv sababi va tibbiy sabab - XKT-10 kodi yoki Condition, Observation, Procedure yoki DiagnosticReport ga havola sifatida;
- chaqiruv vaqtida qo'yilgan tashxislar;
- admission ma'lumotlari: bemor qayerdan olingani, takroriy chaqiruv, bemor qayerga olib borilgani va natija (masalan, kasalxonaga yotqizildi / kasalxonaga yotqizishni rad etdi);
- chaqiruv asoslangan so'rov va u qismi bo'lgan uchrashuv;
- brigadaning chaqiruv joyida bo'lgan davri;
- UZ Core Encounter dan meros qolgan boshqa Must Support elementlari.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik uchrashuvdan to'liq chaqiruvgacha, so'ngra kasalxonaga yotqizish bilan tugagan chaqiruvgacha boradi. Birini nusxalab, moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa - [gipertonik kriz bo'yicha chaqiruv](Encounter-example-ambulance-call-encounter.html).

#### Yuborish kerak bo'lgan eng kichik uchrashuv

Butun yozuv yettita elementga tayanadi: `identifier` dagi chaqiruv kartasi raqami, `status`, milliy uchrashuv `type`i, `subject`, `serviceProvider`, `actualPeriod` va `location`. Uchrashuv turi mahalliy kod tizimidan olinadi, shuning uchun uning `display` qiymati resurs `language`iga mos ravishda o'zbek tilida:

```json
{
  "resourceType": "Encounter",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5742/26" }
  ],
  "status": "completed",
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-ambulance-cs",
          "code": "emer5-0006-1",
          "display": "Birlamchi"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "serviceProvider": { "reference": "Organization/xonobod-medical-association" },
  "actualPeriod": { "start": "2026-03-01T09:30:00+05:00", "end": "2026-03-01T10:15:00+05:00" },
  "location": [ { "location": { "reference": "Location/example-ambulance-call-location" } } ]
}
```

`subject`, `serviceProvider` va `location.location` oddiy `Reference` lar, shuning uchun nishon to'g'ridan-to'g'ri `reference` ostida turadi. Identifikator `system`i qat'iy belgilangan: boshqa tizimli identifikator rad etiladi.

#### To'liq chaqiruv

To'liq yozuv klass va ustuvorlik, bemor holati, `participant` dagi TTY brigadasi, chaqiruv sababi va tashxisni qo'shadi. `reason.use` TTY chaqiruv sabablari ro'yxatidan chaqiruv sababini saqlaydi; `reason.value` va `diagnosis.condition` `CodeableReference` turida, shuning uchun kod `concept` ostiga, Condition ga havola esa `reference` ostiga yoziladi:

```json
{
  "resourceType": "Encounter",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5742/26" }
  ],
  "status": "completed",
  "class": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "EMER" } ] }
  ],
  "priority": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority", "code": "EM" } ]
  },
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-ambulance-cs",
          "code": "emer5-0006-1",
          "display": "Birlamchi"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "subjectStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-subject-status-cs",
        "code": "gencl-0003-00002",
        "display": "Hushsiz"
      }
    ]
  },
  "serviceProvider": { "reference": "Organization/xonobod-medical-association" },
  "participant": [
    {
      "type": [
        { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType", "code": "ATND" } ] }
      ],
      "actor": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "reason": [
    {
      "use": [
        {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-ambulance-cs",
              "code": "emer103054",
              "display": "Qon bosimining sezilarli darajada o'zgarishi"
            }
          ]
        }
      ],
      "value": [
        { "concept": { "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "I10" } ] } }
      ]
    }
  ],
  "actualPeriod": { "start": "2026-03-01T09:30:00+05:00", "end": "2026-03-01T10:15:00+05:00" },
  "diagnosis": [
    {
      "condition": [
        { "concept": { "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "I10" } ] } }
      ]
    }
  ],
  "location": [
    {
      "location": { "reference": "Location/example-ambulance-call-location" },
      "period": { "start": "2026-03-01T09:42:00+05:00", "end": "2026-03-01T10:05:00+05:00" }
    }
  ]
}
```

#### Kasalxonaga yotqizish bilan tugagan chaqiruv

Brigada bemorni olib borganda `admission` ni qo'shing. `admitSource` bemor qayerdan olinganini ko'rsatadi (SNOMED CT joy kodlari, masalan `257630004` House), `destination` kasalxonaning [Location](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-location.html) yoki [Organization](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-organization.html) iga havola qiladi, `admission` yuborilganda majburiy bo'lgan `dischargeDisposition` esa chaqiruv natijasini beradi:

```json
{
  "resourceType": "Encounter",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5743/26" }
  ],
  "status": "completed",
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-ambulance-cs",
          "code": "emer5-0006-1",
          "display": "Birlamchi"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "serviceProvider": { "reference": "Organization/xonobod-medical-association" },
  "actualPeriod": { "start": "2026-03-01T09:30:00+05:00", "end": "2026-03-01T10:15:00+05:00" },
  "location": [ { "location": { "reference": "Location/example-ambulance-call-location" } } ],
  "admission": {
    "admitSource": { "coding": [ { "system": "http://snomed.info/sct", "code": "257630004" } ] },
    "destination": { "reference": "Location/example-location" },
    "dischargeDisposition": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-discharge-disposition-home-cs",
          "code": "mserv-0004-00001",
          "display": "Kasalxonaga yotqizildi"
        }
      ]
    }
  }
}
```

#### Identifikator {#identifier-slices}

Chaqiruv kartasi raqami yagona identifikator bo'lib, uning `system`i qat'iy belgilangan:

| Identifikator | `system` |
|---|---|
| Chaqiruv kartasi raqami | `https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card` |

API chaqiruvlari misollari uchun ushbu sahifa pastidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
