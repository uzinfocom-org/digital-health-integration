> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Blood Donor Category Observation shaxsning qon xizmatida qanday ro'yxatga olinganini qayd etadi: qon donori yoki retsipiyent sifatida. Donor uchun u donor toifasini (kadr yoki zaxira), donatsiya pullik yoki bepulligini va donatsiya turini saqlaydi; donorlar ham, retsipiyentlar ham uchun AB0 tizimi bo'yicha qon guruhi, rezus-omil va retsipiyent uchun tashxis berilishi mumkin. Profil [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html) asosida qurilgan, shuning uchun o'qish va qidirish uchun Observation endpointidan foydalaning. Subyekt - [UZ Core Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html); yozuv ro'yxatga olish [Encounter](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-encounter.html)iga va shaxsni ro'yxatga olgan tibbiyot xodimiga havola qilishi mumkin. Profil qon xizmatida, donorni ro'yxatga olishdan transfuziyagacha, UZ Core profillari bilan qanday birlashishi [Blood Management](blood-management.html) sahifasida tasvirlangan.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](https://dhp.uz/fhir/core/uz/must-support.html)) - hammasi ham talab qilinmaydi, lekin sizning tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir Blood Donor Category Observation quyidagilarga ega bo'lishi shart

Har bir Blood Donor Category Observation status, shaxs *Blood donor* (donor) yoki *Patient* (retsipiyent) sifatida ro'yxatga olinganini ko'rsatuvchi code (SNOMED CT), subject - ro'yxatga olinayotgan [Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html) (1..1) va effectiveDateTime - ro'yxatga olingan vaqt (1..1) ni olib yurishi kerak.

#### Har bir Blood Donor Category Observation quyidagilarni Must Support qiladi

- `donorCategory` category slaysidagi donor toifasi (kadr donor / zaxira donor);
- `valueCodeableConcept` dagi donatsiya to'lovi (pullik / bepul);
- donatsiya turi (to'liq qon / plazmaferez / trombositaferez), AB0 qon guruhi, rezus-omil va tashxis uchun component slayslari;
- ro'yxatga olish tashrifi va ijrochi - shaxsni ro'yxatga olgan tibbiyot xodimi yoki uning lavozimi (PractitionerRole);
- mavjud bo'lsa, identifikator va izohlar;
- UZ Core Observation dan meros qilib olingan boshqa Must Support elementlari.

> Har bir component slaysi o'z `code` i bo'yicha tanlanadi; shu kod `valueCodeableConcept` qaysi qiymatlar to'plamidan olinishini ham belgilaydi. Faqat ma'lumotingiz bor komponentlarni yuboring.

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan to'liq to'ldirilgan donor yozuvigacha boradi, so'ngra retsipiyent ko'rsatilgan. Birini nusxalab, moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar: [kadr donor](Observation-example-blood-donor-category-observation.html), [zaxira donor](Observation-example-blood-donor-category-observation-reserve.html) va [retsipiyent](Observation-example-blood-recipient-category-observation.html).

#### Yuborishingiz kerak bo'lgan eng kichik kuzatuv

Butun yozuv to'rtta elementga tayanadi: `status`, shaxs qon donori sifatida ro'yxatga olinganini bildiruvchi `code` (SNOMED CT `105470007`), `subject` (ro'yxatga olinayotgan [Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html)) va ro'yxatga olishning `effectiveDateTime` i:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00"
}
```

`subject` oddiy `Reference`, shuning uchun nishon to'g'ridan-to'g'ri `reference` ostida joylashadi.

#### Donor toifasi va to'lovni qo'shish

Donor toifasi `category` ga, to'lov esa `valueCodeableConcept` ga yoziladi. Ikkalasi ham mahalliy kod tizimlaridan olinadi, shuning uchun ularning `display` i resurs `language` iga mos ravishda o'zbek tilida:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs",
          "code": "bdcat-0001-00001",
          "display": "Kadr donor"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "performer": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
        "code": "bdcomp-0001-00001",
        "display": "Bepul"
      }
    ]
  }
}
```

Toifa kodi `donorCategory` slaysini tanlaydi; boshqa tizimlardagi toifalarni uning yonida yuborish mumkin.

#### To'liq donor yozuvi

Donatsiya turi, qon guruhi va rezus-omil har biri o'z `component` slaysida yoziladi. `code` slaysni tanlaydi, qiymat esa shu slaysning qiymatlar to'plamidan olinishi kerak:

| Slays | `code` | `valueCodeableConcept` manbai |
|---|---|---|
| `donationType` | `bdobs-0001-00001` | [Donatsiya turi](ValueSet-donation-type-vs.html) |
| `bloodGroup` | `bdobs-0001-00002` | [Qon guruhi](https://dhp.uz/fhir/core/uz/ValueSet-blood-group-vs.html) (SNOMED CT) |
| `rhFactor` | `bdobs-0001-00003` | [Rezus-omil](https://dhp.uz/fhir/core/uz/ValueSet-blood-rh-vs.html) (SNOMED CT) |
| `diagnosis` | LOINC `29308-4` | XKT-10 |

Dastlabki uchta kod `https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs` tizimida:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs",
          "code": "bdcat-0001-00001",
          "display": "Kadr donor"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "performer": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
        "code": "bdcomp-0001-00001",
        "display": "Bepul"
      }
    ]
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00001",
            "display": "Donatsiya turi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-type-cs",
            "code": "bdtype-0001-00002",
            "display": "Plazmaferez"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00002",
            "display": "Qon guruhi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://snomed.info/sct", "code": "112144000" }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00003",
            "display": "Rezus-omil"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://snomed.info/sct", "code": "165747007" }
        ]
      }
    }
  ]
}
```

#### Retsipiyent

Retsipiyent uchun SNOMED CT `116154003` (Patient) kodi ishlatiladi, donor toifasi va to'lov ko'rsatilmaydi. Tashxis LOINC `29308-4` kodli `diagnosis` slaysida XKT-10 qiymati bilan yoziladi. Bu yozuv ro'yxatga olish tashrifi (`encounter`) va ro'yxatga olgan tibbiyot xodimiga ham havola qiladi:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "116154003", "display": "Patient" }
    ]
  },
  "subject": { "reference": "Patient/example-patient-john" },
  "encounter": { "reference": "Encounter/example-blood-recipient-registration-encounter" },
  "effectiveDateTime": "2026-09-25T11:00:00+05:00",
  "performer": [ { "reference": "Practitioner/example-blood-recipient-registrar" } ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00002",
            "display": "Qon guruhi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://snomed.info/sct", "code": "112144000" }
        ]
      }
    },
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

Qon xizmatidagi ro'yxatga olish identifikatori `system` URI si bo'yicha tanlanadi, shuning uchun u aniq mos kelishi shart:

| Slays | `system` |
|---|---|
| `bloodId` | `https://dhp.uz/fhir/core/sid/prd/uz/blood` |

API chaqiruvlari misollari uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
