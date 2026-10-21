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

**Examples:** [`example-psychiatry-socio-economic-observation`](Observation-example-psychiatry-socio-economic-observation.html)

The observation identifies the social-status observation using SNOMED CT concept `82996008`. The patient's actual social status is recorded in `valueCodeableConcept` using [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs).

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation status | ObservationStatus | `final` | `status` |
| Observation type | [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `SNOMED CT#82996008` | `code` |
| Social status | [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `regis0010.00003` (Employed) | `valueCodeableConcept` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Observation date | - | `2026-08-15` | `effectiveDateTime` |
| Performer | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `performer` |

The `subject` references the patient whose social status is being recorded.

---

### Registering the patient in a dynamic observation group (EpisodeOfCare)

The patient's psychiatry registration and dynamic observation group are represented using the [Psychiatry Episode Of Care](StructureDefinition-psychiatry-episode-of-care.html) profile.

**Examples:** [`example-psychiatry-episode-of-care`](EpisodeOfCare-example-psychiatry-episode-of-care.html)

The episode records the patient's registration status, service type, dynamic observation group, diagnoses associated with the episode, patient, managing organization, registration period, and responsible practitioner role.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | `https://dhp.uz/fhir/core/sid/reg/uz/psychiatry` | `identifier` |
| Registration status | [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `active` | `status` |
| Service type | Episode Of Care Type | `mserv-0001-00004` (Treatment services) | `type[serviceType]` |
| Dynamic observation group | [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `psycr0001-00001` | `type[group]` |
| Diagnosis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Diagnosis use | Encounter Diagnosis Use | `working` | `diagnosis.use` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `patient` |
| Managing organization | - | reference to [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `managingOrganization` |
| Registration date | - | `2026-08-15` | `period.start` |
| Care manager | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `careManager` |

When the patient is registered in the Psychiatry Registry, the episode status is `active`.

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

When recording a diagnosis associated with the psychiatry episode, implementers should use the applicable code from [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs).

The Psychiatry Registry examples use the following diagnosis:

| Clinical condition | Code system | Code | When to record |
| :--- | :--- | :--- | :--- |
| Harmful use of other stimulants, including caffeine | ICD-10 | `F15.1` | Record when this psychiatry diagnosis applies to the patient |

The episode may contain multiple diagnoses. Each `diagnosis.condition` references the corresponding [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition).

---

### Recording a medical encounter (Encounter)

A patient's medical visit within the Psychiatry Registry is represented using the [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) profile.

**Examples:** [`example-psychiatry-encounter`](Encounter-example-psychiatry-encounter.html)

The encounter represents the medical visit recorded by the healthcare provider and may be associated with the patient's `PsychiatryEpisodeOfCare`.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Encounter status | Encounter Status | `completed` | `status` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Episode of care | - | reference to [PsychiatryEpisodeOfCare](StructureDefinition-psychiatry-episode-of-care.html) | `episodeOfCare` |
| Actual encounter period | - | starts `2026-08-15` | `actualPeriod` |
| Participant type | Participant Type | `ATND` | `participant.type` |
| Encounter practitioner | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `participant.actor` |
| Encounter type | - | `mserv-0001-00004` (Treatment services) | `type` |
| Diagnosis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Diagnosis use | Encounter Diagnosis Use | `final` | `diagnosis.use` |

The encounter status may be:

- `in-progress`
- `on-hold`
- `completed`
- `cancelled`
- `entered-in-error`

The `episodeOfCare` reference may be used to associate the encounter with the patient's psychiatry registration episode.

An encounter may contain multiple diagnoses. Each diagnosis references a [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) and may have an associated diagnosis-use value.

---

### Recording the medical-consultation commission decision (Observation)

The medical-consultation commission's decision is represented using the [PsychiatryCommissionObservation](StructureDefinition-psychiatry-commission-observation.html) profile.

**Examples:** [`example-psychiatry-commission-observation`](Observation-example-psychiatry-commission-observation.html)

The profile is used to record the decision of the medical-consultation commission, including the decision result and, where applicable, the protocol number or court name supporting a compulsory-treatment decision.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | `https://dhp.uz/fhir/core/sid/reg/uz/psychiatry` | `identifier` |
| Observation status | Observation Status | `final` | `status` |
| Commission decision type | [TypeResourceCS](CodeSystem-type-resource-cs.html) | `type-res-0002-0001` (fixed) | `code` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Encounter | - | reference to [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Commission decision date | - | `2026-08-15` | `effectiveDateTime` |
| Commission member | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `performer` |
| Commission result | - | `Compulsory inpatient treatment is required.` | `valueString` |
| Free-text note | - | clinical summary supporting the decision | `note` |
| Protocol number / court name | - | `Protocol No. 123, Tashkent City Civil Court` | `component[protocolNumber].valueString` |

The commission decision type is:

| Code | SNOMED CT code | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `type-res-0002-0001` | `444804000` | Решение комиссии | Komissiya qarori | The commission's decision |

The corresponding terminology is defined in [TypeResourceCS](CodeSystem-type-resource-cs.html), and the SNOMED CT mapping is defined by the [Type Resource to SNOMED CT ConceptMap](ConceptMap-type-resource-to-snomed.html).

The `protocolNumber` component is used to record the protocol number or court name associated with a compulsory-treatment decision. It uses `type-resource-cs#type-res-0002-0002`.

Each commission member is recorded as a separate `performer` reference.

---

### Recording a patient's clinical condition (Condition)

A psychiatry-related clinical condition is represented using the [PsychiatryCondition](StructureDefinition-psychiatry-condition.html) profile.

**Examples:** [`example-psychiatry-condition`](Condition-example-psychiatry-condition.html)

The `PsychiatryCondition` profile records the clinical status, verification status, diagnosis, patient, related encounter, onset date, registration date, and organization providing the information.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | `https://dhp.uz/fhir/core/sid/reg/uz/psychiatry` | `identifier` |
| Clinical status | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Verification status | Condition Verification Status | `confirmed` | `verificationStatus` |
| Diagnosis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `code` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Encounter | - | reference to [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Onset date | - | `2026-08-15` | `onsetDateTime` |
| Registration date | - | `2026-08-15` | `recordedDate` |
| Information provider | - | reference to [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `participant.actor` |

The clinical status is required.

When the condition is currently applicable to the patient, its status should be `active`.

When the condition is no longer applicable, the condition status should be changed according to the appropriate FHIR clinical-status semantics, for example `resolved` where applicable.

#### Diagnosis codes

Implementers should use the applicable diagnosis code from [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs).

The Psychiatry Registry examples use the following diagnosis:

| Condition | Code system | Code | When to record |
| :--- | :--- | :--- | :--- |
| Harmful use of other stimulants, including caffeine | ICD-10 | `F15.1` | Record when this psychiatry diagnosis applies to the patient |

Each condition is associated with the patient through `subject`.

When a condition is identified or managed during a specific medical encounter, the `encounter` reference may be populated.

---

### Recording social danger and compulsory treatment (Flag)

Important registry information that healthcare providers should be aware of when assessing, treating, or managing a patient is represented using the [NarcologyPsychiatryFlag](StructureDefinition-narcology-psychiatry-flag.html) profile.

**Examples:** [`example-psychiatry-flag`](Flag-example-psychiatry-flag.html)

The `Flag` resource is shared by the Narcology and Psychiatry Registries and is used to record registry information such as social danger, compulsory treatment, legal guardian status, disability, and compulsory inpatient treatment.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Flag status | [FlagStatusVS](ValueSet-flag-status-vs.html) | `active` | `status` |
| Registry flag | [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) | `psycr0001-00001` | `code` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Validity period | - | `2026-08-15` | `period` |
| Encounter | - | reference to [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Author | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `author` |

The flag status is required and may be:

- `active`
- `inactive`
- `entered-in-error`

The registry flag codes applicable to Narcology and Psychiatry are:

| Code | SNOMED CT code | SNOMED name | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `registri0001-00001` | `129707006` | At increased risk for other-directed violence (finding) | Социальная опасность | Ijtimoiy xavflilik | Social danger / Social risk |
| `registri0001-00002` | `303163003` | Treatments administered under the provisions of the law (regime/therapy) | Принудительное лечение | Majburiy davolanish | Compulsory treatment |
| `registri0001-00003` | `303163003` | Treatments administered under the provisions of the law (regime/therapy) | Принудительное амбулаторное лечение | Majburiy ambulatoriya sharoitida davolanish | Compulsory outpatient treatment |
| `registri0001-00005` | `1193838006` | Legal guardian status (observable entity) | Под опекой | Vasiylik ostida | Legal guardian status |
| `registri0001-00006` | `21134002` | Disability (finding) | Инвалидность | Nogironlik | Disability |
| `psycr0001-00001` | `52748007` | Involuntary hospital admission (procedure) | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

The `psycr0001-00001` code is specifically applicable to the Psychiatry Registry. The code is defined in the shared `NarcologyPsychiatryEpisodeOfCareTypeGroupCS` CodeSystem and is included in the [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) ValueSet.

The complete mapping between registry flag codes and SNOMED CT concepts is defined by the [Narcology and Psychiatry Registry Flags to SNOMED CT](ConceptMap-narcology-psychiatry-registry-flag-to-snomed.html) ConceptMap.

The `subject` identifies the patient to whom the registry flag applies.

The `encounter` may be used to associate the flag with a specific medical encounter.

The `author` references the practitioner role responsible for recording the flag.

---


### Terminology summary

The terminology used by the Psychiatry Registry resources is summarized below.

| Terminology | Resource / Element | Purpose |
| :--- | :--- | :--- |
| [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `Observation.valueCodeableConcept` | Patient's social status |
| [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `Observation.code` | Identifies the social-status observation |
| [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `EpisodeOfCare.type[group]` | Dynamic observation group shared with Narcology |
| [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `EpisodeOfCare.status` | Psychiatry registration lifecycle |
| [TypeResourceCS](CodeSystem-type-resource-cs.html) | `Observation.code` | Medical-consultation commission decision |
| [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `Condition.code`, `EpisodeOfCare.diagnosis.condition` | Psychiatry diagnosis |
| [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) | `Flag.code` | Narcology and Psychiatry registry flags |
| [FlagStatusVS](ValueSet-flag-status-vs.html) | `Flag.status` | Flag lifecycle |

---

### Resource relationships

A typical Psychiatry Registry record may connect the resources as follows:

- `Patient` is the central subject.
- [PsychiatryEpisodeOfCare](StructureDefinition-psychiatry-episode-of-care.html) represents the patient's psychiatry registration and dynamic observation group.
- [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) records a medical visit and may reference the relevant `PsychiatryEpisodeOfCare`.
- [PsychiatryCondition](StructureDefinition-psychiatry-condition.html) records diagnoses associated with the patient and encounter.
- [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) records the patient's social status.
- [PsychiatryCommissionObservation](StructureDefinition-psychiatry-commission-observation.html) records the medical-consultation commission decision, including the legal protocol or court behind a compulsory-treatment order.
- [NarcologyPsychiatryFlag](StructureDefinition-narcology-psychiatry-flag.html) records important registry information applicable to Psychiatry, including compulsory inpatient treatment represented by `psycr0001-00001`.

<div>{% include psychiatry-model-en.svg %}</div><br clear="all"/>

These resources are linked through patient, episode-of-care, encounter, organization, and practitioner-role references to represent the patient's psychiatry registration, clinical diagnoses, social status, medical encounters, commission decisions, and important registry flags.