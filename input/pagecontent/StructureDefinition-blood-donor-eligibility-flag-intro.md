Blood Donor Eligibility Flag records whether a blood donor may give blood. It is a [UZ Core Flag](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-flag.html) on the donor [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) with the code `blood-donation-eligible`, `blood-donation-deferred-temporary` or `blood-donation-deferred-permanent`. A deferral carries one [deferral reason](ValueSet-donor-deferral-reason-vs.html) in the [workflow-reason](https://hl7.org/fhir/extensions/StructureDefinition-workflow-reason.html) extension, which can point to what led to it, such as a test [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html), a DiagnosticReport or a Condition; an eligibility has no reason. A donor deferred for two reasons has two flags. A temporary deferral has a `period.end`, the date from which the donor may give blood again; a permanent deferral has no `period.end`. A temporary flag stays `active` until it is set to `inactive`, so read `period.end` together with `status` to tell whether a deferral still applies. When a deferral is recorded, the donor's active eligibility flag is set to `inactive` with `period.end` at that time. [Blood Service](blood-service.html#eligibility) shows where eligibility and deferrals fit in the blood service.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/en/must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Blood Donor Eligibility Flag Must Have

Each flag must have a `status`, the code `blood-donation-eligible`, `blood-donation-deferred-temporary` or `blood-donation-deferred-permanent`, the donor (`subject`) and the start of the eligibility or deferral (`period.start`). A deferral must have one deferral reason in the `workflow-reason` extension (`concept`); an eligibility must not have one.

#### Each Blood Donor Eligibility Flag Must Support

- for a deferral, the reason and what led to it, such as a test result, report or condition (`workflow-reason`);
- the status of the flag (active / inactive / entered-in-error): `active` while the eligibility or deferral is in force;
- the kind of flag (`category`: `admin` for an eligibility, `clinical` for a medical deferral);
- the eligibility or deferral code (`code`) and the donor (`subject`);
- when the eligibility or deferral began and, for a temporary deferral, when it ends (`period`);
- who recorded it (`author`).

### Building the JSON, step by step

The examples below go from an eligibility to a permanent deferral with the result that led to it. Each one validates against this profile. The complete reference instances are the [eligibility](Flag-example-blood-donor-eligible.html), [temporary deferral](Flag-example-blood-donor-temporary-deferral.html) and [permanent deferral](Flag-example-blood-donor-permanent-deferral.html).

#### The smallest Blood Donor Eligibility Flag

The base resource requires `status`, `code` and `subject`, this profile requires `period.start`, and every resource names its profile in `meta.profile`. This eligibility passes validation:

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "status": "active",
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-eligible"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-09-24T09:30:00+05:00" }
}
```

#### A temporary deferral

A deferral also needs its reason. This temporary deferral passes validation:

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "extension": [ {
    "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason",
    "valueCodeableReference": {
      "concept": { "coding": [ {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
        "code": "donrsn-0001-00001"
      } ] }
    }
  } ],
  "status": "active",
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-deferred-temporary"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-11-10T10:00:00+05:00", "end": "2027-05-09T10:00:00+05:00" }
}
```

#### A temporary deferral with its category and author

Add the HL7 flag category and who recorded the deferral. HL7 category codes keep their original system; a medical deferral is `clinical`.

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "extension": [ {
    "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason",
    "valueCodeableReference": {
      "concept": { "coding": [ {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
        "code": "donrsn-0001-00001"
      } ] }
    }
  } ],
  "status": "active",
  "category": [ { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/flag-category", "code": "clinical" } ] } ],
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-deferred-temporary"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "author": { "reference": "PractitionerRole/[id]" },
  "period": { "start": "2026-11-10T10:00:00+05:00", "end": "2027-05-09T10:00:00+05:00" }
}
```

#### A permanent deferral with its evidence

A permanent deferral has no `period.end`. The reason's `reference` points to the confirmed positive result that led to the deferral; it can also point to a DiagnosticReport or a Condition.

```json
{
  "resourceType": "Flag",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag"] },
  "extension": [ {
    "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason",
    "valueCodeableReference": {
      "concept": { "coding": [ {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
        "code": "donrsn-0001-00013"
      } ] },
      "reference": { "reference": "Observation/[id]" }
    }
  } ],
  "status": "active",
  "category": [ { "coding": [ { "system": "http://terminology.hl7.org/CodeSystem/flag-category", "code": "clinical" } ] } ],
  "code": { "coding": [ {
    "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
    "code": "blood-donation-deferred-permanent"
  } ] },
  "subject": { "reference": "Patient/[id]" },
  "author": { "reference": "PractitionerRole/[id]" },
  "period": { "start": "2026-11-13T12:00:00+05:00" }
}
```

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
