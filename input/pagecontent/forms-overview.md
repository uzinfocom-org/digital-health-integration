The Ministry of Health standardises Uzbekistan's primary medical documentation through Order No. 399 and its annexes - forms numbered up to 399 (with sub-forms such as 009-1 or 015-1..015-26, 458 forms and sub-forms in total). This page is the map of those forms: what exists, how it groups, and the recurring document patterns that let you recognise many forms by a few shapes.

The forms organise along two axes. The Ministry groups them by service line into 11 volumes - that tells you *where a form lives*. Cutting across the volumes are a handful of document types and patient journeys - those tell you *what kind of document a form is*.

### The 11 volumes

<div>{% include forms-volumes-map.svg %}</div><br clear="all"/>

| Volume | Domain | Form range | Count |
|--------|--------|-----------|------:|
| [1.0 Inpatient hospital](forms-volume-01-inpatient.html) | Stationary episode-of-care records, surgery, obstetrics, deaths | 001-010, 096-097, 103, 106 | 20 |
| [2.0 Ambulatory-polyclinic](forms-volume-02-ambulatory.html) | Outpatient visits, dispensary observation, certificates, notifications, immunisation | 023-111 | 40 |
| [3.0 Diagnostics & laboratory](forms-volume-03-diagnostics-laboratory.html) | Imaging, functional diagnostics, the full laboratory catalogue | 011-130 | 127 |
| [4.0 Pharmacy & supply](forms-volume-04-pharmacy.html) | Medicine stock, requisitions, accounting | 131-141 | 11 |
| [5.0 Emergency & air ambulance](forms-volume-05-emergency.html) | EMS calls, observation, air ambulance | 142-151 (+059-3) | 11 |
| [6.0 Genetics & screening](forms-volume-06-genetics-screening.html) | Prenatal diagnosis, trimester screening, neonatal screening | 152-174 | 23 |
| [7.0 HIV/AIDS service](forms-volume-07-hiv.html) | Anonymous testing, HIV labs, dispensary follow-up | 175-192 | 18 |
| [8.0 Blood service](forms-volume-08-blood-service.html) | Donors, component production, product issue | 194-222 | 29 |
| [9.0 Pathological anatomy](forms-volume-09-pathology.html) | Autopsy, surgical pathology, histology | 223-228 | 6 |
| [10.0 Forensic medicine](forms-volume-10-forensic.html) | Forensic examination and laboratories | 229-245 | 17 |
| [11.0 Sanitary-epidemiology](forms-volume-11-sanitary-epidemiology.html) | Public-health surveillance, environmental and microbiology labs | 246-399 (+045-x, 060) | 156 |

### Document types

Order 399 form names follow a consistent convention in both Uzbek and Russian: a keyword in the title names the document type. The same types recur across every volume - a `tahlili` / анализ (lab analysis), for example, appears in volumes 3, 6 and 8.

| Uzbek keyword | Russian keyword | Document type |
|---------------|-----------------|---------------|
| `...jurnali`, `...hisobga olish`, `...ro'yxatga olish` | журнал (регистрации / учёта) | Registration journal / ledger |
| `...karta`, `...kartasi` | карта | Longitudinal card |
| `...bayoni`, `...bayonnomasi`, `...protokoli` | протокол | Procedure / examination report |
| `...tahlili`, `...taxlili` | анализ | Laboratory analysis result |
| `...ma'lumotnoma`, `...ma'lumotnomasi` | справка | Issued certificate |
| `...yo'llanma`, `...almashish varaqasi` | направление, обменная карта | Referral / exchange sheet |
| `...xulosa`, `...xulosasi` | заключение | Expert conclusion |
| `...varaqasi`, `...varog'i` | листок, лист | Single-event sheet |
| `...bildirishnoma`, `...xabarnoma` | извещение, уведомление | Mandatory notification |
| `...dalolatnoma` | акт | Inspection / sampling act |
| `...epikriz` | эпикриз | Episode summary |

The practical rule: a `jurnal` is something you query, a `karta` is something you keep, a `bayoni` or `tahlili` is a result you report, a `ma'lumotnoma` is a document you sign, and a `yo'llanma` is an order you place.

### How this relates to the rest of the IG

Each form is identified by a category code and, where it has an official number, an external identifier - see [Document categories and identifiers](document-categories.html). Category codes come from [DocumentCategoryCS](CodeSystem-document-category-cs.html), whose codes follow the `form-NNN` pattern of Order 399.

The volume pages linked above place every form in context. As forms are modelled in full they will gain mapping pages (for example [Form 011](form-011-mapping.html)), linked from here as they are produced.
