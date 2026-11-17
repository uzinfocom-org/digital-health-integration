// ConceptMaps from DMED Form 027 tokens (dmed-form-027-*-cs) to the codes the
// Form 027 document sends.

Instance: dmed-form-027-hospitalization-purpose-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 027 purpose mapping"
Description: "Maps DMED hospitalization referral `purpose[]` to `hospitalization-purpose-cs`, sent in ServiceRequest.reason.concept of the Form 027 hospitalization request. Each DMED value becomes its own reason. DMED has no token for \"other\": when other_purpose_checked is set, send `hospitalization-purpose-cs#other` with the other_purpose text in reason.concept.text."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-027-hospitalization-purpose-cm"
* name = "DMEDForm027HospitalizationPurposeCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-027-hospitalization-purpose-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/hospitalization-purpose-cs"
* group[=].element[+].code = #"diagnostic"
* group[=].element[=].display = "Диагностика"
* group[=].element[=].target[+].code = #"diagnostics"
* group[=].element[=].target[=].display = "Diagnostika"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"consultation"
* group[=].element[=].display = "Консультация"
* group[=].element[=].target[+].code = #"consultation"
* group[=].element[=].target[=].display = "Konsultativ"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"treatment"
* group[=].element[=].display = "Лечение"
* group[=].element[=].target[+].code = #"treatment"
* group[=].element[=].target[=].display = "Davolash"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"inspection"
* group[=].element[=].display = "Осмотр"
* group[=].element[=].target[+].code = #"examination"
* group[=].element[=].target[=].display = "Ko'rik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"dispensary_control"
* group[=].element[=].display = "Д-контроль"
* group[=].element[=].target[+].code = #"dispensary-control"
* group[=].element[=].target[=].display = "D-nazorat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"childbirth"
* group[=].element[=].display = "Родоразрешение"
* group[=].element[=].target[+].code = #"delivery"
* group[=].element[=].target[=].display = "Tug'ruq"
* group[=].element[=].target[=].relationship = #equivalent

Instance: dmed-form-027-hospitalization-type-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 027 hospitalization_type mapping"
Description: "Maps DMED `hospitalization_type` (Bemor turi, Form 027 item 2) to Encounter.class."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-027-hospitalization-type-cm"
* name = "DMEDForm027HospitalizationTypeCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-027-hospitalization-type-cs"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* group[=].element[+].code = #"ambulatory"
* group[=].element[=].display = "Амбулаторное лечение"
* group[=].element[=].target[+].code = #AMB
* group[=].element[=].target[=].display = "ambulatory"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"hospitalTreatment"
* group[=].element[=].display = "Стационарное лечение"
* group[=].element[=].target[+].code = #IMP
* group[=].element[=].target[=].display = "inpatient encounter"
* group[=].element[=].target[=].relationship = #equivalent

Instance: dmed-form-027-diagnosis-type-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 027 diagnosis type mapping"
Description: "Maps the DMED diagnosis type to `diagnosis-role-integration`, sent in Condition.category and used as the code of the matching sub-section of the Form 027 referral and diagnosis section."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-027-diagnosis-type-cm"
* name = "DMEDForm027DiagnosisTypeCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-027-diagnosis-type-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/diagnosis-role-integration"
* group[=].element[+].code = #"main"
* group[=].element[=].display = "Основной"
* group[=].element[=].target[+].code = #"main"
* group[=].element[=].target[=].display = "Asosiy tashxis"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"additional"
* group[=].element[=].display = "Сопутствующий"
* group[=].element[=].target[+].code = #"concomitant"
* group[=].element[=].target[=].display = "Yondosh tashxis"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"background"
* group[=].element[=].display = "Фоновый"
* group[=].element[=].target[+].code = #"background"
* group[=].element[=].target[=].display = "Fon tashxis"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"critical"
* group[=].element[=].display = "Осложнение"
* group[=].element[=].target[+].code = #"complication"
* group[=].element[=].target[=].display = "Asorat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"competing"
* group[=].element[=].display = "Конкурирующий"
* group[=].element[=].target[+].code = #"competing"
* group[=].element[=].target[=].display = "Raqobat tashxis"
* group[=].element[=].target[=].relationship = #equivalent
