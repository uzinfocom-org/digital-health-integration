Instance: dmed-form-111-contraception-type-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 contraception_type mapping"
Description: "Maps DMED `contraception_type` values to SNOMED CT where an equivalent exists, otherwise to `form111-contraception-type-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-contraception-type-cm"
* name = "DMEDForm111ContraceptionTypeCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-contraception-type-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-contraception-type-cs"
* group[=].element[+].code = #"surgical"
* group[=].element[=].display = "Хирургическая"
* group[=].element[=].target[+].code = #"chr-0008-00003"
* group[=].element[=].target[=].display = "Jarrohlik kontratseptsiyasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"non_surgical"
* group[=].element[=].display = "Нехирургическая"
* group[=].element[=].target[+].code = #"chr-0008-00001"
* group[=].element[=].target[=].display = "Jarrohliksiz kontratseptsiya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."

* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-contraception-type-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"none"
* group[=].element[=].display = "Не пользуется контрацепцией"
* group[=].element[=].target[+].code = #"445375000"
* group[=].element[=].target[=].display = "Does not use contraception"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "The source token records that no contraception is used."

Instance: dmed-form-111-contraception-details-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 contraception_details mapping"
Description: "Maps DMED `contraception_details` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-contraception-details-cm"
* name = "DMEDForm111ContraceptionDetailsCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-contraception-details-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"female_sterilization"
* group[=].element[=].display = "Женская стерилизация"
* group[=].element[=].target[+].code = #"275572005"
* group[=].element[=].target[=].display = "History of female sterilization"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Situation concept: the woman was sterilized, which is her contraception method."
* group[=].element[+].code = #"vasectomy"
* group[=].element[=].display = "Вазэктомия"
* group[=].element[=].target[+].code = #"830148006"
* group[=].element[=].target[=].display = "Partner had vasectomy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Situation concept: the woman's partner had a vasectomy."
* group[=].element[+].code = #"natural"
* group[=].element[=].display = "Естественная"
* group[=].element[=].target[+].code = #"718701005"
* group[=].element[=].target[=].display = "Natural family planning method"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Natural (calendar, temperature) methods."
* group[=].element[+].code = #"barrier"
* group[=].element[=].display = "Барьерная"
* group[=].element[=].target[+].code = #"225370004"
* group[=].element[=].target[=].display = "Uses barrier contraception method"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Barrier methods such as condoms and diaphragms."
* group[=].element[+].code = #"chemical"
* group[=].element[=].display = "Химическая"
* group[=].element[=].target[+].code = #"268466006"
* group[=].element[=].target[=].display = "Uses spermicidal contraception"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Chemical contraception means spermicides."
* group[=].element[+].code = #"intrauterine"
* group[=].element[=].display = "Внутриматочная"
* group[=].element[=].target[+].code = #"312081001"
* group[=].element[=].target[=].display = "Uses IUD (intrauterine device) contraception"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Intrauterine devices."
* group[=].element[+].code = #"hormonal"
* group[=].element[=].display = "Гормональная"
* group[=].element[=].target[+].code = #"1237404009"
* group[=].element[=].target[=].display = "Uses hormonal contraception"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Hormonal contraception of any route."
* group[=].element[+].code = #"emergency"
* group[=].element[=].display = "Экстренная"
* group[=].element[=].target[+].code = #"268463003"
* group[=].element[=].target[=].display = "Uses postcoital contraception"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Emergency contraception is postcoital contraception in SNOMED CT."

Instance: dmed-form-111-patient-bad-habits-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 patient_bad_habits mapping"
Description: "Maps DMED `patient_bad_habits` values to SNOMED CT where an equivalent exists, otherwise to `form111-patient-bad-habit-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-patient-bad-habits-cm"
* name = "DMEDForm111PatientBadHabitsCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-patient-bad-habits-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-patient-bad-habit-cs"
* group[=].element[+].code = #"internet_addiction"
* group[=].element[=].display = "Интернет-зависимость"
* group[=].element[=].target[+].code = #"chr-0020-00005"
* group[=].element[=].target[=].display = "Internetga qaramlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"uncontrolled_self_medication"
* group[=].element[=].display = "Бесконтрольное самолечение"
* group[=].element[=].target[+].code = #"chr-0020-00010"
* group[=].element[=].target[=].display = "Nazoratsiz o'zini davolash"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"criminal_dependency"
* group[=].element[=].display = "Зависимость от уголовной преступности"
* group[=].element[=].target[+].code = #"chr-0020-00002"
* group[=].element[=].target[=].display = "Jinoiy xulq-atvorga qaramlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."

