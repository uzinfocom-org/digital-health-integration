<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.sl-badge { display: inline-block; padding: 1px 10px; border-radius: 999px; border: 1px solid; font-size: 0.85em; font-weight: 600; line-height: 1.6; white-space: nowrap; }
.sl-opened { background: #DCFCE7; color: #166534; border-color: #16A34A; }
.sl-extended { background: #DBEAFE; color: #1E40AF; border-color: #2563EB; }
.sl-closed { background: #E5E7EB; color: #1F2937; border-color: #4B5563; }
.sl-cancelled { background: #FEE2E2; color: #991B1B; border-color: #DC2626; }
.sl-grid { display: grid; grid-template-columns: minmax(0, 1fr) minmax(0, 1fr); gap: 12px; margin: 8px 0 20px; }
.sl-grid pre { max-height: 460px; overflow: auto; font-size: 12px; margin: 0 0 8px; }
.sl-label { font-weight: 600; font-size: 0.85em; margin: 0 0 4px; color: #4B5563; }
.sl-label.sl-fhir { color: #2563EB; }
@media (max-width: 900px) { .sl-grid { grid-template-columns: minmax(0, 1fr); } }
.sl-check ul { list-style: none; padding-left: 0; }
.sl-check li { padding-left: 1.8em; text-indent: -1.8em; margin-bottom: 6px; }
.sl-check li::before { content: "\2610"; color: #2563EB; font-size: 1.15em; margin-right: 0.6em; }
.sl-callout { border-left: 4px solid; border-radius: 6px; padding: 12px 16px; margin: 16px 0; }
.sl-callout > :last-child { margin-bottom: 0; }
.sl-info { background: #EFF6FF; border-color: #2563EB; }
.sl-alert { background: #FFFBEB; border-color: #D97706; }
.sl-callout-title { font-weight: 700; margin-bottom: 6px; }
</style>

This page documents how a sick leave certificate (листок нетрудоспособности, ЛН) from the DHP sick leave service is represented as FHIR resources.

<div class="sl-callout sl-info" markdown="1">
<div class="sl-callout-title">Built on the DHP sick leave API v3</div>

The mapping on this page follows version 3 of the DHP sick leave API, including its changes of 18 August 2026 (the full organization address and the names of the preliminary and final diagnoses). Every field named in the "Sick leave API" columns below is a field of the sick leave object this API returns; the structure of that object, with an example, is described on the [DHP wiki](https://wiki.dhp.uz/s/guide/doc/sickleave-JaIdi0iUkW).
</div>

<div class="sl-callout sl-alert" id="auto-close" markdown="1">
<div class="sl-callout-title">A closed sick leave may be missing a diagnosis</div>

Doctors do not always close a sick leave, so some would stay open indefinitely. To prevent that, a sick leave that has not been closed is closed automatically 5 days after the end of its last period of incapacity. A sick leave closed this way may have only the preliminary diagnosis and no final one - or, the other way round, only the final diagnosis and no preliminary one. Consumers must not assume that a `closed` sick leave references both [diagnoses](#recording-the-diagnoses-condition).
</div>

### Overview

A sick leave certificate records a patient's period of temporary incapacity for work: why it was issued, the diagnosis, the periods of incapacity, who issued it, and the case's lifecycle. The sick leave service issues five kinds of document with the same structure: the sick leave certificate itself, certificates of incapacity for caring for a sick child (138/x), for students (095/x) and due to intoxication (094/x), and the referral to the Medical and Social Expert Commission (MSEC). The data is added to the DHP as individual, atomic FHIR resources. Resources conform to the sick leave profiles linked in each section, and to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles otherwise.

The document type, status and reason are specific to the Uzbek certificate and have no standard equivalent, so they use local codes kept in their own CodeSystem with Uzbek, Russian and English designations; the document type and status codes are the codes the sick leave API sends. Where a standard concept exists it is used directly: SNOMED CT for the observation code, ICD-10 for the diagnoses and HL7 `condition-ver-status` to tell the preliminary diagnosis from the final one. Each section below gives the governing profile, an example resource, and a table that maps every field of the sick leave API to where it is stored.

A typical record links together: a [sick leave case](#opening-a-sick-leave-case-careplan) that is the certificate itself, its [diagnoses](#recording-the-diagnoses-condition), the [additional attributes](#recording-additional-attributes-observation) captured against it, and - when the document involves one - the [related person](#family-care-the-person-cared-for-relatedperson). The case names the [patient](#supporting-resources) it is issued to, the practitioners who issued and approved it and the issuing organization.

<div>{% include sick-leave-model-en.svg %}</div><br clear="all"/>

| Scenario | Example |
| :--- | :--- |
| Sick leave for a disease, extended once and closed; the preliminary diagnosis was refined | [sick-leave-extended](CarePlan-sick-leave-extended.html) |
| Open sick leave for the care of a sick family member, issued outside the place of residence | [sick-leave-family-care](CarePlan-sick-leave-family-care.html) |
| Certificate of incapacity for a student (095/x), cancelled | [sick-leave-cancelled](CarePlan-sick-leave-cancelled.html) |

### Data flow {#data-flow}

The sick leave service writes the resources to the DHP in the order of their references: a resource is written after the resources it points to. Patient, Practitioner and Organization already exist in the DHP and are referenced as they are. Each change of the sick leave is a new version of the same CarePlan.

<div>{% include sick-leave-flow-en.svg %}</div><br clear="all"/>

### Opening a sick leave case (CarePlan)

The certificate itself. A CarePlan represents the sick leave case over its whole lifecycle; `addresses` carries the reason for the leave and references the diagnoses, and the lifecycle status is tracked in the workflow-status extension.

Profile: [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html)

Example: [sick-leave-extended](CarePlan-sick-leave-extended.html)

| Information to record | Sick leave API | Value set | Example | Stored in |
| :--- | :--- | :--- | :--- | :--- |
| Identifier in the sick leave service | `id` | - | `550e8400-e29b-41d4-a716-446655440000` | `id` |
| Sick leave number (mandatory) | `code` | - | `02QR008593426` | `identifier[code]`, system [`https://dhp.uz/fhir/core/sid/doc/uz/sickleave`](NamingSystem-sick-leave-number-system.html) |
| Document type | `type` | [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html) | `sick-leave-category-cs#SL` (Sick Leave) | `category` |
| Reason | `reason` | [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html) | `care-plan-reason-cs#DIS` (Disease) | `addresses[reason]` |
| Preliminary and final diagnosis | `diagnosis` | - | reference to [SickLeaveCondition](#recording-the-diagnoses-condition) | `addresses[diagnosis]` |
| Lifecycle status | `status` | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | `care-plan-status-local-cs#closed` | `extension[workflowStatus]` + base `status` (both always set) |
| Status history | `statuses[]` | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | one entry per status, with its period | `extension[statusHistory]` |
| Periods of incapacity | `dates[]` | - | `2026-08-04` to `2026-08-06` | `extension[incapacityPeriod]`, one per period |
| Overall period | `dates[]` | - | `2026-08-04` to `2026-08-12` | `period`, from the start of the first to the end of the last period |
| Created | `createdAt` | - | `2026-08-04T09:15:32+05:00` | `created` |
| Last changed | `updatedAt` | - | `2026-08-12T16:42:11+05:00` | `meta.lastUpdated` |
| Version | `versionId` | - | `3` | `meta.versionId` |
| Patient | `patient` | - | reference to [Patient](#supporting-resources) | `subject` |
| Issuing doctor | `practitioner` | - | reference to [Practitioner](#supporting-resources) | `contributor` |
| Chief physician | `headPractitioner` | - | reference to [Practitioner](#supporting-resources) | `extension[headPractitioner]` |
| Issuing organization | `organization` | - | reference to [Organization](#supporting-resources) | `custodian` |
| Related person | `relatedPerson` | - | reference to [RelatedPerson](#family-care-the-person-cared-for-relatedperson) | `extension[relatedPerson]` |

The `type` codes of the sick leave API are the codes of [SickLeaveCategoryCS](CodeSystem-sick-leave-category-cs.html):

| `type` | Document |
| :--- | :--- |
| `SL` | Sick leave certificate |
| `CC` | Certificate of incapacity for caring for a sick child (138/x) |
| `ED` | Certificate of incapacity for students (095/x) |
| `IT` | Certificate of incapacity due to intoxication (094/x) |
| `MSEC` | Referral to the Medical and Social Expert Commission |

The `reason` codes of the sick leave API are the codes of [CarePlanReasonCS](CodeSystem-care-plan-reason-cs.html):

| `reason` | Reason |
| :--- | :--- |
| `DIS` | Disease |
| `INJ` | Injury with temporary loss of work capacity |
| `MAT` | Maternity leave |
| `FMC` | Care for a sick family member |
| `PRO` | Prosthetics in the inpatient setting of a prosthetic and orthopedic facility |
| `SAN` | Sanatorium-resort or outpatient-resort treatment |
| `QRT` | Quarantine |
| `NBC` | Care for a newborn |

`extension[headPractitioner]` and `extension[relatedPerson]` are only populated when the sick leave has them.

#### Recording the lifecycle status

Every record carries two statuses at once: the coarse standard `CarePlan.status` that FHIR requires, and the sick leave's own status in `extension[workflowStatus]`, which is mandatory in this profile (`1..1`). `extension[workflowStatus]` holds the `status` the sick leave API sends, as a code from [CarePlanStatusVS](ValueSet-care-plan-status-vs.html); each of them maps onto exactly one standard `status`, so a consumer that ignores the extension still reads a valid coarse state.

| `status` | `extension[workflowStatus]` | `CarePlan.status` |
| :--- | :--- | :--- |
| <span class="sl-badge sl-opened">opened</span> | `care-plan-status-local-cs#opened` | `active` |
| <span class="sl-badge sl-extended">extended</span> | `care-plan-status-local-cs#extended` | `active` |
| <span class="sl-badge sl-closed">closed</span> | `care-plan-status-local-cs#closed` | `completed` |
| <span class="sl-badge sl-cancelled">cancelled</span> | `care-plan-status-local-cs#cancelled` | `revoked` |

<div>{% include sick-leave-lifecycle-en.svg %}</div><br clear="all"/>

The lifecycle of a sick leave: from `opened` it is either extended, closed or cancelled; it can be extended more than once.

Each element of `statuses` becomes one `extension[statusHistory]` entry, carrying `statuses[].type` in `extension[status]` and its `start` and `end` in `extension[period]`, so the full timeline is preserved (opened → extended → closed). The current status is the last entry of the history.

`extension[statusHistory]` and `extension[incapacityPeriod]` are different things: the history records when the certificate changed state, `extension[incapacityPeriod]` records when the patient was unable to work. A sick leave extended several times has one incapacity period per extension, and a closed sick leave keeps its periods, as in the [extended example](CarePlan-sick-leave-extended.html).

<div>{% include sick-leave-timeline-en.svg %}</div><br clear="all"/>

The [extended example](CarePlan-sick-leave-extended.html) on a timeline: the status history and the periods of incapacity do not have to coincide, the overall `period` spans all periods.

### Recording the diagnoses (Condition)

The preliminary and the final diagnosis are each a Condition referenced from `addresses[diagnosis]`. The verification status tells them apart: `provisional` for the preliminary diagnosis and `confirmed` for the final one. When the final diagnosis is the same as the preliminary one, a single `confirmed` Condition is enough.

Profile: [SickLeaveCondition](StructureDefinition-sick-leave-condition.html)

Examples: [preliminary](Condition-sick-leave-extended-diagnosis-preliminary.html) and [final](Condition-sick-leave-extended-diagnosis-final.html) diagnosis of the [extended sick leave](CarePlan-sick-leave-extended.html)

| Information to record | Sick leave API | Value set | Example | Stored in |
| :--- | :--- | :--- | :--- | :--- |
| Preliminary diagnosis | `diagnosis.preliminary` | [ICD10VS](ValueSet-icd-10-vs.html) | `ICD-10#J06.9` | `code.coding` of the Condition with `verificationStatus` = `provisional` |
| Name of the preliminary diagnosis | `diagnosis.preliminaryDisplay` | - | `Acute upper respiratory infection, unspecified` | `code.text` of the same Condition |
| Final diagnosis | `diagnosis.final` | [ICD10VS](ValueSet-icd-10-vs.html) | `ICD-10#J18.9` | `code.coding` of the Condition with `verificationStatus` = `confirmed` |
| Name of the final diagnosis | `diagnosis.finalDisplay` | - | `Pneumonia, unspecified` | `code.text` of the same Condition |
| Patient | `patient` | - | reference to [Patient](#supporting-resources) | `subject` |

`clinicalStatus` is required by FHIR: `active` while the sick leave is open, `resolved` once it is closed.

A closed sick leave does not always have both diagnoses: a sick leave [closed automatically](#auto-close) may have only the preliminary or only the final one, so `addresses[diagnosis]` can hold either of them alone.

### Recording additional attributes (Observation)

The attributes a sick leave carries beyond the case itself are captured as a single Observation that is `basedOn` the CarePlan. Each attribute is one `component`, identified by its code from [SickLeaveComponentVS](ValueSet-sick-leave-component-vs.html).

Profile: [SickLeaveObservation](StructureDefinition-sick-leave-observation.html)

Example: [sick-leave-family-care-observation](Observation-sick-leave-family-care-observation.html)

| Information to record | Sick leave API | Value set | Example | Stored in |
| :--- | :--- | :--- | :--- | :--- |
| Observation code | - | - | `SNOMED CT#224459001` (On sick leave from work) | `code` |
| Case it belongs to | - | - | reference to [SickLeaveCarePlan](#opening-a-sick-leave-case-careplan) | `basedOn` |
| Patient | `patient` | - | reference to [Patient](#supporting-resources) | `subject` |
| Urban resident | `patient.isUrban` | - | `true` (boolean): urban, `false`: rural | `component[urbanResident]` |
| Issued outside the place of residence | `isNonLocal` | - | `true` (boolean) | `component[nonLocal]` |
| Epidemiological history | `epidemiologicalHistory` | - | `No contact with infectious patients in the last 21 days` (string) | `component[epidemiologicalHistory]` |

Components are optional - populate only those the sick leave has a value for.

### Related person (RelatedPerson) {#family-care-the-person-cared-for-relatedperson}

When the document involves a person related to the patient - a legal representative, a guardian, a parent, a child, another family member, or another person the document needs - that person is recorded as a RelatedPerson linked from the case's `extension[relatedPerson]`. Whether it is present depends on the document type and the reason for the incapacity.

Profile: [SickLeaveRelatedPerson](StructureDefinition-sick-leave-related-person.html)

Example: [sick-leave-related-person-mother](RelatedPerson-sick-leave-related-person-mother.html), linked from the family care case [sick-leave-family-care](CarePlan-sick-leave-family-care.html)

| Information to record | Value set | Example | Stored in |
| :--- | :--- | :--- | :--- |
| Full name | - | `Mother Patient` | `name` |
| Gender | [administrative-gender](https://hl7.org/fhir/R5/valueset-administrative-gender.html) | `female` | `gender` |
| Gender differentiation (when `other`) | [gender-other-vs](https://dhp.uz/fhir/core/ValueSet-gender-other-vs.html) | - | `gender.extension[otherGender]` |
| Birth date | - | `1962-03-15` | `birthDate` |
| Patient | - | reference to [Patient](#supporting-resources) | `patient` |

`gender.extension[otherGender]` is only used to differentiate the administrative gender when `gender` is `other`.

### Supporting resources

These resources are referenced by the records above.

| Sick leave API | Resource | Example | Mapping |
| :--- | :--- | :--- | :--- |
| `patient` | [UZ Core Patient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) | [sick-leave-patient](Patient-sick-leave-patient.html) | `identifierType` `ni` with `identifierValue` is `identifier[nationalId]`; `phone` is `telecom`; `lastName` is `name.family`, `firstName` and `middleName` are `name.given`; `birthdate` and `gender` are `birthDate` and `gender` |
| `practitioner` | [UZ Core Practitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | [sick-leave-practitioner](Practitioner-sick-leave-practitioner.html) | identifier and names as for the patient |
| `headPractitioner` | [UZ Core Practitioner](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner.html) | [sick-leave-head-practitioner](Practitioner-sick-leave-head-practitioner.html) | as for `practitioner` |
| `organization` | [UZ Core Organization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | [sick-leave-organization](Organization-sick-leave-organization.html) | `identifierType` `tax` with `identifierValue` is `identifier[taxId]`; `name` is `name`; `state`, `district`, `city` and `line` are `contact.address.state`, `.district`, `.city` and `.line` |

### From the API response to FHIR {#from-the-api-response-to-fhir}

The API response of the [extended sick leave](CarePlan-sick-leave-extended.html), split into groups. On the left is a fragment of the sick leave API response, on the right the FHIR elements the same data ends up in. Fragments are shortened; the full resources are on the example pages and in the [mapping tables](#opening-a-sick-leave-case-careplan) above.

#### 1. Identity and type {#api-identity}

`id` becomes the resource id, `code` the mandatory sick leave number, `type` the `category`.

<div class="sl-grid"><div><p class="sl-label">Sick leave API</p><pre><code class="language-json">{
  &quot;id&quot;: &quot;550e8400-e29b-41d4-a716-446655440000&quot;,
  &quot;code&quot;: &quot;02QR008593426&quot;,
  &quot;type&quot;: &quot;SL&quot;
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;CarePlan&quot;,
  &quot;id&quot;: &quot;550e8400-e29b-41d4-a716-446655440000&quot;,
  &quot;identifier&quot;: [
    {
      &quot;system&quot;: &quot;https://dhp.uz/fhir/core/sid/doc/uz/sickleave&quot;,
      &quot;value&quot;: &quot;02QR008593426&quot;
    }
  ],
  &quot;intent&quot;: &quot;plan&quot;,
  &quot;category&quot;: [
    {
      &quot;coding&quot;: [
        {
          &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs&quot;,
          &quot;code&quot;: &quot;SL&quot;
        }
      ]
    }
  ]
}</code></pre></div></div>

#### 2. Status {#api-status}

`status` goes to `extension[workflowStatus]` and decides the standard `status`; each element of `statuses` is one `extension[statusHistory]` entry.

<div class="sl-grid"><div><p class="sl-label">Sick leave API</p><pre><code class="language-json">{
  &quot;status&quot;: &quot;closed&quot;,
  &quot;statuses&quot;: [
    {
      &quot;type&quot;: &quot;opened&quot;,
      &quot;start&quot;: &quot;2026-08-04&quot;,
      &quot;end&quot;: &quot;2026-08-06&quot;
    },
    {
      &quot;type&quot;: &quot;extended&quot;,
      &quot;start&quot;: &quot;2026-08-07&quot;,
      &quot;end&quot;: &quot;2026-08-12&quot;
    },
    {
      &quot;type&quot;: &quot;closed&quot;,
      &quot;start&quot;: &quot;2026-08-12&quot;,
      &quot;end&quot;: &quot;2026-08-12&quot;
    }
  ]
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;status&quot;: &quot;completed&quot;,
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status&quot;,
      &quot;valueCode&quot;: &quot;closed&quot;
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history&quot;,
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;status&quot;,
          &quot;valueCode&quot;: &quot;opened&quot;
        },
        {
          &quot;url&quot;: &quot;period&quot;,
          &quot;valuePeriod&quot;: {
            &quot;start&quot;: &quot;2026-08-04&quot;,
            &quot;end&quot;: &quot;2026-08-06&quot;
          }
        }
      ]
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history&quot;,
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;status&quot;,
          &quot;valueCode&quot;: &quot;extended&quot;
        },
        {
          &quot;url&quot;: &quot;period&quot;,
          &quot;valuePeriod&quot;: {
            &quot;start&quot;: &quot;2026-08-07&quot;,
            &quot;end&quot;: &quot;2026-08-12&quot;
          }
        }
      ]
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history&quot;,
      &quot;extension&quot;: [
        {
          &quot;url&quot;: &quot;status&quot;,
          &quot;valueCode&quot;: &quot;closed&quot;
        },
        {
          &quot;url&quot;: &quot;period&quot;,
          &quot;valuePeriod&quot;: {
            &quot;start&quot;: &quot;2026-08-12&quot;,
            &quot;end&quot;: &quot;2026-08-12&quot;
          }
        }
      ]
    }
  ]
}</code></pre></div></div>

#### 3. Dates and version {#api-dates}

Each element of `dates` is one `extension[incapacityPeriod]`, and `period` spans all of them; `versionId`, `createdAt` and `updatedAt` go to `meta` and `created`.

<div class="sl-grid"><div><p class="sl-label">Sick leave API</p><pre><code class="language-json">{
  &quot;dates&quot;: [
    {
      &quot;start&quot;: &quot;2026-08-04&quot;,
      &quot;end&quot;: &quot;2026-08-06&quot;
    },
    {
      &quot;start&quot;: &quot;2026-08-07&quot;,
      &quot;end&quot;: &quot;2026-08-12&quot;
    }
  ],
  &quot;versionId&quot;: 3,
  &quot;createdAt&quot;: &quot;2026-08-04T09:15:32+05:00&quot;,
  &quot;updatedAt&quot;: &quot;2026-08-12T16:42:11+05:00&quot;
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;meta&quot;: {
    &quot;versionId&quot;: &quot;3&quot;,
    &quot;lastUpdated&quot;: &quot;2026-08-12T16:42:11+05:00&quot;
  },
  &quot;created&quot;: &quot;2026-08-04T09:15:32+05:00&quot;,
  &quot;period&quot;: {
    &quot;start&quot;: &quot;2026-08-04&quot;,
    &quot;end&quot;: &quot;2026-08-12&quot;
  },
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period&quot;,
      &quot;valuePeriod&quot;: {
        &quot;start&quot;: &quot;2026-08-04&quot;,
        &quot;end&quot;: &quot;2026-08-06&quot;
      }
    },
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period&quot;,
      &quot;valuePeriod&quot;: {
        &quot;start&quot;: &quot;2026-08-07&quot;,
        &quot;end&quot;: &quot;2026-08-12&quot;
      }
    }
  ]
}</code></pre></div></div>

#### 4. Reason and diagnoses {#api-diagnosis}

`reason` is `addresses[reason]`; each diagnosis is its own Condition, told apart by `verificationStatus`, and referenced from `addresses[diagnosis]`.

<div class="sl-grid"><div><p class="sl-label">Sick leave API</p><pre><code class="language-json">{
  &quot;reason&quot;: &quot;DIS&quot;,
  &quot;diagnosis&quot;: {
    &quot;preliminary&quot;: &quot;J06.9&quot;,
    &quot;preliminaryDisplay&quot;: &quot;Acute upper respiratory infection, unspecified&quot;,
    &quot;final&quot;: &quot;J18.9&quot;,
    &quot;finalDisplay&quot;: &quot;Pneumonia, unspecified&quot;,
    &quot;reason&quot;: null
  }
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;addresses&quot;: [
    {
      &quot;concept&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs&quot;,
            &quot;code&quot;: &quot;DIS&quot;
          }
        ]
      }
    },
    {
      &quot;reference&quot;: {
        &quot;reference&quot;: &quot;Condition/sick-leave-extended-diagnosis-preliminary&quot;
      }
    },
    {
      &quot;reference&quot;: {
        &quot;reference&quot;: &quot;Condition/sick-leave-extended-diagnosis-final&quot;
      }
    }
  ]
}</code></pre><p class="sl-label sl-fhir">Condition</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;Condition&quot;,
  &quot;clinicalStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-clinical&quot;,
        &quot;code&quot;: &quot;resolved&quot;
      }
    ]
  },
  &quot;verificationStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-ver-status&quot;,
        &quot;code&quot;: &quot;provisional&quot;
      }
    ]
  },
  &quot;code&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://hl7.org/fhir/sid/icd-10&quot;,
        &quot;code&quot;: &quot;J06.9&quot;
      }
    ],
    &quot;text&quot;: &quot;Acute upper respiratory infection, unspecified&quot;
  },
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  }
}</code></pre><p class="sl-label sl-fhir">Condition</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;Condition&quot;,
  &quot;clinicalStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-clinical&quot;,
        &quot;code&quot;: &quot;resolved&quot;
      }
    ]
  },
  &quot;verificationStatus&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://terminology.hl7.org/CodeSystem/condition-ver-status&quot;,
        &quot;code&quot;: &quot;confirmed&quot;
      }
    ]
  },
  &quot;code&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://hl7.org/fhir/sid/icd-10&quot;,
        &quot;code&quot;: &quot;J18.9&quot;
      }
    ],
    &quot;text&quot;: &quot;Pneumonia, unspecified&quot;
  },
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  }
}</code></pre></div></div>

