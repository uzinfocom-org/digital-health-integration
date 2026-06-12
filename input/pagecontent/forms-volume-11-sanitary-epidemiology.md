Volume 11 is the largest by far - 156 forms covering sanitary-epidemiological surveillance (SES) and public health. It spans environmental and food testing, infectious-disease and outbreak control, parasitology and zoonoses, the handling of dangerous pathogens, microbiology laboratories, administrative enforcement, and disinfection operations. It also absorbs the rabies/veterinary set (045-x) and the general infectious-disease register (060).

This is [mostly out of scope](forms-overview.html#scope-for-integration) for the core clinical integration. Most of the volume is aggregate registers, inspection acts and environmental measurements - reporting artifacts rather than per-patient clinical documents. It most likely belongs to a separate public-health profile set. The exceptions that do touch the clinical record are the notifiable-disease links back to [volume 2](forms-volume-02-ambulatory.html) and the laboratory results, which follow the [volume 3](forms-volume-03-diagnostics-laboratory.html) pattern.

### The eight sub-domains

Rather than 156 individual mappings, the volume is best understood as eight clusters:

<div>{% include forms-vol11-clusters.svg %}</div><br clear="all"/>

| Sub-domain | Forms | Nature |
|------------|-------|--------|
| Sanitary supervision of objects and construction | 246-252, 304-305, 343-344, 361 | Registers and conclusions |
| Environmental sampling and testing (water, air, soil, food, physical factors, radiation) | 254-257, 302-303, 310, 317-360 | Sampling acts and lab results |
| Infectious-disease and outbreak control | 258-264, 060, 398 | Investigation cards, notifications |
| Parasitology, zoonoses and dangerous pathogens | 265-300, 306-308, 320, 325, 379-388, 399, 045-x | Surveillance registers and labs |
| Microbiology laboratories | 321-324, 350, 365-378 | Lab results |
| Pathogen biological agents and strain handling | 281-298 | Biosafety registers |
| Administrative enforcement | 311-316, 352 | Protocols and penalties |
| Disinfection and disinsection operations | 309, 389-397 | Field-operation orders and registers |

### How the in-scope parts map to FHIR

| In-scope part | Forms | FHIR target |
|---------------|-------|-------------|
| Notifiable-disease reporting | 060, 264 | `Communication` / notifiable-disease `Composition`, from [volume 2](forms-volume-02-ambulatory.html) notifications |
| Epidemiological investigation | 262, 275 | `Composition` (investigation card) |
| Microbiology and environmental labs | 350, 365-378, 327-339 | `DiagnosticReport` + `Observation` + `Specimen` |

Everything else - inspection acts, measurement logs, biosafety and enforcement registers - is aggregate public-health reporting, best represented as `List`/measure-style resources if and when a public-health IG addresses them.

### Sample flow

An outbreak investigation, showing the cross-links to volumes 2 and 3:

<div>{% include forms-vol11-flow.svg %}</div><br clear="all"/>

### Note on coverage

Given the size and the limited clinical-integration relevance, this page maps the volume by cluster rather than form by form. The forms run from 246 to 399, plus the rabies/veterinary set 045-1..045-6 and the infectious-disease register 060. When a public-health integration is scoped, the eight clusters above are the natural unit of work.
