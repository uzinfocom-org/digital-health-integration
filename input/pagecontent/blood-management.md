<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>


This page describes how the blood service records the path of donated blood as FHIR resources, from registering a donor to transfusing a recipient. It follows the Blood Management Technical Project (V1.2).

### Overview {#overview}

Almost every step reuses a [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profile as it is. This guide adds one profile, [Blood Donor Category Observation](StructureDefinition-blood-donor-category-observation.html), for the registration data that UZ Core Patient does not hold: whether a person is registered as a donor or a recipient, the donor category, the donation compensation and type, the blood group, the Rh factor and a recipient's diagnosis. The paper forms behind these steps are described in [8.0 Blood Service](forms-volume-08-blood-service.html).

| Step | Technical Project use case | Resource | Profile |
| :--- | :--- | :--- | :--- |
| [Register a donor or recipient](#registering) | U6.1, U5.1 | Patient, Observation | [UZ Core Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html), [Blood Donor Category Observation](StructureDefinition-blood-donor-category-observation.html) |
| [Record eligibility or a deferral](#eligibility) | U6.2 | Flag | UZ Core Flag (next UZ Core release) |
| [Test the donor's blood](#testing) | U7 | Observation, DiagnosticReport, Specimen | [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html), [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html), [UZ Core Specimen](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-specimen.html) |
| [Collect the donation](#collecting) | U4.2, U8.2 | Procedure, BiologicallyDerivedProduct | [UZ Core Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html), [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Process it into components](#processing) | U8.3 | BiologicallyDerivedProduct | [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Keep stock](#stock) | U9 | InventoryItem, InventoryReport | [UZ Core InventoryItem](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-inventoryitem.html), UZ Core InventoryReport (next UZ Core release) |
| [Request and deliver components](#supplying) | U3 | SupplyRequest, SupplyDelivery | [UZ Core SupplyRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-supply-request.html), [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-supply-delivery.html) |
| [Transfuse the recipient](#transfusing) | U5.3, U5.4 | ServiceRequest, BiologicallyDerivedProductDispense, Procedure, AdverseEvent | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html), base [BiologicallyDerivedProductDispense](https://hl7.org/fhir/R5/biologicallyderivedproductdispense.html), [UZ Core Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html), [UZ Core AdverseEvent](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-adverse-event.html) |

<div>{% include blood-management-model-en.svg %}</div><br clear="all"/>

### Registering donors and recipients {#registering}

Donors and recipients are both [UZ Core Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) records; nothing in Patient marks a person as a donor. The registration itself is a [Blood Donor Category Observation](StructureDefinition-blood-donor-category-observation.html) whose `code` says how the person is registered.

| What is recorded | Terminology | Example code or value | Where it is stored |
| :--- | :--- | :--- | :--- |
| Registered as | [Blood patient type](ValueSet-blood-patient-type-vs.html) | `SNOMED CT#105470007` (Blood donor) / `SNOMED CT#116154003` (Patient) | `code` |
| Donor category | [Donor category](ValueSet-donor-category-vs.html) | `donor-category-cs#bdcat-0001-00001` (staff donor) | `category[donorCategory]` |
| Paid or unpaid donation | [Donation compensation](ValueSet-donation-compensation-vs.html) | `donation-compensation-cs#bdcomp-0001-00001` (unpaid) | `valueCodeableConcept` |
| Donation type | [Donation type](ValueSet-donation-type-vs.html) | `donation-type-cs#bdtype-0001-00002` (plasmapheresis) | `component[donationType]` |
| Blood group | [Blood group](https://dhp.uz/fhir/core/en/ValueSet-blood-group-vs.html) | `SNOMED CT#112144000` (group A) | `component[bloodGroup]` |
| Rh factor | [Rh factor](https://dhp.uz/fhir/core/en/ValueSet-blood-rh-vs.html) | `SNOMED CT#165747007` (RhD positive) | `component[rhFactor]` |
| Recipient's diagnosis | ICD-10 | `D64.9` | `component[diagnosis]` |
| Registration date | - | `2026-09-23T10:30:00+05:00` | `effectiveDateTime` |

Examples: [staff donor](Observation-example-blood-donor-category-observation.html), [reserve donor](Observation-example-blood-donor-category-observation-reserve.html), [recipient](Observation-example-blood-recipient-category-observation.html).

### Eligibility and deferrals {#eligibility}

Whether a donor may donate is recorded as a Flag on the donor's Patient: eligible for donation, or a medical deferral. The UZ Core Flag profile for this, with its blood donor eligibility codes, is in the next UZ Core release. A flag's `status` describes the flag itself: an `active` deferral flag means the deferral is in force.

### Testing the donor's blood {#testing}

Each test result before donation (blood group, Rh factor, haemoglobin, HIV, hepatitis B and C, syphilis) is a [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html) on the donor, taken from a [UZ Core Specimen](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-specimen.html). A [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html) groups the results of one examination. A positive infection marker leads to a deferral flag and to disposal of any units already collected.

### Collecting the donation {#collecting}

The collection is a [UZ Core Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html) on the donor. It produces a [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html) for the whole-blood unit, or for the plasma or platelets taken by apheresis.

| What is recorded | Example code or value | Where it is stored |
| :--- | :--- | :--- |
| Unit number | system `https://dhp.uz/fhir/core/sid/prd/uz/blood/unit`, value `BB-DON-2026-00123` | `identifier` |
| Donation number | system `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation`, value `DON-2025-0088231` | `biologicalSourceEvent` |
| Product | `SNOMED CT#88487009` (Human whole blood product) | `productCode` |
| Donor | Patient reference | `collection.source` |
| Collected by | Practitioner or PractitionerRole reference | `collection.collector` |
| Blood group | type `SNOMED CT#63915006`, value from [blood group](https://dhp.uz/fhir/core/en/ValueSet-blood-group-vs.html) | `property[aboGroup]` |
| Rh factor | type `SNOMED CT#115678000`, value from [Rh factor](https://dhp.uz/fhir/core/en/ValueSet-blood-rh-vs.html) | `property[rhdType]` |

Example: [whole blood donation](https://dhp.uz/fhir/core/en/BiologicallyDerivedProduct-example-blood-donation-product.html).

The donation number ([NamingSystem](https://dhp.uz/fhir/core/en/NamingSystem-uzb-blood-donation-number.html)) ties together every product made from one donation. The unit number ([NamingSystem](https://dhp.uz/fhir/core/en/NamingSystem-uzb-blood-unit-number.html)) identifies each bag.

### Processing into components {#processing}

Each component separated from a donation, such as red cells, plasma or cryoprecipitate, is its own BiologicallyDerivedProduct. Its `parent` references the product it was made from, and it keeps the donation number of the original donation. Direct apheresis donations have no parent.

Example: [leukocyte-reduced red cells](https://dhp.uz/fhir/core/en/BiologicallyDerivedProduct-example-blood-component-product.html), made from the whole blood unit above.

### Keeping stock {#stock}

A [UZ Core InventoryItem](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-inventoryitem.html) describes a kind of component the blood service keeps in stock (example: [red cells](https://dhp.uz/fhir/core/en/InventoryItem-example-inventory-item-rbc.html)). Stock counts by component, blood group and site are an InventoryReport; the UZ Core InventoryReport profile is in the next UZ Core release.

### Requesting and delivering components {#supplying}

A hospital requests components with a [UZ Core SupplyRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-supply-request.html). A request for a named patient sets `deliverFor` and is `basedOn` the transfusion order. When the blood service ships the units, a [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-supply-delivery.html) is `basedOn` the request, and each `suppliedItem.itemReference` points at a delivered unit.

Examples: [supply request](https://dhp.uz/fhir/core/en/SupplyRequest-example-supply-request.html), [blood product delivery](https://dhp.uz/fhir/core/en/SupplyDelivery-example-blood-product-supply-delivery.html).

### Transfusing the recipient {#transfusing}

| Step | Resource | Key elements |
| :--- | :--- | :--- |
| Transfusion order | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html) | `subject` is the recipient |
| Unit issued to the recipient | [BiologicallyDerivedProductDispense](https://hl7.org/fhir/R5/biologicallyderivedproductdispense.html) (no UZ Core profile yet) | `product` is the unit, `patient` is the recipient, `basedOn` is the order |
| Transfusion performed | [UZ Core Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html) | `basedOn` is the order, `used` is the unit |
| Reaction to the transfusion | [UZ Core AdverseEvent](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-adverse-event.html) | `suspectEntity.instanceReference` is the unit |

Together with the donation number, these references let a unit be traced from the donor who gave it to the recipient who received it.

### Finding a person's blood service records {#queries}

Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/en/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/en/api-access.html#endpoints); `|` separates a system from its value and must be URL-encoded as `%7C`.

```
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C105470007
GET [base]/Flag?patient=Patient/[id]&status=active
GET [base]/Observation?patient=Patient/[id]
GET [base]/Procedure?patient=Patient/[id]
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7C[donation-number]
GET [base]/BiologicallyDerivedProductDispense?patient=Patient/[id]
GET [base]/AdverseEvent?subject=Patient/[id]
```

BiologicallyDerivedProduct has no search parameter for the donor, so a donor's units are found by the donation number.
