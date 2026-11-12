This profile records a donor's temporary or lifelong deferral as an assessment derived from [UZ Core Observation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-observation.html). It references the existing donor, encounter and assessing practitioner. One Observation represents one deferral type; several reasons of that type are recorded as components.

### Mandatory and Must Support data elements

Mandatory elements must be present. Must Support elements must be supported by implementations even when optional in an individual instance.

#### Each Blood Donor Deferral Observation Must Have

A status, a deferral type and a reference to the donor. Each supplied component must have a reason code.

#### Each Blood Donor Deferral Observation Must Support

- Business identifiers, if assigned, with their system.
- Donor, encounter and assessing practitioner or organization.
- Assessment time, issue time and optional clinical notes.
- Reasons and an optional non-negative temporary duration in days.

### Recording deferral reasons

Temporary durations are optional integers in days; zero is allowed. Lifelong deferral components must omit the duration. If both types need to be recorded, create separate Observations. Reasons do not automatically determine the deferral type or a clinical duration. The durations below are illustrative data, not clinical recommendations. Category remains optional and follows the inherited UZ Core slicing rules.

### Building the JSON, step by step

Minimal temporary assessment without optional components.

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

Temporary assessment with a reason and an illustrative duration of 180 days.

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

Lifelong assessment with a reason and no duration.

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

Full examples: [temporary deferral](Observation-example-blood-donor-temporary-deferral.html) and [lifelong deferral](Observation-example-blood-donor-lifelong-deferral.html).

[Quick Start](#quick-start)