// SNOMED CT targets for the DMED tokens that have a standard equivalent.
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-patient-bad-habits-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"smoking"
* group[=].element[=].display = "Курение"
* group[=].element[=].target[+].code = #"77176002"
* group[=].element[=].target[=].display = "Smoker"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Only the explicit source token supports this standard concept; do not apply it to a combined or free-text answer."
* group[=].element[+].code = #"drug_addiction"
* group[=].element[=].display = "Наркомания"
* group[=].element[=].target[+].code = #"1254812006"
* group[=].element[=].target[=].display = "Substance dependence"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "Substance dependence also covers alcohol; the narrower Drug dependence concept is inactive in SNOMED CT."
* group[=].element[+].code = #"alcoholism"
* group[=].element[=].display = "Алкоголизм"
* group[=].element[=].target[+].code = #"66590003"
* group[=].element[=].target[=].display = "Alcohol dependence"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"poor_diet"
* group[=].element[=].display = "Неправильное питание"
* group[=].element[=].target[+].code = #"310502008"
* group[=].element[=].target[=].display = "Diet poor"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"sedentary_lifestyle"
* group[=].element[=].display = "Пассивный образ жизни"
* group[=].element[=].target[+].code = #"415510005"
* group[=].element[=].target[=].display = "Sedentary lifestyle"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"gambling_addiction"
* group[=].element[=].display = "Игромания"
* group[=].element[=].target[+].code = #"18085000"
* group[=].element[=].target[=].display = "Compulsive gambling"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"promiscuous_sexual_life"
* group[=].element[=].display = "Беспорядочная половая жизнь"
* group[=].element[=].target[+].code = #"44276009"
* group[=].element[=].target[=].display = "Habitual promiscuity"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."

Instance: dmed-form-111-breast-condition-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 breast_condition mapping"
Description: "Maps DMED `breast_condition` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-breast-condition-cm"
* name = "DMEDForm111BreastConditionCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-breast-condition-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"no_pathology"
* group[=].element[=].display = "Без патологий"
* group[=].element[=].target[+].code = #"17621005"
* group[=].element[=].target[=].display = "Normal"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Qualifier value for an unremarkable breast examination."
* group[=].element[+].code = #"pathology_present"
* group[=].element[=].display = "Патологии присутствуют"
* group[=].element[=].target[+].code = #"263654008"
* group[=].element[=].target[=].display = "Abnormal"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Qualifier value for a pathological breast finding."

Instance: dmed-form-111-vascular-system-status-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 vascular_system_status mapping"
Description: "Maps DMED `vascular_system_status` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-vascular-system-status-cm"
* name = "DMEDForm111VascularSystemStatusCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-vascular-system-status-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"normal"
* group[=].element[=].display = "Норма"
* group[=].element[=].target[+].code = #"17621005"
* group[=].element[=].target[=].display = "Normal"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Qualifier value for an unremarkable finding."
* group[=].element[+].code = #"pathology"
* group[=].element[=].display = "Патология"
* group[=].element[=].target[+].code = #"263654008"
* group[=].element[=].target[=].display = "Abnormal"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Qualifier value for a pathological finding."

Instance: dmed-form-111-fetal-presentation-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 fetal_presentation mapping"
Description: "Maps DMED `fetal_presentation` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-fetal-presentation-cm"
* name = "DMEDForm111FetalPresentationCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-fetal-presentation-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"cephalic"
* group[=].element[=].display = "Головное"
* group[=].element[=].target[+].code = #"1209182005"
* group[=].element[=].target[=].display = "Cephalic fetal presentation"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Only the explicit source token supports this standard concept; do not apply it to a combined or free-text answer."
* group[=].element[+].code = #"breech"
* group[=].element[=].display = "Ягодичное"
* group[=].element[=].target[+].code = #"6096002"
* group[=].element[=].target[=].display = "Breech presentation"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Breech presentation of any type."
* group[=].element[+].code = #"undetermined"
* group[=].element[=].display = "Не определено"
* group[=].element[=].target[+].code = #"871479001"
* group[=].element[=].target[=].display = "Uncertain presentation of fetus"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "The presentation could not be determined at the examination."

Instance: dmed-form-111-gynecological-examination-status-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 gynecological-examination-status mapping"
Description: "Maps DMED gynecological examination status values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-gynecological-examination-status-cm"
* name = "DMEDForm111GynecologicalExaminationStatusCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-gynecological-examination-status-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"normal"
* group[=].element[=].display = "Норма"
* group[=].element[=].target[+].code = #"17621005"
* group[=].element[=].target[=].display = "Normal"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Qualifier value for an unremarkable finding."
* group[=].element[+].code = #"pathology"
* group[=].element[=].display = "Патология"
* group[=].element[=].target[+].code = #"263654008"
* group[=].element[=].target[=].display = "Abnormal"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Qualifier value for a pathological finding."

Instance: dmed-form-111-special-characteristics-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 special_characteristics mapping"
Description: "Maps DMED `special_characteristics` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-special-characteristics-cm"
* name = "DMEDForm111SpecialCharacteristicsCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-special-characteristics-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"false"
* group[=].element[=].display = "Норма"
* group[=].element[=].target[+].code = #"17621005"
* group[=].element[=].target[=].display = "Normal"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Qualifier value for an unremarkable finding."
* group[=].element[+].code = #"true"
* group[=].element[=].display = "Патология"
* group[=].element[=].target[+].code = #"263654008"
* group[=].element[=].target[=].display = "Abnormal"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Qualifier value for a pathological finding."

Instance: dmed-form-111-general-condition-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 general_condition mapping"
Description: "Maps DMED `general_condition` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-general-condition-cm"
* name = "DMEDForm111GeneralConditionCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-general-condition-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"satisfactory"
* group[=].element[=].display = "Удовлетворительное"
* group[=].element[=].target[+].code = #"162669003"
* group[=].element[=].target[=].display = "Patient's condition satisfactory"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "General condition recorded as satisfactory."
* group[=].element[+].code = #"unsatisfactory"
* group[=].element[=].display = "Неудовлетворительное"
* group[=].element[=].target[+].code = #"162667001"
* group[=].element[=].target[=].display = "Patient's condition poor"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Unsatisfactory is the SNOMED CT poor condition finding."

