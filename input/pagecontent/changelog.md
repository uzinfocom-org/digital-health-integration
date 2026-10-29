### In development

#### Changed

The [Form 011](StructureDefinition-form-011-hemodialysis-composition.html), [Form 066](StructureDefinition-form-066-hospital-discharge-composition.html), [Form 066-1](StructureDefinition-form-066-1-psychiatric-discharge-composition.html) and [Form 130](StructureDefinition-form-130-laboratory-test-results-composition.html) Compositions no longer fix `status` to `final`, so a document can follow the [document lifecycle](document-statuses.html) through `preliminary`, `amended` and `entered-in-error`.

### Version 0.12.1

#### Changed

The [Form 097](form-097-mapping.html) and [Form 111](form-111-mapping.html) value sets link their SNOMED CT and LOINC supplements, so their codes show Russian and Uzbek displays.

Organizations in the [Form 097](form-097-mapping.html) examples are identified by their Soliq tax ID, as in the other form examples since 0.12.0. The vitamin K Medication is a UZ Core Medication coded with its INN, and the document is dated at discharge.

[Form 097](StructureDefinition-form-097-newborn-development-composition.html) prophylaxis and immunization section entries reference [UZ Core Immunization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-immunization.html) instead of any Immunization, so vaccinations sent in Form 097 conform to UZ Core.

The Apgar component score, basic newborn skin colour and newborn care location code systems and value sets (`apgar-component-score-cs`, `newborn-skin-color-basic-cs`, `newborn-care-location-cs` and their `-vs` value sets) are removed. No profile bound them: Form 097 codes the Apgar score with LOINC and skin colour from [Newborn Skin Color Detailed](ValueSet-newborn-skin-color-detailed-vs.html).

[Form 111](StructureDefinition-form-111-pregnant-woman-individual-card-composition.html) registration section entries may also be [UZ Core Socioeconomic Observations](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html). [Previous Pregnancy Outcome](ValueSet-form111-previous-pregnancy-outcome-vs.html) adds miscarriage (SNOMED CT `17369002`). The [Form 111 mapping](form-111-mapping.html) describes the Composition.status lifecycle: `preliminary` while the card is open, `final` once it is closed, `amended` for later corrections and `entered-in-error` if it is withdrawn. The [antenatal card number](NamingSystem-antenatal-card-number-system.html) is carried in EpisodeOfCare.identifier, not Encounter.identifier.

### Version 0.12.0

#### Added

[Form 111 individual card of a pregnant and postpartum woman](StructureDefinition-form-111-pregnant-woman-individual-card-composition.html) is profiled as a FHIR Document, covering registration, diagnosis, pregnancy outcome, anamnesis, examinations, follow-up visits, birth preparation, patronage visits, perinatal risk assessment and specialist conclusions across 16 Composition sections. It ships an example document Bundle and a [field-by-field mapping page](form-111-mapping.html).

[Form 096 maternity medical record](StructureDefinition-form-096-maternity-medical-record-composition.html) is profiled as a FHIR Document, covering admission, medical and obstetric history, the current pregnancy, obstetric examination, labor, the newborn delivery record, the postpartum period, medication, diagnostic and procedure orders, materials used, sick leave certificates and responsible persons across 13 Composition sections. It ships example document Bundles, including antepartum and intrapartum stillbirth, and a [field-by-field mapping page](form-096-mapping.html). Fields that also appear in Form 111 use the same codes as Form 111. Each newborn is its own Patient, identified by its DMED medical-card number until it has a PINFL; Form 097 reuses that Patient and adds the PINFL once it is issued.

[Form 097 newborn development medical record](StructureDefinition-form-097-newborn-development-composition.html) is profiled as a FHIR Document, covering the mother and antenatal history, the birth, the first newborn examination, feeding, daily observation and physician review, weight, prophylaxis and immunization, screening, and discharge, transfer or death across 11 Composition sections. It ships example document Bundles, including live birth and stillbirth outcomes, and a [field-by-field mapping page](form-097-mapping.html).

The [Cancer Registry](cancer.html) user roles have a [code system](CodeSystem-cancer-registry-roles-cs.html) and a [ConceptMap](ConceptMap-cancer-registry-role-to-dhp-position-cm.html) to the UZ Core position and profession codes: system administrator, registrar, institution administrator and researcher.

Screening terminology carries Uzbek and Russian translations. The screening value sets reference a new [SNOMED CT supplement](CodeSystem-screening-snomed-translations-cs.html) covering 202 concepts, and the [LOINC supplement](CodeSystem-screening-laboratory-cs.html) grows from 3 to 41 codes. Its liquid-based cytology and HPV codes are now named for the test rather than for taking the smear.

#### Changed

