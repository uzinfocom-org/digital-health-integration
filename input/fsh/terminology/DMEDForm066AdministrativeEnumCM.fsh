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
Description: "Maps DMED social_status values to the national social status code system. All 6 DMED values match item 1.9 'Ijtimoiy holati' of the order-399 Form 066 template (2025-12-26, list sheet '1.9.': Ishlaydi, Ishlamaydi, O'quvchi, Talaba, Harbiy xizmatda, Imtiyoz toifasi mavjud) one-to-one - checked 2026-09-21."
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
Description: "Maps DMED beneficiary category values to the national benefits code system. All 20 categories now resolved. Revisited 2026-09-17: the hematological-disease category is confirmed by primary legislation - Presidential Decree No. UP-88 dated 2025-05-19 added it as item 19 of Annex 2 to Decree No. UP-3214 (https://lex.uz/ru/docs/170150), the legal basis for benefits-cs. Target code benefits-cs#regis0004.00024 added accordingly (digital-health-ig, next free sequential slot - does not mirror the decree's own item numbering). Also confirmed live in DMED (2026-09-17): the field is an editable dropdown under the patient record (Пациенты -> patient -> 'Изменить учеты' -> 'Льготный пациент'), not read-only as first assumed - see integration-066.md. Confirmed 2026-09-21 against the order-399 template (2025-12-26): item 1.9a 'Imtiyoz toifasi mavjud' with the attached list sheet '1.9a. Imtiyoz royxati' enumerating exactly these 20 categories (items 1-8, 91, 92, 10-20, including 19 hematological diseases and 20 long-serving state medical workers), so this is a genuine Form 066 field, not a DMED-only one."
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
Description: "Maps DMED disease-codes type values to Form 066 diagnosis roles. All 5 confirmed dropdown values map 1:1 - see DMEDForm066DiagnosisTypeCS for the removal of the 6th, spurious `clinical` code. The same 5 roles are items 4.1-4.5 of the order-399 Form 066 template (2025-12-26): Asosiy, Raqobat, Yondosh, Fon, Asorat - no 'clinical' role there either (checked 2026-09-21)."
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
Description: "Records that DMED arrival_type is not assigned a FHIR target. Re-examined 2026-09-16 and reverted from an earlier attempt to map self-referred/accompanied-by-police/other to Encounter.admission.origin (AdmissionOrigin extension): the official Form 066 template (order no. 363 dated 2020-12-31, .doc source, field 3 'Shifoxonaga kim tomonidan olib kelingan') offers '03' (the ambulance service), self ('o'zi') or with-referral ('yo'llanma bilan'); the current template (order no. 399 dated 2025-12-26, xlsx, re-checked 2026-09-21) splits the same information into two yes/no items - 2.3 'Tez tibbiy yordam moshinasida keldi' (arrived by ambulance) and 2.4 'Yo'llanma mavjud' (referral present). Both are already carried by delivered_by_ambulance (Observation LOINC LP97912-7) and has_direction (Observation LOINC 57133-1 + Encounter.admission.admitSource), so by-ambulance and self-referred would only duplicate them, while 'accompanied by police' and 'other' appear on neither template. arrival_type as a separate categorical field is therefore not a Form 066 field: like the DMEDForm066DiagnosisTypeCS#clinical case, it is very likely a DMED-internal field from a different module (e.g. ER/dispatch intake) that got swept up by the enum scraper. delivered_by_ambulance is unaffected by this - it was independently confirmed present on DMED's live Form 066 UI by direct inspection and is item 2.3 of the order-399 template."
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
Description: "Records that DMED transportation_kind currently has no defined element or bound target code system in the Form 066 FHIR profiles. Implementers must not invent a local target or drop these values into Encounter.admission.admitSource. Revisited 2026-09-17: checked against the official Form 066 template (order no. 363 dated 2020-12-31, items 1-16) and this field does not appear there at all - not as its own item, not within the instructions. Re-checked 2026-09-21 against the current template (order no. 399 dated 2025-12-26, xlsx, sections 0-11 / items 0.1-11.3, which supersedes order 363): still absent - the only transport-related item is 2.3 'Tez tibbiy yordam moshinasida keldi' (arrived by ambulance, yes/no), which is delivered_by_ambulance, not a mobility mode (walking/wheelchair/stretcher/crutches/carried). Like DMEDForm066DiagnosisTypeCS#clinical (B9) and arrival_type, this is very likely a DMED-internal field from a different module (ER/triage intake) that got swept into the Form 066 enum dictionary by mistake, not a genuine field of the form. The lack of a fitting FHIR element and the team policy requiring product-owner + clinical/FHIR-expert sign-off before adding a new extension are secondary to that - confirm with DHP/DMED that this field even belongs to Form 066 before discussing how to represent it."
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
Description: "Records that DMED hospitalization_reason currently has no defined target in the Form 066 FHIR profiles and is removed by the current DMED client before save. Implementers must not infer a target until the field is present in the saved payload and the profile defines its representation. Revisited 2026-09-16: still doubly moot - no existing FHIR element fits, and even if one did, the client strips this field before the save request ever reaches us, so there is nothing to map in practice. Re-checked 2026-09-21 against the order-399 template (2025-12-26, items 0.1-11.3): no such item exists there either - 'planned' overlaps item 2.2 'Yotqizish turi' (already medical_care_form), and injuries/road accidents are mentioned only in the filling instructions' general note on recording injury types, not as a field of the card."
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