Instance: dmed-form-111-risk-level-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 risk_level mapping"
Description: "Maps DMED `risk_level` values to `form111-perinatal-risk-level-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-risk-level-cm"
* name = "DMEDForm111RiskLevelCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-risk-level-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-perinatal-risk-level-cs"
* group[=].element[+].code = #"low"
* group[=].element[=].display = "Низкий"
* group[=].element[=].target[+].code = #"chr-0021-00002"
* group[=].element[=].target[=].display = "Past xavf"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"moderate"
* group[=].element[=].display = "Умеренный"
* group[=].element[=].target[+].code = #"chr-0021-00003"
* group[=].element[=].target[=].display = "O'rtacha xavf"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"high"
* group[=].element[=].display = "Высокий"
* group[=].element[=].target[+].code = #"chr-0021-00001"
* group[=].element[=].target[=].display = "Yuqori xavf"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."

Instance: dmed-form-111-socio-biological-factors-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 socio_biological_factors mapping"
Description: "Maps DMED `socio_biological_factors` values to `form111-socio-biological-factor-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-socio-biological-factors-cm"
* name = "DMEDForm111SocioBiologicalFactorsCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-socio-biological-factors-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-socio-biological-factor-cs"
* group[=].element[+].code = #"maternal_age_under_18_or_over_35"
* group[=].element[=].display = "Возраст матери (до 18 лет, старше 35 лет)"
* group[=].element[=].target[+].code = #"chr-0028-00002"
* group[=].element[=].target[=].display = "Onaning yoshi 18 dan kichik yoki 35 dan katta"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"paternal_age_over_40"
* group[=].element[=].display = "Возраст отца (старше 40 лет)"
* group[=].element[=].target[+].code = #"chr-0028-00003"
* group[=].element[=].target[=].display = "Otaning yoshi 40 dan katta"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"professional_hazards_of_parents"
* group[=].element[=].display = "Проф. вредности у родителей"
* group[=].element[=].target[+].code = #"chr-0028-00004"
* group[=].element[=].target[=].display = "Ota-onaning kasbiy zararli omillari"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"smoking_alcoholism_drug_addiction"
* group[=].element[=].display = "Табакокурение, алкоголизм, наркомания"
* group[=].element[=].target[+].code = #"chr-0028-00005"
* group[=].element[=].target[=].display = "Chekish, alkogolizm yoki giyohvandlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"mass_height_indicators_height_less_153cm"
* group[=].element[=].display = "Рост менее 153 см"
* group[=].element[=].target[+].code = #"chr-0028-00001"
* group[=].element[=].target[=].display = "Bo'yi 153 sm dan past"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"mass_height_indicators_weight_25_percent_above_or_below_normal"
* group[=].element[=].display = "Масса тела на 25% выше или ниже нормы"
* group[=].element[=].target[+].code = #"chr-0028-00006"
* group[=].element[=].target[=].display = "Vazni me'yordan 25 foiz yuqori yoki past"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."

Instance: dmed-form-111-obstetric-gynecological-history-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 obstetric_gynecological_history mapping"
Description: "Maps DMED `obstetric_gynecological_history` values to SNOMED CT where an equivalent exists, otherwise to `form111-obstetric-history-factor-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-obstetric-gynecological-history-cm"
* name = "DMEDForm111ObstetricGynecologicalHistoryCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-obstetric-gynecological-history-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-obstetric-history-factor-cs"
* group[=].element[+].code = #"number_of_births_4_or_more"
* group[=].element[=].display = "Число родов 4 и более"
* group[=].element[=].target[+].code = #"chr-0019-00005"
* group[=].element[=].target[=].display = "To'rt va undan ortiq tug'ruq"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"multiple_or_complicated_abortions"
* group[=].element[=].display = "Неоднократные или осложненные аборты"
* group[=].element[=].target[+].code = #"chr-0019-00007"
* group[=].element[=].target[=].display = "Ko'p yoki asoratlangan abortlar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"surgical_interventions_on_uterus_or_appendages"
* group[=].element[=].display = "Оперативные вмешательства на матке или придатках"
* group[=].element[=].target[+].code = #"chr-0019-00013"
* group[=].element[=].target[=].display = "Bachadon yoki qo'shimchalarda operatsiya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"pregnancy_loss"
* group[=].element[=].display = "Невынашивание беременности"
* group[=].element[=].target[+].code = #"chr-0019-00010"
* group[=].element[=].target[=].display = "Homiladorlikni yo'qotish"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"birth_of_children_with_genetic_diseases_or_developmental_anomalies"
* group[=].element[=].display = "Рождение детей с генетическими заболеваниями, аномалиями развития"
* group[=].element[=].target[+].code = #"chr-0019-00002"
* group[=].element[=].target[=].display = "Genetik kasallik yoki rivojlanish anomaliyasi bo'lgan bola tug'ilishi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"birth_of_children_with_low_or_high_birth_weight"
* group[=].element[=].display = "Рождение детей с низкой или крупной массой тела"
* group[=].element[=].target[+].code = #"chr-0019-00003"
* group[=].element[=].target[=].display = "Vazni past yoki yuqori bola tug'ilishi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"complicated_previous_pregnancy"
* group[=].element[=].display = "Осложненное течение предыдущей беременности"
* group[=].element[=].target[+].code = #"chr-0019-00004"
* group[=].element[=].target[=].display = "Avvalgi homiladorlikning asoratli kechishi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"bacterial_viral_gynecological_diseases"
* group[=].element[=].display = "Бактериально-вирусные гинекологические заболевания (генитальный герпес, хламидиоз, цитомегаловирус, сифилис, гонорея и др.)"
* group[=].element[=].target[+].code = #"chr-0019-00001"
* group[=].element[=].target[=].display = "Bakterial yoki virusli ginekologik kasalliklar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."

