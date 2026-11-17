// DMED source tokens used by Form 027 (hospitalization referral `purpose[]`,
// `hospitalization_type` and diagnosis `disease_codes` keys / `type`). Purpose and
// hospitalization type tokens are from the DMED web client (lev-g2g, 2026-11-07);
// diagnosis types match the live "Выберите тип" dropdown that Form 066 maps.

CodeSystem: DMEDForm027HospitalizationPurposeCS
Id: dmed-form-027-hospitalization-purpose-cs
Title: "DMED Form 027 purpose"
Description: "Source tokens for purpose[] (purpose of hospitalization, multi-select) on the DMED hospitalization referral that Form 027 refers to. \"Other\" has no token: DMED sets other_purpose_checked and sends the text in other_purpose."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-027-hospitalization-purpose-cs"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^language = #ru
* #"diagnostic" "Диагностика"
* #"consultation" "Консультация"
* #"treatment" "Лечение"
* #"inspection" "Осмотр"
* #"dispensary_control" "Д-контроль"
* #"childbirth" "Родоразрешение"

CodeSystem: DMEDForm027HospitalizationTypeCS
Id: dmed-form-027-hospitalization-type-cs
Title: "DMED Form 027 hospitalization_type"
Description: "Source tokens for hospitalization_type (Bemor turi, Form 027 item 2) on the DMED hospitalization referral."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-027-hospitalization-type-cs"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^language = #ru
* #"ambulatory" "Амбулаторное лечение"
* #"hospitalTreatment" "Стационарное лечение"

CodeSystem: DMEDForm027DiagnosisTypeCS
Id: dmed-form-027-diagnosis-type-cs
Title: "DMED Form 027 diagnosis type"
Description: "Source tokens for the diagnosis type in DMED: the `type` of a disease code and the keys of `disease_codes` / `clinical_diagnoses_ids` on the hospitalization referral (main diagnosis in `main_disease_code`)."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-027-diagnosis-type-cs"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^language = #ru
* #"main" "Основной"
* #"additional" "Сопутствующий"
* #"background" "Фоновый"
* #"critical" "Осложнение"
* #"competing" "Конкурирующий"