#### 5. Additional attributes {#api-attributes}

`patient.isUrban` and `isNonLocal` become components of the Observation; `epidemiologicalHistory` is `null` here, so its component is left out.

<div class="sl-grid"><div><p class="sl-label">Sick leave API</p><pre><code class="language-json">{
  &quot;isNonLocal&quot;: false,
  &quot;epidemiologicalHistory&quot;: null,
  &quot;patient&quot;: {
    &quot;isUrban&quot;: true
  }
}</code></pre></div><div><p class="sl-label sl-fhir">Observation</p><pre><code class="language-json">{
  &quot;resourceType&quot;: &quot;Observation&quot;,
  &quot;status&quot;: &quot;final&quot;,
  &quot;basedOn&quot;: [
    {
      &quot;reference&quot;: &quot;CarePlan/550e8400-e29b-41d4-a716-446655440000&quot;
    }
  ],
  &quot;code&quot;: {
    &quot;coding&quot;: [
      {
        &quot;system&quot;: &quot;http://snomed.info/sct&quot;,
        &quot;code&quot;: &quot;224459001&quot;
      }
    ]
  },
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  },
  &quot;component&quot;: [
    {
      &quot;code&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs&quot;,
            &quot;code&quot;: &quot;urban-resident&quot;
          }
        ]
      },
      &quot;valueBoolean&quot;: true
    },
    {
      &quot;code&quot;: {
        &quot;coding&quot;: [
          {
            &quot;system&quot;: &quot;https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs&quot;,
            &quot;code&quot;: &quot;non-local&quot;
          }
        ]
      },
      &quot;valueBoolean&quot;: false
    }
  ]
}</code></pre></div></div>

