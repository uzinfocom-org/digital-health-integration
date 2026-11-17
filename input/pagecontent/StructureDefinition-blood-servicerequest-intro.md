Blood ServiceRequest is a request from the blood service for one donor laboratory test or panel, or for one secondary processing operation on a blood component (washing, irradiation, freezing or thawing). It builds on [UZ Core ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html) and records the request only, not what was done. A laboratory request names the donor [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html), the donation [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) and the donor [Specimens](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-specimen.html) to test; a processing request is made by the blood service for its own stock, so it names the blood service [Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html) and points to the component's [BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html). Each test, panel or operation is a separate request, and the requests for one donation share its donation number. [Blood Service](blood-service.html) shows where these requests fit in the blood service, and [Blood service forms](forms-volume-08-blood-service.html) describes the source forms.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/en/must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Blood ServiceRequest Must Have

Each request must have a `status`, the intent `order`, the requested service (`code`) with exactly one coding from the [laboratory tests and processing operations](ValueSet-blood-lab-codes-vs.html), and a `subject`: the donor for a laboratory test, or the blood service location for component processing. When an order number or a donation number is sent, it must have a `value`.

#### Each Blood ServiceRequest Must Support

- the order number (`identifier`) and the donation number that links the requests of one donation (`requisition`), each with its fixed `system`;
- the status of the request (draft / active / on-hold / revoked / completed / entered-in-error / unknown);
- the receiving laboratory (`category`), such as haematology, biochemistry or immunology;
- the urgency (`priority`: routine / urgent / asap / stat) and whether the service must not be done (`doNotPerform`);
- the requested test, panel or processing operation (`code`);
- the donor or the blood service location (`subject`) and the donation visit (`encounter`);
- when the service should happen (`occurrence[x]`) and when the request was issued (`authoredOn`);
- who issued it (`requester`), who should perform it (`performer`) and where (`location`);
- why the service is needed (`reason`), how it is paid for (the payment type extension) and the insurance coverage (`insurance`);
- the donor specimens to test (`specimen`) and the blood component to process (`focus`);
- other information that supports the request (`supportingInfo`), comments (`note`) and instructions for the donor (`patientInstruction`).

### Building the JSON, step by step

The examples below go from the smallest valid request to a component processing request. Each one validates against this profile. The complete reference instances are the laboratory requests of one donation - [bilirubin](ServiceRequest-example-blood-laboratory-order.html), [ALT](ServiceRequest-example-blood-alt-laboratory-order.html), [ABO group](ServiceRequest-example-blood-immunology-laboratory-order.html), [Rh](ServiceRequest-example-blood-rh-laboratory-order.html), [hepatitis C](ServiceRequest-example-blood-transfusion-infections-laboratory-order.html), [syphilis](ServiceRequest-example-blood-syphilis-laboratory-order.html), [HBsAg](ServiceRequest-example-blood-hbsag-laboratory-order.html), [HIV](ServiceRequest-example-blood-hiv-laboratory-order.html), [Brucella](ServiceRequest-example-blood-bacteriology-laboratory-order.html), [malaria](ServiceRequest-example-blood-malaria-laboratory-order.html) and [complete blood count](ServiceRequest-example-blood-hematology-laboratory-order.html) - and the [washing](ServiceRequest-example-blood-component-processing-order.html), [irradiation](ServiceRequest-example-blood-component-irradiation-order.html), [freezing](ServiceRequest-example-blood-component-freezing-order.html) and [thawing](ServiceRequest-example-blood-component-thawing-order.html) requests.

#### The smallest Blood ServiceRequest

The base resource requires `status`, `intent` and `subject`, this profile requires `code`, and every resource names its profile in `meta.profile`. This much passes validation:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "status": "active",
  "intent": "order",
  "code": {
    "concept": { "coding": [ { "system": "http://loinc.org", "code": "1975-2" } ] }
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

The profile fixes `intent` to `order`. `code` is a `CodeableReference`, so the coding sits under `concept`, and it carries one code from the [laboratory tests and processing operations](ValueSet-blood-lab-codes-vs.html). The next examples add who, where and why.

#### A donor laboratory test

A donor physician orders a total bilirubin test from the biochemistry laboratory on the donor's whole blood sample during the donation visit:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request",
      "value": "XON-SR-2026-0001",
      "assigner": { "reference": "Organization/xonobod-medical-association" }
    }
  ],
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-categories-cs",
          "code": "lab-category-04",
          "display": "Biokimyo"
        }
      ]
    }
  ],
  "priority": "routine",
  "code": {
    "concept": { "coding": [ { "system": "http://loinc.org", "code": "1975-2" } ] }
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-blood-donation-encounter" },
  "authoredOn": "2026-11-10T09:05:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "specimen": [ { "reference": "Specimen/example-blood-whole-blood-specimen" } ]
}
```

Create one request for each test or panel: the ALT test on the same sample is a [second request](ServiceRequest-example-blood-alt-laboratory-order.html) with its own order number and the same `requisition`. `requisition` carries the donation number under the fixed UZ Core donation system, so every request of one donation can be found together. `identifier` uses the fixed [blood service request number](NamingSystem-blood-service-request-number-system.html) system, with `assigner` naming the organization that issued the number. `category` names the receiving laboratory with a code from the national laboratory sections, which have Uzbek displays, so the resource sets `language` to `uz`. The laboratory codes are candidates until the assay and specimen are confirmed. When the laboratory receives several of the donor's tubes, list each in `specimen`.

#### A component processing request

The blood service asks for a red cell component from its stock to be irradiated:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "priority": "urgent",
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-component-processing-cs",
          "code": "bcproc-0001-00002",
          "display": "Nurlantirish"
        }
      ]
    }
  },
  "subject": { "reference": "Location/example-blood-service-laboratory" },
  "authoredOn": "2026-11-10T10:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "focus": [ { "reference": "BiologicallyDerivedProduct/example-blood-component-product" } ]
}
```

Create one request per operation and point `focus` to the component's [BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html). There is no patient, so `subject` is the blood service [Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html), and `category` is left out. Washing, freezing and thawing use SNOMED CT `58059003`, `71643009` and `35382002`; irradiation has no SNOMED CT procedure and uses the local [processing operation](CodeSystem-blood-component-processing-cs.html) code. Keep the request `active` until the operation is confirmed, then set it to `completed`.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
