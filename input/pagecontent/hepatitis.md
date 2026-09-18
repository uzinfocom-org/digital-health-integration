<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>


This page describes how hepatitis registry information is represented as FHIR resources.

### Overview

The model separates the patient, longitudinal care episode, individual visit, diagnosis, laboratory and ultrasound findings, and questionnaire answers. Each section links the governing profile and example resources and maps the recorded information to FHIR fields. The hepatitis profiles inherit [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html); their published constraints remain authoritative.

Condition, EpisodeOfCare, and both Observation profiles require one `identifier[hepatitisRegistry]` with system `https://dhp.uz/fhir/core/sid/org/uz/hepatitis` and a value. Questionnaire requires at least one identifier. QuestionnaireResponse fixes the identifier system when that element is present. These are record identifiers, separate from the patient’s personal identifiers.

The [care episode](#following-the-care-episode) references the [patient](#registering-the-patient) and [diagnosis](#recording-diagnosis-and-outcome). A [visit](#recording-the-visit) can reference the episode, and the diagnosis references the visit. Observations and [questionnaire answers](#recording-answers) identify their patient independently. The examples illustrate individual resources and do not constitute one fully linked patient record.

### Registering the patient (Patient) {#registering-the-patient}

The patient record provides identity, demographics, and contact details. HepatitisPatient inherits UZ Core Patient and marks `telecom` as Must Support; this does not by itself make the field mandatory.

Profile: [HepatitisPatient](StructureDefinition-hepatitis-patient.html)

Example: [hepatitis-patient-example](Patient-hepatitis-patient-example.html)

| What is recorded | Terminology | Example code or value | Where it is stored |
| :--- | :--- | :--- | :--- |
| National identifier | - | `515050500505` | `identifier[nationalId].value` |
| Local passport | - | `AB1234567` | `identifier[passportLocal].value` |
| Health card identifier | - | `01234567890456` | `identifier[healthCardId].value` |
| Name | - | `Xalida Yusupova Maxmudovna` | `name` |
| Administrative gender | [administrative-gender-vs](https://dhp.uz/fhir/core/ValueSet-administrative-gender-vs.html) | `female` | `gender` |
| Date of birth | - | `1990-02-01` | `birthDate` |
| Telephone | - | `998-90-123-45-45` | `telecom.value` |

### Following the care episode (EpisodeOfCare) {#following-the-care-episode}

An EpisodeOfCare groups the ongoing care of a patient registered for hepatitis A, B, C, or D. It links the patient, diagnosis, responsible organization, and care manager.

Profile: [HepatitisEpisodeOfCare](StructureDefinition-hepatitis-episode-of-care.html)

Example: [hepatitis-episode-of-care-example](EpisodeOfCare-hepatitis-episode-of-care-example.html)

| What is recorded | Terminology | Example code or value | Where it is stored |
| :--- | :--- | :--- | :--- |
| Registry identifier | - | `75dcdd0a-5a68-4cc6-8503-5ab15a42c63b` | `identifier[hepatitisRegistry].value` |
| Status | [episode-of-care-status](https://hl7.org/fhir/R5/valueset-episode-of-care-status.html) | `active` | `status` |
| Service type | [episode-of-care-type-vs](https://dhp.uz/fhir/core/ValueSet-episode-of-care-type-vs.html) | `episode-of-care-type-cs#mserv-0001-00004` | `type[serviceType]` |
| Diagnosis | - | [example-hepatitis-condition](Condition-example-hepatitis-condition.html) | `diagnosis.condition.reference` |
| Diagnosis use | [encounter-diagnosis-use](https://hl7.org/fhir/R5/valueset-encounter-diagnosis-use.html) | `encounter-diagnosis-use-cs#final` | `diagnosis.use` |
| Patient | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `patient` |
| Responsible organization | - | [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `managingOrganization` |
| Care manager | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | `careManager` |
| Care period | - | `2026-09-18T09:00:00+05:00` / `2026-11-10T17:00:00+05:00` | `period` |

The example remains `active`; its end date is an expected end. Its diagnosis reference resolves to the acute hepatitis C example (`B17.1`), although the episode description mentions hepatitis B.

### Recording the visit (Encounter) {#recording-the-visit}

Encounter records an individual visit. Its required `subject` references HepatitisPatient; `episodeOfCare`, when supplied, references HepatitisEpisodeOfCare.

Profile: [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html)

Example: [hepatitis-encounter-example](Encounter-hepatitis-encounter-example.html)

| What is recorded | Terminology | Example code or value | Where it is stored |
| :--- | :--- | :--- | :--- |
| Visit status | [encounter-status-vs](https://dhp.uz/fhir/core/ValueSet-encounter-status-vs.html) | `completed` | `status` |
| Visit class | [encounter-class-vs](https://dhp.uz/fhir/core/ValueSet-encounter-class-vs.html) | `v3-ActCode#AMB` | `class` |
| Visit type | [encounter-type-vs](https://dhp.uz/fhir/core/ValueSet-encounter-type-vs.html) | `encounter-type-cs#mserv-0001-00004` | `type` |
| Patient | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Participant role | [encounter-participant-type-vs](https://dhp.uz/fhir/core/ValueSet-encounter-participant-type-vs.html) | `v3-ParticipationType#ATND` | `participant.type` |
| Clinician | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | `participant.actor` |
| Provider | - | [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `serviceProvider` |
| Actual period | - | `2026-09-18T09:45:00+05:00` / `2026-09-18T11:00:00+05:00` | `actualPeriod` |
| Planned start | - | `2026-09-18T09:30:00+05:00` | `plannedStartDate` |

The encounter example does not populate `episodeOfCare`. The profile supports this link, but it must be supplied explicitly to connect a visit to its care episode.

### Recording diagnosis and outcome (Condition) {#recording-diagnosis-and-outcome}

Condition records the diagnosis and clinical status. It references HepatitisPatient and, when present, HepatitisEncounter. The optional outcome extension records the treatment response separately from clinical status.

Profile: [HepatitisCondition](StructureDefinition-hepatitis-condition.html)

Example: [example-hepatitis-condition](Condition-example-hepatitis-condition.html)

| What is recorded | Terminology | Example code or value | Where it is stored |
| :--- | :--- | :--- | :--- |
| Registry identifier | - | `69dcdd0a-5a68-4cc6-8503-5ab15a41c63b` | `identifier[hepatitisRegistry].value` |
| Diagnosis | [condition-code-vs](https://dhp.uz/fhir/core/ValueSet-condition-code-vs.html) | `ICD-10#B17.1` | `code` |
| Clinical status | [clinical-status-vs](https://dhp.uz/fhir/core/ValueSet-clinical-status-vs.html) | `condition-clinical#active` | `clinicalStatus` |
| Diagnosis type | [diagnosis-type-vs](https://dhp.uz/fhir/core/ValueSet-diagnosis-type-vs.html) | `diagnosis-type-cs#gencl-0001-00003` | `extension[diagnosisType]` |
| Treatment outcome | [HepatitisConditionOutcomeCodesVS](ValueSet-hepatitis-condition-outcome-codes-vs.html) | `SNOMED CT#1137679005` | `extension[outcome].valueCodeableConcept` |
| Patient | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Visit | - | [hepatitis-encounter-example](Encounter-hepatitis-encounter-example.html) | `encounter` |
| Recorded date | - | `2026-09-18T10:45:00+05:00` | `recordedDate` |
| Clinician | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | `participant.actor` |

The [outcome extension](StructureDefinition-hepatitis-condition-outcome.html) has cardinality `0..1` and a required binding to HepatitisConditionOutcomeCodesVS. Its codes come from SNOMED CT; the local CodeSystem is a supplement providing translated designations.

### Recording laboratory results (Observation) {#recording-laboratory-results}

Laboratory observations identify the test, method, result, time, patient, and performers. The example code identifies a hepatitis A IgM antibody test, even though its description says hepatitis B DNA.

Profile: [HepatitisObservationAnalysis](StructureDefinition-hepatitis-observation-analysis.html)

Example: [example-hepatitis-observation-analysis](Observation-example-hepatitis-observation-analysis.html)

| What is recorded | Terminology | Example code or value | Where it is stored |
| :--- | :--- | :--- | :--- |
| Registry identifier | - | `85dcdd0a-5a68-4cc6-8503-5ab15a42c63b` | `identifier[hepatitisRegistry].value` |
| Result status | [observation-status-vs](https://dhp.uz/fhir/core/ValueSet-observation-status-vs.html) | `final` | `status` |
| Test | [observation-codes-vs](https://dhp.uz/fhir/core/ValueSet-observation-codes-vs.html) | `LOINC#22314-9` | `code` |
| Method | [lab-method-vs](https://dhp.uz/fhir/core/ValueSet-lab-method-vs.html) | `lab-methods-cs#lab-method-1` (PCR) | `method` |
| Result | [v3-ObservationInterpretation](https://terminology.hl7.org/CodeSystem-v3-ObservationInterpretation.html) | `v3-ObservationInterpretation#NEG` | `valueCodeableConcept` |
| Patient | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Observation time | - | `2026-09-18T10:00:00+05:00` | `effectiveDateTime` |
| Performers | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html), [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `performer` |

`effective[x]` allows dateTime or Period. `value[x]` allows Attachment, Quantity, or CodeableConcept; component values allow string, CodeableConcept, or Quantity. Components also support `dataAbsentReason` and at most one `interpretation`. The result coding above is used by the example; it is not a hepatitis-specific required value set for every result.

### Recording ultrasound findings (Observation) {#recording-ultrasound-findings}

Each ultrasound observation records a coded finding and a boolean result. The examples record cirrhosis as present and a liver lesion as absent in separate resources.

Profile: [HepatitisObservationUltraSound](StructureDefinition-hepatitis-observation-ultra-sound.html)

Example: [example-ultrasound-cirrhosis](Observation-example-ultrasound-cirrhosis.html), [example-ultrasound-lesion](Observation-example-ultrasound-lesion.html)

| What is recorded | Terminology | Example code or value | Where it is stored |
| :--- | :--- | :--- | :--- |
| Registry identifier | - | `85dcdd0a-5a68-4cc6-8503-5ab15a42c73b` | `identifier[hepatitisRegistry].value` |
| Result status | [observation-status-vs](https://dhp.uz/fhir/core/ValueSet-observation-status-vs.html) | `final` | `status` |
| Finding | [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html) | `SNOMED CT#19943007` / `SNOMED CT#300332007` | `code` |
| Presence of finding | - | `true` / `false` | `valueBoolean` |
| Patient | - | [hepatitis-patient-example](Patient-hepatitis-patient-example.html) | `subject` |
| Observation time | - | `2026-09-18T10:30:00+05:00` | `effectiveDateTime` |
| Performers | - | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html), [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | `performer` |

`code` has a required binding to HepatitisTypeOfUltraSoundVS, which uses SNOMED CT codes with a local designation supplement. `effective[x]` allows dateTime or Period; `value[x]` is restricted to boolean.

### Defining the assessment (Questionnaire) {#defining-the-assessment}

Questionnaire defines the questions and conditional display rules. The example includes previous hepatitis B/C treatment, medications, and pregnancy trimester.

Profile: [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html)

Example: [hepatitis-questionnaire](Questionnaire-hepatitis-questionnaire.html)

| What is recorded | Terminology | Example code or value | Where it is stored |
| :--- | :--- | :--- | :--- |
| Identifier | - | `HCV-HBV-QS-2026` | `identifier.value` |
| Publication status | [publication-status](https://hl7.org/fhir/R5/valueset-publication-status.html) | `active` | `status` |
| Subject type | [resource-types](https://hl7.org/fhir/R5/valueset-resource-types.html) | `Patient` | `subjectType` |
| Question identifier | - | `hx-tx-hcv-hbv` | `item.item.linkId` |
| Question type | [item-type](https://hl7.org/fhir/R5/valueset-item-type.html) | `boolean`, `string`, `coding` | `item.item.type` |
| Display condition | [questionnaire-enable-operator](https://hl7.org/fhir/R5/valueset-questionnaire-enable-operator.html) | `=` / `true` | `item.item.enableWhen.operator / answerBoolean` |
| Trimester options | SNOMED CT | `255246003`, `255247007`, `255248002` | `item.item.answerOption.valueCoding` |

The canonical URL is `https://dhp.uz/fhir/integrations/Questionnaire/hepatitis-questionnaire`. The medications question is enabled when `hx-tx-hcv-hbv` is `true`. Trimester choices are inline answer options, not a separate value set.

### Recording answers (QuestionnaireResponse) {#recording-answers}

QuestionnaireResponse links the completed assessment to its questionnaire and patient. Item `linkId` values preserve the questionnaire hierarchy and identify the questions being answered.

Profile: [HepatitisQuestionnaireResponse](StructureDefinition-hepatitis-questionnaire-response.html)

Example: [example-hcv-response](QuestionnaireResponse-example-hcv-response.html)

| What is recorded | Terminology | Example code or value | Where it is stored |
| :--- | :--- | :--- | :--- |
| Identifier | - | `6f9b9d8e-3b7d-4d87-8f6e-123456789abc` | `identifier.value` |
| Response status | [questionnaire-answers-status](https://hl7.org/fhir/R5/valueset-questionnaire-answers-status.html) | `completed` | `status` |
| Questionnaire | - | [hepatitis-questionnaire](Questionnaire-hepatitis-questionnaire.html) | `questionnaire` |
| Patient | - | [example-hepatitis-patient](Patient-example-hepatitis-patient.html) | `subject` |
| Author | - | [muratova-gulshoda-role](PractitionerRole-muratova-gulshoda-role.html) | `author` |
| Authored time | - | `2026-03-19T12:00:00Z` | `authored` |
| Previous treatment | - | `true` | `item.item.answer.valueBoolean` |
| Medication history | - | `Sofosbuvir + Declatasvir` | `item.item.answer.valueString` |
| Pregnancy trimester | SNOMED CT | `255246003` | `item.item.answer.valueCoding` |

The profile constrains `subject` to HepatitisPatient, `author` to UZCorePractitionerRole, `source` to UZCoreRelatedPerson, and `partOf` to UZCoreSocioeconomicObservation. The example uses a different patient record from the care episode. Its answers are nested under groups (`item.item.answer`); the explicit boolean/string restriction in the profile is on top-level `item.answer.value[x]`. The medication text is an example response, not a treatment recommendation.

### Supporting resources {#supporting-resources}

PractitionerRole connects the clinician to the organization. These resources are referenced by the care episode, visit, diagnosis, and observations.

| Resource | Example | Role |
| :--- | :--- | :--- |
| PractitionerRole | [example-hepatologist-role](PractitionerRole-example-hepatologist-role.html) | Hepatologist at the provider organization |
| Practitioner | [example-hepatologist](Practitioner-example-hepatologist.html) | Clinician referenced by PractitionerRole |
| Organization | [samarkand-infectious-hospital](Organization-samarkand-infectious-hospital.html) | Care provider and managing organization |
