The Ministry of Health standardises Uzbekistan's primary medical documentation through Order No. 399 and its annexes - 399 numbered forms (with sub-forms such as 009-1 or 015-1..015-26, around 480 documents in total). This page is the map of those forms: what exists, how it groups, and the recurring document patterns that let you recognise many forms by a few shapes.

The forms organise along two axes. The Ministry groups them by service line into 11 volumes - that tells you *where a form lives*. Cutting across the volumes are a handful of document types and patient journeys - those tell you *what kind of document a form is*.

### The 11 volumes

<div>{% include forms-volumes-map.svg %}</div><br clear="all"/>

| Volume | Domain | Form range | Forms |
|--------|--------|-----------|------:|
| [1.0 Inpatient hospital](forms-volume-01-inpatient.html) | Stationary episode-of-care records, surgery, obstetrics, deaths | 001-010, 096-097, 103, 106 | 14 |
| [2.0 Ambulatory-polyclinic](forms-volume-02-ambulatory.html) | Outpatient visits, dispensary observation, certificates, notifications, immunisation | 023-111 | 23 |
| [3.0 Diagnostics & laboratory](forms-volume-03-diagnostics-laboratory.html) | Imaging, functional diagnostics, the full laboratory catalogue | 011-130 | 93 |
| [4.0 Pharmacy & supply](forms-volume-04-pharmacy.html) | Medicine stock, requisitions, accounting | 131-141 | 11 |
| [5.0 Emergency & air ambulance](forms-volume-05-emergency.html) | EMS calls, observation, air ambulance | 142-151 (+059-3) | 11 |
| [6.0 Genetics & screening](forms-volume-06-genetics-screening.html) | Prenatal diagnosis, trimester screening, neonatal screening | 152-174 | 23 |
| [7.0 HIV/AIDS service](forms-volume-07-hiv.html) | Anonymous testing, HIV labs, dispensary follow-up | 175-193 | 19 |
| [8.0 Blood service](forms-volume-08-blood-service.html) | Donors, component production, product issue | 194-222 | 29 |
| [9.0 Pathological anatomy](forms-volume-09-pathology.html) | Autopsy, surgical pathology, histology | 223-228 | 6 |
| [10.0 Forensic medicine](forms-volume-10-forensic.html) | Forensic examination and laboratories | 229-245 | 17 |
| [11.0 Sanitary-epidemiology](forms-volume-11-sanitary-epidemiology.html) | Public-health surveillance, environmental and microbiology labs | 246-399 (+045-x, 060) | 156 |

### Document types

Uzbek form names are systematic: the suffix tells you what kind of document it is. Learn these once and you can classify most of the catalogue by recognising the word at the end of the title. The same type recurs in every volume, so what you learn from one `tahlili` (lab analysis) form applies to the dozens of others scattered across volumes 3, 6, 7, 8 and 11.

| Suffix in the form name | Document kind |
|-------------------------|---------------|
| `...jurnali`, `...hisobga olish`, `...ro'yxatga olish` | Registration journal / ledger |
| `...karta`, `...kartasi` | Longitudinal card |
| `...bayoni`, `...bayonnomasi`, `...protokoli` | Procedure / examination report |
| `...tahlili`, `...taxlili` | Laboratory analysis result |
| `...ma'lumotnoma`, `...ma'lumotnomasi` | Issued certificate |
| `...yo'llanma`, `...almashish varaqasi` | Referral / exchange sheet |
| `...xulosa`, `...xulosasi` | Expert conclusion |
| `...varaqasi`, `...varog'i` | Single-event sheet |
| `...bildirishnoma`, `...xabarnoma` | Mandatory notification |
| `...dalolatnoma` | Inspection / sampling act |
| `...epikriz` | Episode summary |

The practical rule: a `jurnal` is something you query, a `karta` is something you keep, a `bayoni` or `tahlili` is a result you report, a `ma'lumotnoma` is a document you sign, and a `yo'llanma` is an order you place.

### Journeys that cross volumes

The volumes are administrative silos, but real episodes move between them. Looking at a form in isolation misses the references that tie an episode together. These are the main threads (each volume page expands its own part).

Pregnancy, birth and the newborn span the polyclinic (2), the screening centre (6) and the maternity hospital (1):

<div>{% include forms-journey-maternity.svg %}</div><br clear="all"/>

An inpatient surgical episode stays mostly in volume 1 but pulls in diagnostics (3) and the blood bank (8):

<div>{% include forms-journey-inpatient.svg %}</div><br clear="all"/>

A death branches into either clinical pathology (9) or the forensic bureau (10), both ending in a laboratory step:

<div>{% include forms-journey-death.svg %}</div><br clear="all"/>

### How this relates to the rest of the IG

Each form is identified by a category code and, where it has an official number, an external identifier - see [Document categories and identifiers](document-categories.html). Category codes come from [DocumentCategoryCS](CodeSystem-document-category-cs.html), whose codes follow the `form-NNN` pattern of Order 399.

The volume pages linked above place every form in context. As forms are modelled in full they will gain mapping pages (for example [Form 011](form-011-mapping.html)), linked from here as they are produced.