// SNOMED CT targets for the DMED tokens that have a standard equivalent.
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-obstetric-gynecological-history-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"uterine_malformations"
* group[=].element[=].display = "Пороки развития матки"
* group[=].element[=].target[+].code = #"37849005"
* group[=].element[=].target[=].display = "Congenital uterine anomaly"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"infertility"
* group[=].element[=].display = "Бесплодие"
* group[=].element[=].target[+].code = #"8619003"
* group[=].element[=].target[=].display = "Infertile"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"non_developing_pregnancy"
* group[=].element[=].display = "Неразвивающаяся беременность"
* group[=].element[=].target[+].code = #"16607004"
* group[=].element[=].target[=].display = "Missed miscarriage"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Non-developing pregnancy is the missed miscarriage concept."
* group[=].element[+].code = #"premature_birth"
* group[=].element[=].display = "Преждевременные роды"
* group[=].element[=].target[+].code = #"161765003"
* group[=].element[=].target[=].display = "Past pregnancy history of premature delivery"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "History-context concept, as the field records past pregnancies."
* group[=].element[+].code = #"stillbirth"
* group[=].element[=].display = "Мертворождение"
* group[=].element[=].target[+].code = #"161743003"
* group[=].element[=].target[=].display = "Past pregnancy history of stillbirth"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "History-context concept, as the field records past pregnancies."
* group[=].element[+].code = #"neonatal_death"
* group[=].element[=].display = "Смерть в неонатальном периоде"
* group[=].element[=].target[+].code = #"1290167007"
* group[=].element[=].target[=].display = "Past pregnancy history of neonatal death"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "History-context concept, as the field records past pregnancies."

Instance: dmed-form-111-extragenital-diseases-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 extragenital_diseases mapping"
Description: "Maps DMED `extragenital_diseases` values to SNOMED CT where an equivalent exists, otherwise to `form111-extragenital-disease-factor-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-extragenital-diseases-cm"
* name = "DMEDForm111ExtragenitalDiseasesCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-extragenital-diseases-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-extragenital-disease-factor-cs"
* group[=].element[+].code = #"alcoholism_drug_addiction"
* group[=].element[=].display = "Алкоголизм, наркомания"
* group[=].element[=].target[+].code = #"chr-0012-00002"
* group[=].element[=].target[=].display = "Alkogolizm yoki giyohvandlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Combined answer; it stays local because it does not name one condition."

* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-extragenital-diseases-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"urinary_system_diseases"
* group[=].element[=].display = "Заболевания мочевыделительной системы"
* group[=].element[=].target[+].code = #"128606002"
* group[=].element[=].target[=].display = "Disorder of urinary system"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Disorders of the kidneys and urinary tract."
* group[=].element[+].code = #"endocrinopathy"
* group[=].element[=].display = "Эндокринопатия"
* group[=].element[=].target[+].code = #"362969004"
* group[=].element[=].target[=].display = "Disorder of endocrine system"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Any endocrine disorder, including diabetes and thyroid disease."
* group[=].element[+].code = #"blood_diseases"
* group[=].element[=].display = "Болезни крови"
* group[=].element[=].target[+].code = #"414022008"
* group[=].element[=].target[=].display = "Disorder of cellular component of blood"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Disorders of blood cells; coagulation is a separate token."
* group[=].element[+].code = #"liver_diseases"
* group[=].element[=].display = "Болезни печени"
* group[=].element[=].target[+].code = #"235856003"
* group[=].element[=].target[=].display = "Disease of liver"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Liver disease of any cause."
* group[=].element[+].code = #"lung_diseases"
* group[=].element[=].display = "Болезни легких"
* group[=].element[=].target[+].code = #"19829001"
* group[=].element[=].target[=].display = "Disorder of lung"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Lung disorders such as asthma and chronic bronchitis."
* group[=].element[+].code = #"connective_tissue_diseases"
* group[=].element[=].display = "Заболевания соединительной ткани"
* group[=].element[=].target[+].code = #"105969002"
* group[=].element[=].target[=].display = "Disorder of connective tissue"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Systemic connective tissue disorders."
* group[=].element[+].code = #"acute_and_chronic_infections"
* group[=].element[=].display = "Острые и хронические инфекции"
* group[=].element[=].target[+].code = #"40733004"
* group[=].element[=].target[=].display = "Infectious disease"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Both acute and chronic infections fall under this disorder."
* group[=].element[+].code = #"hemostasis_disorders"
* group[=].element[=].display = "Нарушение гемостаза"
* group[=].element[=].target[+].code = #"362970003"
* group[=].element[=].target[=].display = "Disorder of hemostatic system"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Coagulation and platelet disorders."

