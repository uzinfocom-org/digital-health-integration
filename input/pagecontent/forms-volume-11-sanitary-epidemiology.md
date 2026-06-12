Volume 11 is the largest by far - 156 forms - and the least like ordinary patient care. It is public health: protecting the population as a whole rather than treating one person. It covers disease outbreaks, the safety of water, food, air and soil, dangerous germs in the laboratory, and the inspections and penalties that enforce sanitary rules. It also absorbs the rabies/veterinary forms (045-x) and the general infectious-disease register (060).

### What sanitary-epidemiological work involves

Where the other volumes follow individual patients, this volume follows hazards and populations. Its work falls into eight areas, shown in the diagram below:

- Supervising buildings and projects. Before a school, factory or housing block is built or opened, sanitary inspectors review and approve it.
- Testing the environment. Inspectors take samples of drinking water, food, air and soil and have them tested for contamination, chemicals and radiation.
- Controlling outbreaks. When an infectious disease appears, the service investigates where it came from, isolates and moves patients, and disinfects the source.
- Watching parasites, animal diseases and dangerous germs. Malaria, rabies, anthrax, cholera and plague are tracked closely, including diseases that pass from animals to people.
- Running laboratories. Microbiology labs identify the germs behind all of the above.
- Handling dangerous pathogens safely. The most dangerous germs are kept, moved and destroyed under strict biosafety rules and registers.
- Enforcing the rules. When a business breaks sanitary rules, inspectors issue violation notices, fines and shutdown orders.
- Carrying out disinfection. Field teams disinfect homes, premises and outbreak sites and record the work.

The unifying idea is surveillance and control: detect a hazard, test it, act on it, and enforce against whoever caused it.

### How the forms relate

Most of these forms are registers and inspection acts - running lists and one-off reports - rather than a single chain, because the service is doing many parallel jobs. But there is a clear logical spine running through the outbreak work: a hazard is detected (a notifiable diagnosis from a clinic, or a bad sample), it is investigated (an epidemiological focus card), samples go to the laboratory, and depending on the result the service acts - moving patients, disinfecting the site, or penalising whoever was responsible. The diagram groups the 156 forms into the eight sub-domains and shows how detection, laboratory work, field action and enforcement connect.

<div>{% include forms-vol11-clusters.svg %}</div><br clear="all"/>

### A sample outbreak

Imagine several people in a town falling ill after eating at the same canteen. A clinician who sees the first cases sends an urgent food-poisoning notification (263, 264; the general infectious-disease register is 060). The SES service opens an epidemiological investigation (262), visits the canteen, and takes samples of the food and swabs of the kitchen. The microbiology lab identifies the bacterium responsible (350, 370). With the source confirmed, the service orders the premises disinfected (390) and, because hygiene rules were broken, issues a violation notice and a penalty to the canteen (311, 312). The outbreak is traced, stopped, and acted upon - the work of several sub-domains in one event.

<div>{% include forms-vol11-flow.svg %}</div><br clear="all"/>

### How this volume maps to FHIR

For implementers: this volume is [mostly out of scope](forms-overview.html#scope-for-integration) for the core clinical integration. Most of it is aggregate registers, inspection acts and environmental measurements - reporting artifacts rather than per-patient clinical documents - and it most likely belongs to a separate public-health profile set. The parts that do touch the clinical record are the notifiable-disease links back to [volume 2](forms-volume-02-ambulatory.html) and the laboratory results, which follow the [volume 3](forms-volume-03-diagnostics-laboratory.html) pattern.

| In-scope part | Forms | FHIR target |
|---------------|-------|-------------|
| Notifiable-disease reporting | 060, 264 | `Communication` / notifiable-disease `Composition`, from [volume 2](forms-volume-02-ambulatory.html) notifications |
| Epidemiological investigation | 262, 275 | `Composition` (investigation card) |
| Microbiology and environmental labs | 350, 365-378, 327-339 | `DiagnosticReport` + `Observation` + `Specimen` |

Everything else - inspection acts, measurement logs, biosafety and enforcement registers - is aggregate public-health reporting, best represented as `List`/measure-style resources if and when a public-health IG addresses them.

### The eight sub-domains

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

The forms run from 246 to 399, plus the rabies/veterinary set 045-1..045-6 and the infectious-disease register 060. When a public-health integration is scoped, these eight sub-domains are the natural unit of work.
