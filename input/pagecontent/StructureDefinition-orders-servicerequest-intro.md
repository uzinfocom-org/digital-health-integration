Orders ServiceRequest extends UZ Core ServiceRequest for the Orders referral and hospitalization process. Approval tasks reference it through `basedOn` and `focus`. Search for existing requests by identifier before creating a duplicate.

### Mandatory and Must Support data elements

Must Support means the system must populate the element when the data is available and process it when received; it does not make every element mandatory. See [Must Support](https://dhp.uz/fhir/core/en/must-support.html).

#### Each ServiceRequest Must Have

Each request must have `status`, `intent` and a UZ Core Patient or Location in `subject`. When an identifier is provided, both system and value are required. The treatment-basis parameter, when present, has the fixed code LOINC 86947-9 and a CodeableConcept value.

#### Each ServiceRequest Must Support

Support the inherited UZ Core elements, plus referral purposes, clinical specialty, treatment basis, performer, SBDL criterion and legal funding resolution. These elements are optional unless their cardinality or the source data requires them.

### Building the JSON, step by step

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

The ICD-10 diagnosis and SBDL treatment criterion are separate `reason` repetitions. UZ Core 0.12.0 fixes every coding in `reason[icd10]` to ICD-10, so placing an SBDL coding inside that slice would violate the parent profile. A benefit supporting the referral is a UZ Core Socioeconomic Observation referenced by `supportingInfo`.

The inherited UZ Core payment type remains in `extension[paymentType]`. Resolutions 5199 and 311 are additional legal funding grounds in [Orders funding resolution](StructureDefinition-orders-funding-resolution.html), carried as `extension[fundingResolution]`. This avoids adding concepts to a CodeSystem owned by UZ Core.

[Complete example](ServiceRequest-example-orders-hospitalization-referral.html) · [Orders workflow](orders.html) · [Quick Start](#quick-start)
