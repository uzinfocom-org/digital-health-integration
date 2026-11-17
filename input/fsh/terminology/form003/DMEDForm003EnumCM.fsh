// Blood group and Rh factor use dmed-form-111-blood-group-cm and dmed-form-111-rhesus-factor-cm.

Instance: dmed-form-003-transporting-method-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 003 transporting_method mapping"
Description: "Maps DMED `transporting_method` to `patient-transport-mobility-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-003-transporting-method-cm"
* name = "DMEDForm003TransportingMethodCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-transporting-method-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/patient-transport-mobility-cs"
* group[=].element[+].code = #"can_move_independently"
* group[=].element[=].display = "может самостоятельно передвигаться"
* group[=].element[=].target[+].code = #"chr-0033-0003"
* group[=].element[=].target[=].display = "Yura oladi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"in_wheelchair"
* group[=].element[=].display = "в коляске"
* group[=].element[=].target[+].code = #"chr-0033-0001"
* group[=].element[=].target[=].display = "Nogironlar aravachasida"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"on_stretcher"
* group[=].element[=].display = "на носилках"
* group[=].element[=].target[+].code = #"chr-0033-0002"
* group[=].element[=].target[=].display = "Zambilda"
* group[=].element[=].target[=].relationship = #equivalent

Instance: dmed-form-003-readmission-same-reason-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 003 readmission_same_reason mapping"
Description: "Maps DMED `readmission_same_reason` to `Encounter.admission.reAdmission`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-003-readmission-same-reason-cm"
* name = "DMEDForm003ReadmissionSameReasonCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-readmission-same-reason-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/core/CodeSystem/re-admission-local-cs"
* group[=].element[+].code = #"primary"
* group[=].element[=].display = "первичная"
* group[=].element[=].target[+].code = #"first-time"
* group[=].element[=].target[=].display = "Birinchi marta"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"secondary"
* group[=].element[=].display = "повторная"
* group[=].element[=].target[+].code = #"repeat-current-year"
* group[=].element[=].target[=].display = "Joriy yilda qayta"
* group[=].element[=].target[=].relationship = #equivalent

Instance: dmed-form-003-result-treatment-discharge-disposition-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 003 result_treatment to discharge disposition"
Description: "Maps DMED `result_treatment` to `Encounter.admission.dischargeDisposition`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-003-result-treatment-discharge-disposition-cm"
* name = "DMEDForm003ResultTreatmentDischargeDispositionCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-result-treatment-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-discharge-disposition-home-cs"
* group[=].element[+].code = #"discharged"
* group[=].element[=].display = "Выписан"
* group[=].element[=].target[+].code = #"mserv-0004-00004"
* group[=].element[=].target[=].display = "Chiqarildi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"healthy"
* group[=].element[=].display = "Выписан из больницы: здоров"
* group[=].element[=].target[+].code = #"mserv-0004-00004"
* group[=].element[=].target[=].display = "Chiqarildi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #"no_change"
* group[=].element[=].display = "Выписан из больницы: без изменений"
* group[=].element[=].target[+].code = #"mserv-0004-00004"
* group[=].element[=].target[=].display = "Chiqarildi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #"slight_improvement"
* group[=].element[=].display = "Выписан из больницы: незначительное улучшение"
* group[=].element[=].target[+].code = #"mserv-0004-00004"
* group[=].element[=].target[=].display = "Chiqarildi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #"discharged_at_his_own_request"
* group[=].element[=].display = "Выписан по собственному желанию"
* group[=].element[=].target[+].code = #"mserv-0004-00003"
* group[=].element[=].target[=].display = "O'zi chiqib ketdi"
* group[=].element[=].target[=].relationship = #equivalent
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-result-treatment-cs"
* group[=].target = "http://terminology.hl7.org/CodeSystem/discharge-disposition"
* group[=].element[+].code = #"transferred_to_another_facility"
* group[=].element[=].display = "Переведен в другое медицинское учреждение"
* group[=].element[=].target[+].code = #"other-hcf"
* group[=].element[=].target[=].display = "Other healthcare facility"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"deceased"
* group[=].element[=].display = "Скончался"
* group[=].element[=].target[+].code = #"exp"
* group[=].element[=].target[=].display = "Expired"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"deceased_after_28_weeks"
* group[=].element[=].display = "Скончалась после 28й недели беременности"
* group[=].element[=].target[+].code = #"exp"
* group[=].element[=].target[=].display = "Expired"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #"deceased_after_childbirth"
* group[=].element[=].display = "Скончалась после родов"
* group[=].element[=].target[+].code = #"exp"
* group[=].element[=].target[=].display = "Expired"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #"deceased_before_28_weeks"
* group[=].element[=].display = "Скончалась до 28й недели беременности"
* group[=].element[=].target[+].code = #"exp"
* group[=].element[=].target[=].display = "Expired"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #"deceased_before_childbirth"
* group[=].element[=].display = "Скончалась до родов"
* group[=].element[=].target[+].code = #"exp"
* group[=].element[=].target[=].display = "Expired"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #"deceased_in_er"
* group[=].element[=].display = "Скончался(ась) в приемном покое"
* group[=].element[=].target[+].code = #"exp"
* group[=].element[=].target[=].display = "Expired"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