#### 6. People and organization {#api-people}

The patient, the practitioners and the organization are references to resources in the DHP, found by their identifiers; `relatedPerson` is `null`, so there is no `extension[relatedPerson]`.

<div class="sl-grid"><div><p class="sl-label">Sick leave API</p><pre><code class="language-json">{
  &quot;patient&quot;: {
    &quot;identifierType&quot;: &quot;ni&quot;,
    &quot;identifierValue&quot;: &quot;12345678901112&quot;,
    &quot;firstName&quot;: &quot;TEST&quot;,
    &quot;lastName&quot;: &quot;PATIENT&quot;,
    &quot;middleName&quot;: null
  },
  &quot;practitioner&quot;: {
    &quot;identifierType&quot;: &quot;ni&quot;,
    &quot;identifierValue&quot;: &quot;12345678901113&quot;,
    &quot;firstName&quot;: &quot;TEST&quot;,
    &quot;lastName&quot;: &quot;DOCTOR&quot;,
    &quot;middleName&quot;: null
  },
  &quot;headPractitioner&quot;: {
    &quot;identifierType&quot;: &quot;ni&quot;,
    &quot;identifierValue&quot;: &quot;12345678901114&quot;,
    &quot;firstName&quot;: &quot;TEST&quot;,
    &quot;lastName&quot;: &quot;HEADDOCTOR&quot;,
    &quot;middleName&quot;: null
  },
  &quot;organization&quot;: {
    &quot;identifierType&quot;: &quot;tax&quot;,
    &quot;identifierValue&quot;: &quot;1234556&quot;,
    &quot;name&quot;: &quot;Test medical organization&quot;,
    &quot;state&quot;: &quot;1726&quot;
  },
  &quot;relatedPerson&quot;: null
}</code></pre></div><div><p class="sl-label sl-fhir">CarePlan</p><pre><code class="language-json">{
  &quot;subject&quot;: {
    &quot;reference&quot;: &quot;Patient/sick-leave-patient&quot;
  },
  &quot;contributor&quot;: [
    {
      &quot;reference&quot;: &quot;Practitioner/sick-leave-practitioner&quot;
    }
  ],
  &quot;custodian&quot;: {
    &quot;reference&quot;: &quot;Organization/sick-leave-organization&quot;
  },
  &quot;extension&quot;: [
    {
      &quot;url&quot;: &quot;https://dhp.uz/fhir/integrations/StructureDefinition/care-for-head-practitioner&quot;,
      &quot;valueReference&quot;: {
        &quot;reference&quot;: &quot;Practitioner/sick-leave-head-practitioner&quot;
      }
    }
  ]
}</code></pre></div></div>

