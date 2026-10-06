Sick Leave CarePlan is the sick leave certificate itself: one CarePlan per certificate from the DHP sick leave service (API v3), over its whole lifecycle. It records the document type, the reason for the incapacity, the current status and its history, the periods of incapacity, and who issued and approved the certificate. It references the [Patient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) it is issued to, the [diagnoses](StructureDefinition-sick-leave-condition.html), and - when the document involves one - the [related person](StructureDefinition-sick-leave-related-person.html); the [additional attributes](StructureDefinition-sick-leave-observation.html) point back to it through `basedOn`. [Sick leave](sick-leave.html) maps every field of the API to where it is stored.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Sick Leave CarePlan Must Have

- a status: `active` for an opened or extended sick leave, `completed` for a closed one, `revoked` for a cancelled one, and intent `plan`;
- the sick leave's own status in `extension[workflowStatus]`, the `status` code of the API;
- the document type in `category`, the `type` code of the API;
- the patient in `subject`;
- the sick leave number in `identifier[code]`, the `code` of the API.

#### Each Sick Leave CarePlan Must Support

- the version and last change in `meta.versionId` and `meta.lastUpdated`;
- the reason in `addresses[reason]` and up to two diagnoses in `addresses[diagnosis]`;
- the status history in `extension[statusHistory]`, the periods of incapacity in `extension[incapacityPeriod]` and their overall span in `period`;
- the creation time in `created`;
- the issuing doctor in `contributor`, the chief physician in `extension[headPractitioner]` and the issuing organization in `custodian`;
- the related person in `extension[relatedPerson]`.

> `status` and `extension[workflowStatus]` always travel together: `opened` and `extended` go with `active`, `closed` with `completed`, `cancelled` with `revoked`.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a full sick leave. Copy one and adapt it - every value shown validates against this profile. The complete reference instances are linked at the bottom of the page.

#### The smallest Sick Leave CarePlan you should send

Six elements are mandatory: `identifier[code]`, `status`, `intent`, `category`, `subject` and `extension[workflowStatus]`. Every resource must also name the profile it claims to conform to in `meta.profile`. This much already passes validation:

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
    ]
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
      "valueCode": "opened"
    }
  ],
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/sickleave",
      "value": "02QR008600001"
    }
  ],
  "status": "active",
  "intent": "plan",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs",
          "code": "SL"
        }
      ]
    }
  ],
  "subject": {
    "reference": "Patient/sick-leave-patient"
  }
}
```

`category` is bound `required` to [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html) (`SL`, `CC`, `ED`, `IT`, `MSEC`), `extension[workflowStatus]` to [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) (`opened`, `extended`, `closed`, `cancelled`). `subject` references a UZ Core Patient.

#### A closed sick leave with its history

In practice you send everything the API has: the version, the reason, references to the diagnoses, one `extension[statusHistory]` per element of `statuses`, one `extension[incapacityPeriod]` per element of `dates`, the overall `period`, and the people and organization involved. This is a sick leave for a disease, extended once and closed:

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "versionId": "3",
    "lastUpdated": "2026-08-12T16:42:11+05:00",
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
    ]
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
      "valueCode": "closed"
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "opened"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-04",
            "end": "2026-08-06"
          }
        }
      ]
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "extended"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-07",
            "end": "2026-08-12"
          }
        }
      ]
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "closed"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-12",
            "end": "2026-08-12"
          }
        }
      ]
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period",
      "valuePeriod": {
        "start": "2026-08-04",
        "end": "2026-08-06"
      }
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period",
      "valuePeriod": {
        "start": "2026-08-07",
        "end": "2026-08-12"
      }
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-head-practitioner",
      "valueReference": {
        "reference": "Practitioner/sick-leave-head-practitioner"
      }
    }
  ],
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/sickleave",
      "value": "02QR008593426"
    }
  ],
  "status": "completed",
  "intent": "plan",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs",
          "code": "SL"
        }
      ]
    }
  ],
  "subject": {
    "reference": "Patient/sick-leave-patient"
  },
  "period": {
    "start": "2026-08-04",
    "end": "2026-08-12"
  },
  "created": "2026-08-04T09:15:32+05:00",
  "custodian": {
    "reference": "Organization/sick-leave-organization"
  },
  "contributor": [
    {
      "reference": "Practitioner/sick-leave-practitioner"
    }
  ],
  "addresses": [
    {
      "concept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs",
            "code": "DIS"
          }
        ]
      }
    },
    {
      "reference": {
        "reference": "Condition/sick-leave-extended-diagnosis-preliminary"
      }
    },
    {
      "reference": {
        "reference": "Condition/sick-leave-extended-diagnosis-final"
      }
    }
  ]
}
```

`addresses` holds both the reason and the diagnoses: the reason is a `concept` from [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html) (`DIS`, `INJ`, `MAT`, `FMC`, `PRO`, `SAN`, `QRT`, `NBC`), each diagnosis is a `reference` to a [Sick Leave Condition](StructureDefinition-sick-leave-condition.html). `contributor` accepts only a UZ Core Practitioner, `custodian` only a UZ Core Organization.

#### A sick leave with a related person

When the document involves a person related to the patient, for example a family member the patient cares for, reference a [Sick Leave RelatedPerson](StructureDefinition-sick-leave-related-person.html) from `extension[relatedPerson]`:

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
    ]
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
      "valueCode": "opened"
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-related-person",
      "valueReference": {
        "reference": "RelatedPerson/sick-leave-related-person-mother"
      }
    }
  ],
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/sickleave",
      "value": "02QR008600112"
    }
  ],
  "status": "active",
  "intent": "plan",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs",
          "code": "SL"
        }
      ]
    }
  ],
  "subject": {
    "reference": "Patient/sick-leave-patient"
  },
  "addresses": [
    {
      "concept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs",
            "code": "FMC"
          }
        ]
      }
    }
  ]
}
```

Reference instances: [extended and closed](CarePlan-sick-leave-extended.html), [family care](CarePlan-sick-leave-family-care.html), [cancelled](CarePlan-sick-leave-cancelled.html).
