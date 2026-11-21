> Tarjima avtomatik tayyorlangan; tafovut bo'lsa inglizcha asl nusxadan foydalaning.

Orders ServiceRequest UZ Core ServiceRequest ni Orders yo'llanma va gospitalizatsiya jarayoni uchun kengaytiradi. Kelishuv vazifalari unga `basedOn` va `focus` orqali havola qiladi. Takroriy yo'llanma yaratmaslik uchun avval identifikator bo'yicha qidiring.

### Majburiy va Must Support elementlari

Must Support means the system must populate the element when the data is available and process it when received; it does not make every element mandatory. See [Must Support](https://dhp.uz/fhir/core/en/must-support.html).

#### Each ServiceRequest Must Have

Har bir so'rovda `status`, `intent` va `subject` da UZ Core Patient yoki Location bo'lishi shart. Identifikator berilsa tizim va qiymat majburiy. Davolash asosi parametri berilganda LOINC 86947-9 kodi va CodeableConcept qiymati ishlatiladi.

#### Each ServiceRequest Must Support

Meros olingan UZ Core elementlari, yo'llanma maqsadlari, mutaxassislik, davolash asosi, ijrochi, SBDL mezoni va huquqiy moliyalashtirish asosini qo'llab-quvvatlang. Kardinallik yoki mavjud manba ma'lumoti talab qilmasa bu elementlar ixtiyoriy.

### JSON ni bosqichma-bosqich yaratish

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-servicerequest"
    ]
  },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-orders-patient"
  }
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-servicerequest"
    ]
  },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-orders-patient"
  },
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-service-request-referral-purpose-cs",
          "code": "purpose-0001-0003"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "394612005"
        }
      ]
    }
  ],
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "310449005"
        }
      ]
    }
  }
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-servicerequest"
    ]
  },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-orders-patient"
  },
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-service-request-referral-purpose-cs",
          "code": "purpose-0001-0003"
        }
      ]
    },
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "394612005"
        }
      ]
    }
  ],
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "310449005"
        }
      ]
    }
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/core/StructureDefinition/payment-type",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs",
            "code": "paytype-0001-0004"
          }
        ]
      }
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/orders-funding-resolution",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-funding-resolution-cs",
            "code": "paytype-0001-0006"
          }
        ]
      }
    }
  ],
  "orderDetail": [
    {
      "parameter": [
        {
          "code": {
            "coding": [
              {
                "system": "http://loinc.org",
                "code": "86947-9"
              }
            ]
          },
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-service-request-basis-cs",
                "code": "basis-0001-00001"
              }
            ]
          }
        }
      ]
    }
  ],
  "reason": [
    {
      "concept": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/sid/icd-10",
            "code": "N20.0"
          }
        ]
      }
    },
    {
      "concept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-sbdl-cs",
            "code": "SBDL-000001-0"
          }
        ]
      }
    }
  ]
}
```

ICD-10 tashxisi va SBDL mezoni `reason` ning alohida takrorlanishlarida beriladi. UZ Core 0.12.0 `reason[icd10]` ichidagi barcha kodlashlarni ICD-10 bilan cheklaydi; bu kesimga SBDL joylashtirish ota profilni buzadi. Imtiyozlar UZ Core Socioeconomic Observation da qayd etilib, `supportingInfo` orqali bog'lanadi.

UZ Core to'lov turi `extension[paymentType]` da saqlanadi. 5199 va 311-sonli qarorlar qo'shimcha huquqiy moliyalashtirish asosi sifatida [Orders funding resolution](StructureDefinition-orders-funding-resolution.html) kengaytmasining `extension[fundingResolution]` kesimida beriladi. UZ Core kod tizimi o'zgartirilmaydi.

[Complete example](ServiceRequest-example-orders-hospitalization-referral.html) · [Orders workflow](orders.html) · [Quick Start](#quick-start)
