Orders exchanges referrals, state-funded treatment grounds and the approval tasks that lead to hospitalization. The integration profiles [Orders ServiceRequest](StructureDefinition-orders-servicerequest.html) and [Orders Referral Approval Task](StructureDefinition-orders-referral-approval-task.html) keep integration-specific rules outside UZ Core.

### Workflow

1. Record the diagnosis and any benefit entitlement with UZ Core resources.
2. Create one Orders ServiceRequest with the referral purpose, clinical specialty and requested service.
3. Add a treatment basis in `orderDetail.parameter[basis]` and an SBDL criterion in `reason[sbdl]` where applicable.
4. Link each approval Task to the request through both `basedOn` and `focus`; `partOf` links successive approval stages.
5. Record return for revision, commission referral, facility selection, admission and discharge in `businessStatus`. Use `statusReason` for the reason behind a status.

### Representation and terminology

| Artifact | Use |
|---|---|
| [Orders ServiceRequest](StructureDefinition-orders-servicerequest.html) | Referral, specialty, treatment basis and SBDL |
| [Orders Referral Approval Task](StructureDefinition-orders-referral-approval-task.html) | Approval workflow |
| [Referral purpose](ValueSet-orders-service-request-referral-purpose-vs.html) | `category[referralPurpose]` |
| [Specialty](ValueSet-orders-service-request-specialty-vs.html) | `category[specialty]` |
| [Treatment basis](ValueSet-orders-service-request-basis-vs.html) | `orderDetail.parameter[basis].valueCodeableConcept` |
| [SBDL](ValueSet-orders-sbdl-vs.html) | `reason[sbdl]` |
| [Task business status](ValueSet-orders-task-business-status-vs.html) | `Task.businessStatus` |
| [Task status reason](ValueSet-orders-task-status-reason-vs.html) | `Task.statusReason` |
| [Funding resolution](ValueSet-orders-funding-resolution-vs.html) | `extension[fundingResolution]` |
| [Discharge sections](ValueSet-orders-discharge-summary-section-vs.html) | `Composition.section.code` |
| [Local specialty mapping](ConceptMap-orders-service-request-specialty-to-snomed-cm.html) | Legacy specialty codes → SNOMED CT |

The inherited UZ Core payment type remains in `extension[paymentType]`. Resolutions 5199 and 311 are additional legal funding grounds in [Orders funding resolution](StructureDefinition-orders-funding-resolution.html), carried as `extension[fundingResolution]`. This avoids adding concepts to a CodeSystem owned by UZ Core.

The ICD-10 diagnosis and SBDL treatment criterion are separate `reason` repetitions. UZ Core 0.12.0 fixes every coding in `reason[icd10]` to ICD-10, so placing an SBDL coding inside that slice would violate the parent profile. A benefit supporting the referral is a UZ Core Socioeconomic Observation referenced by `supportingInfo`.

OrdersReferralApprovalTask derives from FHIR Task because UZ Core 0.12.0 restricts `businessStatus` to a required set that does not contain the Orders stages. The profile preserves the national task roles, lifecycle and patient/organization reference restrictions, and binds business status to the core codes plus Orders codes.

### Examples

[Hospitalization referral](ServiceRequest-example-orders-hospitalization-referral.html) · [Returned for revision](Task-example-orders-task-specialist-returned.html) · [Hospitalization and discharge](Task-example-orders-task-hospitalization.html) · [Benefit observation](Observation-example-orders-nodira-benefits.html) · [Discharge sections](Composition-example-orders-discharge-summary.html)

### Source and migration

Migrated from UZ Core PR [#402](https://github.com/uzinfocom-org/digital-health-ig/pull/402), commit `cc439937e85a91b2ec5c1d94a6676ef242a0b2ee`. PR [#468](https://github.com/uzinfocom-org/digital-health-ig/pull/468) removes that integration-specific functionality from UZ Core. Local artifact names and ids are prefixed with Orders; profile and terminology canonicals use the Integrations namespaces. Core identifiers, code systems, payment types and task action codes are reused.

The large SBDL and treatment-basis CodeSystems are kept as pre-rendered JSON in `input/vocabulary/`, with editable FSH in `input/manual-fsh/`. Their concepts, translations, ICD-10 associations, organization levels and validity dates are preserved. The local specialty mapping retains the legacy source codes; new referrals use SNOMED CT where an equivalent exists and local specialties otherwise.
