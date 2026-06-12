Volume 7 is the HIV/AIDS service (OIV/OITS) run by SPID centres - testing (including anonymous testing), the specialised HIV laboratory, and the dispensary follow-up of diagnosed patients. Structurally it is a laboratory plus a dispensary, with confidentiality as a defining constraint.

This is a [specialised clinical](forms-overview.html#scope-for-integration) volume. Its laboratory part reuses the [volume 3](forms-volume-03-diagnostics-laboratory.html) pattern; its dispensary part mirrors [volume 2](forms-volume-02-ambulatory.html).

### How this volume maps to FHIR

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Testing registration | 176, 177, 178, 179, 180 | Query/`List`; anonymous testing constrains the `Patient` |
| HIV laboratory | 183, 184, 185, 186, 187, 188-193 | `DiagnosticReport` + `Observation` + `Specimen` |
| Referral | 182 | `ServiceRequest` |
| Dispensary follow-up | 175, 181 | `CarePlan` + `Condition` |

Confidentiality is the distinctive requirement: testing may be anonymous (so the `Patient` may be pseudonymised), and all access is governed by [Consent](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-consent.html). Otherwise the resources are the familiar lab and dispensary patterns.

### Sample flow

<div>{% include forms-vol07-flow.svg %}</div><br clear="all"/>

### Forms in this volume

| Form | Title | Archetype |
|------|-------|-----------|
| 175 | HIV patient dispensary control card | Card |
| 176-179 | Anonymous / identified office HIV-testing registers | Register |
| 180 | JAYBYUK (STI) client registration | Register |
| 181 | HIV patient opportunistic-infection record | Report |
| 182 | Referral | Referral |
| 183, 184, 185 | Commission HIV blood-sampling registers and conclusion | Register |
| 186 | HIV PCR DNA testing | Report |
| 187 | Immunological CD4 testing | Report |
| 188-193 | Sample registers (blood, biomaterials, positive, PCR, CD4, unsuitable) | Register |
