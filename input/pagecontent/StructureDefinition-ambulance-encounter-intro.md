Ambulance Encounter records one emergency medical service (ambulance) call: who was called to, by which ambulance service, why, when the team was with the patient, what they found and where the patient went afterwards. It is built on [UZ Core Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html), so it is read and searched through the Encounter endpoint. The subject is a [UZ Core Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html), the service provider is the ambulance [UZ Core Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html), and the call address is a [UZ Core Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html). Each call is identified by its call card number in the ambulance MIS: before creating an encounter, search by that number so that a resent call updates the existing record instead of creating a duplicate.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/en/must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Ambulance Encounter Must Have

Every Ambulance Encounter must carry exactly one identifier - the call card number, with its system - and a status, a national encounter type, a subject - the [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) the team was called to, a service provider - the ambulance organization responsible for the call, the actual period from the start to the end of the call, and exactly one location - the place the team was called to. When admission details are sent, they must include the discharge disposition. Every participant must name its actor.

#### Each Ambulance Encounter Must Support

- the class (emergency) and the priority of the call;
- the patient's status during the call (for example, conscious / unconscious);
- the participants - the practitioners or practitioner roles of the ambulance team, and related persons - with their role;
- the reason for the call, with the medical reason as an ICD-10 code or a reference to a Condition, Observation, Procedure or DiagnosticReport;
- the diagnoses made during the call;
- the admission details: where the patient was picked up, a repeat call, where the patient was taken and the outcome (for example, hospitalized / refused hospitalization);
- the request the call is based on and the encounter it is part of;
- the period the team spent at the location;
- the other Must Support elements inherited from UZ Core Encounter.

### Building the JSON, step by step

The examples below go from the smallest encounter the server will accept to a complete call, followed by a call that ends in hospitalization. Copy one and adapt it - every value shown validates against this profile. The complete reference instance is the [hypertensive crisis call](Encounter-example-ambulance-call-encounter.html).

#### The smallest encounter you should send

Seven elements carry the whole record: the call card number in `identifier`, the `status`, the national encounter `type`, the `subject`, the `serviceProvider`, the `actualPeriod` and the `location`. The encounter type comes from a local code system, so its `display` is in Uzbek, matching the resource `language`:

```json
{
  "resourceType": "Encounter",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5742/26" }
  ],
  "status": "completed",
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-ambulance-cs",
          "code": "emer5-0006-1",
          "display": "Birlamchi"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "serviceProvider": { "reference": "Organization/xonobod-medical-association" },
  "actualPeriod": { "start": "2026-03-01T09:30:00+05:00", "end": "2026-03-01T10:15:00+05:00" },
  "location": [ { "location": { "reference": "Location/example-ambulance-call-location" } } ]
}
```

`subject`, `serviceProvider` and `location.location` are plain `Reference`s, so the target sits directly under `reference`. The identifier `system` is fixed: an identifier with any other system is rejected.

#### A complete call

The full record adds the class and priority, the patient's status, the ambulance team in `participant`, the reason for the call and the diagnosis. `reason.use` holds the reason for the call from the ambulance call reasons; `reason.value` and `diagnosis.condition` are `CodeableReference`s, so a code goes under `concept` and a reference to a Condition would go under `reference`:

```json
{
  "resourceType": "Encounter",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5742/26" }
  ],
  "status": "completed",
  "class": [
    { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode", "code": "EMER" } ] }
  ],
  "priority": {
    "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority", "code": "EM" } ]
  },
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-ambulance-cs",
          "code": "emer5-0006-1",
          "display": "Birlamchi"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "subjectStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-subject-status-cs",
        "code": "gencl-0003-00002",
        "display": "Hushsiz"
      }
    ]
  },
  "serviceProvider": { "reference": "Organization/xonobod-medical-association" },
  "participant": [
    {
      "type": [
        { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType", "code": "ATND" } ] }
      ],
      "actor": { "reference": "PractitionerRole/example-practitionerrole" }
    }
  ],
  "reason": [
    {
      "use": [
        {
          "coding": [
            {
              "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-ambulance-cs",
              "code": "emer103054",
              "display": "Qon bosimining sezilarli darajada o'zgarishi"
            }
          ]
        }
      ],
      "value": [
        { "concept": { "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "I10" } ] } }
      ]
    }
  ],
  "actualPeriod": { "start": "2026-03-01T09:30:00+05:00", "end": "2026-03-01T10:15:00+05:00" },
  "diagnosis": [
    {
      "condition": [
        { "concept": { "coding": [ { "system": "http://hl7.org/fhir/sid/icd-10", "code": "I10" } ] } }
      ]
    }
  ],
  "location": [
    {
      "location": { "reference": "Location/example-ambulance-call-location" },
      "period": { "start": "2026-03-01T09:42:00+05:00", "end": "2026-03-01T10:05:00+05:00" }
    }
  ]
}
```

#### A call that ends in hospitalization

When the team takes the patient somewhere, add `admission`. `admitSource` says where the patient was picked up (SNOMED CT place codes such as `257630004` House), `destination` references the hospital [Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html) or [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html), and `dischargeDisposition`, required whenever `admission` is sent, gives the outcome of the call:

```json
{
  "resourceType": "Encounter",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5743/26" }
  ],
  "status": "completed",
  "type": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-ambulance-cs",
          "code": "emer5-0006-1",
          "display": "Birlamchi"
        }
      ]
    }
  ],
  "subject": { "reference": "Patient/example-salim" },
  "serviceProvider": { "reference": "Organization/xonobod-medical-association" },
  "actualPeriod": { "start": "2026-03-01T09:30:00+05:00", "end": "2026-03-01T10:15:00+05:00" },
  "location": [ { "location": { "reference": "Location/example-ambulance-call-location" } } ],
  "admission": {
    "admitSource": { "coding": [ { "system": "http://snomed.info/sct", "code": "257630004" } ] },
    "destination": { "reference": "Location/example-location" },
    "dischargeDisposition": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-discharge-disposition-home-cs",
          "code": "mserv-0004-00001",
          "display": "Kasalxonaga yotqizildi"
        }
      ]
    }
  }
}
```

#### The identifier {#identifier-slices}

The call card number is the only identifier, and its `system` is fixed:

| Identifier | `system` |
|---|---|
| Call card number | `https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card` |

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
