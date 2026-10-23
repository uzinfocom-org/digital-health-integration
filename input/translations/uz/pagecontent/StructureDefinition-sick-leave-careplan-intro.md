> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Sick Leave CarePlan - bu mehnatga layoqatsizlik varaqasining o'zi: DHP mehnatga layoqatsizlik varaqalari xizmatidagi (API v3) har bir varaqa uchun uning butun hayotiy sikli davomida bitta CarePlan. U hujjat turini, mehnatga layoqatsizlik sababini, joriy holat va uning tarixini, mehnatga layoqatsizlik davrlarini, shuningdek varaqani kim bergani va tasdiqlaganini qayd etadi. U varaqa berilgan [Patient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) ga, [tashxislarga](StructureDefinition-sick-leave-condition.html) va - hujjat uni nazarda tutsa - [bog'liq shaxsga](StructureDefinition-sick-leave-related-person.html) havola qiladi; [qo'shimcha atributlar](StructureDefinition-sick-leave-observation.html) unga `basedOn` orqali havola qiladi. [Mehnatga layoqatsizlik varaqasi](sick-leave.html) sahifasi API ning har bir maydoni qayerda saqlanishini ko'rsatadi.

### Majburiy va qo'llab-quvvatlanadigan (Must Support) ma'lumot elementlari

Quyidagi elementlar doimo mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi ([Must Support](https://dhp.uz/fhir/core/must-support.html)) kerak - ularning hammasi ham majburiy emas, lekin tizimingiz har bir Must Support elementini ma'lumot mavjud bo'lganda to'ldirishi va qabul qilganda qayta ishlashi kerak. Bu inson o'qiy oladigan qisqacha mazmun; quyidagi rasmiy ko'rinishlar aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir Sick Leave CarePlan da bo'lishi shart

- holat: ochiq yoki uzaytirilgan varaqa uchun `active`, yopilgan uchun `completed`, bekor qilingan uchun `revoked`, va intent `plan`;
- `extension[workflowStatus]` dagi varaqaning o'z holati - API dagi `status` kodi;
- `category` dagi hujjat turi - API dagi `type` kodi;
- `subject` dagi bemor;
- `identifier[code]` dagi varaqa raqami - API dagi `code`.

#### Har bir Sick Leave CarePlan qo'llab-quvvatlashi kerak (Must Support)

- `meta.versionId` va `meta.lastUpdated` dagi versiya va oxirgi o'zgarish vaqti;
- `addresses[reason]` dagi sabab va `addresses[diagnosis]` dagi ikkitagacha tashxis;
- `extension[statusHistory]` dagi holatlar tarixi, `extension[incapacityPeriod]` dagi mehnatga layoqatsizlik davrlari va `period` dagi ularning umumiy oralig'i;
- `created` dagi yaratilgan vaqt;
- `contributor` dagi varaqani bergan shifokor, `extension[headPractitioner]` dagi bosh shifokor va `custodian` dagi varaqani bergan tashkilot;
- `extension[relatedPerson]` dagi bog'liq shaxs.

> `status` va `extension[workflowStatus]` doimo birga yuboriladi: `opened` va `extended` - `active` bilan, `closed` - `completed` bilan, `cancelled` - `revoked` bilan.

### JSON ni bosqichma-bosqich tuzish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan to'liq varaqagacha boradi. Ulardan birini nusxalab moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar sahifa oxirida havola sifatida berilgan.

#### Yuborishingiz kerak bo'lgan eng kichik Sick Leave CarePlan

Oltita element majburiy: `identifier[code]`, `status`, `intent`, `category`, `subject` va `extension[workflowStatus]`. Har bir resurs `meta.profile` da o'zi mos kelishini da'vo qiladigan profilni ham ko'rsatishi kerak. Shuning o'zi validatsiyadan o'tish uchun yetarli:

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
    ]
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
      "valueCode": "opened"
    }
  ],
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/sickleave",
      "value": "02QR008600001"
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
  }
}
```

`category` [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html) ga (`SL`, `CC`, `ED`, `IT`, `MSEC`), `extension[workflowStatus]` esa [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) ga (`opened`, `extended`, `closed`, `cancelled`) `required` bog'langan. `subject` UZ Core Patient ga havola qiladi.

#### Tarixi bilan yopilgan varaqa

Amalda siz API dagi hamma narsani yuborasiz: versiya, sabab, tashxislarga havolalar, `statuses` ning har bir elementi uchun bittadan `extension[statusHistory]`, `dates` ning har bir elementi uchun bittadan `extension[incapacityPeriod]`, umumiy `period`, shuningdek ishtirokchi shaxslar va tashkilot. Bu kasallik bo'yicha bir marta uzaytirilgan va yopilgan varaqa:

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "versionId": "3",
    "lastUpdated": "2026-08-12T16:42:11+05:00",
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
    ]
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
      "valueCode": "closed"
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
            "start": "2026-08-04",
            "end": "2026-08-06"
          }
        }
      ]
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "extended"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-07",
            "end": "2026-08-12"
          }
        }
      ]
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "closed"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-12",
            "end": "2026-08-12"
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
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period",
      "valuePeriod": {
        "start": "2026-08-07",
        "end": "2026-08-12"
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
  "status": "completed",
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
    "end": "2026-08-12"
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
    },
    {
      "reference": {
        "reference": "Condition/sick-leave-extended-diagnosis-final"
      }
    }
  ]
}
```

`addresses` ham sababni, ham tashxislarni o'z ichiga oladi: sabab - [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html) dagi `concept` (`DIS`, `INJ`, `MAT`, `FMC`, `PRO`, `SAN`, `QRT`, `NBC`), har bir tashxis - [Sick Leave Condition](StructureDefinition-sick-leave-condition.html) ga `reference`. `contributor` faqat UZ Core Practitioner ni, `custodian` faqat UZ Core Organization ni qabul qiladi.

#### Bog'liq shaxsli varaqa

Agar hujjat bemor bilan bog'liq shaxsga, masalan bemor parvarish qiladigan oila a'zosiga tegishli bo'lsa, `extension[relatedPerson]` da [Sick Leave RelatedPerson](StructureDefinition-sick-leave-related-person.html) ga havola bering:

```json
{
  "resourceType": "CarePlan",
  "meta": {
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
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-related-person",
      "valueReference": {
        "reference": "RelatedPerson/sick-leave-related-person-mother"
      }
    }
  ],
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/sickleave",
      "value": "02QR008600112"
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
  "addresses": [
    {
      "concept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs",
            "code": "FMC"
          }
        ]
      }
    }
  ]
}
```

Namunaviy nusxalar: [uzaytirilgan va yopilgan](CarePlan-sick-leave-extended.html), [oila a'zosini parvarish qilish](CarePlan-sick-leave-family-care.html), [bekor qilingan](CarePlan-sick-leave-cancelled.html).