### One sick leave, three versions {#one-sick-leave-three-versions}

The sick leave service sends the whole sick leave every time it changes, with the next `versionId`. In FHIR each change is a new version of the same CarePlan, written in full (`PUT CarePlan/{id}`), so `meta.versionId` grows with the API `versionId`. Below is the [extended example](CarePlan-sick-leave-extended.html) after each step; the changes between versions are shown as a diff.

#### <span class="sl-badge sl-opened">opened</span> Version 1 - opened on 4 August {#version-1}

The doctor opens the sick leave for three days with a preliminary diagnosis. The status history has one entry without an end, there is one period of incapacity.

```json
{
  "resourceType": "CarePlan",
  "meta": {
    "versionId": "1",
    "lastUpdated": "2026-08-04T09:15:32+05:00",
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
    ]
  },
  "extension": [
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
      "valueCode": "opened"
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
      "extension": [
        {
          "url": "status",
          "valueCode": "opened"
        },
        {
          "url": "period",
          "valuePeriod": {
            "start": "2026-08-04"
          }
        }
      ]
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period",
      "valuePeriod": {
        "start": "2026-08-04",
        "end": "2026-08-06"
      }
    },
    {
      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-head-practitioner",
      "valueReference": {
        "reference": "Practitioner/sick-leave-head-practitioner"
      }
    }
  ],
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/sickleave",
      "value": "02QR008593426"
    }
  ],
  "status": "active",
  "intent": "plan",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-category-cs",
          "code": "SL"
        }
      ]
    }
  ],
  "subject": {
    "reference": "Patient/sick-leave-patient"
  },
  "period": {
    "start": "2026-08-04",
    "end": "2026-08-06"
  },
  "created": "2026-08-04T09:15:32+05:00",
  "custodian": {
    "reference": "Organization/sick-leave-organization"
  },
  "contributor": [
    {
      "reference": "Practitioner/sick-leave-practitioner"
    }
  ],
  "addresses": [
    {
      "concept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/care-plan-reason-cs",
            "code": "DIS"
          }
        ]
      }
    },
    {
      "reference": {
        "reference": "Condition/sick-leave-extended-diagnosis-preliminary"
      }
    }
  ]
}
```

