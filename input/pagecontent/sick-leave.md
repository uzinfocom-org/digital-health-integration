<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

This page documents how a sick leave certificate (листок нетрудоспособности, ЛН) is represented as FHIR resources.

### Overview

A sick leave certificate records a patient's period of temporary incapacity for work: why it was issued, the underlying diagnosis, how long it lasts, who issued it, and the case's lifecycle. The data originates from the electronic medical document system and is added to the DHP as individual, atomic FHIR resources. Resources conform to the sick leave profiles linked in each section, and to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) or standard FHIR profiles otherwise.

Most of the concepts a sick leave carries are specific to the Uzbek document (reason, category, city belonging, place of incident, kinship degree, regimen violations, conclusions) and have no standard equivalent, so they use local codes kept in their own CodeSystem with Uzbek, Russian and English designations. Where a standard concept exists it is used directly: SNOMED CT for the observation code, ICD-10 for the diagnosis, HL7 `request-status` for the lifecycle status and HL7 `v3-ActCode` for the treatment regime - each surfaced through the value set bound to its field. Each section below gives the governing profile, a concrete example resource, and a table of the value set and an example code for every field that carries a code.

A typical record links together: a [sick leave case](#opening-a-sick-leave-case-careplan) that is the certificate itself, the [additional attributes](#recording-additional-attributes-observation) captured against it, and - for family-care leaves - the [person being cared for](#family-care-the-person-cared-for-relatedperson). The case names the [patient](#supporting-resources) it is issued to and the practitioners who issued it.

### Opening a sick leave case (CarePlan)

The certificate itself. A CarePlan represents the sick leave case over its whole lifecycle; `addresses` carries both the reason for the leave and the ICD-10 diagnosis, and the lifecycle status is tracked in the workflow-status extension.

Profile: [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html)

Example: [SickLeaveCarePlanExample](CarePlan-SickLeaveCarePlanExample.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Certificate number | - | `01ТШ 005591125` | `identifier[series]` |
| Category | [SickLeaveCategoryVS](ValueSet-sick-leave-category-vs.html) | `sick-leave-category-cs#mserv-0005-00001` (Sick Leave Certificate) | `category` |
| Reason | [CarePlanReasonVS](ValueSet-care-plan-reason-vs.html) | `care-plan-reason-cs#emdoc-0001-0001` (disease) | `addresses[reason]` |
| Diagnosis (ICD-10) | [ICD10VS](ValueSet-icd-10-vs.html) | `ICD-10#J11.0` | `addresses[diagnosis]` |
| Lifecycle status | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | `request-status#completed` (Completed) | `extension[workflowStatus]` + base `status` (both always set) |
| Status history | [CarePlanStatusVS](ValueSet-care-plan-status-vs.html) | one entry per past status, with its active period | `extension[statusHistory]` |
| Diagnosis type | [diagnosis-type-vs](https://dhp.uz/fhir/core/ValueSet-diagnosis-type-vs.html) | `diagnosis-type-cs#gencl-0001-00008` (final diagnosis) | `extension[diagnosisUse]` |
| Opened on | - | `2025-08-20` | `created` |
| Validity period | - | `2025-08-20` to `2025-08-24` | `period` |
| Issuing doctor | - | reference to [Practitioner](#supporting-resources) | `contributor` |
| Head of department | - | reference to [Practitioner](#supporting-resources) | `custodian` |
| Patient | - | reference to [Patient](#supporting-resources) | `subject` |
| Person cared for | - | reference to [RelatedPerson](#family-care-the-person-cared-for-relatedperson) | `extension[relatedPerson]` |

The reason and diagnosis are distinguished by the code system they draw from: reasons come from `care-plan-reason-cs`, diagnoses from ICD-10. `extension[relatedPerson]` and `extension[diagnosisUse]` are only populated when relevant (family care, and diagnosis typing respectively). How the case's lifecycle status is recorded is described next.

#### Recording the lifecycle status

A sick leave case moves through several workflow steps between being opened and closed. Every record carries both statuses at once: the coarse standard `CarePlan.status` that FHIR requires - `draft`, `active`, `revoked`, `completed`, `entered-in-error` - and the precise Uzbek workflow step in `extension[workflowStatus]`, which is mandatory in this profile (`1..1`) and so is always populated. Both draw their codes from [CarePlanStatusVS](ValueSet-care-plan-status-vs.html), which combines the standard `request-status` codes with the local [care-plan-status-local-cs](CodeSystem-care-plan-status-local-cs.html) steps. When the current step is one of the five standard states, `workflowStatus` simply repeats the standard code; the finer steps (sent for approval, returned, sent to MSEC, supplemented with MSEC data, extended) have no standard equivalent and appear only in `workflowStatus`.

Every `workflowStatus` maps onto exactly one standard `status`, so a consumer that ignores the extension still reads a valid coarse state. The full crosswalk:

| Workflow step | `workflowStatus` | `status` (base) |
| :--- | :--- | :--- |
| Draft | `request-status#draft` | `draft` |
| Active / in force | `request-status#active` | `active` |
| Revoked | `request-status#revoked` | `revoked` |
| Completed / closed | `request-status#completed` | `completed` |
| Entered in error | `request-status#entered-in-error` | `entered-in-error` |
| Sent for approval | `care-plan-status-local-cs#emdoc-0002-0004` | `draft` |
| Returned | `care-plan-status-local-cs#emdoc-0002-0005` | `draft` |
| Sent to MSEC | `care-plan-status-local-cs#emdoc-0002-0002` | `draft` |
| Supplemented with MSEC data | `care-plan-status-local-cs#emdoc-0002-0003` | `draft` |
| Extended | `care-plan-status-local-cs#emdoc-0002-0001` | `active` |

The local steps resolve to `draft` while the certificate is still being worked on (awaiting approval, returned for correction, under MSEC review); only *Extended* keeps the case `active`. For the five standard states `status` and `workflowStatus` carry the same code.

`CarePlan.status` and `extension[workflowStatus]` always hold the case's current state. Each time the status changes, an `extension[statusHistory]` entry is added for the step that just ended - carrying its code and the `period` it was active - so the full timeline is preserved (sent for approval → active → completed). The [example](CarePlan-SickLeaveCarePlanExample.html) records this history.

### Recording additional attributes (Observation)

The extra attributes a sick leave carries beyond the case itself - city belonging, place of incident, treatment regime, regimen violations, conclusions and so on - are captured as a single Observation that is `basedOn` the CarePlan. Each attribute is one `component`, identified by its code from [SickLeaveComponentVS](ValueSet-sick-leave-component-vs.html); the value type differs per component (coded, boolean or dateTime).

Profile: [SickLeaveObservation](StructureDefinition-sick-leave-observation.html)

Example: [sickleave-observation-01](Observation-sickleave-observation-01.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation code | - | `SNOMED CT#224459001` (On sick leave from work) | `code` |
| Case it belongs to | - | reference to [SickLeaveCarePlan](#opening-a-sick-leave-case-careplan) | `basedOn` |
| City belonging | [CarePlanBelongingVS](ValueSet-care-plan-belonging-vs.html) | `care-plan-belonging-cs#emdoc-0003-0001` (urban population) | `component[cityBelonging]` |
| Place of incident | [PlaceOfIncidentVS](ValueSet-place-of-incident-vs.html) | `place-of-incident-cs#emdoc-0004-0002` (in everyday life) | `component[placeOfIncident]` |
| Came from another city | - | `false` (boolean) | `component[fromAnotherCity]` |
| Infectious contact | - | `false` (boolean) | `component[infectiousContact]` |
| Kinship degree | [RelationDegreeVS](ValueSet-relation-degree-vs.html) | `relation-degree-cs#emdoc-0005-0001` (mother) | `component[kinshipDegree]` |
| Treatment regime | [EncounterClassVS](ValueSet-encounter-class-vs.html) | `v3-ActCode#AMB` (ambulatory) | `component[regime]` |
| Regimen violation | [RegimenViolationVS](ValueSet-regimen-violation-vs.html) | `regimen-violation-cs#emdoc-0007-0005` (other violations) | `component[regimenViolation]` |
| Temporary job transfer date | - | `2025-08-25` (dateTime) | `component[tempJobTransfer]` |
| Conclusions | [ConclusionsVS](ValueSet-conclusions-vs.html) | `conclusions-cs#emdoc-0008-0001` | `component[conclusions]` |
| Verification date | - | `2025-08-22` (dateTime) | `component[verificationDate]` |

The treatment regime uses HL7 `v3-ActCode` (`AMB`, `IMP`) where the standard fits and adds local codes for regimes the standard does not cover (for example sanatorium); every other coded component uses a local code, as these concepts are specific to the Uzbek certificate. Components are optional - populate only those the certificate records.

### Family care: the person cared for (RelatedPerson)

When the sick leave is issued for the care of a sick family member (for example a child under 14 or a disabled child), the person being cared for is recorded as a RelatedPerson linked from the case's `extension[relatedPerson]`.

Profile: [SickLeaveRelatedPerson](StructureDefinition-sick-leave-related-person.html)

Example: [relatedperson-01](RelatedPerson-relatedperson-01.html), linked from the family-care case [SickLeaveFamilyCareExample](CarePlan-SickLeaveFamilyCareExample.html) via `extension[relatedPerson]`

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Full name | - | `Boltayev Damir Ketmonovich` | `name` |
| Gender | [administrative-gender](https://hl7.org/fhir/R5/valueset-administrative-gender.html) | `male` | `gender` |
| Gender differentiation (when `other`) | [gender-other-vs](https://dhp.uz/fhir/core/ValueSet-gender-other-vs.html) | - | `gender.extension[otherGender]` |
| Birth date | - | `1950-01-01` | `extension[birthdate]` |
| Patient being cared for | - | reference to [Patient](#supporting-resources) | `patient` |

`gender.extension[otherGender]` is only used to differentiate the administrative gender when `gender` is `other`.

### Supporting resources

These resources are referenced by the records above. The `subject` is constrained to UZ Core Patient; the practitioner references are not profiled, and `contributor` / `custodian` also accept PractitionerRole, Organization or CareTeam.

| Resource | Referenced as | Example | Role |
| :--- | :--- | :--- | :--- |
| Patient | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) | [example](Patient-example.html) | The person the sick leave is issued to (`subject`) |
| Practitioner | `Practitioner` (or PractitionerRole / Organization / CareTeam) | [examplePractitioner](Practitioner-examplePractitioner.html) | The doctor who issued the certificate (`contributor`) |
| Practitioner | `Practitioner` (or PractitionerRole / Organization / CareTeam) | [exampleCustodian](Practitioner-exampleCustodian.html) | The head of department responsible for the certificate (`custodian`) |
