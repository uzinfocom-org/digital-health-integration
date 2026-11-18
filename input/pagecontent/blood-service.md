<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>


This page describes how the blood service records the path of donated blood as FHIR resources, from registering a donor to transfusing a recipient.

### Overview {#overview}

Almost every step reuses a [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profile as it is. This guide adds five profiles. [Blood Service Registration Observation](StructureDefinition-blood-service-registration-observation.html) records the registration data that UZ Core Patient does not hold: whether a person is registered as a donor or a recipient, the registration number, the donor category, the donation compensation and type, and a recipient's diagnosis. [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html) orders the donor's laboratory tests and the processing of a component. [Blood Donor Eligibility Flag](StructureDefinition-blood-donor-eligibility-flag.html) records whether a donor may give blood or is deferred. [Blood Recipient History Observation](StructureDefinition-blood-recipient-history-observation.html) and [Blood Transfusion Assessment Observation](StructureDefinition-blood-transfusion-assessment-observation.html) record the recipient's history and the compatibility tests before a transfusion. The paper forms behind these steps are described in [8.0 Blood Service](forms-volume-08-blood-service.html).

| Step | Resource | Profile |
| :--- | :--- | :--- |
| [Register a donor or recipient](#registering) | Patient, Observation | [UZ Core Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html), [Blood Service Registration Observation](StructureDefinition-blood-service-registration-observation.html) |
| [Interview the donor](#interviewing) | Questionnaire, QuestionnaireResponse | [UZ Core QuestionnaireResponse](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-questionnaire-response.html) |
| [Record eligibility or a deferral](#eligibility) | Flag | [Blood Donor Eligibility Flag](StructureDefinition-blood-donor-eligibility-flag.html), based on [UZ Core Flag](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-flag.html) |
| [Test the donor's blood](#testing) | ServiceRequest, Observation, DiagnosticReport, Specimen | [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html), [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html), [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html), [UZ Core Specimen](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-specimen.html) |
| [Collect the donation](#collecting) | Procedure, BiologicallyDerivedProduct | [UZ Core Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html), [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Process it into components](#processing) | ServiceRequest, BiologicallyDerivedProduct | [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html), [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Keep stock](#stock) | InventoryItem, InventoryReport | [UZ Core InventoryItem](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-inventoryitem.html), [UZ Core InventoryReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-inventoryreport.html) |
| [Request and deliver components](#supplying) | SupplyRequest, SupplyDelivery | [UZ Core SupplyRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-supply-request.html), [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-supply-delivery.html) |
| [Transfuse the recipient](#transfusing) | ServiceRequest, Observation, BiologicallyDerivedProductDispense, Procedure, AdverseEvent | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html), [Blood Recipient History Observation](StructureDefinition-blood-recipient-history-observation.html), [Blood Transfusion Assessment Observation](StructureDefinition-blood-transfusion-assessment-observation.html), [UZ Core BiologicallyDerivedProductDispense](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologicallyderivedproductdispense.html), [UZ Core Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html), [UZ Core AdverseEvent](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-adverse-event.html) |

<div>{% include blood-service-model-en.svg %}</div><br clear="all"/>

### Registering donors and recipients {#registering}

Donors and recipients are both [UZ Core Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) records; nothing in Patient marks a person as a donor. The registration itself is a [Blood Service Registration Observation](StructureDefinition-blood-service-registration-observation.html) whose `code` says how the person is registered. Blood group and Rh factor are not part of the registration: they are recorded as [test results](#testing).

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Registered as | [Blood service registration type](ValueSet-blood-service-registration-type-vs.html) | `blood-service-observation-type-cs#bsobs-0001-00001` (blood donor registration) / `blood-service-observation-type-cs#bsobs-0001-00002` (blood recipient registration) | `code` |
| Registration number | [NamingSystem](NamingSystem-blood-registration-number-system.html) | system `https://dhp.uz/fhir/core/sid/doc/uz/blood-registration`, value `BD-2026-004517` | `identifier[registrationNumber]` |
| Donor category | [Donor category](ValueSet-donor-category-vs.html) | `SNOMED CT#275561000` (staff donor) / `donor-category-cs#bdcat-0001-00002` (reserve donor) | `component[donorCategory]` |
| Paid or unpaid donation | [Donation compensation](ValueSet-donation-compensation-vs.html) | `donation-compensation-cs#bdcomp-0001-00001` (unpaid) | `component[compensation]` |
| Donation type | [Donation type](ValueSet-donation-type-vs.html) | `SNOMED CT#20720000` (plasmapheresis) | `component[donationType]` |
| Recipient's diagnosis | ICD-10 | `D64.9` | `component[diagnosis]` |
| Registration date | - | `2026-09-23T10:30:00+05:00` | `effectiveDateTime` |

Examples: [staff donor](Observation-example-blood-donor-registration-staff.html), [reserve donor](Observation-example-blood-donor-registration-reserve.html), [recipient](Observation-example-blood-recipient-registration.html).

### Interviewing the donor {#interviewing}

Before each donation the donor answers the [donor questionnaire](forms.html?form=donor-questionnaire), recorded as a [UZ Core QuestionnaireResponse](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-questionnaire-response.html) on the donor's Patient ([example](QuestionnaireResponse-example-donor-questionnaire-response.html)). No answer defers a donor by itself: a clinician reviews the answers and records any deferral as a [Flag](#eligibility).

The table lists the answer that can lead to a deferral and the [reason code](ValueSet-donor-deferral-reason-vs.html) that goes with it. Each question's `item.code` names what it asks about, from LOINC or SNOMED CT where a matching code exists; the reason code is not on the question.

| Question | Deferral answer | Reason code |
| :--- | :--- | :--- |
| When was your last blood donation? (`last-donation`) | A recent date | `donrsn-0001-00006` Date of most recent blood donation |
| Are you feeling well today? (`feeling-well`) | No | `donrsn-0001-00026` Feeling unwell on the day of visit |
| Do you have any chronic diseases (e.g. epilepsy, diabetes, cancer, or other long-term conditions)? (`chronic-disease`) | Yes | `donrsn-0001-00009` Chronic disease |
| Are you currently receiving regular medical treatment? (`regular-treatment`) | Yes | `donrsn-0001-00005` Medication use or ongoing treatment (last week) |
| Do you regularly undergo any procedures or take any tablets/medicines? (`medication-procedures`) | Yes | `donrsn-0001-00005` Medication use or ongoing treatment (last week) |
| Have you ever had hepatitis or brucellosis? (`hepatitis-brucellosis`) | Yes | `donrsn-0001-00018` History of hepatitis or brucellosis |
| Have you undergone any dental procedures recently (during the last 2 weeks)? (`dental-procedure`) | Yes | `donrsn-0001-00010` Dental procedure (last 2 weeks) |
| Have you had malaria during the last 3 weeks? (`malaria-illness`) | Yes | `donrsn-0001-00011` Travel to a malaria-risk area or malaria-related condition |
| Have you been vaccinated during the last month? (`vaccination`) | Yes | `donrsn-0001-00019` Vaccination |
| During the last 3 months, have you experienced night sweats, unexplained weight loss, chills, diarrhoea, or enlarged lymph nodes? (`recent-symptoms`) | Yes | `donrsn-0001-00020` Night sweats, weight loss, chills, diarrhea or enlarged lymph nodes in the last 3 months |
| Have you been in contact with a person infected with hepatitis or HIV/AIDS? (`infected-contact`) | Yes | `donrsn-0001-00021` Contact with a person infected with HIV or hepatitis |
| Have you had casual unprotected sexual contact during the last 6 months? (`unprotected-sex`) | Yes | `donrsn-0001-00022` Casual unprotected sexual contact (last 6 months) |
| Have you undergone surgery, a medical intervention, or an endoscopic procedure during the last 6 months? (`surgery`) | Yes | `donrsn-0001-00012` Surgery or medical intervention (last 6 months) |
| Have you ever received a blood transfusion or blood components? (`blood-transfusion`) | Yes | `donrsn-0001-00003` Blood or blood component transfusion |
| Have you been treated for sexually transmitted infections such as syphilis, gonorrhoea, chlamydia, genital ulcers, or herpes? (`sti-treatment`) | Yes | `donrsn-0001-00023` Treatment for sexually transmitted infections (last 6 months) |
| Have you used shared needles, syringes, or scarifiers? (`shared-needles`) | Yes | `donrsn-0001-00024` Sharing needles or syringes (last 6 months) |
| Have you had a tattoo, piercing, or acupuncture during the last 6 months? (`tattoo-piercing`) | Yes | `donrsn-0001-00001` Tattoo, piercing or acupuncture |
| Have you been in places of detention or imprisonment? (`incarceration`) | Yes | `donrsn-0001-00025` Incarceration |
| Do you consent to testing your blood for HIV/AIDS, hepatitis, and syphilis? (`testing-consent`) | No | `donrsn-0001-00027` Refusal to consent to blood testing |
| Have you recently had influenza, an acute respiratory viral infection (ARVI), or a sore throat? (`flu-arvi`) | Yes | `donrsn-0001-00004` Flu, ARVI or tonsillitis |
| During the last 3 weeks, have you had a fever or visited malaria-risk areas? (`malaria-exposure`) | Yes | `donrsn-0001-00011` Travel to a malaria-risk area or malaria-related condition |
| Are you pregnant? (`pregnancy`) | Yes | `donrsn-0001-00007` Pregnancy |
| Have you given birth or had a miscarriage in the last 6 months? (`postpartum-miscarriage`) | Yes | `donrsn-0001-00017` Postpartum period or period after miscarriage (last 6 months) |
| Are you currently breastfeeding? (`breastfeeding`) | Yes | `donrsn-0001-00008` Breastfeeding |
| I confirm that I have not consumed alcohol in the last 48 hours and have not taken aspirin or other analgesics in the last 72 hours. (`alcohol-medication-declaration`) | No | - |
| Do you confirm that you understood these questions and the reason for asking them, and that you answered honestly? (`declaration`) | No | `donrsn-0001-00028` Declaration not confirmed |

A No to `testing-consent` or `declaration` is an administrative stop, not a medical deferral: the donation does not go ahead that day, and no deferral Flag is raised. A No to `alcohol-medication-declaration` has no reason code of its own; the clinician records the reason that applies.

Only `last-donation` captures a date. The other questions do not ask when the event happened, so a deferral Flag starts on the interview date and the clinician sets its end; the answers do not determine it.

`gender` decides whether the pregnancy questions are asked. `last-doctor-visit`, `last-doctor-visit-reason`, `advised-not-to-donate`, `hospitalization`, `travel-abroad` and `additional-health` give context for the clinician's review, and `regular-donation-preference` and `contact-consent` record the donor's preferences. None of them lead to a deferral.

Every question is required except `last-donation`, which a first-time donor leaves empty, and the free-text `last-doctor-visit`, `last-doctor-visit-reason` and `additional-health`. The pregnancy questions are required only while they are shown.

Example: after reviewing the [example response](QuestionnaireResponse-example-donor-questionnaire-response.html), where the donor reports a recent tattoo, the clinician records a [temporary deferral Flag](Flag-example-donor-questionnaire-deferral.html) whose `workflow-reason` extension carries reason `donrsn-0001-00001`.

### Eligibility and deferrals {#eligibility}

Whether a donor may donate is recorded as a [Blood Donor Eligibility Flag](StructureDefinition-blood-donor-eligibility-flag.html) on the donor's Patient, based on [UZ Core Flag](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-flag.html). Its `code` is `blood-donation-eligible`, `blood-donation-deferred-temporary` or `blood-donation-deferred-permanent`. A flag's `status` describes the flag itself: an `active` flag means the eligibility or deferral is in force. When a deferral is recorded, the donor's active eligibility flag is set to `inactive` with `period.end` at that time.

A deferral's [workflow-reason](https://hl7.org/fhir/extensions/StructureDefinition-workflow-reason.html) extension carries the [deferral reason](ValueSet-donor-deferral-reason-vs.html) and can point to what led to it, such as a positive test result. A donor deferred for two reasons has two flags. `period.start` is when the deferral began. A temporary deferral has a `period.end`, the date from which the donor may give blood again; a permanent deferral has no `period.end`. A temporary flag stays `active` until it is set to `inactive`, so read `period.end` together with `status` to tell whether a deferral still applies.

Examples: [eligibility](Flag-example-blood-donor-eligible.html), [temporary deferral](Flag-example-blood-donor-temporary-deferral.html), [permanent deferral](Flag-example-blood-donor-permanent-deferral.html), whose reason points to the [confirmed positive HIV result](Observation-example-blood-donor-hiv-result.html).

### Testing the donor's blood {#testing}

Each test result before donation (blood group, Rh factor, haemoglobin, HIV, hepatitis B and C, syphilis) is a [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html) on the donor, taken from a [UZ Core Specimen](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-specimen.html). A [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html) groups the results of one examination. A positive infection marker leads to a deferral flag and to disposal of any units already collected.

The donor physician creates a [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html) for each test or panel, with the service in `code.concept`. Requests for the same donation share its number in `requisition`; `category` identifies the receiving laboratory. Results and reports reference their requests through `basedOn`.

### Collecting the donation {#collecting}

The collection is a [UZ Core Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html) on the donor. It produces a [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html) for the whole-blood unit, or for the plasma or platelets taken by apheresis.

| Information to record | Example code | Stored in |
| :--- | :--- | :--- |
| Unit number | system `https://dhp.uz/fhir/core/sid/prd/uz/blood/unit`, value `BB-DON-2026-00123` | `identifier` |
| Donation number | system `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation`, value `DON-2025-0088231` | `biologicalSourceEvent` |
| Product | `SNOMED CT#88487009` (Human whole blood product) | `productCode` |
| Donor | Patient reference | `collection.source` |
| Collected by | Practitioner or PractitionerRole reference | `collection.collector` |
| Blood group | type `SNOMED CT#63915006`, value from [blood group](https://dhp.uz/fhir/core/en/ValueSet-blood-group-vs.html) | `property[aboGroup]` |
| Rh factor | type `SNOMED CT#115678000`, value from [Rh factor](https://dhp.uz/fhir/core/en/ValueSet-blood-rh-vs.html) | `property[rhdType]` |
| Volume | type `SNOMED CT#118565006`, value in mL | `property[volume]` |
| Haematocrit | type `LOINC#4544-3`, value in % | `property[hematocrit]` |

Example: [whole blood donation](https://dhp.uz/fhir/core/en/BiologicallyDerivedProduct-example-blood-donation-product.html).

A reaction during or after the donation, such as fainting, goes in the collection Procedure's `complication`, coded from [procedure complication](https://dhp.uz/fhir/core/en/ValueSet-procedure-complication-vs.html) (example: [donation with fainting](https://dhp.uz/fhir/core/en/Procedure-example-blood-donation-procedure.html)).

The donation number ([NamingSystem](https://dhp.uz/fhir/core/en/NamingSystem-uzb-blood-donation-number.html)) ties together every product made from one donation. The unit number ([NamingSystem](https://dhp.uz/fhir/core/en/NamingSystem-uzb-blood-unit-number.html)) identifies each bag.

### Processing into components {#processing}

Each component separated from a donation, such as red cells, plasma or cryoprecipitate, is its own BiologicallyDerivedProduct. Its `parent` references the product it was made from, and it keeps the donation number of the original donation. Direct apheresis donations have no parent.

Secondary processing of a component, such as washing, irradiation, freezing or thawing, is requested with a [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html) whose `focus` is the component.

Example: [leukocyte-reduced red cells](https://dhp.uz/fhir/core/en/BiologicallyDerivedProduct-example-blood-component-product.html), made from the whole blood unit above.

### Keeping stock {#stock}

A [UZ Core InventoryItem](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-inventoryitem.html) describes a kind of component the blood service keeps in stock (example: [red cells](https://dhp.uz/fhir/core/en/InventoryItem-example-inventory-item-rbc.html)). Stock counts and movements are a [UZ Core InventoryReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-inventoryreport.html): `countType` says whether it is a stock count (`snapshot`) or a change (`difference`), `operationType` and `operationTypeReason` say what happened, such as a receipt or a write-off, and each `inventoryListing` counts the items at one `location` with one `itemStatus` (example: [stock receipt](https://dhp.uz/fhir/core/en/InventoryReport-example-inventory-report-medication-receipt.html)).

### Requesting and delivering components {#supplying}

A hospital requests components with a [UZ Core SupplyRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-supply-request.html). A request for a named patient sets `deliverFor` and is `basedOn` the transfusion order. When the blood service ships the units, a [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-supply-delivery.html) is `basedOn` the request, and each `suppliedItem.itemReference` points at a delivered unit. Requests placed together, such as red cells and plasma for one patient, share a [group identifier](https://dhp.uz/fhir/core/en/StructureDefinition-supplyrequest-group-identifier.html), and the [deliver from](https://dhp.uz/fhir/core/en/StructureDefinition-supplydelivery-deliver-from.html) extension on a delivery names the site the units were sent from.

Examples: [supply request](https://dhp.uz/fhir/core/en/SupplyRequest-example-supply-request.html), grouped [red cells](https://dhp.uz/fhir/core/en/SupplyRequest-example-supply-request-group-red-cells.html) and [plasma](https://dhp.uz/fhir/core/en/SupplyRequest-example-supply-request-group-plasma.html) requests, [blood product delivery](https://dhp.uz/fhir/core/en/SupplyDelivery-example-blood-product-supply-delivery.html).

### Transfusing the recipient {#transfusing}

| Step | Resource | Key elements |
| :--- | :--- | :--- |
| Transfusion order | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html) | `subject` is the recipient |
| Recipient's transfusion and obstetric history | [Blood Recipient History Observation](StructureDefinition-blood-recipient-history-observation.html) | `code` says which history, `subject` is the recipient |
| Compatibility tests with a unit | [Blood Transfusion Assessment Observation](StructureDefinition-blood-transfusion-assessment-observation.html) | `focus` is the unit, `derivedFrom` is the history and the ABO group |
| Unit issued to the recipient | [UZ Core BiologicallyDerivedProductDispense](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologicallyderivedproductdispense.html) | `product` is the unit, `patient` is the recipient, `basedOn` is the order, `status` is `issued` or `returned`, `whenHandedOver` is when it left the blood bank |
| Transfusion performed | [UZ Core Procedure](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-procedure.html) | `basedOn` is the order, `used` is the unit, `supportingInfo` is the dispense, `complication` is a reaction from [transfusion complication](https://dhp.uz/fhir/core/en/ValueSet-blood-transfusion-complication-vs.html) |
| Reaction to the transfusion | [UZ Core AdverseEvent](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-adverse-event.html) | `suspectEntity.instanceReference` is the unit |

The compatibility results go in the Blood Transfusion Assessment Observation, not in the dispense's `matchStatus`. A reaction is recorded in the transfusion Procedure's `complication`; an AdverseEvent is added when the reaction is reported for investigation. Examples: [unit issued](https://dhp.uz/fhir/core/en/BiologicallyDerivedProductDispense-example-bdp-dispense-issued.html), [unit returned](https://dhp.uz/fhir/core/en/BiologicallyDerivedProductDispense-example-bdp-dispense-returned.html).

Together with the donation number, these references let a unit be traced from the donor who gave it to the recipient who received it.

### Finding a person's blood service records {#queries}

Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/en/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/en/api-access.html#endpoints); `|` separates a system from its value and must be URL-encoded as `%7C`.

```
GET [base]/Observation?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs%7Cbsobs-0001-00001
GET [base]/Flag?patient=Patient/[id]&status=active
GET [base]/Flag?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs%7Cblood-donation-eligible
GET [base]/Observation?patient=Patient/[id]
GET [base]/ServiceRequest?patient=Patient/[id]&code-concept=http://loinc.org%7C1975-2
GET [base]/Procedure?patient=Patient/[id]
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7C[donation-number]
GET [base]/BiologicallyDerivedProductDispense?patient=Patient/[id]
GET [base]/AdverseEvent?subject=Patient/[id]
```

BiologicallyDerivedProduct has no search parameter for the donor, so a donor's units are found by the donation number.
