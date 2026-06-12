The Ministry of Health standardises Uzbekistan's primary medical documentation through Order No. 399 and its annexes - 399 numbered forms (with sub-forms such as 009-1 or 015-1..015-26, around 480 documents in total). This page is the map of those forms for implementers: what exists, how it groups, which parts matter for FHIR integration, and the recurring patterns that let you map many forms by recognising a few shapes.

The forms organise along two axes. The Ministry groups them by service line into 11 volumes - that tells you *where a form lives*. Cutting across the volumes are a handful of document archetypes and patient journeys - those tell you *how a form maps to FHIR*. The volumes are the index; the archetypes are the leverage.

You do not need to model 399 forms. Most clinical integration value sits in five volumes (1, 2, 3, 6, 8). Start there, lean on the archetype patterns, and treat the public-health and accounting volumes as out of initial scope.

### The 11 volumes

<div>{% include forms-volumes-map.svg %}</div><br clear="all"/>

| Volume | Domain | Form range | Forms | Integration value |
|--------|--------|-----------|------:|-------------------|
| [1.0 Inpatient hospital](forms-volume-01-inpatient.html) | Stationary episode-of-care records, surgery, obstetrics, deaths | 001-010, 096-097, 103, 106 | 14 | Core |
| [2.0 Ambulatory-polyclinic](forms-volume-02-ambulatory.html) | Outpatient visits, dispensary observation, certificates, notifications, immunisation | 023-111 | 23 | Core |
| [3.0 Diagnostics & laboratory](forms-volume-03-diagnostics-laboratory.html) | Imaging, functional diagnostics, the full laboratory catalogue | 011-130 | 93 | Core |
| [4.0 Pharmacy & supply](forms-volume-04-pharmacy.html) | Medicine stock, requisitions, accounting | 131-141 | 11 | Operational |
| [5.0 Emergency & air ambulance](forms-volume-05-emergency.html) | EMS calls, observation, air ambulance | 142-151 (+059-3) | 11 | Operational |
| [6.0 Genetics & screening](forms-volume-06-genetics-screening.html) | Prenatal diagnosis, trimester screening, neonatal screening | 152-174 | 23 | Core |
| [7.0 HIV/AIDS service](forms-volume-07-hiv.html) | Anonymous testing, HIV labs, dispensary follow-up | 175-193 | 19 | Specialised clinical |
| [8.0 Blood service](forms-volume-08-blood-service.html) | Donors, component production, product issue | 194-222 | 29 | Core |
| [9.0 Pathological anatomy](forms-volume-09-pathology.html) | Autopsy, surgical pathology, histology | 223-228 | 6 | Specialised clinical |
| [10.0 Forensic medicine](forms-volume-10-forensic.html) | Forensic examination and laboratories | 229-245 | 17 | Out of scope (legal domain) |
| [11.0 Sanitary-epidemiology](forms-volume-11-sanitary-epidemiology.html) | Public-health surveillance, environmental and microbiology labs | 246-399 (+045-x, 060) | 156 | Mostly out of scope |

### Scope for integration

Not every form is a FHIR integration target. The volumes sort into three tiers:

- Core clinical (volumes 1, 2, 3, 6, 8, and the clinical parts of 7 and 9). Patient-level clinical data that maps to [UZ Core](https://dhp.uz/fhir/core/en/index.html) profiles and FHIR documents. This is where to invest. The form already modelled in this IG ([011](form-011-mapping.html)) sits here, and the hospital discharge card (066) is next.
- Operational (volumes 4, 5, parts of 10). Workflow and logistics. Some clinical content (the emergency observation sheet), much of it accounting and dispatch.
- Public-health and registry (most of volume 11, parts of 10). Aggregate surveillance registers, inspection acts and environmental measurements. These are reporting artifacts rather than per-patient clinical documents, and most likely belong to a separate public-health profile set, not the core integration IG.

A form's volume tells you which service administers it, not its clinical weight or its FHIR shape. Form 066, for example, is filed in volume 3 as a statistical card, yet this IG correctly models it as a hospital-discharge `Composition`. Use the volume as an index, but let the archetype below drive the profile.

### Document archetypes

Uzbek form names are systematic: the suffix tells you what kind of document it is, and therefore its FHIR shape. Learn these once and you can map most of the catalogue by recognising the word at the end of the title. The same archetype recurs in every volume, so a mapping you build for one `tahlili` (lab analysis) form applies to the dozens of others scattered across volumes 3, 6, 7, 8 and 11.

| Suffix in the form name | Document kind | FHIR pattern |
|-------------------------|---------------|--------------|
| `...jurnali`, `...hisobga olish`, `...ro'yxatga olish` | Registration journal / ledger | A query or `List` over events. A reporting view, not a single document - do not model it as one `Composition`. |
| `...karta`, `...kartasi` | Longitudinal card | A patient-keyed record over time: a `Composition` document or `CarePlan`, plus the discrete resources it summarises. |
| `...bayoni`, `...bayonnomasi`, `...protokoli` | Procedure / examination report | `DiagnosticReport` + `Observation`, or `Procedure`. |
| `...tahlili`, `...taxlili` | Laboratory analysis result | `DiagnosticReport` + `Observation` (one per result row) + `Specimen`. |
| `...ma'lumotnoma`, `...ma'lumotnomasi` | Issued certificate | A finalised, signed `Composition` (or `DocumentReference`). |
| `...yo'llanma`, `...almashish varaqasi` | Referral / exchange sheet | `ServiceRequest`. |
| `...xulosa`, `...xulosasi` | Expert conclusion | `Composition`, or an interpretive `Observation`. |
| `...varaqasi`, `...varog'i` | Single-event sheet | `Observation` / `Procedure` inside an `Encounter`. |
| `...bildirishnoma`, `...xabarnoma` | Mandatory notification | `Communication`, or a notifiable-disease `Composition`. |
| `...dalolatnoma` | Inspection / sampling act | Public-health `Composition` / `Observation` (volume 11). |
| `...epikriz` | Episode summary | Discharge or transfer-summary `Composition`. |

The practical rule: a `jurnal` is something you query, a `karta` is something you keep, a `bayoni` or `tahlili` is a result you report, a `ma'lumotnoma` is a document you sign, and a `yo'llanma` is an order you place.

### Journeys that cross volumes

The volumes are administrative silos, but real episodes move between them. Modelling a form in isolation misses the references that tie an episode together. These are the main threads (each volume page expands its own part).

Pregnancy, birth and the newborn span the polyclinic (2), the screening centre (6) and the maternity hospital (1):

<div>{% include forms-journey-maternity.svg %}</div><br clear="all"/>

An inpatient surgical episode stays mostly in volume 1 but pulls in diagnostics (3) and the blood bank (8):

<div>{% include forms-journey-inpatient.svg %}</div><br clear="all"/>

A death branches into either clinical pathology (9) or the forensic bureau (10), both ending in a laboratory step:

<div>{% include forms-journey-death.svg %}</div><br clear="all"/>

### How this relates to the rest of the IG

Each form is identified in FHIR by a category code and, where it has an official number, an external identifier - see [Document categories and identifiers](document-categories.html). Category codes come from [DocumentCategoryCS](CodeSystem-document-category-cs.html), whose codes follow the `form-NNN` pattern of Order 399.

When a form is modelled in full, it gets a mapping page that walks its fields to FHIR paths (for example [Form 011](form-011-mapping.html)). The volume pages linked above place every form in context and point to those mapping pages as they are produced.
