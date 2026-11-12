> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Blood Service Registration Observation shaxs qon xizmatida qon donori yoki retsipiyent sifatida ro'yxatga olinganini qayd etadi. Donor uchun u donor toifasini (kadr yoki zaxira), donatsiya pullik yoki bepulligini va donatsiya turini saqlaydi; retsipiyent uchun tashxis berilishi mumkin. Profil [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html) asosida qurilgan, shuning uchun o'qish va qidirish uchun Observation endpointidan foydalaning. Subyekt - [UZ Core Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html); yozuv ro'yxatga olish [Encounter](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-encounter.html)iga va shaxsni ro'yxatga olgan tibbiyot xodimiga havola qilishi mumkin. Qon guruhi va rezus-omil ro'yxatga olishga kirmaydi: ularni LOINC `883-9` va `10331-7` kodlari bilan [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html) sifatida qayd eting. Ro'yxatga olishning qon xizmatidagi o'rni [qon xizmati shakllari](forms-volume-08-blood-service.html) sahifasida tasvirlangan.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](https://dhp.uz/fhir/core/uz/must-support.html)) - hammasi ham talab qilinmaydi, lekin sizning tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir Blood Service Registration Observation quyidagilarga ega bo'lishi shart

Har bir Blood Service Registration Observation status, bu *donor sifatida ro'yxatga olish* yoki *retsipiyent sifatida ro'yxatga olish* ekanini ko'rsatuvchi code, subject - ro'yxatga olinayotgan [Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html) (1..1) va effectiveDateTime - ro'yxatga olingan vaqt (1..1) ni olib yurishi kerak. Unda `value` yo'q: ro'yxatga olish ma'lumotlari komponentlarda yoziladi.

#### Har bir Blood Service Registration Observation quyidagilarni qo'llab-quvvatlashi shart

- qon xizmati bergan ro'yxatga olish raqami;
- donor uchun: donor toifasi (kadr donor / zaxira donor), donatsiya to'lovi (pullik / bepul) va donatsiya turi (to'liq qon / plazmaferez / trombositaferez), har biri o'z komponentida;
- retsipiyent uchun: tashxis (XKT-10) komponentda;
- ro'yxatga olish Encounter'i va ijrochi (performer) - shaxsni ro'yxatga olgan tibbiyot xodimi yoki uning roli;
- UZ Core Observation'dan meros qolgan boshqa Must Support elementlari.

> Retsipiyentni ro'yxatga olishda donor toifasi, to'lov va donatsiya turi komponentlari bo'lmasligi kerak.

### JSON'ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan to'liq donor yozuvigacha, so'ngra retsipiyentgacha boradi. Birini nusxalab moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar: [kadr donor](Observation-example-blood-donor-registration-staff.html), [zaxira donor](Observation-example-blood-donor-registration-reserve.html) va [retsipiyent](Observation-example-blood-recipient-registration.html).

#### Yuborish kerak bo'lgan eng kichik kuzatuv

Butun yozuvni to'rtta element tashkil etadi: `status`, bu qon donorini ro'yxatga olish ekanini ko'rsatuvchi `code`, `subject` (ro'yxatga olinayotgan [Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html)) va ro'yxatga olishning `effectiveDateTime`i. Kod mahalliy kod tizimidan olingan, shuning uchun uning `display`i resurs `language`iga mos ravishda o'zbek tilida:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00001",
        "display": "Donor sifatida ro'yxatga olish"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00"
}
```

`subject` oddiy `Reference`, shuning uchun nishon to'g'ridan-to'g'ri `reference` ostida turadi.

#### To'liq donor yozuvi

Ro'yxatga olish raqami `identifier`da yoziladi. Donor toifasi, to'lov va donatsiya turi har biri o'z `component` slaysida yoziladi; `code` slaysni tanlaydi, qiymat esa shu slaysning qiymatlar to'plamidan olinishi kerak:

| Slays | `code` | `valueCodeableConcept` manbai |
|---|---|---|
| `donorCategory` | `bsobs-0002-00001` | [Donor toifasi](ValueSet-donor-category-vs.html) |
| `compensation` | `bsobs-0002-00002` | [Donatsiya to'lovi](ValueSet-donation-compensation-vs.html) |
| `donationType` | `bsobs-0002-00003` | [Donatsiya turi](ValueSet-donation-type-vs.html) (SNOMED CT) |
| `diagnosis` | LOINC `29308-4` | XKT-10 |

`bsobs` kodlari `https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs` tizimida:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-registration", "value": "BD-2026-004517" }
  ],
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00001",
        "display": "Donor sifatida ro'yxatga olish"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "performer": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
            "code": "bsobs-0002-00001",
            "display": "Donor toifasi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "275561000",
            "display": "Regular blood donor"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
            "code": "bsobs-0002-00002",
            "display": "Donatsiya to'lovi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
            "code": "bdcomp-0001-00001",
            "display": "Bepul"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
            "code": "bsobs-0002-00003",
            "display": "Donatsiya turi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "20720000", "display": "Plasmapheresis" } ]
      }
    }
  ]
}
```

#### Retsipiyent

Retsipiyentni ro'yxatga olish `bsobs-0001-00002` kodidan foydalanadi va donor komponentlariga ega emas. Tashxis `diagnosis` slaysida LOINC `29308-4` kodi va XKT-10 qiymati bilan yoziladi. Bu yozuv ro'yxatga olish `encounter`iga va ro'yxatga olgan tibbiyot xodimiga ham havola qiladi:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-registration", "value": "BR-2026-000932" }
  ],
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00002",
        "display": "Retsipiyent sifatida ro'yxatga olish"
      }
    ]
  },
  "subject": { "reference": "Patient/example-patient-john" },
  "encounter": { "reference": "Encounter/example-blood-recipient-registration-encounter" },
  "effectiveDateTime": "2026-09-25T11:00:00+05:00",
  "performer": [ { "reference": "Practitioner/example-blood-recipient-registrar" } ],
  "component": [
    {
      "code": {
        "coding": [ { "system": "http://loinc.org", "code": "29308-4" } ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://hl7.org/fhir/sid/icd-10", "code": "D64.9", "display": "Anaemia, unspecified" }
        ]
      }
    }
  ]
}
```

#### Identifikator slayslari {#identifier-slices}

Ro'yxatga olish raqami `system` URI bo'yicha tanlanadi, shuning uchun u aniq mos kelishi kerak:

| Slays | `system` |
|---|---|
| `registrationNumber` | `https://dhp.uz/fhir/core/sid/doc/uz/blood-registration` |

API chaqiruvlari misollari uchun ushbu sahifa pastidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
