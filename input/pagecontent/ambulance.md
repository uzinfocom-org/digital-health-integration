<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

This page documents how an emergency medical service (ambulance) call (карта вызова СМП) is represented as FHIR resources.

### Overview

An ambulance call card records one call of an ambulance team to a patient: the call card number, which ambulance service answered it, the reason for the call, when the team was with the patient, the patient's state and diagnosis, and where the patient went afterwards. The data originates from the ambulance MIS and is added to the DHP as individual, atomic FHIR resources. Resources conform to the ambulance profile linked in each section, and to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) or standard FHIR profiles otherwise.

Where a standard concept exists it is used directly: HL7 `v3-ActCode` for the encounter class, HL7 `v3-ActPriority` for the priority, HL7 `v3-ParticipationType` for the team member's role, ICD-10 for the medical reason and diagnosis, and SNOMED CT place codes for where the patient was picked up. The concepts that are specific to the Uzbek ambulance service - the encounter type, the reason for the call, the patient's status and the outcome of the call - use the local UZ Core code systems with Uzbek, Russian and English designations. Each is surfaced through the UZ Core value set bound to its field. Each section below gives the governing profile, a concrete example resource, and a table of the value set and an example code for every field.

A typical record links together: an [ambulance call](#recording-an-ambulance-call-encounter) that is the call card itself, the [place the team was called to](#recording-the-call-address-location), and the [patient](#supporting-resources) the team was called to. The call can also reference the request it was made for, the Condition behind the call and the hospital the patient was taken to.

<div>{% include ambulance-model-en.svg %}</div><br clear="all"/>

### Recording an ambulance call (Encounter)

The call card itself. An Encounter represents the call from the moment it was received to the moment the team finished with the patient; `reason` carries the reason for the call and `admission` what happened to the patient afterwards.

Profile: [AmbulanceEncounter](StructureDefinition-ambulance-encounter.html)

Example: [example-ambulance-call-encounter](Encounter-example-ambulance-call-encounter.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Call card number | - | `01.CM5742/26` | `identifier` (system `https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card`) |
| Status of the call | [EncounterStatusVS](https://dhp.uz/fhir/core/ValueSet-encounter-status-vs.html) | `completed` | `status` |
| Class | [EncounterClassVS](https://dhp.uz/fhir/core/ValueSet-encounter-class-vs.html) | `v3-ActCode#EMER` (emergency) | `class[dhpClass]` |
| Priority | [EncounterPriorityVS](https://dhp.uz/fhir/core/ValueSet-encounter-priority-vs.html) | `v3-ActPriority#EM` (emergency) | `priority` |
| Type of call | [EncounterTypeVS](https://dhp.uz/fhir/core/ValueSet-encounter-type-vs.html) | `encounter-type-ambulance-cs#emer5-0006-1` (primary) | `type[nationalType]` |
| Service provided | - | reference to a [HealthcareService](https://dhp.uz/fhir/core/StructureDefinition-uz-core-healthcareservice.html) | `serviceType` |
| Patient | - | reference to [Patient](#supporting-resources) | `subject` |
| Patient's status | [EncounterSubjectStatusVS](https://dhp.uz/fhir/core/ValueSet-encounter-subject-status-vs.html) | `encounter-subject-status-cs#gencl-0003-00002` (unconscious) | `subjectStatus` |
| Request the call was made for | - | reference to a ServiceRequest or MedicationRequest | `basedOn` |
| Encounter the call is part of | - | reference to an Encounter | `partOf` |
| Ambulance organization | - | reference to [Organization](#supporting-resources) | `serviceProvider` |
| Team member's role | [EncounterParticipantTypeVS](https://dhp.uz/fhir/core/ValueSet-encounter-participant-type-vs.html) | `v3-ParticipationType#ATND` (attender) | `participant.type` |
| Team member | - | reference to [PractitionerRole](#supporting-resources) | `participant.actor` |
| Reason for the call | [EncounterReasonUseVS](https://dhp.uz/fhir/core/ValueSet-encounter-reason-use-vs.html) | `encounter-reason-use-ambulance-cs#emer103054` (significant change in blood pressure) | `reason.use` |
| Medical reason | [ICD-10](ValueSet-icd-10-vs.html) | `ICD-10#I10` | `reason.value` |
| Start and end of the call | - | `2026-03-01T09:30` to `2026-03-01T10:15` | `actualPeriod` |
| Diagnosis | [ICD-10](ValueSet-icd-10-vs.html) | `ICD-10#I10` | `diagnosis.condition` |
| Where the patient was picked up | [EncounterAdmitSourceVS](https://dhp.uz/fhir/core/ValueSet-encounter-admit-source-vs.html) | `SNOMED CT#257630004` (House) | `admission.admitSource` |
| Repeat call | [EncounterReAdmissionVS](https://dhp.uz/fhir/core/ValueSet-encounter-reAdmission-vs.html) | - | `admission.reAdmission` |
| Where the patient was taken | - | reference to a hospital Location or Organization | `admission.destination` |
| Outcome of the call | [EncounterDischargeDispositionVS](https://dhp.uz/fhir/core/ValueSet-encounter-discharge-disposition-vs.html) | `encounter-discharge-disposition-home-cs#mserv-0004-00001` (hospitalized) | `admission.dischargeDisposition` |
| Place the team was called to | - | reference to [Location](#recording-the-call-address-location) | `location.location` |
| Time the team spent there | - | `2026-03-01T09:42` to `2026-03-01T10:05` | `location.period` |

The call card number, status, type, patient, ambulance organization, start and end of the call and the place the team was called to are always sent. `reason.value` and `diagnosis.condition` are CodeableReferences: send the ICD-10 code in `concept`, or a reference to a Condition already recorded for the patient. `admission` is sent only when the call has an outcome to record, and it then always carries the outcome. The [profile page](StructureDefinition-ambulance-encounter.html) builds the JSON step by step.

### Recording the call address (Location)

The address the team was called to - the patient's home, a street, a workplace - is a Location referenced from the call's `location.location`. A hospital the patient is taken to is referenced from `admission.destination` as a Location or an Organization.

Profile: [UZCoreLocation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-location.html)

Example: [example-ambulance-call-location](Location-example-ambulance-call-location.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Name of the place | - | `Bemorning uyi` | `name` |
| Address | - | `Toshkent shahar, Yunusobod tumani, Amir Temur ko'chasi 108` | `address.text` |
| Status | - | `active` | `status` |
| Instance or kind | - | `instance` | `mode` |

### Supporting resources

These resources are referenced by the records above. Each reference is constrained to the matching UZ Core profile.

| Resource | Referenced as | Example | Role |
| :--- | :--- | :--- | :--- |
| Patient | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition-uz-core-patient.html) | [example-salim](Patient-example-salim.html) | The person the team was called to (`subject`) |
| Organization | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition-uz-core-organization.html) | [xonobod-medical-association](Organization-xonobod-medical-association.html) | The ambulance service responsible for the call (`serviceProvider`) |
| PractitionerRole | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition-uz-core-practitioner-role.html) | [example-practitionerrole](PractitionerRole-example-practitionerrole.html) | A member of the ambulance team (`participant.actor`) |
| Location | [UZCoreLocation](https://dhp.uz/fhir/core/StructureDefinition-uz-core-location.html) | [example-location](Location-example-location.html) | The hospital the patient was taken to (`admission.destination`) |
