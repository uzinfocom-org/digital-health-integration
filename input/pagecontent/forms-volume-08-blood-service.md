Volume 8 is the blood service - donor registration, screening, collection, component production and the issue of finished products to facilities. It is the production and supply side of transfusion; the bedside, recipient side is the 009 family in [volume 1](forms-volume-01-inpatient.html). Together they form one donor-to-recipient chain.

This is a [core clinical](forms-overview.html#scope-for-integration) volume for two of its parts - donor screening (a laboratory pattern) and product issue (a supply pattern) - while the internal production accounting is more operational.

### How this volume maps to FHIR

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Donor registration | 194, 195, 196, 199 | `Patient` / `RelatedPerson` (the donor) + donor `Composition`/card |
| Donor screening labs | 200, 203, 204, 217, 218, 219, 220 | `DiagnosticReport` + `Observation` - the same pattern as [volume 3](forms-volume-03-diagnostics-laboratory.html) |
| Positive-donor registers | 216 | Query/`List`; deferral feeds back to registration |
| Collection | 198, 201 | `Procedure` (collection) producing a product |
| Component production | 197, 202, 207, 208, 209, 210, 222 | `BiologicallyDerivedProduct` (+ inventory) |
| Quality and disposal | 205, 206 | `Observation` (sterility) and disposal register |
| Requisition and issue | 211, 212, 213, 214, 215 | `SupplyRequest` (213) and `SupplyDelivery` (211) |
| Bedside transfusion | 009 family (volume 1) | `Procedure` + `Observation` |

The two ends of the chain are where integration matters: donor screening reuses the laboratory mapping wholesale, and the requisition/issue pair (213 to 211) is the hand-off into the clinical transfusion record. The production registers in between are inventory accounting and largely out of initial clinical scope.

### Form relationships

A donor is registered, screened, and - if cleared - bled; the unit is processed into components, quality-checked, and issued against a requisition into a bedside transfusion. A positive screen diverts the donor to the deferral register.

<div>{% include forms-vol08-structure.svg %}</div><br clear="all"/>

### Sample flow

The full donor-to-recipient sequence, ending in the volume 1 transfusion record:

<div>{% include forms-vol08-flow.svg %}</div><br clear="all"/>

### Forms in this volume

| Form | Title | Archetype |
|------|-------|-----------|
| 194 | Certificate issued to a blood donor | Certificate |
| 195 | Gratuitous donor application | Card |
| 196 | Donor registration card | Card |
| 197, 202, 222 | Standard and anti-Rh sera preparation / register | Product / Register |
| 198 | Plasmapheresis / cytapheresis collection | Report |
| 199 | Gratuitous donor card | Card |
| 200 | Commission HIV blood-sampling register | Register |
| 201 | Whole-blood preparation | Report |
| 203, 217, 220 | Donor blood group and Rh results / register | Report / Register |
| 204 | Brucellosis serology | Report |
| 205 | Sterility testing of preserved blood | Report |
| 206 | Disposal of unsuitable blood components | Register |
| 207 | Components from gratuitous donors | Product |
| 208 | Cryoprecipitate preparation | Product |
| 209 | Plasma preparation | Product |
| 210 | Washed erythrocytes preparation | Product |
| 211 | Issue of ready products to facilities | Supply |
| 212 | Components received by the blood bank | Supply |
| 213 | Requisition for blood products | Supply |
| 214 | Products handed to expedition | Supply |
| 215 | Plasma receipts to the products department | Supply |
| 216 | HIV-seropositive donor register | Register |
| 218 | Syphilis, NSU, HBsAg and HIV testing | Report |
| 219 | Donor clinical and biochemical analyses | Report |
| 221 | Blood-products department journal cover | Register |
