// DMED Form 003 title-page tokens and Russian displays, from the DMED web client (2026-11-05).

CodeSystem: DMEDForm003TransportingMethodCS
Id: dmed-form-003-transporting-method-cs
Title: "DMED Form 003 transporting_method"
Description: "Source tokens for transporting_method (how the patient is carried) on the DMED Form 003 title page."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-transporting-method-cs"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* #"can_move_independently" "может самостоятельно передвигаться"
* #"in_wheelchair" "в коляске"
* #"on_stretcher" "на носилках"

CodeSystem: DMEDForm003ResultTreatmentCS
Id: dmed-form-003-result-treatment-cs
Title: "DMED Form 003 result_treatment"
Description: "Source tokens for result_treatment (treatment result) on the DMED Form 003 title page."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-result-treatment-cs"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* #"deceased" "Скончался"
  * #"deceased_after_28_weeks" "Скончалась после 28й недели беременности"
  * #"deceased_after_childbirth" "Скончалась после родов"
  * #"deceased_before_28_weeks" "Скончалась до 28й недели беременности"
  * #"deceased_before_childbirth" "Скончалась до родов"
  * #"deceased_in_er" "Скончался(ась) в приемном покое"
* #"discharged" "Выписан"
  * #"healthy" "Выписан из больницы: здоров"
  * #"no_change" "Выписан из больницы: без изменений"
  * #"slight_improvement" "Выписан из больницы: незначительное улучшение"
* #"discharged_at_his_own_request" "Выписан по собственному желанию"
* #"transferred_to_another_facility" "Переведен в другое медицинское учреждение"

// Parent relations express the meanings already stated by the source displays and discharge mapping.
// The DMED token strings and its flat API choices are unchanged.
* ^hierarchyMeaning = #is-a
* ^property[0].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].type = #code
* #"deceased" #"deceased_after_28_weeks" ^property[0].code = #parent
* #"deceased" #"deceased_after_28_weeks" ^property[=].valueCode = #deceased
* #"deceased" #"deceased_after_childbirth" ^property[0].code = #parent
* #"deceased" #"deceased_after_childbirth" ^property[=].valueCode = #deceased
* #"deceased" #"deceased_before_28_weeks" ^property[0].code = #parent
* #"deceased" #"deceased_before_28_weeks" ^property[=].valueCode = #deceased
* #"deceased" #"deceased_before_childbirth" ^property[0].code = #parent
* #"deceased" #"deceased_before_childbirth" ^property[=].valueCode = #deceased
* #"deceased" #"deceased_in_er" ^property[0].code = #parent
* #"deceased" #"deceased_in_er" ^property[=].valueCode = #deceased
* #"discharged" #"healthy" ^property[0].code = #parent
* #"discharged" #"healthy" ^property[=].valueCode = #discharged
* #"discharged" #"no_change" ^property[0].code = #parent
* #"discharged" #"no_change" ^property[=].valueCode = #discharged
* #"discharged" #"slight_improvement" ^property[0].code = #parent
* #"discharged" #"slight_improvement" ^property[=].valueCode = #discharged

CodeSystem: DMEDForm003WorkingCapacityCS
Id: dmed-form-003-working-capacity-cs
Title: "DMED Form 003 working_capacity"
Description: "Source tokens for working_capacity (work capacity at discharge) on the DMED Form 003 title page."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-working-capacity-cs"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* #"recovered" "Восстановилась"
* #"reduced" "Снизилась"
* #"temporarily_disabled" "Временно нетрудоспособен"
* #"fully_disabled_due_to_illness" "Полностью нетрудоспособен в результате заболевания"
* #"disabled_for_other_reasons" "Нетрудоспособен по другим причинам"

CodeSystem: DMEDForm003AnalysesCS
Id: dmed-form-003-analyses-cs
Title: "DMED Form 003 analyses"
Description: "Source tokens for analyses[].title (admission screening) on the DMED Form 003 title page."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-analyses-cs"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* #"blood" "Крови (KW, СПИД и другие)"
* #"feces_back_seeding" "Бакпосев кала"
* #"pediculosis" "Педикулез"
* #"abstract_disease" "Абстрактные болезни"
* #"rw-1" "RW I"
* #"rw-2" "RW II"
* #"hiv" "ВИЧ 1"
* #"hiv_II" "ВИЧ 2"
* #"hiv_express" "ВИЧ экспресс"
* #"cbc" "Общий анализ крови"
* #"hbsAg-1" "Гепатит Б"
* #"hcv" "Гепатит С"
* #"gonococcus" "Гонококк"
* #"toxoplasmosis" "Токсоплазмоз"
* #"general-urine-analysis" "Общий анализ мочи"
* #"smear-analysis" "Анализ мазка"
* #"stool-culture" "Бакпосев кала"
* #"stool-analysis" "Анализ кала"
* #"hemoglobin" "Гемоглобин"
* #"antibody-titer" "Титр антител"
* #"pcr-test" "ПЦР тест"