The guide is built against [UZ Core 0.12.0](https://dhp.uz/fhir/core/changelog.html). Its one breaking change, the specialist certificate identifier system, does not reach this guide. UZ Core now translates the `order-service` action code itself, so this guide's own action code supplement is removed.

Organizations in the [Form 066](form-066-mapping.html), [Form 066-1](form-066-1-mapping.html) and [Form 111](form-111-mapping.html) examples are identified by their Soliq tax ID, in the UZ Core Organization `taxId` slice (`https://dhp.uz/fhir/core/sid/org/uz/soliq`). The local [organization code](NamingSystem-organization-code.html) identifier system `https://dhp.uz/fhir/core/sid/uz/organization-code` is retired: its canonical stays, but new data should not use it.

#### Breaking changes

[Cervical screening](cervical-breast-cancer-screening.html) colposcopy conclusions are coded in SNOMED CT where it has the concept. The local [colposcopy code system](CodeSystem-screening-colposcopy-cs.html) keeps only the two conclusions SNOMED CT lacks, under new codes, and the [value set](ValueSet-screening-colposcopy-vs.html) adds three conclusions it did not offer before. Senders switch the code and, for SNOMED CT rows, the system:

| Conclusion | Old code | New code |
|---|---|---|
| NILM (normal) | `scr-colpo-1` | SNOMED CT `373887005` |
| LSIL | `scr-colpo-2` | SNOMED CT `416030007` |
| HSIL | `scr-colpo-3` | SNOMED CT `22725004` |
| Atypical change | `scr-colpo-4` | `scrn-0091-00004` |
| ASC-H | - | SNOMED CT `373878001` |
| CIN 1 | - | SNOMED CT `285836003` |
| CIN 2+ | - | `scrn-0091-00007` |

#### Documentation

A [forms overview](forms-overview.html) maps the primary medical documentation forms of Ministry of Health Order No. 399 into its 11 volumes and the recurring document types that cut across them, with a page and diagram per volume. It is in English only.

The identifier rows on the [Form 066-1](form-066-1-mapping.html) and [hepatitis](hepatitis.html) mapping pages name the identifier system and type for each identifier.

The cervical cancer screening questionnaire response example is now [example-cervical-screening-response](QuestionnaireResponse-example-cervical-screening-response.html), as its old id was too long for the package.

### Version 0.11.1

#### Added

The [screening plans and invitations](cervical-breast-cancer-screening.html#screening-plans) section of the screening page sets out how a screening program invites a patient and tracks the patient's plan with existing UZ Core profiles, without new profiles of its own. A UZ Core ActivityDefinition is the invitation template (`kind` = `ServiceRequest`, `intent` = `plan`), a UZ Core PlanDefinition pins it by version, and the patient's plan is a UZ Core ServiceRequest with `intent` = `plan`, the screening invitation category and one program identifier. The MIS owns the plan status: DMED completes its plan once the questionnaire is saved, while HPV keeps its plan active across screening rounds. DHP does not infer completion from results.

#### Changed

The guide is built against [UZ Core 0.11.1](https://dhp.uz/fhir/core/changelog.html), whose ActivityDefinition `kind` allows ServiceRequest.

[Screening Pathology Service Request](StructureDefinition-screening-pathology-service-request.html) `basedOn` allows 1..* instead of 1..1, and [Screening Immunohistochemistry Observation](StructureDefinition-screening-immunohistochemistry-observation.html) `basedOn` 0..* instead of 0..1, so they can reference both the clinical order and the screening plan. Existing resources remain valid.

[ScreeningComposition](StructureDefinition-screening-composition.html) is retired. New screening flows do not use it, but its canonical, structure and examples stay, so the documents HPV still sends continue to validate.

#### Breaking changes

The DMED [breast](Questionnaire-BreastCancerScreeningQuestionnaire.html) and [cervical](Questionnaire-CervicalCancerScreeningQuestionnaire.html) cancer screening questionnaires carry the program identifiers `mserv-0007-00007` and `mserv-0007-00009` instead of `268547008` and `171149006`, which now identify only the HPV screening programs. Their clinical codes and scoring are unchanged.

#### Documentation

The [cervical and breast cancer screening](cervical-breast-cancer-screening.html) page explains the program identifier as a short list of where it goes and its exceptions, and shows how a screening plan links to the record in a diagram of its own. The main screening diagram has its `basedOn` cardinalities corrected.

### Version 0.11.0

#### Changed

The guide is built against [UZ Core 0.11.0](https://dhp.uz/fhir/core/changelog.html). Of its breaking changes, only the removed screening codes reach this guide, and the screening questionnaires below have already moved off them to SNOMED CT.

The screening questionnaires now carry `Questionnaire.code` in SNOMED CT, the same concept as their program type identifier: [IHD pre-test probability](Questionnaire-IhdPretestQuestionnaire.html), [fertility](Questionnaire-FertilityQuestionnaire.html), [helminths](Questionnaire-HelminthScreeningQuestionnaire.html), [cardiovascular risk](Questionnaire-CVDRiskScreeningQuestionnaire.html), [diabetes](Questionnaire-DiabetesScreeningQuestionnaire.html), [breast cancer](Questionnaire-BreastCancerScreeningQuestionnaire.html), [oncohematology](Questionnaire-OncohematologyScreeningQuestionnaire.html) and [cervical cancer](Questionnaire-CervicalCancerScreeningQuestionnaire.html). They previously carried a UZ Core `screening-code-cs` code, which UZ Core 0.11.0 removes in favour of SNOMED CT. The [cerebrovascular](Questionnaire-CerebrovascularScreeningQuestionnaire.html) questionnaire keeps `screening-code-cs#mserv-0007-00003`, as SNOMED CT has no suitable concept for it.

The [screening program type](NamingSystem-screening-program-type-identifier-system.html) identifier now documents a third value besides the SNOMED CT codes and `mserv-0007-00003`: `breast-cervical-unspecified`, which the HPV screening system writes on a resource it creates for breast and cervical cancer screening but cannot attribute to either program - a Condition whose ICD-10 code is on neither program's list, or on both, and a referral to a branch of the national oncology or maternal and child health centre. Such a resource carries exactly one program type identifier.

#### Documentation

The [cancer](cancer.html) and [hepatitis](hepatitis.html) pages now show a diagram of how their resources link together. The diagrams on the other integration pages now include every profile of the integration (screening leaves out the ScreeningComposition document), with several wrong cardinalities corrected. All of them show the clinical graph, leaving out references to organizations, practitioners and other actors.

### Version 0.10.0

#### Added

The [Cancer Registry](cancer.html) now has a FHIR model, shaped after [mCODE](https://hl7.org/fhir/us/mcode/STU4/) where the registry's data allows. [Cancer Condition](StructureDefinition-cancer-condition.html) carries the diagnosis, registry identifier, laterality and circumstances of detection, [Cancer Episode Of Care](StructureDefinition-cancer-episode-of-care.html) groups the treatment course and [Cancer Encounter](StructureDefinition-cancer-encounter.html) a visit within it. Six Observation profiles record tumor morphology, behavior, histologic grade, metastases, TNM category and TNM stage group.

Cancer coding uses ICD-10, ICD-O-3, SNOMED CT and LOINC where they exist, with local code systems for registry concepts such as detection condition, confirmation method and treatment intent. Three ConceptMaps translate the registry's own dictionary identifiers for status, ICD-10 and ICD-O-3 topography into the codes DHP expects.

The hepatitis registry has a model too: [Hepatitis Patient](StructureDefinition-hepatitis-patient.html), [Condition](StructureDefinition-hepatitis-condition.html), [Episode Of Care](StructureDefinition-hepatitis-episode-of-care.html), [Encounter](StructureDefinition-hepatitis-encounter.html), laboratory and ultrasound Observation profiles, and a [Questionnaire](StructureDefinition-hepatitis-questionnaire.html) and [response](StructureDefinition-hepatitis-questionnaire-response.html) for the treatment questionnaire, in place of the unprofiled examples 0.9.0 shipped. Records carry a registry identifier under `https://dhp.uz/fhir/core/sid/reg/uz/hepatitis`. [Hepatitis registry mapping](hepatitis.html) maps every field.

The operation code on a [form 066](form-066-mapping.html) hospital discharge summary is now an ICHI code. [Form 066 Surgical Procedure](StructureDefinition-form-066-surgical-procedure.html) profiles the Procedure the surgical procedures section references, binding `Procedure.code` to [ICHI Codes Accepted by DMED](ValueSet-dmed-ichi-vs.html). Previously the section accepted any Procedure.

[ICHI Codes Accepted by DMED](ValueSet-dmed-ichi-vs.html) enumerates the 6,853 codes DMED carries: 6,176 of the 9,428 stem codes WHO currently publishes, plus 677 WHO has since withdrawn. The withdrawn ones are `inactive` in [the code system](https://dhp.uz/fhir/core/CodeSystem-who-ichi.html) and admitted here so records already in DMED stay valid, but should not be used going forward. A procedure the platform codes itself comes from [ICHI Codes](https://dhp.uz/fhir/core/ValueSet-ichi-vs.html) in UZ Core.

The [IHD pre-test probability risk categories](CodeSystem-ihd-risk-category-cs.html) are now published here. The [IHD pretest questionnaire](Questionnaire-IhdPretestQuestionnaire.html) already answered its risk category item from them, but under a UZ Core canonical that no UZ Core release contains.

#### Changed

The guide is built against [UZ Core 0.10.0](https://dhp.uz/fhir/core/changelog.html), which publishes the ICHI code system form 066 needs and relaxes `Procedure.code` to an extensible binding.

The [diabetes](Questionnaire-DiabetesScreeningQuestionnaire.html), [oncohematology](Questionnaire-OncohematologyScreeningQuestionnaire.html), [breast cancer](Questionnaire-BreastCancerScreeningQuestionnaire.html), [cervical cancer](Questionnaire-CervicalCancerScreeningQuestionnaire.html) and [fertility](Questionnaire-FertilityQuestionnaire.html) questionnaires now carry `Questionnaire.code` from UZ Core `screening-code-cs`, as the other four screening questionnaires already did.

A [fertility questionnaire response with diagnosed infertility](QuestionnaireResponse-example-fertility-questionnaire-response-infertility.html) shows two ICD-10 diagnoses, each recorded as its own Condition ([first](Condition-example-fertility-infertility-condition.html), [second](Condition-example-fertility-infertility-condition-2.html)) whose `evidence` references the response.

The [diabetes](Questionnaire-DiabetesScreeningQuestionnaire.html) and [cardiovascular risk](Questionnaire-CVDRiskScreeningQuestionnaire.html) questionnaires now score the answers they actually offer. Diabetes compared age, waist and family history against codes no answer option carries, so those items always scored 0; cardiovascular risk compared tobacco use against a stale local code, so smokers were looked up in the non-smoker half of the WHO/ISH chart. Answers are unchanged.

Artifact versions are all `MAJOR.MINOR.PATCH`. The [diabetes screening questionnaire](Questionnaire-DiabetesScreeningQuestionnaire.html) and the [screening intake template](Questionnaire-screening-intake-template.html) declared their versions as `1.0` and `1.1`; they now declare `1.0.0` and `1.1.0`.

Every questionnaire now names the integration it belongs to in a `program` use context: the nine screening questionnaires and the hepatitis questionnaire carried none and sat ungrouped on the [questionnaires](forms.html) page. [Integration Area](CodeSystem-integration-area-cs.html) gains `hepatitis`, and `screening` now covers the whole screening service rather than cervical and breast cancer screening alone.

#### Breaking changes

The Screening identifier systems now follow the `https://dhp.uz/fhir/core/sid/{namespace}/{country}/{type}` pattern. Two had no namespace segment, and the public health case identifier sat in the organization namespace although it identifies cases, not organizations. Records and cases move to the `doc` namespace, the program type to the general `prg` program system, which any health program can reuse with its own value. Identifier values are unchanged; senders switch the system:

| Identifier | Old system | New system |
|---|---|---|
| [Screening record](NamingSystem-screening-identifier-system.html) | `https://dhp.uz/fhir/core/sid/uz/screening` | `https://dhp.uz/fhir/core/sid/doc/uz/screening` |
| [Public health case](NamingSystem-ScreeningPublicHealthCaseNamingSystem.html) | `https://dhp.uz/fhir/core/sid/org/uz/screening` | `https://dhp.uz/fhir/core/sid/doc/uz/screening-case` |
| [Screening program type](NamingSystem-screening-program-type-identifier-system.html) | `https://dhp.uz/fhir/core/sid/uz/screening-program-type` | `https://dhp.uz/fhir/core/sid/prg/uz/program` |

The Uzbekistan PINFL naming system is removed. PINFL is the national identifier UZ Core already defines as `https://dhp.uz/fhir/core/sid/pid/uz/ni`; send it under that system instead of `https://dhp.uz/fhir/core/sid/uz/pinfl`.

The fertility questionnaire's `infertility-icd-diagnosis` item is now `coding` bound to ICD-10 and repeats, instead of free-text `string`. Responses must send one `valueCoding` per diagnosis instead of `valueString`.

The IHD risk category codes `low`, `medium` and `high` keep their codes but their system changes from `https://terminology.dhp.uz/fhir/core/CodeSystem/ihd-risk-category-cs` to `https://terminology.dhp.uz/fhir/integrations/CodeSystem/ihd-risk-category-cs`.

### Version 0.9.0

#### Added

Nine screening questionnaires used by DMED are now published as definitions: [cardiovascular risk](Questionnaire-CVDRiskScreeningQuestionnaire.html), [cerebrovascular](Questionnaire-CerebrovascularScreeningQuestionnaire.html), [diabetes](Questionnaire-DiabetesScreeningQuestionnaire.html), [ischaemic heart disease pretest probability](Questionnaire-IhdPretestQuestionnaire.html), [oncohematology](Questionnaire-OncohematologyScreeningQuestionnaire.html), [breast cancer](Questionnaire-BreastCancerScreeningQuestionnaire.html), [cervical cancer](Questionnaire-CervicalCancerScreeningQuestionnaire.html), [helminthiasis](Questionnaire-HelminthScreeningQuestionnaire.html) and [fertility](Questionnaire-FertilityQuestionnaire.html). Each scores its answers with an SDC `calculatedExpression` into a risk category - [breast cancer](CodeSystem-breast-cancer-risk-category-cs.html), [cerebrovascular](CodeSystem-cerebrovascular-risk-category-cs.html), [cardiovascular](CodeSystem-cvd-risk-category-cs.html) and [diabetes](CodeSystem-diabetes-risk-category-cs.html) - that drives the recommended follow-up. The cardiovascular questionnaire and its risk categories moved here from UZ Core 0.9.0.

Their answer terminology covers the cerebrovascular form's [blood pressure](CodeSystem-cerebrovascular-blood-pressure-status-cs.html), [cholesterol](CodeSystem-cerebrovascular-cholesterol-status-cs.html), [diabetes](CodeSystem-cerebrovascular-diabetes-status-cs.html), [heart condition](CodeSystem-cerebrovascular-heart-condition-cs.html), [family history](CodeSystem-cerebrovascular-family-history-cs.html), [smoking](CodeSystem-cerebrovascular-smoking-status-cs.html), [alcohol and stress](CodeSystem-cerebrovascular-alcohol-stress-level-cs.html) and [physical activity](CodeSystem-cerebrovascular-physical-activity-cs.html) answers, the [IHD chest pain type](CodeSystem-ihd-chest-pain-type-cs.html), and the [diabetes](ValueSet-screening-diabetes-vs.html), [tobacco use](ValueSet-cvd-tobacco-use-vs.html), [cervical cancer](ValueSet-cervical-cancer-screening-questionnaire-vs.html) and [fertility](ValueSet-fertility-questionnaire-vs.html) answer value sets, the last three SNOMED CT coded with Uzbek designations.

Resources belonging to one screening programme now carry an identifier from the new [screening program type](NamingSystem-screening-program-type-identifier-system.html) naming system, valued with the programme's SNOMED CT code. DMED and the HPV screening system write it on clinical and workflow resources, not on Patient, Practitioner or PractitionerRole.

Pathology reporting gained the local remainders SNOMED CT does not cover: [cervical histology morphology](CodeSystem-screening-cervical-histology-morphology-cs.html) subtypes, [cervical](CodeSystem-screening-cervical-material-type-cs.html) and [breast cytology](CodeSystem-screening-breast-cytology-material-type-cs.html) material types, and [breast surgical procedure types](CodeSystem-screening-breast-surgical-procedure-type-cs.html). [Breast histologic type](ValueSet-screening-breast-histologic-type-vs.html) grew by eight subtypes.

The screening questionnaires now name the integration they come from, in a `program` use context coded from [integration area](ValueSet-integration-area-vs.html): `GET [base]/Questionnaire?context-type-value=program$https://terminology.dhp.uz/fhir/integrations/CodeSystem/integration-area-cs|screening` lists one service's forms, and the [questionnaires](forms.html) page groups its picker the same way.

#### Changed

Local codes have been replaced by SNOMED CT wherever a concept exists, leaving the local code systems with the remainder: four compound colour-and-consistency codes in [vaginal discharge type](ValueSet-screening-vaginal-discharge-type-vs.html), one in [urination characteristic](ValueSet-screening-urination-characteristic-vs.html), grade IV in [obesity degree](ValueSet-screening-obesity-degree-vs.html) and "relatively satisfactory" in [general condition](ValueSet-screening-general-condition-vs.html); [axillary](ValueSet-screening-ultrasound-axillary-node-status-vs.html) and [intramammary node status](ValueSet-screening-ultrasound-intramammary-node-status-vs.html) are now entirely SNOMED CT.

Value sets widened for answers the source forms needed: a SNOMED CT concept each in [breast palpation assessment](ValueSet-screening-breast-palpation-assessment-vs.html) and [pregnancy outcome](ValueSet-screening-pregnancy-outcome-vs.html), "not changed" and "pronounced" in [retromammary space](CodeSystem-screening-ultrasound-retromammary-space-cs.html) and [subcutaneous fat](CodeSystem-screening-ultrasound-subcutaneous-fat-cs.html), and six designations in the [body site](CodeSystem-screening-body-site-cs.html) and [diagnostic procedure](CodeSystem-screening-diagnostic-procedure-cs.html) supplements.

The [screening laboratory](CodeSystem-screening-laboratory-cs.html) LOINC supplement now declares version 2.82.0 rather than 2.82.

Citizenship has been dropped from the hepatitis patient example: `iso-3166-2-vs` in UZ Core declares a required supplement on `urn:iso:std:iso:3166` that no FHIR package ships, so the validator fails any instance bound to it. It returns once the core value set is fixed.

The guide is now built against [UZ Core 0.9.0](https://dhp.uz/fhir/core/changelog.html). None of its breaking changes reach this guide.

#### Breaking changes

`meta` and `meta.source` are now 1..1 and Must Support on [Screening Composition](StructureDefinition-screening-composition.html), [DiagnosticReport](StructureDefinition-screening-diagnostic-report.html), [DocumentReference](StructureDefinition-screening-document-reference.html), [Observation](StructureDefinition-screening-observation.html) and [ServiceRequest](StructureDefinition-screening-service-request.html), with an invariant requiring `https://dhp.uz/fhir/source/screening` or `https://dhp.uz/fhir/source/dmed`, naming the creating system. Existing instances must add it.

The obstetrician-gynecologist code in [screening roles](CodeSystem-screening-roles-cs.html) has been shortened from `his_centre_obstetrics_gynecology_obstetrician_gynecologist` to `his_centre_obgyn_obstetrician_gynecologist`.

Local codes that SNOMED CT covers have been removed and must be restated: `scrn-0019-00003`, `scrn-0019-00005`, `scrn-0019-00006` and `scrn-0019-00008` (vaginal discharge), `scrn-0016-00001`, `scrn-0016-00002` and `scrn-0016-00003` (urination), and `scrn-0048-00001` and `scrn-0048-00002` (axillary node status). [Obesity degree](ValueSet-screening-obesity-degree-vs.html) also swapped `162864005` and `83911000119104` for `443371000124107`, `443381000124105` and `819948005`.

#### Documentation

The [screening](cervical-breast-cancer-screening.html), [tuberculosis](dhis-tuberculosis.html), [narcology](narcology.html), [psychiatry](psychiatry.html) and [sick leave](sick-leave.html) pages now open with a resource model diagram, in all three languages.

The Forms menu entry and page title have been renamed to Questionnaires.

### Version 0.8.0

#### Added

##### Narcology

The [narcology registry](narcology.html) is now covered. [Narcology EpisodeOfCare](StructureDefinition-narcology-episode-of-care.html) is the patient's registration and carries the dynamic observation group they are placed in, [Narcology Observation](StructureDefinition-narcology-observation.html) the decision issued by the medical-consultation commission, and [Narcology and Psychiatry Flag](StructureDefinition-narcology-psychiatry-flag.html) the registry information a provider has to know before treating the patient, such as social danger or compulsory treatment. Observation groups are coded with [episode-of-care type groups](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) and the flags with [registry flag](ValueSet-narcology-psychiatry-registry-flag-vs.html) and [flag status](ValueSet-flag-status-vs.html) codes, each of them mapped to SNOMED CT: [type groups](ConceptMap-narcology-psychiatry-episode-of-care-type-group-to-snomed.html), [registry flags](ConceptMap-narcology-psychiatry-registry-flag-to-snomed.html) and [resource types](ConceptMap-type-resource-to-snomed.html).

##### Psychiatry

The [psychiatry registry](psychiatry.html) follows the same model and shares its terminology and Flag profile. [Psychiatry EpisodeOfCare](StructureDefinition-psychiatry-episode-of-care.html) carries the registration, its service type and the observation group, [Psychiatry Condition](StructureDefinition-psychiatry-condition.html) the diagnosis, and [Psychiatry Commission Observation](StructureDefinition-psychiatry-commission-observation.html) the commission's decision notes. Registrations are identified through the [narcology](NamingSystem-narko-identifier.html) and [psychiatry](NamingSystem-psychiatry-identifier.html) registry naming systems.

##### Cervical and breast cancer screening

The screening integration has been improved considerably. It now covers the pathology pathway end to end: [Screening Pathology Service Request](StructureDefinition-screening-pathology-service-request.html) orders the examination and states in its order details what material is being sent; [Screening Breast Biopsy Service Request](StructureDefinition-screening-breast-biopsy-service-request.html) and [Screening Breast Biopsy Procedure](StructureDefinition-screening-breast-biopsy-procedure.html) cover the biopsy itself, and [Screening Specimen](StructureDefinition-screening-specimen.html) the material collected. Results come back as [breast histology](StructureDefinition-screening-breast-histology-observation.html), [cervical histology](StructureDefinition-screening-cervical-histology-observation.html), [breast cytology](StructureDefinition-screening-breast-cytology-observation.html) and [immunohistochemistry](StructureDefinition-screening-immunohistochemistry-observation.html) observations, with [Screening Special Treatment Observation](StructureDefinition-screening-special-treatment-observation.html) recording the treatment the patient received before the specimen was taken.

Breast imaging is structured rather than free text: [Screening Mammography Observation](StructureDefinition-screening-mammography-observation.html) and [Screening Breast Ultrasound Observation](StructureDefinition-screening-breast-ultrasound-observation.html) record whole-breast parameters and the characteristics of a focal lesion as components.

A screening cycle can now be published as a document. [Screening Composition](StructureDefinition-screening-composition.html) aggregates the questionnaire answers, the results of every step and the final diagnosis into a downloadable summary, shipped as an example [document Bundle](Bundle-screening-composition-document-example.html). The questionnaires themselves are published as definitions with example responses: [breast cancer risk](Questionnaire-screening-breast-risk.html), [cervical cancer risk](Questionnaire-screening-cervical-risk.html) and the [women's examination](Questionnaire-screening-woman-exam.html) form.

Sixty code systems and a hundred and six value sets supply the terminology all of this needs. Breast ultrasound reporting has a value set per reported parameter, from [ACR breast composition](ValueSet-screening-ultrasound-acr-composition-vs.html) and [fibroglandular echogenicity](ValueSet-screening-ultrasound-fibroglandular-echogenicity-vs.html) through lesion [shape](ValueSet-screening-ultrasound-lesion-shape-vs.html), [contour](ValueSet-screening-ultrasound-lesion-contour-vs.html), [echogenicity](ValueSet-screening-ultrasound-lesion-echogenicity-vs.html), [orientation](ValueSet-screening-ultrasound-lesion-orientation-vs.html) and [vascularization](ValueSet-screening-ultrasound-lesion-vascularization-vs.html) to [axillary](ValueSet-screening-ultrasound-axillary-node-status-vs.html) and [regional node status](ValueSet-screening-ultrasound-regional-node-status-vs.html). Pathology reporting is covered by [breast histologic type](ValueSet-screening-breast-histologic-type-vs.html), [cervical histologic grade](ValueSet-screening-cervical-histologic-grade-vs.html), pathological [T](ValueSet-screening-pathological-t-vs.html), [N](ValueSet-screening-pathological-n-vs.html) and [M](ValueSet-screening-pathological-m-vs.html) stage, [resection margin status](ValueSet-screening-resection-margin-status-vs.html), [lymphovascular invasion](ValueSet-screening-histology-lymphovascular-invasion-vs.html), [HER2 immunohistochemistry score](ValueSet-screening-her2-ihc-score-vs.html), [p16 result](ValueSet-screening-p16-result-vs.html) and the [Yokohama category](ValueSet-screening-yokohama-category-vs.html). The gynecological examination has its own sets, among them [cervix condition](ValueSet-screening-cervix-condition-vs.html), [vaginal discharge](ValueSet-screening-vaginal-discharge-type-vs.html) and [vaginal wall prolapse](ValueSet-screening-vaginal-wall-prolapse-vs.html), and every question in the risk questionnaires has a value set for its answers.

Four naming systems record the identifiers Screening exchanges - the [questionnaire identifier](NamingSystem-ScreeningQuestionnaireIdNamingSystem.html) and [questionnaire code](NamingSystem-ScreeningQuestionnaireCodeNamingSystem.html) assigned to a questionnaire definition, the [public health case](NamingSystem-ScreeningPublicHealthCaseNamingSystem.html) identifier and the [form 025](NamingSystem-ScreeningForm025IdNamingSystem.html) source identifier - alongside one for the Uzbekistan PINFL.

#### Changed

[Screening DiagnosticReport](StructureDefinition-screening-diagnostic-report.html) now marks `supportingInfo` as Must Support, so a pathology report can carry the treatment the patient had before the specimen was taken alongside its results, rather than on the request that ordered them.

The [screening body site](CodeSystem-screening-body-site-cs.html) and [diagnostic procedure](CodeSystem-screening-diagnostic-procedure-cs.html) SNOMED CT supplements gained designations for nipple structure and histologic test, and [screening observation codes](ValueSet-screening-observation-codes-vs.html) now also admits the breast cytology result code. The screening body site supplement declared 5.0.0, the FHIR version, as the version of SNOMED CT it supplements; it now declares the SNOMED CT release 2026.1.0, as the other SNOMED CT supplements do.

#### Breaking changes

The guide is now built against [UZ Core 0.8.0](https://dhp.uz/fhir/core/changelog.html), which carries breaking changes of its own. Three of them reach this guide: the laboratory request in [form 130](form-130-mapping.html) now conforms to UZ Core ServiceRequest, whose canonical moved from `https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest-laboratory` to `https://dhp.uz/fhir/core/StructureDefinition/uz-core-servicerequest`; `code` on UZ Core PractitionerRole is now mandatory, so every PractitionerRole exchanged through this guide has to carry a position code; and the coverage type codes have been renumbered, so `dtsj-treated-case` on a Coverage is now `covtp-0001-00001`. The UZ Core changelog lists the rest.

The local breast finding code system, its SNOMED CT supplement and the ConceptMap between them have been removed. [Breast mammography findings](ValueSet-screening-breast-finding-vs.html) previously admitted the whole of SNOMED CT plus one local code for macrocalcifications; it now enumerates the nine SNOMED CT concepts that are actually reported. Findings recorded under `https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-breast-finding-cs` must be restated in SNOMED CT, and a SNOMED CT concept outside those nine no longer validates.

#### Documentation

The home page now sets out how [versions are identified](index.html): artifacts carry the version of the guide, its major and minor version follow the UZ Core release the guide is built against, and translation supplements carry the version of the code system they supplement instead.

### Version 0.7.0

First published release of the DHP Integrations IG. Numbering starts at 0.7.0 so that the guide's version matches the [UZ Core](https://dhp.uz/fhir/core/) release it is built against. There is no earlier release to compare against, so this entry describes what the guide contains.

#### Clinical documents

Four Ministry of Health forms are profiled as FHIR Documents: [Form 011 hemodialysis session](StructureDefinition-form-011-hemodialysis-composition.html), [Form 066 hospital discharge statistical card](StructureDefinition-form-066-hospital-discharge-composition.html), [Form 066-1 psychiatric and narcological discharge statistical card](StructureDefinition-form-066-1-psychiatric-discharge-composition.html) and [Form 130 laboratory test results](StructureDefinition-form-130-laboratory-test-results-composition.html). Each ships an example document Bundle and a mapping page tying every field of the paper form to its FHIR element: [Form 011](form-011-mapping.html), [Form 066](form-066-mapping.html), [Form 066-1](form-066-1-mapping.html) and [Form 130](form-130-mapping.html).

[Document categories and identifiers](document-categories.html) covers how documents are classified, through the [document category](CodeSystem-document-category-cs.html) code system carrying the Ministry of Health form numbers, and how official [form numbers](NamingSystem-doc-form-number.html) and [template numbers](NamingSystem-doc-template-number.html) are recorded alongside per-instance identifiers. [Clinical document lifecycle](document-statuses.html) sets out the Composition statuses in use and the transitions between them.

[UZ Core Encounter 066](StructureDefinition-uz-core-encounter-066.html) adds an [admission origin](StructureDefinition-admission-origin.html) extension recording where the patient came from before admission. The [diagnosis role](CodeSystem-diagnosis-role-integration.html) code system covers the roles these forms distinguish, from referral and admission diagnoses through main, competing, concomitant and background diagnoses to the death-related roles.

#### Tuberculosis (DHIS)

Tuberculosis data from DHIS is exchanged as individual resources rather than as documents, mapped field by field on the [tuberculosis integration](dhis-tuberculosis.html) page. [DHIS Condition](StructureDefinition-dhis-condition.html) carries the diagnosis, [DHIS Episode of Care](StructureDefinition-dhis-episode-of-care.html) groups a patient's diagnosis, treatment and follow-up, [DHIS Specimen](StructureDefinition-dhis-specimen.html) covers material collected for laboratory testing, and [DHIS Observation](StructureDefinition-dhis-observation.html) carries test results, specialised into [sputum smear microscopy](StructureDefinition-dhis-observation-microscopy.html) with acid-fast bacilli load grading, [chest X-ray findings](StructureDefinition-dhis-observation-xray.html) and [HIV co-infection results](StructureDefinition-dhis-observation-hiv.html).

The codes the source system uses are published as code systems - [conditions](CodeSystem-dhis-condition-code-cs.html), [test codes](CodeSystem-dhis-observation-code-cs.html), [components](CodeSystem-dhis-observation-component-code-cs.html), [results](CodeSystem-dhis-observation-codeable-concept-cs.html), [methods](CodeSystem-dhis-observation-method-cs.html), [specimen types](CodeSystem-specimen-type-cs.html), [specimen features](CodeSystem-specimen-feature-type-cs.html) and [drug susceptibility](CodeSystem-tb-drug-sensitivity-cs.html) - and each is mapped onto a standard so that receivers need not depend on the local codes: [diagnoses](ConceptMap-dhis-tuberculosis-to-snomed.html), [results](ConceptMap-dhis-observation-result-to-snomed.html), [specimen types](ConceptMap-specimen-type-conceptmap.html) and [specimen features](ConceptMap-specimen-feature-type-to-snomed.html) to SNOMED CT, [diagnostic tests](ConceptMap-dhis-observation-tuberculosis-code.html) and [drug susceptibility components](ConceptMap-dhis-observation-component-to-loinc.html) to LOINC.

#### Cervical and breast cancer screening

The [screening integration](cervical-breast-cancer-screening.html) page maps the cervical cancer screening and early breast cancer detection system to FHIR. [Screening Patient](StructureDefinition-screening-patient.html) and [Screening Practitioner](StructureDefinition-screening-practitioner.html) build on the UZ Core profiles; [Screening ServiceRequest](StructureDefinition-screening-service-request.html) the referrals for investigation; [Screening Observation](StructureDefinition-screening-observation.html) the results and biometric measurements; [Screening DiagnosticReport](StructureDefinition-screening-diagnostic-report.html) the final mammography, cytology and colposcopy reports; and [Screening DocumentReference](StructureDefinition-screening-document-reference.html) the consent forms and protocols.

Findings are coded with [BI-RADS](CodeSystem-screening-birads-cs.html), [cervical cytology](CodeSystem-screening-cervical-cytology-cs.html), [colposcopy](CodeSystem-screening-colposcopy-cs.html), [HPV](CodeSystem-screening-hpv-cs.html), [transformation zone](CodeSystem-screening-transformation-zone-cs.html), mammography finding, [breast density](CodeSystem-screening-breast-form-cs.html), [image quality](CodeSystem-screening-image-quality-cs.html) and [breast quadrant](CodeSystem-screening-breast-quadrant-cs.html) codes, the last reached through the [breast quadrant extension](StructureDefinition-breast-quadrant.html) that localises a finding. ConceptMaps translate breast findings, [cervical cytology](ConceptMap-screening-cervical-cytology-to-snomed.html), [colposcopy](ConceptMap-screening-colposcopy-to-snomed.html) and [HPV](ConceptMap-screening-hpv-to-snomed.html) results to SNOMED CT, and the programme's own [practitioner roles](CodeSystem-screening-roles-cs.html) to the [national roles](ConceptMap-screening-roles-to-national.html).

#### Sick leave

[Sick leave](sick-leave.html) documents how a certificate of incapacity for work is represented. [Sick Leave CarePlan](StructureDefinition-sick-leave-careplan.html) is the case itself, [Sick Leave Observation](StructureDefinition-sick-leave-observation.html) carries the attributes that do not fit on the CarePlan, and [Sick Leave RelatedPerson](StructureDefinition-sick-leave-related-person.html), with its [birthdate extension](StructureDefinition-relatedperson-birthdate.html), covers certificates issued for family care. Extensions record the [workflow status](StructureDefinition-care-for-workflow-status.html) and its [history of active periods](StructureDefinition-care-for-status-history.html), the [diagnosis use type](StructureDefinition-care-for-diagnosis-use.html), and the [related person](StructureDefinition-care-for-related-person.html) a family care certificate is issued for.

The supporting terminology covers the [category](CodeSystem-sick-leave-category-cs.html) of certificate (ordinary, child care, students, and issue while intoxicated), the [observation components](CodeSystem-sick-leave-component-cs.html) a case records, its [conclusions](CodeSystem-conclusions-cs.html) including disability group determinations, the [reason](CodeSystem-care-plan-reason-cs.html) for the case, whether the patient is [urban or rural](CodeSystem-care-plan-belonging-cs.html), the [local statuses](CodeSystem-care-plan-status-local-cs.html) a case moves through, [regimen violations](CodeSystem-regimen-violation-cs.html), the [place of incident](CodeSystem-place-of-incident-cs.html), the [delay between onset and presentation](CodeSystem-disease-injury-delay-cs.html), the [degree of relation](CodeSystem-relation-degree-cs.html) for family care, and [local encounter classes](CodeSystem-encounter-class-local-cs.html). Certificate numbers have their own [naming system](NamingSystem-sick-leave-number-system.html).

#### Terminology

Nine of the code systems are supplements: they add Uzbek and Russian designations to codes defined elsewhere rather than defining new concepts. They supplement SNOMED CT for [tuberculosis body sites](CodeSystem-dhis-body-site-cs.html), [screening body sites](CodeSystem-screening-body-site-cs.html), [diagnostic procedures](CodeSystem-screening-diagnostic-procedure-cs.html), [screening observation codes](CodeSystem-screening-observation-codes-cs.html), [observation types](CodeSystem-screening-observation-type-cs.html) and breast findings; LOINC for [laboratory tests](CodeSystem-screening-laboratory-cs.html); v3-ActCode for [encounter class](CodeSystem-encounter-class-official-cs.html); and the FHIR request status codes for [care plan status](CodeSystem-care-plan-status-official-cs.html).

The SNOMED CT supplements are a temporary solution. A proper translation of SNOMED CT into Uzbek is underway, and once it is available these supplements will be retired in favour of it.

Diagnoses that are not constrained to a narrower list are bound to the [full ICD-10 value set](ValueSet-icd-10-vs.html). The [local observation code](CodeSystem-local-observation-code.html) system holds the one concept, number of previous hospitalizations, that no standard covers.

#### Examples

Every area ships realistic examples: the four document Bundles, and the patients, practitioners, organizations, encounters, observations, service requests, specimens and reports they reference. Two example questionnaires are included, a [complaints intake template](Questionnaire-screening-intake-template.html) for gynecologists with an example response, and a [hepatitis B and C treatment questionnaire](Questionnaire-hepatitis-questionnaire.html).
