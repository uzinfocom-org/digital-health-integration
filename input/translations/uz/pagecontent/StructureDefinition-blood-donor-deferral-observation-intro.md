> Ushbu matn avtomatik tarjima qilingan.

Profil [UZ Core Observation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-observation.html) asosida donorning vaqtincha yoki umrbod chetlatilishi haqidagi baholashni qayd etadi. U mavjud donor, tashrif va mutaxassis resurslariga murojaat qiladi. Bitta Observation bitta chetlatish turini ifodalaydi; shu turga oid bir nechta sabab component orqali beriladi.

### Majburiy va qo'llab-quvvatlanadigan elementlar

Majburiy elementlar mavjud bo'lishi kerak. Must Support elementlari alohida namunada ixtiyoriy bo'lsa ham, tizimlar tomonidan qo'llab-quvvatlanishi shart.

#### Blood Donor Deferral Observation uchun majburiy ma'lumotlar

Holat, chetlatish turi va donorga havola. Har bir berilgan komponentda sabab kodi bo'lishi shart.

#### Blood Donor Deferral Observation qo'llab-quvvatlaydigan ma'lumotlar

- Tayinlangan bo'lsa, biznes identifikatorlar va ularning tizimi.
- Donor, tashrif va mas'ul mutaxassis yoki tashkilot.
- Baholash vaqti, versiya e'lon qilingan vaqt va ixtiyoriy izohlar.
- Sabablar va vaqtincha chetlatishning kunlarda ifodalangan ixtiyoriy manfiy bo'lmagan davomiyligi.

### Chetlatish sabablarini qayd etish

Vaqtincha chetlatish davomiyligi ixtiyoriy bo'lib, butun kunlar sonida beriladi; nolga ruxsat etiladi. Umrbod chetlatishda davomiylik berilmaydi. Ikkala tur ham kerak bo'lsa, alohida Observation yarating. Sababning o'zi chetlatish turi yoki klinik muddatni belgilamaydi. Quyidagi muddatlar faqat misol bo'lib, klinik tavsiya emas. Toifa ixtiyoriy va UZ Core dan meros olingan slicing qoidalariga amal qiladi.

### JSON ni bosqichma-bosqich tuzish

Ixtiyoriy komponentlarsiz vaqtincha chetlatishning minimal baholashi.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-deferral-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs",
        "code": "tmpdf-0001-00001"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-deferral-donor"
  }
}
```

Sabab va misol uchun 180 kunlik muddat bilan vaqtincha chetlatish.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-deferral-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs",
        "code": "tmpdf-0001-00001"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-deferral-donor"
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
            "code": "donrsn-0001-00003"
          }
        ]
      },
      "valueInteger": 180
    }
  ]
}
```

Sabab bilan, davomiyliksiz umrbod chetlatish.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-deferral-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs",
        "code": "lldf-0001-00001"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-deferral-donor"
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
            "code": "donrsn-0001-00013"
          }
        ]
      }
    }
  ]
}
```

To'liq misollar: [vaqtincha chetlatish](Observation-example-blood-donor-temporary-deferral.html) va [umrbod chetlatish](Observation-example-blood-donor-lifelong-deferral.html).

[Tez boshlash](#quick-start)
