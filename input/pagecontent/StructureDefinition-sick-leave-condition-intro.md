Sick Leave Condition is a diagnosis of a sick leave: the preliminary or the final diagnosis the DHP sick leave service (API v3) sends in `diagnosis`. Each is a separate Condition that the [Sick Leave CarePlan](StructureDefinition-sick-leave-careplan.html) references from `addresses[diagnosis]`; the verification status tells them apart. See [Sick leave](sick-leave.html#recording-the-diagnoses-condition) for the mapping.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/must-support.html)). This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Sick Leave Condition Must Have

- the clinical status: `active` while the sick leave is open, `resolved` once it is closed;
- the verification status: `provisional` for the preliminary diagnosis, `confirmed` for the final one;
- the ICD-10 code in `code`;
- the patient in `subject`.

#### Each Sick Leave Condition Must Support

- the name of the diagnosis in `code.text` (`preliminaryDisplay` or `finalDisplay` of the API);
- the onset and recording dates in `onset[x]` and `recordedDate`, inherited from UZ Core Condition.

### Building the JSON, step by step

Copy one of the examples and adapt it - every value shown validates against this profile.

#### The preliminary diagnosis

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-condition"
    ]
  },
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "provisional"
      }
    ]
  },
  "code": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/sid/icd-10",
        "code": "J06.9"
      }
    ],
    "text": "Acute upper respiratory infection, unspecified"
  },
  "subject": {
    "reference": "Patient/sick-leave-patient"
  }
}
```

`code` is bound `required` to [ICD10VS](ValueSet-icd-10-vs.html), `verificationStatus` to [SickLeaveDiagnosisStatusVS](ValueSet-sick-leave-diagnosis-status-vs.html).

#### The final diagnosis

When the diagnosis is refined, send the final diagnosis as a second Condition and reference both from the CarePlan. When the final diagnosis is the same as the preliminary one, a single `confirmed` Condition is enough.

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-condition"
    ]
  },
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "resolved"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed"
      }
    ]
  },
  "code": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/sid/icd-10",
        "code": "J18.9"
      }
    ],
    "text": "Pneumonia, unspecified"
  },
  "subject": {
    "reference": "Patient/sick-leave-patient"
  }
}
```

Reference instances: [preliminary](Condition-sick-leave-extended-diagnosis-preliminary.html) and [final](Condition-sick-leave-extended-diagnosis-final.html) diagnosis of an extended sick leave, [family care diagnosis](Condition-sick-leave-family-care-diagnosis.html).
