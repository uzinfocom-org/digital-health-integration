Volume 3 is the largest volume - 93 forms covering every diagnostic and laboratory service: imaging, functional diagnostics, and the full clinical-laboratory catalogue. For a [LIS or PACS](index.html) integration this is the centre of gravity. It is also the volume where the [archetype patterns](forms-overview.html#document-archetypes) pay off most, because almost every form here is one of two shapes: a `tahlili` (lab analysis) or a `bayoni`/`protokoli` (examination report).

This is a [core clinical](forms-overview.html#scope-for-integration) volume. The [hemodialysis record (011)](form-011-mapping.html) is the form modelled here so far.

### How this volume maps to FHIR

You do not need 93 distinct mappings. Almost everything reduces to the order-result pattern: a `ServiceRequest` produces a `Specimen` and `Observation`s, grouped into a `DiagnosticReport`, with an `ImagingStudy` for imaging.

<div>{% include forms-vol03-fhir.svg %}</div><br clear="all"/>

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Laboratory analyses | 040, 041, 042, 046-050, 052, 054, 055, 057, 065, 067-088, 092-095, 105-120, 130 | `DiagnosticReport` + `Observation` per result + `Specimen` |
| Imaging | 015, 015-1..015-26, 017, 019 | `DiagnosticReport` + `ImagingStudy`; PACS holds the images |
| Functional diagnostics | 013, 016, 018, 020, 021, 022, 023-25 series | `DiagnosticReport` + `Observation` |
| Endoscopy | 012, 012-1, 026 | `Procedure` + `DiagnosticReport` |
| Treatment procedures | 011, 014, 029, 031, 031-1, 069 | `Procedure` (+ time-series `Observation`) |
| Parasitology / surveillance labs | 121-126 | `DiagnosticReport`; the journals are queries, and notifiable results feed [volume 11](forms-volume-11-sanitary-epidemiology.html) |
| Lab and procedure registers | 034, 039, 059, 059-1, 059-2 | Query/`List`, not documents |
| Statistical and notification artifacts | 027, 028, 066, 066-1, 114 | `Composition` (discharge cards); 028/114 are notifications |

### Form relationships

The defining structure here is the 015 ultrasound family - a single parent form (015, the ultrasound register) with 26 organ-specific children (015-1 through 015-26, from parotid gland to brachiocephalic doppler). They all share the same `DiagnosticReport` shape and differ only in the body site and the observations recorded. Treat them as one mapping parameterised by organ, not 27 separate ones. The same logic applies to the clinical-diagnostic-laboratory IXLA/ELISA series (105-118).

### Sample flow

The order-to-result round trip, the spine of LIS and PACS integration:

<div>{% include forms-vol03-flow.svg %}</div><br clear="all"/>

This is the same scenario specified in detail by the UZ Core [laboratory workflow](https://dhp.uz/fhir/core/en/workflow-lab.html); the forms here are the source documents that workflow produces.

### Forms in this volume

Because of its size, the volume is summarised by cluster rather than listed form by form. The boundaries of the volume are forms 011-130 (excluding those the Order assigns elsewhere).

| Cluster | Representative forms |
|---------|----------------------|
| Ultrasound and imaging | 015 (+015-1..015-26), 017 X-ray, 019 CT/MRI |
| Cardiac and neuro functional | 018 EXO/EEG, 020 ECG, 021 veloergometry, 015-12/13 phono/echocardiography, 015-23..26 EEG/REG/doppler |
| Endoscopy | 012 colonoscopy, 026 EGDS |
| Other diagnostics | 013 spirometry, 016 ophthalmoscopy, 022 audio/otoscopy |
| Treatment procedures | 011 hemodialysis, 014 radiotherapy, 031 physiotherapy, 069 ambulatory operations |
| Haematology | 040 CBC, 041 Rh/group, 042 clotting, 046 CBC-5, 047 coagulogram, 085 bone marrow, 120 myelogram |
| Biochemistry and hormones | 048 biochemistry, 049 hormones, 050 lipoproteins, 067 vitamin D, 087 glucose |
| Urine and fluids | 071, 073-077 urine panel, 081 duodenal, 082 CSF, 078 prostate secretion |
| Serology and immunoassay | 065 Wasserman, 068 ASO/CRP, 070 hepatitis, 079/098/099 TORCH, 088 Vidal/Wright, 092-094, 105-118 IXLA |
| Microbiology | 055, 057 TB, 084 sensitivity, 119 culture sensitivity |
| Parasitology surveillance | 121-126 (helminths, malaria, leishmaniasis) |
| Statistical / notifications | 027 extract, 028 cancer, 066 / 066-1 discharge cards, 114 congenital anomaly |