Instance: dmed-form-111-pregnancy-progress-pregnancy-complications-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 pregnancy_progress.pregnancy_complications mapping"
Description: "Maps DMED `pregnancy_progress.pregnancy_complications` values to SNOMED CT where an equivalent exists, otherwise to `form111-pregnancy-complication-factor-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-pregnancy-progress-pregnancy-complications-cm"
* name = "DMEDForm111PregnancyProgressPregnancyComplicationsCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-pregnancy-progress-pregnancy-complications-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-pregnancy-complication-factor-cs"
* group[=].element[+].code = #"gestosis"
* group[=].element[=].display = "Гестоз"
* group[=].element[=].target[+].code = #"chr-0022-00005"
* group[=].element[=].target[=].display = "Gestoz"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."
* group[=].element[+].code = #"exacerbation_of_viral_infection"
* group[=].element[=].display = "Обострение вирусной инфекции"
* group[=].element[=].target[+].code = #"chr-0022-00004"
* group[=].element[=].target[=].display = "Virusli infeksiyaning zo'rayishi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Исправлено соответствие в таблице: DMED-токен передаётся корректно."
* group[=].element[+].code = #"induced_pregnancy"
* group[=].element[=].display = "Индуцированная беременность"
* group[=].element[=].target[+].code = #"chr-0022-00007"
* group[=].element[=].target[=].display = "Induksiyalangan homiladorlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Точное соответствие подтверждённому коду ValueSet."

// SNOMED CT targets for the DMED tokens that have a standard equivalent.
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-pregnancy-progress-pregnancy-complications-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"anemia"
* group[=].element[=].display = "Анемия"
* group[=].element[=].target[+].code = #"271737000"
* group[=].element[=].target[=].display = "Anemia"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Only the explicit source token supports this standard concept; do not apply it to a combined or free-text answer."
* group[=].element[+].code = #"gestosis"
* group[=].element[=].display = "Гестоз"
* group[=].element[=].target[+].code = #"398254007"
* group[=].element[=].target[=].display = "Pre-eclampsia"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target
* group[=].element[=].target[=].comment = "Gestoz covers the pre-eclampsia spectrum; the local code chr-0022-00005 stays the primary target."
* group[=].element[+].code = #"vomiting_during_pregnancy"
* group[=].element[=].display = "Рвота беременной"
* group[=].element[=].target[+].code = #"90325002"
* group[=].element[=].target[=].display = "Vomiting of pregnancy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"threat_of_pregnancy_termination"
* group[=].element[=].display = "Угроза прерывания беременности"
* group[=].element[=].target[+].code = #"54048003"
* group[=].element[=].target[=].display = "Threatened miscarriage"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"bleeding_in_first_and_second_half_of_pregnancy"
* group[=].element[=].display = "Кровотечения в I и II половине беременности"
* group[=].element[=].target[+].code = #"34842007"
* group[=].element[=].target[=].display = "Antepartum hemorrhage"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Bleeding in either half of pregnancy is antepartum hemorrhage."
* group[=].element[+].code = #"polyhydramnios"
* group[=].element[=].display = "Многоводие"
* group[=].element[=].target[+].code = #"86203003"
* group[=].element[=].target[=].display = "Polyhydramnios"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"oligohydramnios"
* group[=].element[=].display = "Маловодие"
* group[=].element[=].target[+].code = #"59566000"
* group[=].element[=].target[=].display = "Oligohydramnios"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"multiple_pregnancy"
* group[=].element[=].display = "Многоплодие"
* group[=].element[=].target[+].code = #"16356006"
* group[=].element[=].target[=].display = "Multiple pregnancy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"placental_insufficiency"
* group[=].element[=].display = "Плацентарная недостаточность"
* group[=].element[=].target[+].code = #"237292005"
* group[=].element[=].target[=].display = "Placental insufficiency"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"rh_and_abo_isoimmunization"
* group[=].element[=].display = "Rh и АВО изосенсибилизация"
* group[=].element[=].target[+].code = #"237300009"
* group[=].element[=].target[=].display = "Pregnancy with isoimmunization"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Covers Rh and ABO isoimmunization."
* group[=].element[+].code = #"anatomically_narrow_pelvis"
* group[=].element[=].display = "Анатомически узкий таз"
* group[=].element[=].target[+].code = #"871005"
* group[=].element[=].target[=].display = "Contracted pelvis"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"incorrect_fetal_position"
* group[=].element[=].display = "Неправильное положение плода"
* group[=].element[=].target[+].code = #"80002007"
* group[=].element[=].target[=].display = "Malpresentation of fetus"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."
* group[=].element[+].code = #"prolonged_pregnancy"
* group[=].element[=].display = "Переношенная беременность"
* group[=].element[=].target[+].code = #"90968009"
* group[=].element[=].target[=].display = "Post-term pregnancy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Exact SNOMED CT equivalent."

