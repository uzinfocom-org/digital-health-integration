Blood Donor Category Observation records how a person is registered with the blood service: as a blood donor or as a recipient. For a donor it holds the donor category (staff or reserve), whether the donation is paid or unpaid, and the donation type; for both donors and recipients it can carry the ABO blood group, the Rh factor and, for a recipient, the diagnosis. It is built on [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html), so it is read and searched through the Observation endpoint. The subject is a [UZ Core Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html), and the record can link to the registration [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) and to the practitioner who registered the person. See [Blood Management](blood-management.html) for how it fits with the UZ Core profiles across the blood service, from donor registration to transfusion.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/en/must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Blood Donor Category Observation Must Have

Every Blood Donor Category Observation must carry a status, a code saying whether the person is registered as a *Blood donor* or as a *Patient* (recipient) (SNOMED CT), a subject - the [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) being registered (1..1), and an effectiveDateTime - when the registration was made (1..1).

#### Each Blood Donor Category Observation Must Support

- the donor category (staff donor / reserve donor) in the `donorCategory` category slice;
- the donation compensation (paid / unpaid) in `valueCodeableConcept`;
- the component slices for the donation type (whole blood / plasmapheresis / thrombocytapheresis), the ABO blood group, the Rh factor and the diagnosis;
- the registration encounter and the performer - the practitioner or practitioner role who registered the person;
- the identifier and notes, when available;
- the other Must Support elements inherited from UZ Core Observation.

> Each component slice is selected by its `code`, which also decides the value set its `valueCodeableConcept` comes from. Send only the components you have data for.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a fully populated donor record, followed by a recipient. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are [staff donor](Observation-example-blood-donor-category-observation.html), [reserve donor](Observation-example-blood-donor-category-observation-reserve.html) and [recipient](Observation-example-blood-recipient-category-observation.html).

#### The smallest observation you should send

Four elements carry the whole record: the `status`, the `code` saying that this person is registered as a blood donor (SNOMED CT `105470007`), the `subject` (the [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) being registered), and the `effectiveDateTime` of the registration:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00"
}
```

The `subject` is a plain `Reference`, so the target sits directly under `reference`.

#### Adding the donor category and compensation

The donor category goes in `category` and the compensation in `valueCodeableConcept`. Both come from local code systems, so their `display` is in Uzbek, matching the resource `language`:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs",
          "code": "bdcat-0001-00001",
          "display": "Kadr donor"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "performer": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
        "code": "bdcomp-0001-00001",
        "display": "Bepul"
      }
    ]
  }
}
```

The category code selects the `donorCategory` slice; categories from other systems can be sent alongside it.

#### A complete donor record

Donation type, blood group and Rh factor each go in their own `component` slice. The `code` selects the slice, and the value must come from that slice's value set:

| Slice | `code` | `valueCodeableConcept` from |
|---|---|---|
| `donationType` | `bdobs-0001-00001` | [Donation type](ValueSet-donation-type-vs.html) |
| `bloodGroup` | `bdobs-0001-00002` | [Blood group](https://dhp.uz/fhir/core/en/ValueSet-blood-group-vs.html) (SNOMED CT) |
| `rhFactor` | `bdobs-0001-00003` | [Rh factor](https://dhp.uz/fhir/core/en/ValueSet-blood-rh-vs.html) (SNOMED CT) |
| `diagnosis` | LOINC `29308-4` | ICD-10 |

The first three codes are in `https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs`:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs",
          "code": "bdcat-0001-00001",
          "display": "Kadr donor"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" }
    ]
  },
  "subject": { "reference": "Patient/example-salim" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "performer": [ { "reference": "PractitionerRole/example-practitionerrole" } ],
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
        "code": "bdcomp-0001-00001",
        "display": "Bepul"
      }
    ]
  },
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00001",
            "display": "Donatsiya turi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-type-cs",
            "code": "bdtype-0001-00002",
            "display": "Plazmaferez"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00002",
            "display": "Qon guruhi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://snomed.info/sct", "code": "112144000" }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00003",
            "display": "Rezus-omil"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://snomed.info/sct", "code": "165747007" }
        ]
      }
    }
  ]
}
```

#### A recipient

A recipient uses the SNOMED CT code `116154003` (Patient) and has no donor category or compensation. The diagnosis goes in the `diagnosis` slice, coded with LOINC `29308-4`, with an ICD-10 value. This record also links the registration `encounter` and the registering practitioner:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      { "system": "http://snomed.info/sct", "code": "116154003", "display": "Patient" }
    ]
  },
  "subject": { "reference": "Patient/example-patient-john" },
  "encounter": { "reference": "Encounter/example-blood-recipient-registration-encounter" },
  "effectiveDateTime": "2026-09-25T11:00:00+05:00",
  "performer": [ { "reference": "Practitioner/example-blood-recipient-registrar" } ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00002",
            "display": "Qon guruhi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          { "system": "http://snomed.info/sct", "code": "112144000" }
        ]
      }
    },
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

The blood service registration identifier is selected by its `system` URI, so it must match exactly:

| Slice | `system` |
|---|---|
| `bloodId` | `https://dhp.uz/fhir/core/sid/prd/uz/blood` |

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