#### <span class="sl-badge sl-extended">extended</span> Version 2 - extended on 7 August {#version-2}

The sick leave is extended until 12 August. The `opened` entry gets its end, an `extended` entry and a second period of incapacity are added, `period.end` moves.

```diff
@@ -2,6 +2,6 @@
   "resourceType": "CarePlan",
   "meta": {
-    "versionId": "1",
-    "lastUpdated": "2026-08-04T09:15:32+05:00",
+    "versionId": "2",
+    "lastUpdated": "2026-08-07T10:02:45+05:00",
     "profile": [
       "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
@@ -11,5 +11,5 @@
     {
       "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
-      "valueCode": "opened"
+      "valueCode": "extended"
     },
     {
@@ -23,5 +23,21 @@
           "url": "period",
           "valuePeriod": {
-            "start": "2026-08-04"
+            "start": "2026-08-04",
+            "end": "2026-08-06"
+          }
+        }
+      ]
+    },
+    {
+      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
+      "extension": [
+        {
+          "url": "status",
+          "valueCode": "extended"
+        },
+        {
+          "url": "period",
+          "valuePeriod": {
+            "start": "2026-08-07"
           }
         }
@@ -33,4 +49,11 @@
         "start": "2026-08-04",
         "end": "2026-08-06"
+      }
+    },
+    {
+      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-incapacity-period",
+      "valuePeriod": {
+        "start": "2026-08-07",
+        "end": "2026-08-12"
       }
     },
@@ -65,5 +88,5 @@
   "period": {
     "start": "2026-08-04",
-    "end": "2026-08-06"
+    "end": "2026-08-12"
   },
   "created": "2026-08-04T09:15:32+05:00",
```

