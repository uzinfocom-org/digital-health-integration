### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/en/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/en/api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a flag by server id, and its earlier versions**

```
GET [base]/Flag/[id]
GET [base]/Flag/[id]/_history
```

**Search**

```
GET [base]/Flag?patient=Patient/[id]&_profile=https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag&status=active&date=ge2026-11-17
GET [base]/Flag?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs|blood-donation-deferred-temporary,https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs|blood-donation-deferred-permanent
GET [base]/Flag?patient=Patient/[id]&_profile=https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag
GET [base]/Flag?encounter=Encounter/[id]
GET [base]/Flag?author=PractitionerRole/[id]&date=ge2026-11-01
```

The first query finds the donor's eligibility and deferrals in force on 2026-11-17. `date` searches `period`, and a flag without `period.end` counts as ongoing, so it returns an eligibility, permanent deferrals and the temporary ones that have not ended before that day. A temporary flag stays `active` after its `period.end` until someone sets it to `inactive`, so `status=active` alone would also return expired deferrals. The second query uses the UZ Core [`code`](https://dhp.uz/fhir/core/en/SearchParameter-uz-core-flag-code.html) search parameter to return only the donor's deferrals.

Flag has no search parameter for the reason; read the reason from the returned flags.

**Create a flag**

```
POST [base]/Flag
{
  "resourceType": "Flag",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag" ] },
  "extension": [ { "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason", "valueCodeableReference": { ... } } ],
  "status": "active",
  "code": { "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
                          "code": "blood-donation-deferred-temporary" } ] },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-11-10T10:00:00+05:00", "end": "2027-05-09T10:00:00+05:00" },
  ...
}
```

**End a deferral early** (set `status` to `inactive` and `period.end` to the date it ended)

```
PUT [base]/Flag/[id]
If-Match: W/"2"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Flag",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag" ] },
  "status": "inactive",
  ...
}
```

Flag is listed in the [CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html#Flag1-42); see it for the full list of supported search parameters.

### Related

- [UZ Core Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) &middot; [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html)
- [Blood Service](blood-service.html) &middot; [Deferral reasons](ValueSet-donor-deferral-reason-vs.html) &middot; [workflow-reason](https://hl7.org/fhir/extensions/StructureDefinition-workflow-reason.html)
- [Must Support](https://dhp.uz/fhir/core/en/must-support.html) &middot; [General guidance](https://dhp.uz/fhir/core/en/general-guidance.html)