Instance: dmed-form-111-education-type-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 education_type mapping"
Description: "Maps DMED `education_type` to the optional Form 111 `form111-education-level-cs` coding of the education Observation; values without a Form 111 code are noMap."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-education-type-cm"
* name = "DMEDForm111EducationTypeCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-education-type-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-education-level-cs"
* group[=].element[+].code = #"elementary"
* group[=].element[=].display = "Начальное общее образование"
* group[=].element[=].target[+].code = #"chr-0010-00001"
* group[=].element[=].target[=].display = "Boshlang'ich umumiy ta'lim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Подтверждённый токен DMED."
* group[=].element[+].code = #"secondary"
* group[=].element[=].display = "Среднее общее образование"
* group[=].element[=].target[+].code = #"chr-0010-00003"
* group[=].element[=].target[=].display = "O'rta umumiy ta'lim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Подтверждённый токен DMED."
* group[=].element[+].code = #"higher"
* group[=].element[=].display = "Высшее образование - бакалавриат"
* group[=].element[=].target[+].code = #"chr-0010-00002"
* group[=].element[=].target[=].display = "Oliy ta'lim — bakalavriat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Подтверждённый токен DMED."
* group[=].element[+].code = #"no_education"
* group[=].element[=].display = "Таълимсиз"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"unorganized"
* group[=].element[=].display = "Ташкил этилмаган (0-3 ёш)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"preschool"
* group[=].element[=].display = "Мактабгача таълим (3-7 ёш)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"incomplete_secondary"
* group[=].element[=].display = "Ўрта тугалланмаган таълим"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"secondary_vocational"
* group[=].element[=].display = "Ўрта касбий таълим"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"special_needs_school"
* group[=].element[=].display = "Ақлий заиф болалар мактаби"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"incomplete_higher"
* group[=].element[=].display = "Тугалланмаган олий таълим"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"higher_master"
* group[=].element[=].display = "Олий таълим - магистратура"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"higher_specialist"
* group[=].element[=].display = "Олий таълим - мутахассислик"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"postgraduate"
* group[=].element[=].display = "Аспирантура"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"residency"
* group[=].element[=].display = "Ординатура"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"internship"
* group[=].element[=].display = "Интернатура"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"professional_development"
* group[=].element[=].display = "Малака ошириш"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"other"
* group[=].element[=].display = "Бошқа"
* group[=].element[=].noMap = true

Instance: dmed-form-111-status-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 status mapping"
Description: "Maps DMED pregnancy `status` values to SNOMED CT where an equivalent exists, otherwise to `form111-pregnancy-outcome-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-status-cm"
* name = "DMEDForm111StatusCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-status-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"gave_birth"
* group[=].element[=].display = "Родоразрешение"
* group[=].element[=].target[+].code = #"3950001"
* group[=].element[=].target[=].display = "Birth"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Токен относится только к текущей беременности."
* group[=].element[+].code = #"misbirth"
* group[=].element[=].display = "Самопроизвольный выкидыш"
* group[=].element[=].target[+].code = #"17369002"
* group[=].element[=].target[=].display = "Miscarriage"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Токен относится только к текущей беременности."
* group[=].element[+].code = #"abort"
* group[=].element[=].display = "Прерывание беременности"
* group[=].element[=].target[+].code = #"386639001"
* group[=].element[=].target[=].display = "Termination of pregnancy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Токен относится только к текущей беременности."
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-status-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-pregnancy-outcome-cs"
* group[=].element[+].code = #"mother_deathed"
* group[=].element[=].display = "Смерть матери"
* group[=].element[=].target[+].code = #"chr-0024-00002"
* group[=].element[=].target[=].display = "Ona o'limi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Локальный код: точный стандартный код не подтверждён."
* group[=].element[+].code = #"child_deathed"
* group[=].element[=].display = "Смерть ребенка"
* group[=].element[=].target[+].code = #"chr-0024-00001"
* group[=].element[=].target[=].display = "Bola o'limi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Локальный код: точный стандартный код не подтверждён."

Instance: dmed-form-111-pregnancy-outcome-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 pregnancy_outcome mapping"
Description: "Maps DMED `pregnancy_outcome` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-pregnancy-outcome-cm"
* name = "DMEDForm111PregnancyOutcomeCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-pregnancy-outcome-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"abort"
* group[=].element[=].display = "Аборт"
* group[=].element[=].target[+].code = #"386639001"
* group[=].element[=].target[=].display = "Termination of pregnancy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Не смешивать с одноимённым токеном текущей беременности."
* group[=].element[+].code = #"birth"
* group[=].element[=].display = "Рождение ребенка"
* group[=].element[=].target[+].code = #"3950001"
* group[=].element[=].target[=].display = "Birth"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Исход предыдущей беременности."

Instance: dmed-form-111-analysis-title-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 analysis_title mapping"
Description: "Maps DMED `analysis_title` values to `form111-analysis-test-code-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-analysis-title-cm"
* name = "DMEDForm111AnalysisTitleCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-analysis-title-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-analysis-test-code-cs"
* group[=].element[+].code = #"OTHER"
* group[=].element[=].display = "Другой анализ"
* group[=].element[=].target[+].code = #"chr-0001-00006"
* group[=].element[=].target[=].display = "Boshqa tahlil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Для анализов DMED, отсутствующих в реальной форме 111: мазок, кал, моча и аналогичные позиции."

Instance: dmed-form-111-child-birth-status-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 child_birth_status mapping"
Description: "Maps DMED `child_birth_status` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-child-birth-status-cm"
* name = "DMEDForm111ChildBirthStatusCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-child-birth-status-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"preterm"
* group[=].element[=].display = "Недоношенный"
* group[=].element[=].target[+].code = #"367494004"
* group[=].element[=].target[=].display = "Premature birth of newborn"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Map by token semantics. The current DMED client renders the FullTerm label for preterm; this observed UI label inversion must be corrected in DMED."
* group[=].element[+].code = #"term"
* group[=].element[=].display = "Доношенный"
* group[=].element[=].target[+].code = #"21243004"
* group[=].element[=].target[=].display = "Term birth of newborn"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Map by token semantics. The current DMED client renders the Premature label for term; this observed UI label inversion must be corrected in DMED."

