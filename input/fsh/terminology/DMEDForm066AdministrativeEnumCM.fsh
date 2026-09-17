Instance: dmed-form-066-payment-type-to-coverage-type
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 066 Payment Type to Coverage Type"
Description: "Maps DMED payment_type values to national coverage type codes. The broad PF-17 insurance value maps to the three more specific PF-17 fund categories. fond_VAQF maps to its own coverage-type-cs#covtp-0001-00014 code, added 2026-09-16 (previously approximated via the unrelated Sakhovat fund code)."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-066-payment-type-to-coverage-type"
* name = "DMEDForm066PaymentTypeToCoverageType"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group.source = Canonical(DMEDForm066PaymentTypeCS)
* group.target = $coverage-type
* group.element[+].code = #insurance_311_resolution
* group.element[=].display = "Фонд страхования по ПП-311"
* group.element[=].target[+].code = #covtp-0001-00001
* group.element[=].target[=].display = "State Health Insurance treated case (Resolution No. PQ-311)"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #insurance_5199_resolution
* group.element[=].display = "Фонд стархования по ПП-5199"
* group.element[=].target[+].code = #covtp-0001-00002
* group.element[=].target[=].display = "State Health Insurance treatment of patients belonging to privileged categories (Resolution No. PQ-5199)"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #fond_VAQF
* group.element[=].display = "VAQF - Благотворительный общественный фонд"
* group.element[=].target[+].code = #covtp-0001-00014
* group.element[=].target[=].display = "Vaqf Fund"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #insurance_17_decree
* group.element[=].display = "Фонд страхования по УП-17 от 30.01.2025"
* group.element[=].target[+].code = #covtp-0001-00003
* group.element[=].target[=].display = "Sakhovat and Support Fund through State Health Insurance (Decree No. PF-17, Resolution No. 462)"
* group.element[=].target[=].relationship = #source-is-broader-than-target
* group.element[=].target[+].code = #covtp-0001-00004
* group.element[=].target[=].display = "Women's Notebook Fund through State Health Insurance (Decree No. PF-17, Resolution No. 462)"
* group.element[=].target[=].relationship = #source-is-broader-than-target
* group.element[=].target[+].code = #covtp-0001-00005
* group.element[=].target[=].display = "Youth Notebook Fund through State Health Insurance (Decree No. PF-17, Resolution No. 462)"
* group.element[=].target[=].relationship = #source-is-broader-than-target
* group.element[+].code = #local_budget
* group.element[=].display = "Местный бюджет"
* group.element[=].target[+].code = #covtp-0001-00010
* group.element[=].target[=].display = "Local budget"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #sponsorship
* group.element[=].display = "Спонсорство"
* group.element[=].target[+].code = #covtp-0001-00011
* group.element[=].target[=].display = "Sponsorship"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #state_nonstate_grant
* group.element[=].display = "Государственные и негосударственные гранты"
* group.element[=].target[+].code = #covtp-0001-00012
* group.element[=].target[=].display = "State and non-state grants"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #other
* group.element[=].display = "Другие"
* group.element[=].target[+].code = #covtp-0001-00013
* group.element[=].target[=].display = "Other"
* group.element[=].target[=].relationship = #equivalent

Instance: dmed-form-066-social-status-to-national
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 066 Social Status to National Social Status"
Description: "Maps DMED social_status values to the national social status code system."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-066-social-status-to-national"
* name = "DMEDForm066SocialStatusToNational"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group.source = Canonical(DMEDForm066SocialStatusCS)
* group.target = $social-status
* group.element[+].code = #student
* group.element[=].display = "Студент"
* group.element[=].target[+].code = #regis0010.00001
* group.element[=].target[=].display = "Student"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #working
* group.element[=].display = "Работает"
* group.element[=].target[+].code = #regis0010.00003
* group.element[=].target[=].display = "Employed"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #not_working
* group.element[=].display = "Не работает"
* group.element[=].target[+].code = #regis0010.00004
* group.element[=].target[=].display = "Unemployed"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #military
* group.element[=].display = "Военная служба"
* group.element[=].target[+].code = #regis0010.00009
* group.element[=].target[=].display = "Military serviceman"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #school_student
* group.element[=].display = "Учится в школе"
* group.element[=].target[+].code = #regis0010.00010
* group.element[=].target[=].display = "School student"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #preferential_category
* group.element[=].display = "Есть льготная категория"
* group.element[=].target[+].code = #regis0010.00011
* group.element[=].target[=].display = "Eligible for benefits"
* group.element[=].target[=].relationship = #equivalent

