Volume 9 is pathological anatomy - clinical autopsy of deceased patients and the histological examination of surgical and biopsy specimens. It is small (six forms) and converges, like the forensic volume, on a laboratory step.

This is a [specialised clinical](forms-overview.html#scope-for-integration) volume. Its histology results follow the [volume 3](forms-volume-03-diagnostics-laboratory.html) laboratory pattern.

### How this volume maps to FHIR

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Autopsy | 223, 224, 228 | `Procedure` (autopsy) + `Composition` (protocol); the register is a query |
| Histology referral and material | 225, 226, 227 | `ServiceRequest` + `Specimen` |
| Histology result | (result of 225/227) | `DiagnosticReport` + `Observation` |

The autopsy reached from a death in [volume 1](forms-volume-01-inpatient.html) is one branch of the [death journey](forms-overview.html#journeys-that-cross-volumes); the other is forensic ([volume 10](forms-volume-10-forensic.html)). Surgical and biopsy specimens (227) arrive directly from clinical wards and are the more common, routine input.

### Sample flow

<div>{% include forms-vol09-flow.svg %}</div><br clear="all"/>

### Forms in this volume

| Form | Title | Archetype |
|------|-------|-----------|
| 223 | Register of bodies referred for autopsy | Register |
| 224 | Pathological-anatomical autopsy protocol | Report |
| 225 | Referral for pathological-histological study | Referral |
| 226 | Sectional material | Report |
| 227 | Biopsy and operational material | Report |
| 228 | Body registration | Register |
