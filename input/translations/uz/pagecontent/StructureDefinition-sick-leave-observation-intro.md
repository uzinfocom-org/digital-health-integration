> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Sick Leave Observation mehnatga layoqatsizlik varaqasining holatning o'ziga tegishli bo'lmagan atributlarini o'z ichiga oladi: bemor shahar yoki qishloq aholisi ekanligi, varaqa yashash joyidan tashqarida rasmiylashtirilganmi, va epidemiologik anamnez. Har bir varaqa uchun uning [Sick Leave CarePlan](StructureDefinition-sick-leave-careplan.html) iga `basedOn` bo'lgan bitta Observation bo'ladi, va har bir atribut - bitta `component`. Moslikni [mehnatga layoqatsizlik varaqasi](sick-leave.html#recording-additional-attributes-observation) sahifasida ko'ring.

### Majburiy va qo'llab-quvvatlanadigan (Must Support) ma'lumot elementlari

Quyidagi elementlar doimo mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi ([Must Support](https://dhp.uz/fhir/core/must-support.html)) kerak. Bu inson o'qiy oladigan qisqacha mazmun; quyidagi rasmiy ko'rinishlar aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir Sick Leave Observation da bo'lishi shart

- `final` holati;
- `SNOMED CT#224459001` (On sick leave from work) kodi;
- `basedOn` dagi varaqa;
- `subject` dagi bemor.

#### Har bir Sick Leave Observation qo'llab-quvvatlashi kerak (Must Support)

- UZ Core Observation dan meros qolgan `effective[x]` dagi vaqt - varaqa boshlanishini yuboring - va `performer` dagi varaqani bergan shifokor;
- `component[urbanResident]`: shahar (`true`) yoki qishloq (`false`) aholisi, `patient.isUrban` dan;
- `component[nonLocal]`: yashash joyidan tashqarida rasmiylashtirilgan, `isNonLocal` dan;
- `component[epidemiologicalHistory]`: matn ko'rinishidagi epidemiologik anamnez, `epidemiologicalHistory` dan.

### JSON ni bosqichma-bosqich tuzish

Misollardan birini nusxalab moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi.

#### Yuborishingiz kerak bo'lgan eng kichik Sick Leave Observation

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-observation"
    ]
  },
  "status": "final",
  "basedOn": [
    {
      "reference": "CarePlan/sick-leave-family-care"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "224459001"
      }
    ]
  },
  "subject": {
    "reference": "Patient/sick-leave-patient"
  },
  "effectiveDateTime": "2026-09-01"
}
```

#### Barcha uchta atribut

Har bir komponent [SickLeaveComponentVS](ValueSet-sick-leave-component-vs.html) dagi kodi bilan aniqlanadi. Qiymatlar oddiy: `urban-resident` va `non-local` boolean, `epidemiological-history` esa satr qabul qiladi. Faqat varaqada qiymati mavjud bo'lgan komponentlarni yuboring.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-observation"
    ]
  },
  "status": "final",
  "basedOn": [
    {
      "reference": "CarePlan/sick-leave-family-care"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "224459001"
      }
    ]
  },
  "subject": {
    "reference": "Patient/sick-leave-patient"
  },
  "effectiveDateTime": "2026-09-01",
  "performer": [
    {
      "reference": "Practitioner/sick-leave-practitioner"
    }
  ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs",
            "code": "urban-resident"
          }
        ]
      },
      "valueBoolean": true
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs",
            "code": "non-local"
          }
        ]
      },
      "valueBoolean": true
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs",
            "code": "epidemiological-history"
          }
        ]
      },
      "valueString": "No contact with infectious patients in the last 21 days"
    }
  ]
}
```

Namunaviy nusxalar: [uzaytirilgan va yopilgan](Observation-sick-leave-extended-observation.html), [oila a'zosini parvarish qilish](Observation-sick-leave-family-care-observation.html), [bekor qilingan](Observation-sick-leave-cancelled-observation.html).
