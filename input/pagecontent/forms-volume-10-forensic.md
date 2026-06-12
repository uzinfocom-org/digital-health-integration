Volume 10 is forensic medical examination (sud-tibbiy ekspertiza) - examination of bodies and living persons for legal proceedings, supported by forensic biology, histology, chemistry and criminalistics laboratories. It is a distinct legal domain that happens to use medical methods.

This is [out of scope](forms-overview.html#scope-for-integration) for the core clinical integration. It is documented here for completeness and because its laboratory steps share the familiar result pattern.

### How this volume maps to FHIR

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Examination and conclusion | 229, 230, 235 | `Composition` (report, expert conclusion) |
| Registration | 233, 234 | Query/`List` |
| Lab referrals | 231, 232 | `ServiceRequest` |
| Forensic laboratories | 236-245 | `DiagnosticReport` + `Observation` + `Specimen` |
| Living-person assessment | 242 | `Observation` (narcological examination) |

Because the purpose is legal rather than care delivery, integration into a clinical record is the exception, not the rule. The laboratory mechanics nonetheless mirror clinical labs.

### Sample flow

<div>{% include forms-vol10-flow.svg %}</div><br clear="all"/>

### Forms in this volume

| Form | Title |
|------|-------|
| 229 | Forensic medical examination report |
| 230 | Expert conclusion |
| 231 | Referral to forensic laboratory / specialist consult |
| 232 | Referral for forensic histology |
| 233 | Body registration in the thanatology department |
| 234 | Registration of persons in forensic outpatient |
| 235 | Repeat, commission, complex examinations |
| 236, 237 | Forensic biology material evidence / corpse blood |
| 238 | Forensic histology material and documents |
| 239 | Microdonor blood |
| 240 | Clothing and material evidence |
| 241 | Forensic chemistry material evidence |
| 242 | Narcological examination of living persons |
| 243 | Citizen appeals |
| 244 | Data collection |
| 245 | Medical criminalistics material evidence |