Instance: dmed-form-003-result-treatment-subject-status-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 003 result_treatment to subject status"
Description: "Maps DMED `result_treatment` to `Encounter.subjectStatus`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-003-result-treatment-subject-status-cm"
* name = "DMEDForm003ResultTreatmentSubjectStatusCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-result-treatment-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-local-subject-status-cs"
* group[=].element[+].code = #"healthy"
* group[=].element[=].display = "Выписан из больницы: здоров"
* group[=].element[=].target[+].code = #"loc-cs-001"
* group[=].element[=].target[=].display = "Tuzaldi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"slight_improvement"
* group[=].element[=].display = "Выписан из больницы: незначительное улучшение"
* group[=].element[=].target[+].code = #"loc-cs-002"
* group[=].element[=].target[=].display = "Ijobiy o'zgarish bilan"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #"no_change"
* group[=].element[=].display = "Выписан из больницы: без изменений"
* group[=].element[=].target[+].code = #"loc-cs-003"
* group[=].element[=].target[=].display = "O'zgarishsiz"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"discharged"
* group[=].element[=].display = "Выписан"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"discharged_at_his_own_request"
* group[=].element[=].display = "Выписан по собственному желанию"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"transferred_to_another_facility"
* group[=].element[=].display = "Переведен в другое медицинское учреждение"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"deceased"
* group[=].element[=].display = "Скончался"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"deceased_after_28_weeks"
* group[=].element[=].display = "Скончалась после 28й недели беременности"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"deceased_after_childbirth"
* group[=].element[=].display = "Скончалась после родов"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"deceased_before_28_weeks"
* group[=].element[=].display = "Скончалась до 28й недели беременности"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"deceased_before_childbirth"
* group[=].element[=].display = "Скончалась до родов"
* group[=].element[=].noMap = true
* group[=].element[+].code = #"deceased_in_er"
* group[=].element[=].display = "Скончался(ась) в приемном покое"
* group[=].element[=].noMap = true

Instance: dmed-form-003-result-treatment-death-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 003 result_treatment to death circumstance"
Description: "Maps DMED `result_treatment` deaths to the value of the `death-context` Observation: a local death context code, or SNOMED CT antepartum or postpartum maternal death. Death is recorded only in the document: the Patient is not updated and carries no `deceased[x]`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-003-result-treatment-death-cm"
* name = "DMEDForm003ResultTreatmentDeathCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-result-treatment-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/death-context-cs"
* group[=].element[+].code = #"deceased_in_er"
* group[=].element[=].display = "Скончался(ась) в приемном покое"
* group[=].element[=].target[+].code = #"chr-0030-0001"
* group[=].element[=].target[=].display = "Qabulxonada vafot etgan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"deceased_before_28_weeks"
* group[=].element[=].display = "Скончалась до 28й недели беременности"
* group[=].element[=].target[+].code = #"chr-0030-0002"
* group[=].element[=].target[=].display = "Homiladorlikning 28-haftasigacha vafot etgan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"deceased_after_28_weeks"
* group[=].element[=].display = "Скончалась после 28й недели беременности"
* group[=].element[=].target[+].code = #"chr-0030-0003"
* group[=].element[=].target[=].display = "Homiladorlikning 28-haftasidan keyin vafot etgan"
* group[=].element[=].target[=].relationship = #equivalent
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-result-treatment-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"deceased_before_childbirth"
* group[=].element[=].display = "Скончалась до родов"
* group[=].element[=].target[+].code = #"31868001"
* group[=].element[=].target[=].display = "Antepartum maternal death"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"deceased_after_childbirth"
* group[=].element[=].display = "Скончалась после родов"
* group[=].element[=].target[+].code = #"5866003"
* group[=].element[=].target[=].display = "Postpartum maternal death"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"deceased"
* group[=].element[=].display = "Скончался"
* group[=].element[=].noMap = true