#### <span class="sl-badge sl-closed">closed</span> Version 3 - closed on 12 August {#version-3}

The sick leave is closed: `status` becomes `completed`, a `closed` entry is added and the final diagnosis is referenced. At the same time the final Condition is created and the preliminary one becomes `resolved`. This version is the [sick-leave-extended](CarePlan-sick-leave-extended.html) example.

```diff
@@ -2,6 +2,6 @@
   "resourceType": "CarePlan",
   "meta": {
-    "versionId": "2",
-    "lastUpdated": "2026-08-07T10:02:45+05:00",
+    "versionId": "3",
+    "lastUpdated": "2026-08-12T16:42:11+05:00",
     "profile": [
       "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-careplan"
@@ -11,5 +11,5 @@
     {
       "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-workflow-status",
-      "valueCode": "extended"
+      "valueCode": "closed"
     },
     {
@@ -39,5 +39,22 @@
           "url": "period",
           "valuePeriod": {
-            "start": "2026-08-07"
+            "start": "2026-08-07",
+            "end": "2026-08-12"
+          }
+        }
+      ]
+    },
+    {
+      "url": "https://dhp.uz/fhir/integrations/StructureDefinition/care-for-status-history",
+      "extension": [
+        {
+          "url": "status",
+          "valueCode": "closed"
+        },
+        {
+          "url": "period",
+          "valuePeriod": {
+            "start": "2026-08-12",
+            "end": "2026-08-12"
           }
         }
@@ -71,5 +88,5 @@
     }
   ],
-  "status": "active",
+  "status": "completed",
   "intent": "plan",
   "category": [
@@ -114,4 +131,9 @@
         "reference": "Condition/sick-leave-extended-diagnosis-preliminary"
       }
+    },
+    {
+      "reference": {
+        "reference": "Condition/sick-leave-extended-diagnosis-final"
+      }
     }
   ]
```

