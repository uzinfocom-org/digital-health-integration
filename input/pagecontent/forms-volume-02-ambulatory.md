Volume 2 is the outpatient counterpart of [volume 1](forms-volume-01-inpatient.html). It covers the polyclinic and family-clinic record - day-to-day visits, the dispensary observation of chronic patients, immunisation, the many medical certificates the state requires, and the mandatory notifications that feed disease registries. It is broad rather than deep: lots of distinct document types, most of them short.

This is a [core clinical](forms-overview.html#scope-for-integration) volume, and the one with the widest variety of archetypes, so it is the best place to see the [document patterns](forms-overview.html#document-archetypes) at work.

### How this volume maps to FHIR

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Visit logs | 023, 024, 024-1..024-4 | `Encounter`; the daily logs are a query/`List`, not documents |
| Outpatient record | 025, 025-1 | Longitudinal record: `Encounter` + `Condition` + `Observation`, summarised in a `Composition` |
| Dispensary observation | 030, 030-1..030-4 | `CarePlan` for chronic-disease follow-up, by disease group |
| Disability / VKK | 035, 035-1 | Commission `Composition` / `Observation` |
| Immunisation | 063, 064 | `Immunization` (the card is the record, the journal a query) |
| Certificates | 043, 044, 086, 086-1..086-4, 072-1, 083 | Signed `Composition` |
| Notifications | 089, 090, 091 | `Communication` or notifiable-disease `Composition`, feeding [volume 11](forms-volume-11-sanitary-epidemiology.html) registries |
| Referrals | 037, 037-1 | `ServiceRequest`, linking to [volume 6](forms-volume-06-genetics-screening.html) screening |
| Ambulatory operations | 069 | `Procedure` |
| Pregnancy | 111 | Longitudinal record threading into volumes 6 and 1 |
| Purpose-specific cards | 051, 053, 061 | Longitudinal `Composition` / `CarePlan` |

### Form relationships

The visit registration opens the ambulatory card, which then branches into the volume's recurring families: the dispensary card and its disease-specific variants, the certificate family, the notification family, and the pregnancy referral. The variant families (030 and 086) are the non-obvious structure worth seeing - one parent form with specialised children.

<div>{% include forms-vol02-structure.svg %}</div><br clear="all"/>

### Sample flow

A single outpatient visit can trigger several of these forms at once:

<div>{% include forms-vol02-flow.svg %}</div><br clear="all"/>

### Forms in this volume

| Form | Title | Archetype |
|------|-------|-----------|
| 023 | House-call registration | Register |
| 024 | Outpatient visit registration | Register |
| 024-1..024-4 | Daily reception logs (physician, ob-gyn, dentist, ortho-dentist) | Register |
| 025 | Ambulatory medical card | Card |
| 025-1 | Orthopaedic/orthodontic dental card | Card |
| 030 | Dispensary observation control card | Card |
| 030-1..030-4 | Dispensary variants (psychiatric, oncology, psychoneuro, TB) | Card |
| 035, 035-1 | Medical advisory commission (VKK) disability conclusions | Conclusion |
| 037, 037-1 | Prenatal screening referral / exchange sheet | Referral |
| 043, 044 | Medical certificates (general, foreign travel) | Certificate |
| 051 | Family nurse daily activity log | Register |
| 053 | Military conscript treatment card | Card |
| 056 | Determination of legal insanity | Conclusion |
| 061 | Sports-medicine supervision card | Card |
| 063 | Prophylactic immunisation card | Card |
| 064 | Immunisation register | Register |
| 069 | Ambulatory operations register | Register |
| 072, 072-1 | Sanatorium-resort card and referral | Card / Certificate |
| 080 | Medical exemptions (med. otvod) register | Register |
| 083, 083-1 | Driver medical-fitness certificate | Certificate |
| 086, 086-1..086-4 | Medical certificate and its variants | Certificate |
| 089 | First-time TB / STI / other notifiable diagnosis notification | Notification |
| 090 | First-time cancer notification | Notification |
| 091 | First-time narcology notification | Notification |
| 111 | Pregnant and delivered woman individual card | Card |