Instance: dmed-form-003-working-capacity-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 003 working_capacity mapping"
Description: "Maps DMED `working_capacity` to `work-capacity-status-cs`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-003-working-capacity-cm"
* name = "DMEDForm003WorkingCapacityCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-working-capacity-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/work-capacity-status-cs"
* group[=].element[+].code = #"recovered"
* group[=].element[=].display = "Восстановилась"
* group[=].element[=].target[+].code = #"chr-0036-0001"
* group[=].element[=].target[=].display = "To'liq tiklangan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"reduced"
* group[=].element[=].display = "Снизилась"
* group[=].element[=].target[+].code = #"chr-0036-0002"
* group[=].element[=].target[=].display = "Pasaygan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"temporarily_disabled"
* group[=].element[=].display = "Временно нетрудоспособен"
* group[=].element[=].target[+].code = #"chr-0036-0003"
* group[=].element[=].target[=].display = "Vaqtincha yo'qolgan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"fully_disabled_due_to_illness"
* group[=].element[=].display = "Полностью нетрудоспособен в результате заболевания"
* group[=].element[=].target[+].code = #"chr-0036-0004"
* group[=].element[=].target[=].display = "Mazkur kasallik sababli butunlay yo'qolgan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #"disabled_for_other_reasons"
* group[=].element[=].display = "Нетрудоспособен по другим причинам"
* group[=].element[=].target[+].code = #"chr-0036-0005"
* group[=].element[=].target[=].display = "Boshqa sabablarga ko'ra yo'qolgan"
* group[=].element[=].target[=].relationship = #equivalent

Instance: dmed-form-003-analyses-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Form 003 analyses mapping"
Description: "Maps DMED `analyses[].title` to the admission screening Observation or DiagnosticReport code."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-form-003-analyses-cm"
* name = "DMEDForm003AnalysesCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-analyses-cs"
* group[=].target = "http://loinc.org"
* group[=].element[+].code = #"blood"
* group[=].element[=].display = "Крови (KW, СПИД и другие)"
* group[=].element[=].target[+].code = #"22461-8"
* group[=].element[=].target[=].display = "Reagin Ab [Presence] in Serum"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target
* group[=].element[=].target[=].comment = "DMED records RW and HIV as one value."
* group[=].element[=].target[+].code = #"56888-1"
* group[=].element[=].target[=].display = "HIV 1+2 Ab+HIV1 p24 Ag [Presence] in Serum or Plasma by Immunoassay"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target
* group[=].element[=].target[=].comment = "DMED records RW and HIV as one value."
* group[=].element[+].code = #"feces_back_seeding"
* group[=].element[=].display = "Бакпосев кала"
* group[=].element[=].target[+].code = #"625-4"
* group[=].element[=].target[=].display = "Bacteria identified in Stool by Culture"
* group[=].element[=].target[=].relationship = #equivalent
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-analyses-cs"
* group[=].target = "http://snomed.info/sct"
* group[=].element[+].code = #"pediculosis"
* group[=].element[=].display = "Педикулез"
* group[=].element[=].target[+].code = #"20848007"
* group[=].element[=].target[=].display = "Pediculosis"
* group[=].element[=].target[=].relationship = #equivalent
* group[+].source = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/dmed-form-003-analyses-cs"
* group[=].target = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/form-003-observation-code-cs"
* group[=].element[+].code = #"abstract_disease"
* group[=].element[=].display = "Абстрактные болезни"
* group[=].element[=].target[+].code = #"other-diseases"
* group[=].element[=].target[=].display = "Mavhum kasalliklar"
* group[=].element[=].target[=].relationship = #equivalent
