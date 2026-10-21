<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td {
  overflow-wrap: anywhere;
  word-break: break-word;
  vertical-align: top;
}
</style>

### Recording the patient's social status (Observation)

The patient's social status is represented using the [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) profile.

**Examples:** [`example-narcology-socioeconomic`](Observation-example-narcology-socioeconomic.html)

The observation identifies the social-status observation using SNOMED CT concept `82996008`. The patient's actual social status is recorded in `valueCodeableConcept` using [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs).

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation status | ObservationStatus | `final` | `status` |
| Observation type | [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `SNOMED CT#82996008` | `code` |
| Social status | [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `regis0010.00003` (Employed) | `valueCodeableConcept` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Observation date | - | `2026-03-12` | `effectiveDateTime` |
| Performer | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `performer` |

The following social-status codes are used in the Narcology Registry:

| Code | Description |
| :--- | :--- |
| `regis0010.00001` | Учащийся |
| `regis0010.00003` | Работающий / Employed |
| `regis0010.00004` | Неработающий |
| `regis0010.00006` | Пенсионер |

The `subject` references the patient whose social status is being recorded.

---

### Registering the patient in a dynamic observation group (EpisodeOfCare)

The patient's narcology registration and dynamic observation group are represented using the [Narcology Episode Of Care](StructureDefinition-narcology-episode-of-care.html) profile.

**Examples:** [`example-narcology-episode-of-care`](EpisodeOfCare-example-narcology-episode-of-care.html)

The episode records the patient's registration status, dynamic observation group, diagnoses associated with the episode, patient, managing organization, registration period, and responsible practitioner role.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | `https://dhp.uz/fhir/core/sid/reg/uz/narco` | `identifier` |
| Registration status | [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `active` | `status` |
| Dynamic observation group | [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `narcr0001-00001` | `type[group]` |
| Diagnosis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Diagnosis use | Encounter Diagnosis Use | `working` | `diagnosis.use` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `patient` |
| Managing organization | - | reference to [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `managingOrganization` |
| Registration date | - | `2026-03-10` | `period.start` |
| Care manager | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `careManager` |

When the patient is registered in the Narcology Registry, the episode status is `active`.

When the patient is removed from registration, the episode status should be `finished`.

The dynamic observation group is represented using the `group` slice on `EpisodeOfCare.type`.

The defined narcology and psychiatry episode-of-care group codes are:

| Code | SNOMED CT code | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0001-00001` | `302805002` | Профилактическая группа | Profilaktik guruh | Preventive group |
| `narcr0001-00002` | `225419007` | Диспансерная группа | Dispanser guruhi | Dispensary group |
| `psycr0001-00001` | `52748007` | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

The SNOMED CT mappings are defined by the [Narcology and Psychiatry EpisodeOfCare Type Groups to SNOMED CT](ConceptMap-narcology-psychiatry-episode-of-care-type-group-to-snomed.html).

#### Diagnosis codes

When recording a diagnosis associated with the narcology episode, implementers should use the applicable code from [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs).

The specified diagnosis codes are:

| Clinical condition | Code system | Code | When to record |
| :--- | :--- | :--- | :--- |
| Harmful use of other stimulants, including caffeine | ICD-10 | `F15.1` | Record when this narcology diagnosis applies to the patient |
| HIV disease resulting in other conditions | ICD-10 | `B23` | Record as a separate `Condition` when HIV is selected or identified in the Narcology Registry |
| Tuberculosis of respiratory system | ICD-10 | `A15.7` | Record as a separate `Condition` when tuberculosis is selected or identified in the Narcology Registry |

If disability is present, a separate `Condition` should be created using SNOMED CT code `21134002` (`Disability`).

The episode may contain multiple diagnoses. Each `diagnosis.condition` references the corresponding [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition).

---

### Recording a medical encounter (Encounter)

A patient's medical visit within the Narcology Registry is represented using the [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) profile.

**Examples:** [`example-narcology-encounter`](Encounter-example-narcology-encounter.html)

The encounter represents the medical visit recorded by the healthcare provider and may be associated with the patient's `EpisodeOfCare`.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Encounter status | Encounter Status | `completed` | `status` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Episode of care | - | reference to [NarcologyEpisodeOfCare](StructureDefinition-narcology-episode-of-care.html) | `episodeOfCare` |
| Actual encounter period | - | `2026-03-10T10:00:00Z` – `2026-03-10T11:00:00Z` | `actualPeriod` |
| Participant type | Participant Type | `ATND` | `participant.type` |
| Encounter practitioner | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `participant.actor` |
| Encounter type | - | `mserv-0001-00004` (Treatment services) | `type[nationalType]` |
| Diagnosis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Diagnosis use | Encounter Diagnosis Use | `final` | `diagnosis.use` |

The encounter status may be:

- `in-progress`
- `on-hold`
- `completed`
- `cancelled`
- `entered-in-error`

The `episodeOfCare` reference associates the encounter with the patient's narcology registration episode.

An encounter may contain multiple diagnoses. Each diagnosis references a [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) and may have an associated diagnosis-use value.

---

### Recording the medical-consultation commission decision (Observation)

The medical-consultation commission's decision is represented using the [NarcologyObservation](StructureDefinition-narcology-observation.html) profile.

**Examples:** [`example-narcology-commission`](Observation-example-narcology-commission.html)

The profile is used to contain notes, findings, and recommendations issued by the Medical Advisory Commission.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation status | Observation Status | `final` | `status` |
| Commission decision type | [NarcologyTypeResourceVS](ValueSet-narcology-type-resource-vs.html) | `type-res-0002-0001` | `code` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Encounter | - | reference to [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Commission decision date | - | `2026-03-12` | `effectiveDateTime` |
| Commission member | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `performer` |
| Commission result | - | `Dispensary observation is required. The patient is to be reviewed again in six months.` | `valueString` |

The commission decision type is:

| Code | SNOMED CT code | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `type-res-0002-0001` | `444804000` | Решение комиссии | Komissiya qarori | The commission's decision |

The corresponding terminology is defined in [TypeResourceCS](CodeSystem-type-resource-cs.html), and the SNOMED CT mapping is defined by the [Type Resource to SNOMED CT ConceptMap](ConceptMap-type-resource-to-snomed.html).

Each commission member is recorded as a separate `performer` reference. The decision the commission reached is recorded in `valueString`, which is required by this profile.

---

### Recording a patient's clinical condition (Condition)

A narcology-related clinical condition is represented using the [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) profile.

**Examples:** [`example-narcology-condition`](Condition-example-narcology-condition.html)

The `Condition` records the clinical status, diagnosis, patient, related encounter, registration date, and organization providing the information.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Clinical status | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Disability severity | [DisabilityVS](https://terminology.dhp.uz/fhir/core/ValueSet/disability-vs) | applicable disability severity | `severity` |
| Diagnosis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `code` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Encounter | - | reference to [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Registration date | - | `2026-03-10` | `recordedDate` |
| Information provider | - | reference to [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `participant.actor` |

The clinical status is required.

When the condition is currently applicable to the patient, its status should be `active`.

When the condition is no longer applicable, the condition status should be changed according to the appropriate FHIR clinical-status semantics, for example `resolved` where applicable.

#### Diagnosis codes

Implementers should use the applicable diagnosis code from [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs).

The Narcology Registry uses the following specified diagnosis codes:

| Condition | Code system | Code | When to record |
| :--- | :--- | :--- | :--- |
| Harmful use of other stimulants, including caffeine | ICD-10 | `F15.1` | Record when this narcology diagnosis applies to the patient |
| HIV disease resulting in other conditions | ICD-10 | `B23` | Record as a separate `Condition` when HIV is selected or identified in the Narcology Registry |
| Tuberculosis of respiratory system | ICD-10 | `A15.7` | Record as a separate `Condition` when tuberculosis is selected or identified in the Narcology Registry |
| Disability | SNOMED CT | `21134002` | Record as a separate `Condition` when disability is present |

If HIV or tuberculosis is not selected in the Narcology Registry, the corresponding additional `Condition` should not be created.

Each condition is associated with the patient through `subject`.

When a condition is identified or managed during a specific medical encounter, the `encounter` reference may be populated.

#### Disability

The following rules apply to disability:

1. `severity` should only be populated when disability is present and the applicable severity is known.
2. When disability is present, a separate `Condition` should be created.
3. The separate disability condition uses SNOMED CT code `21134002` (`Disability`).
4. The disability condition is associated with the patient through `subject`.

---

### Recording social danger and compulsory treatment (Flag)

Important narcology registry information that healthcare providers should be aware of is represented using the [NarcologyPsychiatryFlag](StructureDefinition-narcology-psychiatry-flag.html) profile.

**Examples:** [`example-narcology-flag`](Flag-example-narcology-flag.html)

The `Flag` resource is used to record registry flags such as social danger and compulsory treatment.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Flag status | [FlagStatusVS](ValueSet-flag-status-vs.html) | `active` | `status` |
| Registry flag | [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) | `registri0001-00002` | `code` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Validity period | - | `2026-03-12` | `period` |
| Encounter | - | reference to [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Author | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `author` |

The flag status is required and may be:

- `active`
- `inactive`
- `entered-in-error`

The registry flag codes are:

| Code | SNOMED CT code | SNOMED name | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `registri0001-00001` | `129707006` | At increased risk for other-directed violence (finding) | Социальная опасность | Ijtimoiy xavflilik | Social danger / Social risk |
| `registri0001-00002` | `303163003` | Treatments administered under the provisions of the law (regime/therapy) | Принудительное лечение | Majburiy davolanish | Compulsory treatment |
| `registri0001-00003` | `303163003` | Treatments administered under the provisions of the law (regime/therapy) | Принудительное амбулаторное лечение | Majburiy ambulatoriya sharoitida davolanish | Compulsory outpatient treatment |
| `registri0001-00005` | `1193838006` | Legal guardian status (observable entity) | Под опекой | Vasiylik ostida | Legal guardian status |
| `registri0001-00006` | `21134002` | Disability (finding) | Инвалидность | Nogironlik | Disability |
| `psycr0001-00001` | `52748007` | Involuntary hospital admission (procedure) | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

The complete mapping is defined by the [Narcology and Psychiatry Registry Flags to SNOMED CT](ConceptMap-narcology-psychiatry-registry-flag-to-snomed.html).

The `subject` identifies the patient to whom the registry flag applies.

The `encounter` may be used to associate the flag with a specific medical encounter.

The `author` references the practitioner role responsible for recording the flag.

---

### Terminology summary

The terminology used by the Narcology Registry resources is summarized below.

| Terminology | Resource / Element | Purpose |
| :--- | :--- | :--- |
| [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `Observation.valueCodeableConcept` | Patient's social status |
| [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `Observation.code` | Identifies the social-status observation |
| [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `EpisodeOfCare.type[group]` | Dynamic observation group |
| [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `EpisodeOfCare.status` | Narcology registration lifecycle |
| [NarcologyTypeResourceVS](ValueSet-narcology-type-resource-vs.html) | `Observation.code` | Medical-consultation commission decision |
| [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `Condition.code` | Narcology diagnosis |
| [DisabilityVS](https://terminology.dhp.uz/fhir/core/ValueSet/disability-vs) | `Condition.severity` | Disability-related severity |
| [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) | `Flag.code` | Narcology registry flags |
| [FlagStatusVS](ValueSet-flag-status-vs.html) | `Flag.status` | Flag lifecycle |

---

### Resource relationships

A typical Narcology Registry record may connect the resources as follows:

- `Patient` is the central subject.
- [NarcologyEpisodeOfCare](StructureDefinition-narcology-episode-of-care.html) represents the patient's narcology registration and dynamic observation group.
- [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) records a medical visit and may reference the relevant `EpisodeOfCare`.
- [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) records diagnoses associated with the patient, encounter, or episode of care.
- [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) records the patient's social status.
- [NarcologyObservation](StructureDefinition-narcology-observation.html) records the medical-consultation commission decision and may reference the related `Encounter`.
- [NarcologyPsychiatryFlag](StructureDefinition-narcology-psychiatry-flag.html) records important narcology registry information, such as social danger or compulsory treatment.

<div>{% include narcology-model-en.svg %}</div><br clear="all"/>

These resources are linked through patient, episode-of-care, encounter, organization, and practitioner-role references to represent the patient's narcology registration, clinical diagnoses, social status, medical encounters, commission decisions, and important registry flags.