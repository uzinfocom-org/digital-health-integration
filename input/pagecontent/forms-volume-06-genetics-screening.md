Volume 6 covers medical genetics and the "mother and child" screening programme - prenatal screening and invasive diagnosis during pregnancy, and the newborn screening that follows birth. It runs in dedicated screening centres and is tightly linked to the ambulatory ([volume 2](forms-volume-02-ambulatory.html)) and inpatient maternity ([volume 1](forms-volume-01-inpatient.html)) records.

This is a [core clinical](forms-overview.html#scope-for-integration) volume with a clean, well-defined workflow, which makes it a good early integration target despite no forms being modelled yet.

### How this volume maps to FHIR

The volume splits into a prenatal track (the mother) and a neonatal track (the baby), joined at birth. Note the two FHIR resources that are distinctive here: `Consent` for the invasive-diagnosis decision, and genetics-flavoured `Observation` for cytogenetic results.

| Form group | Forms | FHIR target |
|------------|-------|-------------|
| Prenatal record | 159, 158 | Longitudinal record / `CarePlan` |
| Ultrasound screening | 162, 163, 164 | `DiagnosticReport` + `ImagingStudy` |
| Biochemical screening | 156, 157 | `DiagnosticReport` + interpretive `Observation` |
| Consent and refusal | 152, 153, 155 | `Consent` |
| Invasive diagnosis | 166 | `Procedure` |
| Cytogenetic / molecular results | 154, 167-171 | `DiagnosticReport` + genetics `Observation` |
| Conclusions and consilium | 165, 172, 173 | `Composition` |
| Specialist consults | 160, 161 | `Encounter` + `Observation` |
| Pre-surgery epicrisis | 174 | `Composition` |

### Form relationships

Screening results gate an informed-consent decision, which gates the invasive procedure and its laboratory result and conclusion. The neonatal track is a separate, simpler chain. Consent (152/153) and refusal (155) are the control points worth modelling explicitly.

<div>{% include forms-vol06-structure.svg %}</div><br clear="all"/>

### Sample flow

The screening pathway and the invasive-diagnosis decision, through to neonatal screening:

<div>{% include forms-vol06-flow.svg %}</div><br clear="all"/>

This is the prenatal and neonatal portion of the wider [maternity journey](forms-overview.html#journeys-that-cross-volumes) that also spans volumes 2 and 1.

### Forms in this volume

| Form | Title | Archetype |
|------|-------|-----------|
| 152, 153 | Informed consent for invasive prenatal diagnosis | Consent |
| 154 | Cytogenetic / molecular-cytogenetic result | Report |
| 155 | Refusal of invasive prenatal diagnosis | Consent |
| 156, 157 | First / second trimester biochemical screening conclusion | Conclusion |
| 158 | Hereditary-genetic patient ambulatory card | Card |
| 159 | Pregnant woman prenatal examination card | Card |
| 160, 161 | Genetic patient consults (neuropathologist, endocrinologist) | Report |
| 162, 163, 164 | First / second / third trimester ultrasound screening protocol | Report |
| 165 | Medical genetic conclusion | Conclusion |
| 166 | Invasive prenatal diagnosis procedure protocol | Report |
| 167 | Neonatal screening (IRT, PKU, congenital hypothyroidism) | Report |
| 168 | Tandem mass-spectrometry analysis | Report |
| 169 | Additional clinical-diagnostic IXLA analysis | Report |
| 170 | Sweat test | Report |
| 171 | Neonatal retest screening | Report |
| 172 | Post-invasive-diagnosis conclusion | Conclusion |
| 173 | Perinatal consilium | Conclusion |
| 174 | Pre-surgery epicrisis for a pregnant woman | Epicrisis |
