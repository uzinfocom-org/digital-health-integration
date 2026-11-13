This profile derives from [UZ Core Observation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-observation.html) and records a recipient's pre-transfusion assessment and biological test results in one Observation per transfusion protocol. Reuse the existing patient and encounter. The assessment code is always SNOMED CT `252314007` (Blood transfusion test).

### Mandatory and Must Support data elements

Mandatory elements must be present. Must Support elements must be supported by implementations even when optional in an individual instance.

#### Each Blood Transfusion Assessment Observation Must Have

A status, the fixed assessment code and a recipient reference. Each supplied component has its fixed component code.

#### Each Blood Transfusion Assessment Observation Must Support

- Business identifiers, when assigned, including their system.
- Recipient, encounter and responsible practitioner or organization.
- Assessment time, issue time and optional clinical notes.
- The six named components below and their coded values.

### Component slices

Each slice is optional and may occur once. All six slices use CodeableConcept values; the fixed component code selects the relevant value set. Biological test results belong to the sixth component. No date-of-referral component is defined because it has no code among the six supplied component types. The referenced biological-result SNOMED CT codes remain candidates pending confirmation for the deployed edition.

| Slice | Component code | Value |
| --- | --- | --- |
| `aboCompatibility` (ABO compatibility) | `bldcomp-0001-00001` | Compatibility result |
| `rhHrCompatibility` (Rh-Hr compatibility) | `bldcomp-0001-00002` | Compatibility result |
| `transfusionHistory` (Transfusion history) | `bldcomp-0001-00003` | Transfusion history category |
| `obstetricHistory` (Obstetric history) | `bldcomp-0001-00004` | Obstetric history category |
| `preliminaryAboGroup` (Preliminary ABO group) | `bldcomp-0001-00005` | Existing UZ Core ABO group |
| `biologicalSpecimen` (Biological test result) | `bldcomp-0001-00006` | SNOMED CT positive or negative |

### Building the JSON, step by step

Minimal assessment; component slices are optional.

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

ABO compatibility is identified by its fixed component code.

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

The biological test is a separate named component alongside compatibility checks.

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

The [complete example](Observation-example-blood-transfusion-assessment.html) includes all six slices and links to supporting recipient, encounter and practitioner examples.

[Quick Start](#quick-start)
