// Source code systems for DMED Form 066 enum values captured from the DMED web client on 2026-09-10.
// The original codes and Russian labels are intentionally preserved for lossless source-system exchange.

CodeSystem: DMEDForm066MedicalCareFormCS
Id: dmed-form-066-medical-care-form-cs
Title: "DMED Form 066 Medical Care Form"
Description: "Source codes used by DMED data.medical_care_form in Form 066."
* insert OriginalCodeSystemDraft(dmed-form-066-medical-care-form-cs)
* ^language = #ru
* #emergency "Экстренная"
* #planned "Плановая"
* #transferred "Переведен из другого учреждения"
* #urgent "Неотложная"

CodeSystem: DMEDForm066UrgencyTimeCS
Id: dmed-form-066-urgency-time-cs
Title: "DMED Form 066 Urgency Time"
Description: "Source codes used by DMED data.urgency_time in Form 066."
* insert OriginalCodeSystemDraft(dmed-form-066-urgency-time-cs)
* ^language = #ru
* #after_24_hours "После 24 часов"
* #before_24_hours "В течение 7-24 часов"
* #first_6_hours "В течение первых 6 часов"

CodeSystem: DMEDForm066BedTypeCS
Id: dmed-form-066-bed-type-cs
Title: "DMED Form 066 Bed Type"
Description: "Source codes used by DMED data.bed_type in Form 066."
* insert OriginalCodeSystemDraft(dmed-form-066-bed-type-cs)
* ^language = #ru
* #geriatrics "Гериатрия"
* #infectious_diseases "Инфекционные заболевания"
* #narcology_psychiatry "Наркология-психиатрия"
* #obstetrics_gynecology "Акушеро-гинекологический"
* #other "Другие"
* #pediatric "Педиатрический"
* #resuscitation "Реанимационный (интенсивная терапия)"
* #surgical "Хирургический"
* #therapeutic "Терапевтический"

CodeSystem: DMEDForm066TreatmentResultCS
Id: dmed-form-066-treatment-result-cs
Title: "DMED Form 066 Treatment Result"
Description: "Source codes used by DMED data.result_treatment in Form 066."
* insert OriginalCodeSystemDraft(dmed-form-066-treatment-result-cs)
* ^language = #ru
* #deceased "Скончался"
* #deceased_after_28_weeks "Скончалась после 28й недели беременности"
* #deceased_after_childbirth "Скончалась после родов"
* #deceased_before_28_weeks "Скончалась до 28й недели беременности"
* #deceased_before_childbirth "Скончалась до родов"
* #deceased_in_er "Скончался(ась) в приемном покое"
* #discharged "Выписан"
* #discharged_at_his_own_request "Выписан по собственному желанию"
* #healthy "Выписан из больницы: здоров"
* #no_change "Выписан из больницы: без изменений"
* #slight_improvement "Выписан из больницы: незначительное улучшение"
* #transferred_to_another_facility "Переведен в другое медицинское учреждение"

CodeSystem: DMEDForm066TreatmentOutcomeCS
Id: dmed-form-066-treatment-outcome-cs
Title: "DMED Form 066 Treatment Outcome"
Description: "Source codes used by DMED data.outcome_treatment in Form 066."
* insert OriginalCodeSystemDraft(dmed-form-066-treatment-outcome-cs)
* ^language = #ru
* #better "Стало лучше"
* #death_certificate "Констатация смерти"
* #deterioration "Ухудшение"
* #no_change "Без изменений"
* #recovered "Выздоровел"

CodeSystem: DMEDForm066PaymentTypeCS
Id: dmed-form-066-payment-type-cs
Title: "DMED Form 066 Payment Type"
Description: "Source codes used by DMED data.payment_type in Form 066."
* insert OriginalCodeSystemDraft(dmed-form-066-payment-type-cs)
* ^language = #ru
* #fond_VAQF "VAQF - Благотворительный общественный фонд"
* #insurance_17_decree "Фонд страхования по УП-17 от 30.01.2025"
* #insurance_311_resolution "Фонд страхования по ПП-311"
* #insurance_5199_resolution "Фонд стархования по ПП-5199"
* #local_budget "Местный бюджет"
* #other "Другие"
* #sponsorship "Спонсорство"
* #state_nonstate_grant "Государственные и негосударственные гранты"

CodeSystem: DMEDForm066TuberculosisResistanceCS
Id: dmed-form-066-tuberculosis-resistance-cs
Title: "DMED Form 066 Tuberculosis Treatment Resistance"
Description: "Source codes used by DMED data.tuberculosis_treatment_resistance in Form 066."
* insert OriginalCodeSystemDraft(dmed-form-066-tuberculosis-resistance-cs)
* ^language = #ru
* #extremely_resistant "Чрезвычайная резистентность"
* #monoresistant "Монорезистентность"
* #multiresistant "Мультирезистентность"
* #not_resistant "Чувствителен"
* #polyresistant "Полирезистентность"

CodeSystem: DMEDForm066SocialStatusCS
Id: dmed-form-066-social-status-cs
Title: "DMED Form 066 Social Status"
Description: "Source codes used by DMED social_status in Form 066."
* insert OriginalCodeSystemDraft(dmed-form-066-social-status-cs)
* ^language = #ru
* #military "Военная служба"
* #not_working "Не работает"
* #preferential_category "Есть льготная категория"
* #school_student "Учится в школе"
* #student "Студент"
* #working "Работает"