Instance: dmed-form-066-benefit-category-to-national
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 066 Benefit Category to National Benefits"
Description: "Maps DMED beneficiary category values to the national benefits code system. All 20 categories now resolved. Revisited 2026-09-17: the hematological-disease category is confirmed by primary legislation - Presidential Decree No. UP-88 dated 2025-05-19 added it as item 19 of Annex 2 to Decree No. UP-3214 (https://lex.uz/ru/docs/170150), the legal basis for benefits-cs. Target code benefits-cs#regis0004.00024 added accordingly (digital-health-ig, next free sequential slot - does not mirror the decree's own item numbering). Also confirmed live in DMED (2026-09-17): the field is an editable dropdown under the patient record (Пациенты -> patient -> 'Изменить учеты' -> 'Льготный пациент'), not read-only as first assumed - see integration-066.md."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-066-benefit-category-to-national"
* name = "DMEDForm066BenefitCategoryToNational"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group.source = Canonical(DMEDForm066BenefitCategoryCS)
* group.target = $benefit-cs
* group.element[+].code = #childhood_disability
* group.element[=].target[+].code = #regis0004.00001
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #orphans
* group.element[=].target[+].code = #regis0004.00002
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #disabled_groups_i_ii
* group.element[=].target[+].code = #regis0004.00003
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #war_veterans_1941_1945
* group.element[=].target[+].code = #regis0004.00004
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #unemployed_pensioners
* group.element[=].target[+].code = #regis0004.00005
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #labor_front_participants
* group.element[=].target[+].code = #regis0004.00006
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #chernobyl_liquidators
* group.element[=].target[+].code = #regis0004.00007
* group.element[=].target[=].relationship = #related-to
* group.element[+].code = #international_soldiers
* group.element[=].target[+].code = #regis0004.00008
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #low_income_families
* group.element[=].target[+].code = #regis0004.00009
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #children_with_pathology
* group.element[=].target[+].code = #regis0004.00010
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #conscripts
* group.element[=].target[+].code = #regis0004.00011
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #pregnant_women_with_pathology
* group.element[=].target[+].code = #regis0004.00012
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #endocrine_disease_patients
* group.element[=].target[+].code = #regis0004.00013
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #std_patients
* group.element[=].target[+].code = #regis0004.00014
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #tuberculosis_patients
* group.element[=].target[+].code = #regis0004.00015
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #cancer_patients
* group.element[=].target[+].code = #regis0004.00016
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #hemodialysis_patients
* group.element[=].target[+].code = #regis0004.00017
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #deceased_military_families
* group.element[=].target[+].code = #regis0004.00018
* group.element[=].target[=].relationship = #related-to
* group.element[+].code = #medical_workers
* group.element[=].target[+].code = #regis0004.00019
* group.element[=].target[=].relationship = #source-is-narrower-than-target
* group.element[+].code = #hematological_disease_patients
* group.element[=].target[+].code = #regis0004.00024
* group.element[=].target[=].relationship = #equivalent

Instance: dmed-form-066-diagnosis-type-to-role
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 066 Diagnosis Type to Diagnosis Role"
Description: "Maps DMED disease-codes type values to Form 066 diagnosis roles. All 5 confirmed dropdown values map 1:1 - see DMEDForm066DiagnosisTypeCS for the removal of the 6th, spurious `clinical` code."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-066-diagnosis-type-to-role"
* name = "DMEDForm066DiagnosisTypeToRole"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group.source = Canonical(DMEDForm066DiagnosisTypeCS)
* group.target = Canonical(DiagnosisRoleCS)
* group.element[+].code = #main
* group.element[=].target[+].code = #main
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #competing
* group.element[=].target[+].code = #competing
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #additional
* group.element[=].target[+].code = #concomitant
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #background
* group.element[=].target[+].code = #background
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #critical
* group.element[=].target[+].code = #complication
* group.element[=].target[=].relationship = #equivalent

