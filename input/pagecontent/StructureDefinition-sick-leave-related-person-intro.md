Sick Leave RelatedPerson is the person related to the patient that a sick leave involves: a legal representative, a guardian, a parent, a child, another family member, or another person the document needs. Whether it is present depends on the document type and the reason for the incapacity. The [Sick Leave CarePlan](StructureDefinition-sick-leave-careplan.html) references it from `extension[relatedPerson]`. See [Sick leave](sick-leave.html#family-care-the-person-cared-for-relatedperson) for the mapping.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/must-support.html)). This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Sick Leave RelatedPerson Must Have

- the patient in `patient`;
- the full name in `name`.

#### Each Sick Leave RelatedPerson Must Support

- the gender in `gender`, with `extension[otherGender]` when it is `other`;
- the birth date in `birthDate`.

### Building the JSON

Copy the example and adapt it - every value shown validates against this profile.

```json
{
  "resourceType": "RelatedPerson",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-related-person"
    ]
  },
  "patient": {
    "reference": "Patient/sick-leave-patient"
  },
  "name": [
    {
      "use": "official",
      "family": "Patient",
      "given": [
        "Mother"
      ]
    }
  ],
  "gender": "female",
  "birthDate": "1962-03-15"
}
```

Reference instance: [the patient's mother](RelatedPerson-sick-leave-related-person-mother.html).
