Blood Service Registration Observation records that a person was registered with the blood service as a blood donor or as a recipient. For a donor it holds the donor category (staff or reserve), whether the donation is paid or unpaid, and the donation type; for a recipient it can carry the diagnosis. It is built on [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html), so it is read and searched through the Observation endpoint. The subject is a [UZ Core Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html), and the record can link to the registration [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) and to the practitioner who registered the person. Blood group and Rh factor are not part of the registration: record them as [UZ Core Observations](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html) with LOINC `883-9` and `10331-7`. See [blood service forms](forms-volume-08-blood-service.html) for where registration sits in the blood service.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/en/must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Blood Service Registration Observation Must Have

Every Blood Service Registration Observation must carry a status, a code saying whether this is a *blood donor registration* or a *blood recipient registration*, a subject - the [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) being registered (1..1), and an effectiveDateTime - when the registration was made (1..1). It has no `value`: the registration details go in components.

#### Each Blood Service Registration Observation Must Support

- the registration number assigned by the blood service;
- for a donor: the donor category (staff donor / reserve donor), the donation compensation (paid / unpaid) and the donation type (whole blood / plasmapheresis / plateletpheresis), each in its own component;
- for a recipient: the diagnosis (ICD-10) in a component;
- the registration encounter and the performer - the practitioner or practitioner role who registered the person;
- the other Must Support elements inherited from UZ Core Observation.

> A recipient registration must not carry the donor category, compensation or donation type components.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a complete donor record, followed by a recipient. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are [staff donor](Observation-example-blood-donor-registration-staff.html), [reserve donor](Observation-example-blood-donor-registration-reserve.html) and [recipient](Observation-example-blood-recipient-registration.html).

#### The smallest observation you should send

Four elements carry the whole record: the `status`, the `code` saying this is a blood donor registration, the `subject` (the [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) being registered), and the `effectiveDateTime` of the registration. The code comes from a local code system, so its `display` is in Uzbek, matching the resource `language`:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00001",
        "display": "Donor sifatida ro'yxatga olish"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00"
}
```

The `subject` is a plain `Reference`, so the target sits directly under `reference`.

#### A complete donor record

The registration number goes in `identifier`. Donor category, compensation and donation type each go in their own `component` slice; the `code` selects the slice, and the value must come from that slice's value set:

| Slice | `code` | `valueCodeableConcept` from |
|---|---|---|
| `donorCategory` | `bsobs-0002-00001` | [Donor category](ValueSet-donor-category-vs.html) |
| `compensation` | `bsobs-0002-00002` | [Donation compensation](ValueSet-donation-compensation-vs.html) |
| `donationType` | `bsobs-0002-00003` | [Donation type](ValueSet-donation-type-vs.html) (SNOMED CT) |
| `diagnosis` | LOINC `29308-4` | ICD-10 |

The `bsobs` codes are in `https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs`:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-registration", "value": "BD-2026-004517" }
  ],
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00001",
        "display": "Donor sifatida ro'yxatga olish"
      }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "performer": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
            "code": "bsobs-0002-00001",
            "display": "Donor toifasi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "275561000",
            "display": "Regular blood donor"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
            "code": "bsobs-0002-00002",
            "display": "Donatsiya to'lovi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
            "code": "bdcomp-0001-00001",
            "display": "Bepul"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
            "code": "bsobs-0002-00003",
            "display": "Donatsiya turi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "20720000", "display": "Plasmapheresis" } ]
      }
    }
  ]
}
```

#### A recipient

A recipient registration uses code `bsobs-0001-00002` and has no donor components. The diagnosis goes in the `diagnosis` slice, coded with LOINC `29308-4`, with an ICD-10 value. This record also links the registration `encounter` and the registering practitioner:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-registration", "value": "BR-2026-000932" }
  ],
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00002",
        "display": "Retsipiyent sifatida ro'yxatga olish"
      }
    ]
  },
  "subject": { "reference": "Patient/example-patient-john" },
  "encounter": { "reference": "Encounter/example-blood-recipient-registration-encounter" },
  "effectiveDateTime": "2026-09-25T11:00:00+05:00",
  "performer": [ { "reference": "Practitioner/example-blood-recipient-registrar" } ],
  "component": [
    {
      "code": {
        "coding": [ { "system": "http://loinc.org", "code": "29308-4" } ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://hl7.org/fhir/sid/icd-10", "code": "D64.9", "display": "Anaemia, unspecified" }
        ]
      }
    }
  ]
}
```

#### The identifier slices {#identifier-slices}

The registration number is selected by its `system` URI, so it must match exactly:

| Slice | `system` |
|---|---|
| `registrationNumber` | `https://dhp.uz/fhir/core/sid/doc/uz/blood-registration` |

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
