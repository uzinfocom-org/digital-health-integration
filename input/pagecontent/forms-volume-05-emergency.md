Volume 5 is emergency medical services and air ambulance (sanitar aviatsiya) - taking the call, dispatching a crew, recording on-scene care, and handing the patient to a hospital. Most of the volume is dispatch and station workload; the clinical content is the call card and the observation sheet.

This is an [operational](forms-overview.html#scope-for-integration) volume with a clinical core.

### How this volume maps to FHIR

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Call registration | 142, 143 | `Encounter` (emergency) + `Communication` |
| On-scene care | 144 | `Observation` / `Procedure` under the Encounter |
| Station and substation workload | 145, 147, 151 | Query/`List` |
| Disaster and air ambulance | 146, 148, 149, 150, 059-3 | `Encounter` / `Composition` (consultant sheet) |

The integration value is the hand-off: an emergency case that results in transport becomes a [volume 1](forms-volume-01-inpatient.html) admission, so the call card and observation sheet should carry forward into the inpatient `Encounter`.

### Sample flow

<div>{% include forms-vol05-flow.svg %}</div><br clear="all"/>

### Forms in this volume

| Form | Title | Archetype |
|------|-------|-----------|
| 059-3 | Emergency-medicine scientific-centre EMS record | Report |
| 142 | Call registration | Register |
| 143 | Emergency call card | Card |
| 144 | Observation sheet (talon) | Sheet |
| 145 | Daily substation work | Register |
| 146 | Emergency / disaster situations record | Register |
| 147 | Emergency medical station | Register |
| 148 | Air ambulance vehicle activity register | Register |
| 149 | Air ambulance call register | Register |
| 150 | Air ambulance consultant physician sheet | Report |
| 151 | Driver medical-examination record | Register |
