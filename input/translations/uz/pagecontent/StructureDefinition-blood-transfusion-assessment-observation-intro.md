> Ushbu matn avtomatik tarjima qilingan.

Profil [UZ Core Observation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-observation.html) asosida oluvchining transfuziyadan oldingi baholashi va biologik sinov natijalarini har bir transfuziya bayonnomasi uchun bitta Observation da qayd etadi. Mavjud bemor va tashrif resurslaridan foydalaning. Baholash kodi har doim SNOMED CT `252314007` (Blood transfusion test).

### Majburiy va qo'llab-quvvatlanadigan elementlar

Majburiy elementlar mavjud bo'lishi kerak. Must Support elementlari alohida namunada ixtiyoriy bo'lsa ham, tizimlar tomonidan qo'llab-quvvatlanishi shart.

#### Blood Transfusion Assessment Observation uchun majburiy ma'lumotlar

Holat, belgilangan baholash kodi va oluvchiga havola. Har bir berilgan komponent o'zining belgilangan kodini saqlaydi.

#### Blood Transfusion Assessment Observation qo'llab-quvvatlaydigan ma'lumotlar

- Tayinlangan bo'lsa, biznes identifikatorlar va ularning tizimi.
- Oluvchi, tashrif va mas'ul mutaxassis yoki tashkilot.
- Baholash vaqti, natija e'lon qilingan vaqt va ixtiyoriy izohlar.
- Oltita nomlangan komponent va ularning kodlangan qiymatlari.

### Component kesimlari

Har bir kesim ixtiyoriy va bir marta uchrashi mumkin. Oltita kesimning barchasi CodeableConcept qiymatidan foydalanadi; belgilangan komponent kodi tegishli ValueSet ni tanlaydi. Biologik sinov natijasi oltinchi komponentda beriladi. Yo'llanma sanasi uchun komponent belgilanmagan, chunki berilgan oltita tur orasida uning kodi yo'q. Biologik sinov natijalarining SNOMED CT kodlari foydalanilayotgan nashrda tekshirilguncha nomzod hisoblanadi.

| Slice | Component code | Qiymat |
| --- | --- | --- |
| `aboCompatibility` (ABO bo'yicha moslik) | `bldcomp-0001-00001` | Moslik natijasi |
| `rhHrCompatibility` (Rh-Hr bo'yicha moslik) | `bldcomp-0001-00002` | Moslik natijasi |
| `transfusionHistory` (Transfuzion anamnez) | `bldcomp-0001-00003` | Transfuzion anamnez toifasi |
| `obstetricHistory` (Akusherlik anamnezi) | `bldcomp-0001-00004` | Akusherlik anamnezi toifasi |
| `preliminaryAboGroup` (Dastlabki ABO guruhi) | `bldcomp-0001-00005` | UZ Core ABO guruhi |
| `biologicalSpecimen` (Biologik sinov natijasi) | `bldcomp-0001-00006` | SNOMED CT musbat yoki manfiy |

### JSON ni bosqichma-bosqich tuzish

Minimal baholash: component kesimlari ixtiyoriy.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "252314007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-transfusion-assessment-recipient"
  }
}
```

ABO mosligi belgilangan komponent kodi bilan aniqlanadi.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "252314007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-transfusion-assessment-recipient"
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00001"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-value-cs",
            "code": "bldcomp-0002-00001"
          }
        ]
      }
    }
  ]
}
```

Biologik sinov moslik tekshiruvlari bilan birga alohida komponentda beriladi.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "252314007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-transfusion-assessment-recipient"
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00001"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-value-cs",
            "code": "bldcomp-0002-00001"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00006"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "260385009"
          }
        ]
      }
    }
  ]
}
```

[To'liq misol](Observation-example-blood-transfusion-assessment.html) barcha oltita kesimni va oluvchi, tashrif hamda mutaxassis misollariga havolalarni o'z ichiga oladi.

[Tez boshlash](#quick-start)