Instance: dmed-form-111-blood-group-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 blood_group mapping"
Description: "Maps DMED `blood_group` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-blood-group-cm"
* name = "DMEDForm111BloodGroupCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-blood-group-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"o"
* group[=].element[=].display = "O(I)"
* group[=].element[=].target[+].code = #"58460004"
* group[=].element[=].target[=].display = "Blood group O"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"a"
* group[=].element[=].display = "A(II)"
* group[=].element[=].target[+].code = #"112144000"
* group[=].element[=].target[=].display = "Blood group A"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"b"
* group[=].element[=].display = "B(III)"
* group[=].element[=].target[+].code = #"112149005"
* group[=].element[=].target[=].display = "Blood group B"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"ab"
* group[=].element[=].display = "AB(IV)"
* group[=].element[=].target[+].code = #"165743006"
* group[=].element[=].target[=].display = "Blood group AB"
* group[=].element[=].target[=].relationship = #equivalent

Instance: dmed-form-111-rhesus-factor-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 rhesus_factor mapping"
Description: "Maps DMED `rhesus_factor` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-rhesus-factor-cm"
* name = "DMEDForm111RhesusFactorCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-rhesus-factor-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"negative"
* group[=].element[=].display = "Rh-"
* group[=].element[=].target[+].code = #"165746003"
* group[=].element[=].target[=].display = "RhD negative"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"positive"
* group[=].element[=].display = "Rh"
* group[=].element[=].target[+].code = #"165747007"
* group[=].element[=].target[=].display = "RhD positive"
* group[=].element[=].target[=].relationship = #equivalent

Instance: dmed-form-111-birth-type-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 birth_type mapping"
Description: "Maps DMED `birth_type` values to SNOMED CT where an equivalent exists, otherwise to `form111-birth-type-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-birth-type-cm"
* name = "DMEDForm111BirthTypeCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-birth-type-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form111-birth-type-cs"
* group[=].element[+].code = #"surgical_delivery"
* group[=].element[=].display = "Акушерско-хирургическая практика"
* group[=].element[=].target[+].code = #"chr-0003-00002"
* group[=].element[=].target[=].display = "Akusherlik-jarrohlik amaliyoti"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Current DMED previous-pregnancy token; replaces the obsolete delivery_method=surgical token."

// Standard target; obstetric surgical practice has no single SNOMED CT equivalent and stays local.
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-birth-type-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"vaginal_delivery"
* group[=].element[=].display = "Роды через естественные родовые пути"
* group[=].element[=].target[+].code = #"289259007"
* group[=].element[=].target[=].display = "Vaginal delivery"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Current DMED previous-pregnancy token; replaces the obsolete delivery_method=natural token."

Instance: dmed-form-111-child-birth-condition-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 child_birth_condition mapping"
Description: "Maps DMED `child_birth_condition` values to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-child-birth-condition-cm"
* name = "DMEDForm111ChildBirthConditionCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-child-birth-condition-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"live_birth"
* group[=].element[=].display = "Живорожденный"
* group[=].element[=].target[+].code = #"281050002"
* group[=].element[=].target[=].display = "Livebirth"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Current DMED child_birth_condition token."
* group[=].element[+].code = #"stillbirth_antenatal"
* group[=].element[=].display = "Мертворожденный — антенатальная смерть"
* group[=].element[=].target[+].code = #"713202001"
* group[=].element[=].target[=].display = "Antepartum stillbirth"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Current DMED child_birth_condition token; replaces antenatal_stillbirth."
* group[=].element[+].code = #"stillbirth_intranatal"
* group[=].element[=].display = "Мертворождение — интранатальная смерть"
* group[=].element[=].target[+].code = #"237362003"
* group[=].element[=].target[=].display = "Fetal intrapartum death"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Current DMED child_birth_condition token; replaces intrapartum_stillbirth."

Instance: dmed-form-111-family-status-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 family_status mapping"
Description: "Maps DMED `family_status` values to HL7 `v3-MaritalStatus`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-family-status-cm"
* name = "DMEDForm111FamilyStatusCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-family-status-cs"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* group[=].element[+].code = #"not_married"
* group[=].element[=].display = "Никоҳда эмас"
* group[=].element[=].target[+].code = #"U"
* group[=].element[=].target[=].display = "unmarried"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "The DMED value means currently not married; it does not establish that the patient has never married."
* group[=].element[+].code = #"married"
* group[=].element[=].display = "Никоҳланган"
* group[=].element[=].target[+].code = #"M"
* group[=].element[=].target[=].display = "Married"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"divorced"
* group[=].element[=].display = "Ажрашкан"
* group[=].element[=].target[+].code = #"D"
* group[=].element[=].target[=].display = "Divorced"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"widowed"
* group[=].element[=].display = "Шубҳаси"
* group[=].element[=].target[+].code = #"W"
* group[=].element[=].target[=].display = "Widowed"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Token semantics are unambiguous; the observed DMED Uzbek label appears incorrect and requires a client dictionary fix."
* group[=].element[+].code = #"cohabitant"
* group[=].element[=].display = "Бирга туғилган"
* group[=].element[=].target[+].code = #"T"
* group[=].element[=].target[=].display = "Domestic partner"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Token semantics are used; the observed DMED Uzbek label should be reviewed."
* group[=].element[+].code = #"other"
* group[=].element[=].display = "Бошқа"
* group[=].element[=].noMap = true