CodeSystem: DMEDForm066BenefitCategoryCS
Id: dmed-form-066-benefit-category-cs
Title: "DMED Form 066 Benefit Category"
Description: "Source codes used by DMED beneficiary data[].category in Form 066. The source list was recovered from the web-client translation dictionary and requires backend confirmation."
* insert OriginalCodeSystemDraft(dmed-form-066-benefit-category-cs)
* ^language = #ru
* #cancer_patients "Лица, страдающие онкологическими заболеваниями"
* #chernobyl_liquidators "Лица, участвовавшие в ликвидации последствий аварии на Чернобыльской АЭС, а также проходившие военную службу на ядерном полигоне"
* #childhood_disability "Лица с инвалидностью с детства"
* #children_with_pathology "Дети с патологией в возрасте до 18 лет"
* #conscripts "Лица в возрасте 18–27 лет, направленные призывными комиссиями"
* #deceased_military_families "Члены семей отдельных военнослужащих и работников, погибших при защите Родины и обеспечении мира и спокойствия в стране"
* #disabled_groups_i_ii "Лица с инвалидностью I и II групп"
* #endocrine_disease_patients "Лица, страдающие эндокринными заболеваниями"
* #hematological_disease_patients "Лица, страдающие гематологическими заболеваниями"
* #hemodialysis_patients "Пациенты, получающие программный гемодиализ"
* #international_soldiers "Воины-интернационалисты"
* #labor_front_participants "Участники трудового фронта в период войны 1941–1945 годов"
* #low_income_families "Члены семей, включённых в Социальный реестр"
* #medical_workers "Медицинские и фармацевтические работники, имеющие стаж работы не менее 3 лет в государственных медицинских учреждениях"
* #orphans "Дети-сироты"
* #pregnant_women_with_pathology "Беременные женщины с патологией"
* #std_patients "Лица, страдающие заболеваниями, передаваемыми половым путём"
* #tuberculosis_patients "Лица, страдающие туберкулёзом"
* #unemployed_pensioners "Неработающие лица, вышедшие на пенсию по возрасту, а также неработающие лица, вышедшие на пенсию за выслугу лет в отдельных силовых структурах"
* #war_veterans_1941_1945 "Инвалиды и участники войны 1941–1945 годов, а также приравненные к ним лица"

CodeSystem: DMEDForm066DiagnosisTypeCS
Id: dmed-form-066-diagnosis-type-cs
Title: "DMED Form 066 Diagnosis Type"
Description: "Source codes used by DMED disease-codes data[].type in Form 066. Confirmed against the live 'Выберите тип' dropdown on the Диагнозы в эпизоде (МКБ-10) screen (screenshot, 2026-09-16): exactly these 5 values. An earlier draft of this CodeSystem also listed a 6th code, `clinical` (\"Клинический\"), scraped from the DMED web client's translation dictionary - that turned out to be the label of the unrelated, free-text `Клинический диагноз` field on the same screen, not a value of this dropdown, and was removed."
* insert OriginalCodeSystemDraft(dmed-form-066-diagnosis-type-cs)
* ^language = #ru
* #additional "Сопутствующий"
* #background "Фоновый"
* #competing "Конкурирующий"
* #critical "Осложнение"
* #main "Основной"

CodeSystem: DMEDForm066ArrivalTypeCS
Id: dmed-form-066-arrival-type-cs
Title: "DMED Form 066 Arrival Type"
Description: "Source codes used by DMED data.arrival_type. integration-066.md currently defines no FHIR target for this field; ambulance transport is sourced separately from delivered_by_ambulance."
* insert OriginalCodeSystemDraft(dmed-form-066-arrival-type-cs)
* ^language = #ru
* #accompaned-by-police "В сопровождении сотрудника ГУВД"
* #by-ambulance "На машине скорой помощи"
* #other "Другое"
* #self-referred "Обратился самостоятельно"

CodeSystem: DMEDForm066TransportationKindCS
Id: dmed-form-066-transportation-kind-cs
Title: "DMED Form 066 Transportation Kind"
Description: "Source codes used by DMED data.transportation_kind. Form 066 currently defines no FHIR target for this field."
* insert OriginalCodeSystemDraft(dmed-form-066-transportation-kind-cs)
* ^language = #ru
* #carried-in-arms "На руках"
* #crutches "На костылях"
* #stretcher "На носилках"
* #walk "Может идти"
* #wheelchair "На кресле"

CodeSystem: DMEDForm066HospitalizationReasonCS
Id: dmed-form-066-hospitalization-reason-cs
Title: "DMED Form 066 Hospitalization Reason"
Description: "Source codes used by DMED data.hospitalization_reason. The current DMED Form 066 client removes this field from the save request, and Form 066 currently defines no FHIR target for it."
* insert OriginalCodeSystemDraft(dmed-form-066-hospitalization-reason-cs)
* ^language = #ru
* #car_accident "ДТП"
* #disease "заболевание"
* #injury "травмы"
* #planned "плановая госпитализация"
