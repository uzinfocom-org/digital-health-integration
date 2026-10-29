# Form 111 terminology compatibility

Local concepts are identified by their canonical CodeSystem URL and code. The existing meanings in PR 69 at `9b1440ea58c41739dabfb0794d3a5bc5c5c40037` are retained. Removing a local concept in favour of a standard equivalent must never shift the remaining local numbers.

## Standard codes

Local concepts with a LOINC or SNOMED CT equivalent were replaced by the standard code and removed: laboratory tests, clinical note and examination codes, contraception methods, extragenital disease groups, normal/abnormal findings, fetal presentation, general condition, obstetric history factors, bad habits, pregnancy complications, birth-preparation activities, delivery type, left/right, and blood pressure (LOINC 85354-9 with components).

Boolean yes/no results are represented using the native FHIR Observation.valueBoolean element (true/false). HL7 v2-0532 is not used for these results in Form 111.

The Form 111 ValueSets list the standard codes explicitly; Uzbek and Russian displays are in form111-snomed-supplement-cs and form111-loinc-supplement-cs. The remaining local codes have no standard equivalent. A selected risk factor remains an Observation; a diagnosis requires its own clinical confirmation.

Combined `alcoholism_drug_addiction` and `smoking_alcoholism_drug_addiction` selections keep their single local target. Do not assert every individual factor from a combined selection. Gestosis keeps `chr-0022-00005` as the primary target, with SNOMED CT `398254007` as a narrower second target. The gonococcus test keeps `chr-0001-00001` until the source confirms the test method.

## Result types

- Fetal movement (`LOINC 57088-7`) and the hospitalization flag (`chr-0035-00019`) use native `Observation.valueBoolean`.
- Birth-preparation fields (SNOMED CT activity codes, mothers' school `chr-0025-00001`) contain a source activity date in `valueDateTime`. Gestational weeks are separate `valueQuantity` observations. Do not invent an activity frequency from the number of pregnancy weeks.
- `form111-previous-pregnancy-outcome-vs` supports `386639001` (termination), `3950001` (birth), and `17369002` (miscarriage).
- `form111-previous-delivery-term-vs` contains only preterm and term. There is no implemented reserved post-term concept in this set.
- Perinatal risk level/score use `chr-0027-00005`/`chr-0027-00006`. The old General Observation duplicates `chr-0035-00023`/`chr-0035-00022` retain their meanings, are marked deprecated and are excluded from the current General Observation ValueSet.

## Deviations from the DMED field-mapping review

Local codes were numbered as fields were implemented. Where the DMED field-mapping review proposes a different number for an already implemented concept, the IG keeps its own:

| Concept | Review | IG |
|---|---|---|
| Tug'ruqning alohida xususiyatlari | `chr-0023-00003` | `chr-0035-00012` |
| Boshqa a'zolari | `chr-0005-00007` | `chr-0035-00020` |
| Newborn birth condition | `chr-0035-00001` (already registration date) | `chr-0035-00013` |
| Menstrual character / last period end date | `chr-0036-00001`/`00002` | `chr-0035-00011`/`chr-0035-00009` |
| Muddatdan farq (kun) | `chr-0037-00004` | `chr-0035-00021` |
| Prenatal / postpartum leave | `chr-0037-00001`/`00002`, `00005`/`00006`/`00007` | `SickLeaveCarePlan` `period` + `identifier` |
| Blood pressure text | `chr-0034-00001` (already a section code) | LOINC `85354-9` with `8480-6`/`8462-4` components |

The review's RhD codes `165747005`/`165748000` do not exist in SNOMED CT; the IG uses `165747007`/`165746003`.
