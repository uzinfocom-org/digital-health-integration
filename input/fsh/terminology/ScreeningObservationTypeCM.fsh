Instance: screening-observation-type-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Observation Types to SNOMED CT and LOINC"
Description: "Maps local UZ screening observation type codes to SNOMED CT. The vital-sign types (height, weight, BMI) are mapped to the LOINC codes bound by the FHIR vital signs profiles."
* url = "https://terminology.dhp.uz/ConceptMap/screening-observation-type-to-snomed"
* name = "ScreeningObservationTypeToSnomed"
* status = #draft
* experimental = false
* publisher = "DHP Integration"

* sourceScopeCanonical = Canonical(ScreeningObservationTypeVS)

// ---- SNOMED CT targets ----
* group[0].source = Canonical(ScreeningObservationTypeCS)
* group[0].target = $sct

// 1. BI-RADS
* group[0].element[+].code = #scr-obser-1
* group[0].element[=].display = "BI-RADS"
* group[0].element[=].target[+].code = #1348266008
* group[0].element[=].target[=].display = "Breast Imaging and Reporting and Data System"
* group[0].element[=].target[=].relationship = #equivalent

// 2. Структура груди
* group[0].element[+].code = #scr-obser-2
* group[0].element[=].display = "Структура груди"
* group[0].element[=].target[+].code = #129793001
* group[0].element[=].target[=].display = "Mammographic breast density"
* group[0].element[=].target[=].relationship = #equivalent

// 3. Качество снимка
* group[0].element[+].code = #scr-obser-3
* group[0].element[=].display = "Качество снимка"
* group[0].element[=].target[+].code = #246646005
* group[0].element[=].target[=].display = "Quality of visual image"
* group[0].element[=].target[=].relationship = #equivalent

// ---- LOINC targets (FHIR vital signs profiles) ----
* group[1].source = Canonical(ScreeningObservationTypeCS)
* group[1].target = $loinc

// 4. Рост / Body height (vital sign)
* group[1].element[+].code = #scr-obser-4
* group[1].element[=].display = "Рост"
* group[1].element[=].target[+].code = #8302-2
* group[1].element[=].target[=].display = "Body height"
* group[1].element[=].target[=].relationship = #equivalent

// 5. Вес / Body weight (vital sign)
* group[1].element[+].code = #scr-obser-5
* group[1].element[=].display = "Вес"
* group[1].element[=].target[+].code = #29463-7
* group[1].element[=].target[=].display = "Body weight"
* group[1].element[=].target[=].relationship = #equivalent

// 6. ИМТ / Body mass index (vital sign)
* group[1].element[+].code = #scr-obser-6
* group[1].element[=].display = "ИМТ"
* group[1].element[=].target[+].code = #39156-5
* group[1].element[=].target[=].display = "Body mass index (BMI) [Ratio]"
* group[1].element[=].target[=].relationship = #equivalent
