This profile represents donor laboratory orders and requests for secondary processing of blood components. It derives from [UZ Core ServiceRequest](https://dhp.uz/fhir/core/StructureDefinition-uz-core-servicerequest.html) and references existing donors, encounters, specimens and inventory items.

### Mandatory and Must Support data elements

Mandatory elements must be present. Must Support elements must be supported by implementers even when optional in an individual request.

#### Each Blood ServiceRequest Must Have

Each request must have a status, the intent `order`, and a donor reference. Each order detail must have at least one parameter; each parameter must have a selected test or operation code and `valueBoolean: true`. The inherited prr-1 invariant requires `code` whenever `orderDetail` is present.

#### Each Blood ServiceRequest Must Support

- Order identifiers and a shared requisition identifier.
- The receiving laboratory category, donor encounter, planned time and creation time.
- Requester, performer, location, specimens and clinical reason.
- Component inventory item, supporting information, comments and selected tests or operations.

### Workflow

Create a separate request for each receiving laboratory: four for a reserve donor and five for a regular donor. Use the inherited optional `category[dhpCategory]` to identify the laboratory. For secondary processing, create one request per component with all selected operations; omit the category when none applies. Keep the request active until every operation is confirmed, then mark it completed. This transition requires application workflow state.

### Open implementation decisions

The laboratory codes are candidates: confirm the assay, specimen and tube compatibility. SNOMED CT `64108007` remains a provisional overall processing service code and is not fixed by this profile. Destination-only requests for fractionation, cryoprecipitate or disposal remain unresolved. `focus` accepts UZ Core InventoryItem; confirm deployed-server support. Do not duplicate the same component in `supportingInfo`.

The source spreadsheet proposes the blood product identifier system for request identifiers. That system identifies products, so it is not fixed here for order numbers. When identifiers or requisition are supplied, `system` is mandatory; use an approved UZ Core document identifier system. No new identifier system is introduced.

### Building the JSON, step by step

The first example is minimal; the second adds a selected laboratory test; the third shows local processing with the provisional overall service code. Full examples: [laboratory order](ServiceRequest-example-blood-laboratory-order.html) and [component processing](ServiceRequest-example-blood-component-processing-order.html).

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-blood-donor"
  }
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-blood-donor"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "108252007"
        }
      ]
    }
  },
  "orderDetail": [
    {
      "parameter": [
        {
          "code": {
            "coding": [
              {
                "system": "http://loinc.org",
                "code": "1975-2"
              }
            ]
          },
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-blood-donor"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "64108007"
        }
      ]
    }
  },
  "focus": [
    {
      "reference": "InventoryItem/example-blood-component-inventory"
    }
  ],
  "orderDetail": [
    {
      "parameter": [
        {
          "code": {
            "coding": [
              {
                "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/processing-operation-cs",
                "code": "bld-operation-0001"
              }
            ]
          },
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

See [Quick Start](#quick-start).
