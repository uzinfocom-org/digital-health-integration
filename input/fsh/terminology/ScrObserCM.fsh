Instance: scr-obser-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Observation Types to SNOMED CT"
Description: "Maps local UZ screening observation type codes to SNOMED CT."
* url = "https://terminology.dhp.uz/ConceptMap/scr-obser-to-snomed"
* name = "ScrObserToSnomed"
* status = #draft
* experimental = false
* publisher = "DHP Integration"

* group.source = Canonical(ScrObserCS)
* sourceScopeCanonical = Canonical(ScrObserVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs 

// 1. BI-RADS
* group.element[+].code = #scr-obser-1
* group.element[=].display = "BI-RADS"
* group.element[=].target[+].code = #1348266008
* group.element[=].target[=].display = "Breast Imaging and Reporting and Data System"
* group.element[=].target[=].relationship = #equivalent

// 2. Структура груди
* group.element[+].code = #scr-obser-2
* group.element[=].display = "Структура груди"
* group.element[=].target[+].code = #129793001
* group.element[=].target[=].display = "Mammographic breast density"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

// 3. Качество снимка
* group.element[+].code = #scr-obser-3
* group.element[=].display = "Качество снимка"
* group.element[=].target[+].code = #246646005
* group.element[=].target[=].display = "Quality of visual image"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

// 4. Рост
* group.element[+].code = #scr-obser-4
* group.element[=].display = "Рост"
* group.element[=].target[+].code = #1153637007
* group.element[=].target[=].display = "Body height"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

// 5. Вес
* group.element[+].code = #scr-obser-5
* group.element[=].display = "Вес"
* group.element[=].target[+].code = #27113001
* group.element[=].target[=].display = "Body weight"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

// 6. ИМТ
* group.element[+].code = #scr-obser-6
* group.element[=].display = "ИМТ"
* group.element[=].target[+].code = #60621009
* group.element[=].target[=].display = "Body mass index"
* group.element[=].target[=].relationship = #source-is-narrower-than-target