Sick Leave Observation carries the attributes of a sick leave that do not belong on the case itself: whether the patient is an urban or rural resident, whether the sick leave was issued outside the place of residence, and the epidemiological history. There is one Observation per sick leave, `basedOn` its [Sick Leave CarePlan](StructureDefinition-sick-leave-careplan.html), and each attribute is one `component`. See [Sick leave](sick-leave.html#recording-additional-attributes-observation) for the mapping.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/must-support.html)). This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Sick Leave Observation Must Have

- status `final`;
- the code `SNOMED CT#224459001` (On sick leave from work);
- the sick leave in `basedOn`;
- the patient in `subject`.

#### Each Sick Leave Observation Must Support

- the time in `effective[x]` - send the start of the sick leave - and the issuing doctor in `performer`, inherited from UZ Core Observation;
- `component[urbanResident]`: urban (`true`) or rural (`false`) resident, from `patient.isUrban`;
- `component[nonLocal]`: issued outside the place of residence, from `isNonLocal`;
- `component[epidemiologicalHistory]`: the epidemiological history as text, from `epidemiologicalHistory`.

### Building the JSON, step by step

Copy one of the examples and adapt it - every value shown validates against this profile.

#### The smallest Sick Leave Observation you should send

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

#### All three attributes

Each component is identified by its code from [SickLeaveComponentVS](ValueSet-sick-leave-component-vs.html). The values are plain: `urban-resident` and `non-local` take a boolean, `epidemiological-history` a string. Send only the components the sick leave has a value for.

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

Reference instances: [extended and closed](Observation-sick-leave-extended-observation.html), [family care](Observation-sick-leave-family-care-observation.html), [cancelled](Observation-sick-leave-cancelled-observation.html).
