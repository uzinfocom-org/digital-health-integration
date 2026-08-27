<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td {
  overflow-wrap: anywhere;
  word-break: break-word;
  vertical-align: top;
}
</style>

### Registering the patient (Patient)

Patients in the Hepatitis Registry are represented using the [HepatitisPatient](StructureDefinition-hepatitis-patient.html) profile, which extends [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient).

**Examples:** [`hepatitis-patient-example`](Patient-hepatitis-patient-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| National identifier | - | `515050500505` | `identifier[nationalId]` |
| Local passport | - | `AB1234567` | `identifier[passportLocal]` |
| Health card identifier | - | `01234567890456` | `identifier[healthCardId]` |
| Active status | - | `true` | `active` |
| Name | - | `To'lanboev Tolibjon` | `name` |
| Gender | AdministrativeGender | `male` | `gender` |
| Date of birth | - | `1990-02-01` | `birthDate` |
| Contact details | - | `998-90-123-45-45` (mobile) | `telecom` |
| Nationality | - | code `44` | `extension[nationality]` |
| Citizenship | ISO 3166 | `UZ` (Uzbekistan) | `extension[citizenship]` |
| Address | - | Tashkent City, Mirzo Ulugbek District | `address` |

Unlike the base [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) profile, `telecom` is required (`Must Support`) on `HepatitisPatient`, since contact information is needed for follow-up and treatment monitoring.

---

### Recording a medical encounter (Encounter)

A patient's hepatitis-related clinical visit is represented using the [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html) profile, which extends [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter).

**Examples:** [`hepatitis-encounter-example`](Encounter-hepatitis-encounter-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Encounter status | Encounter Status | `completed` | `status` |
| Identifier | - | `ENC-2026-9901` | `identifier` |
| Identifier type | Identifier Type | `PHC` (Public Health Case Identifier) | `identifier.type` |
| Encounter type | - | `mserv-0001-00004` (Treatment services) | `type` |
| Encounter class | ActCode | `AMB` (Ambulatory) | `class` |
| Patient | - | reference to [HepatitisPatient](StructureDefinition-hepatitis-patient.html) | `subject` |
| Service provider | - | reference to [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `serviceProvider` |
| Participant type | Participant Type | `ATND` | `participant.type` |
| Encounter practitioner | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `participant.actor` |
| Actual/planned start | - | `2026-01-26` / `2026-01-26T09:41:00+05:00` | `actualPeriod` |

On `HepatitisEncounter`, `subject` is constrained to `1..1` and restricted to a reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient), and is required (`Must Support`).

---

### Recording a patient's hepatitis condition (Condition)

A hepatitis diagnosis is represented using the [HepatitisCondition](StructureDefinition-hepatitis-condition.html) profile, which extends [UZCoreCondition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition).

**Examples:** [`example-hepatitis-condition`](Condition-example-hepatitis-condition.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | `COND-2026-5541` | `identifier` |
| Identifier type | Identifier Type | `PHC` (Public Health Case Identifier) | `identifier.type` |
| Clinical status | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Diagnosis type | [DiagnosisTypeVS](https://dhp.uz/fhir/core/ValueSet/diagnosis-type-vs.html) | `gencl-0001-00003` (Main diagnosis) | `extension[diagnosisType]` |
| Diagnosis | ICD-10 | `B17.1` (Acute hepatitis C) | `code` |
| Patient | - | reference to [HepatitisPatient](StructureDefinition-hepatitis-patient.html) | `subject` |
| Encounter | - | reference to [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html) | `encounter` |
| Registration date | - | `2025-11-09T13:31:00Z` | `recordedDate` |
| Information provider | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `participant.actor` |
| Treatment outcome | [HepatitisConditionOutcomeCodesCS](CodeSystem-hepatitis-condition-outcome-codes-cs.html) | SNOMED CT `1137679005` (Good response to medication) | `extension[outcome]` |
| Notes | - | free text | `note` |

The `HepatitisCondition` profile adds two elements not present on the base [UZCoreCondition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) profile:

- `identifier` (`0..*`, `Must Support`), used to record a hepatitis-specific case identifier drawn from a dedicated identifier system.
- `extension[outcome]` (`0..1`, `Must Support`, the `HepatitisConditionOutcome` extension), used to record the treatment outcome as a `valueCodeableConcept`.

#### Treatment outcome codes

The treatment outcome is drawn from [HepatitisConditionOutcomeCodesCS](CodeSystem-hepatitis-condition-outcome-codes-cs.html), a SNOMED CT supplement with Uzbek and Russian designations:

| Code | RU | UZ | ENG |
| :--- | :--- | :--- | :--- |
| `1137679005` | Хороший ответ на лечение | Dori-darmonlar yaxshi ta'sir etdi | Good response to medication |
| `405786003` | Плохой ответ на лечение | Dori-darmonlar ta'sir etmadi | Poor response to treatment |

---

### Recording laboratory analysis results (Observation)

Laboratory test results for hepatitis are represented using the [HepatitisObservationAnalysis](StructureDefinition-hepatitis-observation-analysis.html) profile, which extends [UZCoreObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation).

**Examples:** [`example-hepatitis-observation-analysis`](Observation-example-hepatitis-observation-analysis.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation status | Observation Status | `final` | `status` |
| Identifier | - | `PZR-2026-001` | `identifier` |
| Identifier type | Identifier Type | `PHC` (Public Health Case Identifier) | `identifier.type` |
| Laboratory method | [LabMethodsCS](https://dhp.uz/fhir/core/CodeSystem/lab-methods-cs.html) | `lab-method-1` (PCR) | `method` |
| Test type | LOINC | `22314-9` (Hepatitis A virus IgM Ab [Presence] in Serum) | `code` |
| Patient | - | reference to [HepatitisPatient](StructureDefinition-hepatitis-patient.html) | `subject` |
| Result date | - | `2026-01-27T09:57:00Z` | `effectiveDateTime` |
| Result | Observation Interpretation | `NEG` (Negative) | `valueCodeableConcept` |
| Performer | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) and [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `performer` |

`HepatitisObservationAnalysis` requires (`Must Support`) `identifier`, `subject` (restricted to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient)), `effective[x]` (`dateTime` or `Period`), and `value[x]` (`Attachment`, `Quantity`, or `CodeableConcept`), so that a laboratory result can be reported as a coded interpretation, a numeric value, or an attached report. Where a result is decomposed into multiple analytes, each `component.value[x]` (`string`, `CodeableConcept`, or `Quantity`), `component.dataAbsentReason`, and `component.interpretation` are also `Must Support`.

---

### Recording ultrasound findings (Observation)

Liver ultrasound findings are represented using the [HepatitisObservationUltraSound](StructureDefinition-hepatitis-observation-ultra-sound.html) profile, which extends [UZCoreObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation).

**Examples:** [`example-ultrasound-cirrhosis`](Observation-example-ultrasound-cirrhosis.html), [`example-ultrasound-lesion`](Observation-example-ultrasound-lesion.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation status | Observation Status | `final` | `status` |
| Identifier | - | `OBS-2026-5541` | `identifier` |
| Identifier type | Identifier Type | `PHC` (Public Health Case Identifier) | `identifier.type` |
| Ultrasound finding type | [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html) | SNOMED CT `19943007` (Signs of cirrhosis) | `code` |
| Patient | - | reference to [HepatitisPatient](StructureDefinition-hepatitis-patient.html) | `subject` |
| Examination date | - | `2026-01-26` | `effectiveDateTime` |
| Finding present | - | `true` / `false` | `valueBoolean` |
| Performer | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) and [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `performer` |

`code` is bound (`required`) to [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html), and `value[x]` is restricted to `boolean`, so that each ultrasound observation records whether a specific finding type was present or absent at examination.

#### Ultrasound finding codes

The finding type is drawn from [HepatitisTypeOfUltraSoundCS](CodeSystem-hepatitis-type-of-ultra-sound-cs.html), a SNOMED CT supplement with Uzbek and Russian designations:

| Code | RU | UZ | ENG |
| :--- | :--- | :--- | :--- |
| `19943007` | Признаки цирроза | Jigar sirrozi belgilari | Signs of cirrhosis |
| `300332007` | Признаки образований в печени | Jigar shikastlanishining belgilari | Signs of liver lesions |

A separate `HepatitisObservationUltraSound` instance should be created for each finding type being reported, with `valueBoolean` indicating whether that specific finding was observed.

---

### Collecting anamnesis and epidemiological information (Questionnaire)

Clinical and epidemiological information is collected using the [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) profile, which extends [UZCoreQuestionnaire](https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire).

**Examples:** [`hepatitis-questionnaire`](Questionnaire-hepatitis-questionnaire.html)

| Information to record | Value set | Example | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | `HCV-HBV-QS-2026` | `identifier` |
| Subject type | Resource Types | `Patient` | `subjectType` |
| Section grouping | - | "MAIN INFORMATION" | `item` (`type = group`) |
| Conditional question | - | "What medications were taken against HCV/HBV?" | `item.item`, shown when `hx-tx-hcv-hbv` = `true` |
| Coded answer options | - | Pregnancy trimester (first / second / third) | `item.item.answerOption` |

`HepatitisQuestionnaire` requires (`Must Support`) `identifier` and `subjectType`. Items support nested grouping (`item.item`) with `enableBehavior`, and conditional display logic via `item.item.enableWhen`, which on this profile is restricted to a `boolean` answer (`enableWhen.answer[x] only boolean`). Coded questions use `item.item.answerOption`, restricted to `string` or `Coding` values.

In the example, the question "What medications were taken against HCV/HBV?" is only shown when the patient answers `true` to having previously received HCV/HBV treatment, and a separate group collects pregnancy-related information, including pregnancy trimester as a coded answer.

---

### Recording questionnaire answers (QuestionnaireResponse)

Answers to the [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) are represented using the [HepatitisQuestionnaireResponse](StructureDefinition-hepatitis-questionnaire-response.html) profile, which extends [UZCoreQuestionnaireResponse](https://dhp.uz/fhir/core/StructureDefinition/uz-core-questionnaire-response).

**Examples:** [`example-hcv-response`](QuestionnaireResponse-example-hcv-response.html)

| Information to record | Value set | Example | Stored in |
| :--- | :--- | :--- | :--- |
| Response status | QuestionnaireResponse Status | `completed` | `status` |
| Questionnaire | - | reference to [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) | `questionnaire` |
| Patient | - | reference to [HepatitisPatient](StructureDefinition-hepatitis-patient.html) | `subject` |
| Response date | - | `2026-03-19T12:00:00Z` | `authored` |
| Author | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `author` |
| Prior treatment | - | `true` | `item.item.answer` (`valueBoolean`) |
| Medications taken | - | "Sofosbuvir + Declatasvir" | `item.item.answer` (`valueString`) |
| Related socioeconomic record | - | reference to [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) | `partOf` |
| Reporting relative | - | reference to [UZCoreRelatedPerson](https://dhp.uz/fhir/core/StructureDefinition/uz-core-related-person) | `source` |

On `HepatitisQuestionnaireResponse`, reference types are constrained: `partOf` only to [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation), `subject` only to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient), `author` only to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role), and `source` only to [UZCoreRelatedPerson](https://dhp.uz/fhir/core/StructureDefinition/uz-core-related-person). Answer values (`item.answer.value[x]`) are restricted to `boolean` or `string`.

---

### Terminology summary

The terminology used by the Hepatitis Registry resources is summarized below.

| Terminology | Resource / Element | Purpose |
| :--- | :--- | :--- |
| [DiagnosisTypeVS](https://dhp.uz/fhir/core/ValueSet/diagnosis-type-vs.html) | `Condition.extension[diagnosisType]` | Main vs. secondary diagnosis |
| ICD-10 | `Condition.code` | Hepatitis diagnosis |
| [HepatitisConditionOutcomeCodesCS](CodeSystem-hepatitis-condition-outcome-codes-cs.html) | `Condition.extension[outcome]` | Treatment outcome |
| LOINC | `Observation.code` (analysis) | Laboratory test type |
| Observation Interpretation | `Observation.valueCodeableConcept` (analysis) | Laboratory result |
| [HepatitisTypeOfUltraSoundVS](ValueSet-hepatitis-type-of-ultra-sound-vs.html) / [HepatitisTypeOfUltraSoundCS](CodeSystem-hepatitis-type-of-ultra-sound-cs.html) | `Observation.code` (ultrasound) | Ultrasound finding type |
| SNOMED CT | `Condition.code` (Disability, where applicable) | Additional clinical findings |

---

### Resource relationships

A typical Hepatitis Registry record may connect the resources as follows:

- [HepatitisPatient](StructureDefinition-hepatitis-patient.html) is the central subject.
- [HepatitisEncounter](StructureDefinition-hepatitis-encounter.html) records a hepatitis-related medical visit for the patient.
- [HepatitisCondition](StructureDefinition-hepatitis-condition.html) records the hepatitis diagnosis, its treatment outcome, and may reference the related encounter.
- [HepatitisObservationAnalysis](StructureDefinition-hepatitis-observation-analysis.html) records laboratory test results (e.g. PCR, serology) for the patient.
- [HepatitisObservationUltraSound](StructureDefinition-hepatitis-observation-ultra-sound.html) records liver ultrasound findings for the patient.
- [HepatitisQuestionnaire](StructureDefinition-hepatitis-questionnaire.html) defines the structured anamnesis and epidemiological form.
- [HepatitisQuestionnaireResponse](StructureDefinition-hepatitis-questionnaire-response.html) records the patient's (or a related person's) answers to the questionnaire, and may reference an associated socioeconomic observation.

These resources are linked through patient, encounter, practitioner-role, organization, and related-person references to represent the patient's hepatitis diagnosis, laboratory and imaging findings, treatment outcome, and collected anamnesis.