Instance: dmed-form-111-education-type-core-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 111 education-type-core mapping"
Description: "Maps DMED `education_type` to UZ Core `education-cs`, the coding the education Observation always carries."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-111-education-type-core-cm"
* name = "DMEDForm111EducationTypeCoreCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-111-education-type-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/core/CodeSystem/education-cs"
* group[=].element[+].code = #"no_education"
* group[=].element[=].display = "Таълимсиз"
* group[=].element[=].target[+].code = #"regis0005.00011"
* group[=].element[=].target[=].display = "Ma'lumoti yo'q"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation."
* group[=].element[+].code = #"unorganized"
* group[=].element[=].display = "Ташкил этилмаган (0-3 ёш)"
* group[=].element[=].target[+].code = #"regis0005.00001"
* group[=].element[=].target[=].display = "Uyushmagan (0-3 yosh)"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation."
* group[=].element[+].code = #"preschool"
* group[=].element[=].display = "Мактабгача таълим (3-7 ёш)"
* group[=].element[=].target[+].code = #"regis0005.00002"
* group[=].element[=].target[=].display = "Maktabgacha (3-7 yosh)"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation."
* group[=].element[+].code = #"elementary"
* group[=].element[=].display = "Начальное общее образование"
* group[=].element[=].target[+].code = #"regis0005.00010"
* group[=].element[=].target[=].display = "Boshqa"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "National education-cs has no direct category. Use national Other to satisfy the required binding and retain the precise DMED source coding in the same CodeableConcept."
* group[=].element[+].code = #"secondary"
* group[=].element[=].display = "Среднее общее образование"
* group[=].element[=].target[+].code = #"regis0005.00004"
* group[=].element[=].target[=].display = "O'rtacha"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation."
* group[=].element[+].code = #"incomplete_secondary"
* group[=].element[=].display = "Ўрта тугалланмаган таълим"
* group[=].element[=].target[+].code = #"regis0005.00003"
* group[=].element[=].target[=].display = "Ikkilamchi tugallanmagan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation."
* group[=].element[+].code = #"secondary_vocational"
* group[=].element[=].display = "Ўрта касбий таълим"
* group[=].element[=].target[+].code = #"regis0005.00006"
* group[=].element[=].target[=].display = "O'rta maxsus ta'lim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation."
* group[=].element[+].code = #"special_needs_school"
* group[=].element[=].display = "Ақлий заиф болалар мактаби"
* group[=].element[=].target[+].code = #"regis0005.00005"
* group[=].element[=].target[=].display = "Aqli zaiflar uchun maktab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation."
* group[=].element[+].code = #"incomplete_higher"
* group[=].element[=].display = "Тугалланмаган олий таълим"
* group[=].element[=].target[+].code = #"regis0005.00007"
* group[=].element[=].target[=].display = "Tugallanmagan oliy ta'lim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation."
* group[=].element[+].code = #"higher"
* group[=].element[=].display = "Высшее образование - бакалавриат"
* group[=].element[=].target[+].code = #"regis0005.00008"
* group[=].element[=].target[=].display = "Oliy ma'lumot"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation; retain the more specific DMED source coding in the same CodeableConcept."
* group[=].element[+].code = #"higher_master"
* group[=].element[=].display = "Олий таълим - магистратура"
* group[=].element[=].target[+].code = #"regis0005.00008"
* group[=].element[=].target[=].display = "Oliy ma'lumot"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation; retain the more specific DMED source coding in the same CodeableConcept."
* group[=].element[+].code = #"higher_specialist"
* group[=].element[=].display = "Олий таълим - мутахассислик"
* group[=].element[=].target[+].code = #"regis0005.00012"
* group[=].element[=].target[=].display = "Ixtisoslik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation."
* group[=].element[+].code = #"postgraduate"
* group[=].element[=].display = "Аспирантура"
* group[=].element[=].target[+].code = #"regis0005.00008"
* group[=].element[=].target[=].display = "Oliy ma'lumot"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation; retain the more specific DMED source coding in the same CodeableConcept."
* group[=].element[+].code = #"residency"
* group[=].element[=].display = "Ординатура"
* group[=].element[=].target[+].code = #"regis0005.00008"
* group[=].element[=].target[=].display = "Oliy ma'lumot"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation; retain the more specific DMED source coding in the same CodeableConcept."
* group[=].element[+].code = #"internship"
* group[=].element[=].display = "Интернатура"
* group[=].element[=].target[+].code = #"regis0005.00008"
* group[=].element[=].target[=].display = "Oliy ma'lumot"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation; retain the more specific DMED source coding in the same CodeableConcept."
* group[=].element[+].code = #"professional_development"
* group[=].element[=].display = "Малака ошириш"
* group[=].element[=].target[+].code = #"regis0005.00010"
* group[=].element[=].target[=].display = "Boshqa"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "National education-cs has no direct category. Use national Other to satisfy the required binding and retain the precise DMED source coding in the same CodeableConcept."
* group[=].element[+].code = #"other"
* group[=].element[=].display = "Бошқа"
* group[=].element[=].target[+].code = #"regis0005.00010"
* group[=].element[=].target[=].display = "Boshqa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "Use national coding for UZCoreSocioeconomicObservation."