Instance: dmed-form-066-arrival-type-unmapped
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 066 Arrival Type - No FHIR Mapping"
Description: "Records that DMED arrival_type is not assigned a FHIR target. Re-examined 2026-09-16 and reverted from an earlier attempt to map self-referred/accompanied-by-police/other to Encounter.admission.origin (AdmissionOrigin extension): the official Form 066 template (order no. 363 dated 2020-12-31, .doc source, field 3 'Shifoxonaga kim tomonidan olib kelingan') has only two options - self ('o'zi') or with-referral ('yo'llanma bilan') - which is has_direction, not a broader arrival-type categorical field. Neither 'ambulance' nor 'police' appears anywhere in that document. This mirrors the DMEDForm066DiagnosisTypeCS#clinical case: arrival_type is very likely a DMED-internal field from a different module (e.g. ER/dispatch intake) that got swept up by the enum scraper, not a real Form 066 field. delivered_by_ambulance is unaffected by this - unlike arrival_type, it was independently confirmed present on DMED's live Form 066 UI by direct inspection."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-066-arrival-type-unmapped"
* name = "DMEDForm066ArrivalTypeUnmapped"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group.source = Canonical(DMEDForm066ArrivalTypeCS)
* group.element[+].code = #accompaned-by-police
* group.element[=].noMap = true
* group.element[+].code = #by-ambulance
* group.element[=].noMap = true
* group.element[+].code = #other
* group.element[=].noMap = true
* group.element[+].code = #self-referred
* group.element[=].noMap = true

Instance: dmed-form-066-transportation-kind-unmapped
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 066 Transportation Kind - No FHIR Mapping"
Description: "Records that DMED transportation_kind currently has no defined element or bound target code system in the Form 066 FHIR profiles. Implementers must not invent a local target or drop these values into Encounter.admission.admitSource. Revisited 2026-09-16: no existing FHIR element fits (unlike arrival_type, which reuses the existing AdmissionOrigin extension). Representing this would require introducing a new extension, which per team policy needs sign-off from both the product owner and a clinical/FHIR-modeling expert before being added - not done unilaterally here."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-066-transportation-kind-unmapped"
* name = "DMEDForm066TransportationKindUnmapped"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group.source = Canonical(DMEDForm066TransportationKindCS)
* group.element[+].code = #carried-in-arms
* group.element[=].noMap = true
* group.element[+].code = #crutches
* group.element[=].noMap = true
* group.element[+].code = #stretcher
* group.element[=].noMap = true
* group.element[+].code = #walk
* group.element[=].noMap = true
* group.element[+].code = #wheelchair
* group.element[=].noMap = true

Instance: dmed-form-066-hospitalization-reason-unmapped
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 066 Hospitalization Reason - No FHIR Mapping"
Description: "Records that DMED hospitalization_reason currently has no defined target in the Form 066 FHIR profiles and is removed by the current DMED client before save. Implementers must not infer a target until the field is present in the saved payload and the profile defines its representation. Revisited 2026-09-16: still doubly moot - no existing FHIR element fits, and even if one did, the client strips this field before the save request ever reaches us, so there is nothing to map in practice."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-066-hospitalization-reason-unmapped"
* name = "DMEDForm066HospitalizationReasonUnmapped"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group.source = Canonical(DMEDForm066HospitalizationReasonCS)
* group.element[+].code = #car_accident
* group.element[=].noMap = true
* group.element[+].code = #disease
* group.element[=].noMap = true
* group.element[+].code = #injury
* group.element[=].noMap = true
* group.element[+].code = #planned
* group.element[=].noMap = true