### Integrator checklist {#integrator-checklist}

Before sending sick leaves to the DHP, check that:

<div class="sl-check" markdown="1">

- Patient, Practitioner and Organization of the sick leave [exist in the DHP](#supporting-resources) and are referenced from the CarePlan;
- the CarePlan has the sick leave number in `identifier[code]` - [it is mandatory](StructureDefinition-sick-leave-careplan.html);
- `category` is the API `type` from [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html), and `addresses[reason]` the API `reason` from [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html);
- `extension[workflowStatus]` and `status` [agree with each other](#recording-the-lifecycle-status): `opened` and `extended` are `active`, `closed` is `completed`, `cancelled` is `revoked`;
- every element of `statuses` is an `extension[statusHistory]` entry and every element of `dates` an `extension[incapacityPeriod]`, and `period` spans all periods;
- each diagnosis is a [SickLeaveCondition](#recording-the-diagnoses-condition): `provisional` for the preliminary, `confirmed` for the final, `resolved` once the sick leave is closed;
- the [Observation](#recording-additional-attributes-observation) is `basedOn` the CarePlan and has only the components with a value;
- a [RelatedPerson](#family-care-the-person-cared-for-relatedperson) is written before the CarePlan that references it, and only when the document has one;
- every change is a [new version](#one-sick-leave-three-versions) of the whole CarePlan with `meta.versionId` and `meta.lastUpdated` taken from the API;
- the resources validate against the profiles of this guide, for example with the [HL7 FHIR validator](https://confluence.hl7.org/spaces/FHIR/pages/35718580/Using+the+FHIR+Validator).

</div>

### Responsible team {#responsible-team}

The sick leave profiles, extensions and terminology are maintained by the **DHP SickLeave** working group. Send questions, mapping errors and change requests to:

| Channel | Contact |
| :--- | :--- |
| Working group | DHP SickLeave |
| Email | [rustam.sadikov17@gmail.com](mailto:rustam.sadikov17@gmail.com) |
| Telegram | [@roosyabuddy](https://t.me/roosyabuddy) |

The same contact is published in `contact` of every sick leave profile, extension, code system, value set and naming system.
